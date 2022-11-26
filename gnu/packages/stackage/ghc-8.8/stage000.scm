;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage000)
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
(define-public haskell-8.8-AC-Angle
  (package
    (name "haskell-8.8-AC-Angle")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/AC-Angle/AC-Angle-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ra97a4im3w2cq3mf17j8skn6bajs7rw7d0mmvcwgb9jd04b0idm"))))
    (properties `((upstream-name . "AC-Angle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/AC-Angle")
    (synopsis "Angles in degrees and radians.")
    (description "A simple little library for dealing with geometric angles.")
    (license license:bsd-3)))

haskell-8.8-AC-Angle

(define-public haskell-8.8-ANum
  (package
    (name "haskell-8.8-ANum")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ANum/ANum-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06mvkp9b0hxlp1w2yp7bb6340l88mzs15azx7nma401icqdhvbpn"))))
    (properties `((upstream-name . "ANum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/DanBurton/ANum#readme")
    (synopsis "Num instance for Applicatives provided via the ANum newtype")
    (description "")
    (license license:bsd-3)))

haskell-8.8-ANum

(define-public haskell-8.8-Boolean
  (package
    (name "haskell-8.8-Boolean")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Boolean/Boolean-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y7f8lqx86m06ccq1bjym2hywc7r17s2bvx16jswb2ibn09n08b7"))))
    (properties `((upstream-name . "Boolean") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/Boolean")
    (synopsis "Generalized booleans and numbers")
    (description
     "Some classes for generalized boolean operations.
Starting with 0.1.0, this package uses type families.
Up to version 0.0.2, it used MPTCs with functional dependencies.
My thanks to Andy Gill for suggesting & helping with the change.
Thanks also to Alex Horsman for Data.Boolean.Overload and to
Jan Bracker for Data.Boolean.Numbers.

Copyright 2009-2013 Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.8-Boolean

(define-public haskell-8.8-BoundedChan
  (package
    (name "haskell-8.8-BoundedChan")
    (version "1.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BoundedChan/BoundedChan-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vf4mlw08n056g5256cf46m5xsijng5gvjx7ccm4r132gznyl72k"))))
    (properties `((upstream-name . "BoundedChan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/BoundedChan")
    (synopsis "Implementation of bounded channels.")
    (description
     "This library introduces BoundedChan. BoundedChans differ from
Chans in that they are guaranteed to contain no more than a
certain number of elements.")
    (license license:bsd-3)))

haskell-8.8-BoundedChan

(define-public haskell-8.8-Decimal
  (package
    (name "haskell-8.8-Decimal")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x9a9jwx9h06hnqpflpbhdz22p7wkz3j4ydc22mkrgbxnfa3arvk")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/PaulJohnson/Haskell-Decimal")
    (synopsis "Decimal numbers with variable precision")
    (description "A decimal number has an integer mantissa and a negative
exponent.  The exponent can be interpreted as the number
of decimal places in the value.")
    (license license:bsd-3)))

haskell-8.8-Decimal

(define-public haskell-8.8-Diff
  (package
    (name "haskell-8.8-Diff")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Diff/Diff-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1is9y5rlqyxacnj6kbi6h9laym5shp699r0hkj5p9d6qi84sr43j"))))
    (properties `((upstream-name . "Diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/Diff")
    (synopsis "O(ND) diff algorithm in haskell.")
    (description
     "Implementation of the standard diff algorithm, and utilities for pretty printing.")
    (license license:bsd-3)))

haskell-8.8-Diff

(define-public haskell-8.8-FindBin
  (package
    (name "haskell-8.8-FindBin")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/FindBin/FindBin-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "197xvn05yysmibm1p5wzxfa256lvpbknr5d1l2ws6g40w1kpk717"))))
    (properties `((upstream-name . "FindBin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/audreyt/findbin")
    (synopsis "Locate directory of original program")
    (description
     "This module locates the full directory to the running program,
to allow the use of paths relative to it.
FindBin supports invocation of Haskell programs via \"ghci\",
via \"runhaskell/runghc\", as well as compiled as an executable.")
    (license license:bsd-3)))

haskell-8.8-FindBin

(define-public haskell-8.8-FloatingHex
  (package
    (name "haskell-8.8-FloatingHex")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FloatingHex/FloatingHex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k524ms0hwws5q1vqkf4vrba1q6b33r8c5c3wdifqbcdni6haxxj"))))
    (properties `((upstream-name . "FloatingHex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/FloatingHex")
    (synopsis "Read and write hexadecimal floating point numbers")
    (description
     "Read and write hexadecimal floating point numbers. Provides a quasiquoter for
entering hex-float literals, and a function for printing them in hexadecimal.

See: <http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1256.pdf>, pages 57-58.
We slightly diverge from the standard and do not allow for the \"floating-suffix,\"
as the type inference of Haskell makes this unnecessary.

For details, please see: <http://github.com/LeventErkok/FloatingHex/>")
    (license license:bsd-3)))

haskell-8.8-FloatingHex

(define-public haskell-8.8-GenericPretty
  (package
    (name "haskell-8.8-GenericPretty")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/GenericPretty/GenericPretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g5frpzq8hr2wqbf91cxcyxqqsw06p1w9f1sm3k6v1hz13kpmspf"))))
    (properties `((upstream-name . "GenericPretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/RazvanRanca/GenericPretty")
    (synopsis "A generic, derivable, haskell pretty printer.")
    (description
     "GenericPretty is a Haskell library that supports automatic
derivation of pretty printing functions on user defined data
types.

The form of geenrics used is based on that introduced in the paper:
Magalhaes, Dijkstra, Jeuring, and Loh,
A Generic Deriving Mechanism for Haskell,
3'rd ACM Symposium on Haskell, pp. 37-48, September 2010,
<http://dx.doi.org/10.1145/1863523.1863529>.
Changes from the original paper in the GHC implementation
are described here:
<http://www.haskell.org/haskellwiki/GHC.Generics#Changes_from_the_paper>.

This package requires the use of the new GHC.Generics features
<http://www.haskell.org/haskellwiki/GHC.Generics>, present from GHC 7.2.
Use of these features is indicated by the DeriveGeneric pragma.
or the flag -XDeriveGeneric.

Pretty printing produces values of type Text.PrettyPrint.Doc, using
the Text.PrettyPrint library
<http://www.haskell.org/ghc/docs/latest/html/libraries/pretty-1.1.1.0/Text-PrettyPrint.html>.

The output provided is a pretty printed version of that provided by
Prelude.show.  That is, rendering the document provided by this pretty
printer yields an output identical to that of Prelude.show, except
for extra whitespace.

For information about the functions exported by the package please see
the API linked further down this page.
For examples of usage, both basic and more complex see the README file and
the haskell source code files in the TestSuite folder, both included in the package.
Finally for installation instructions also see the README file or this page:
<http://www.haskell.org/haskellwiki/Cabal/How_to_install_a_Cabal_package>")
    (license license:bsd-3)))

haskell-8.8-GenericPretty

(define-public haskell-8.8-HSlippyMap
  (package
    (name "haskell-8.8-HSlippyMap")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HSlippyMap/HSlippyMap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03gb5dd59mirwb11b98vbg60w2zwfsbr8akk7qbq01z7n7rkgsr7"))))
    (properties `((upstream-name . "HSlippyMap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/apeyroux/HSlippyMap")
    (synopsis "OpenStreetMap Slippy Map")
    (description
     "OpenStreetMap (OSM) Slippy Map is, in general, a term referring to modern web maps which let you zoom and pan around (the map slips around when you drag the mouse). - http://wiki.openstreetmap.org/wiki/Slippy_Map")
    (license license:bsd-3)))

haskell-8.8-HSlippyMap

(define-public haskell-8.8-HSvm
  (package
    (name "haskell-8.8-HSvm")
    (version "0.1.1.3.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HSvm/HSvm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vij1xp3gm7s0d5hqlpl6jm949gpimaxz8cr3njaa4kkgpw8yd4g"))))
    (properties `((upstream-name . "HSvm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://hackage.haskell.org/package/HSvm")
    (synopsis "Haskell Bindings for libsvm")
    (description "")
    (license license:bsd-3)))

haskell-8.8-HSvm

(define-public haskell-8.8-HsYAML
  (package
    (name "haskell-8.8-HsYAML")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HsYAML/HsYAML-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10qzhsg789h37q22hm9p27dx4rhbykcbxp7p3pvkws8fr7ajgxv0"))))
    (properties `((upstream-name . "HsYAML") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")
       #:cabal-revision
       ("4" "1gzfaqnz7wjvdjh8w66rlg8c9vwawb0adh9kahl8fn70mdnp38az")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/HsYAML")
    (synopsis "Pure Haskell YAML 1.2 processor")
    (description
     "@@HsYAML@@ is a [YAML 1.2](http://yaml.org/spec/1.2/spec.html) processor, i.e. a library for parsing and serializing YAML documents.

Features of @@HsYAML@@ include:

* Pure Haskell implementation with small dependency footprint and emphasis on strict compliance with the [YAML 1.2 specification](http://yaml.org/spec/1.2/spec.html).
* Direct decoding to native Haskell types via (@@aeson@@-inspired) typeclass-based API (see \"Data.YAML\").
* Allows round-tripping while preserving ordering, anchors, and comments at Event-level.
* Support for constructing custom YAML node graph representation (including support for cyclic YAML data structures).
* Support for the standard (untyped) /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" providing implicit typing rules as defined in the YAML 1.2 specification (including support for user-defined custom schemas; see \"Data.YAML.Schema\").
* Support for emitting YAML using /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" (including support for user-defined custom encoding schemas; see \"Data.YAML.Schema\").
* Event-based API resembling LibYAML's Event-based API (see \"Data.YAML.Event\").
* Low-level API access to lexical token-based scanner (see \"Data.YAML.Token\").

See also the <//hackage.haskell.org/package/HsYAML-aeson HsYAML-aeson> package which allows to decode and encode YAML by leveraging @@aeson@@'s 'FromJSON' and 'ToJSON' instances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-HsYAML

(define-public haskell-8.8-List
  (package
    (name "haskell-8.8-List")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/List/List-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0y5qk6pzpcha01pa9133qgmmk9nkgjqxaxlg04993i9g43hjpff4"))))
    (properties `((upstream-name . "List") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11ws93cdzz7k4nvcld2d74155mdgcvyi6f6an7gpf9z4k523c11n")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/yairchu/generator")
    (synopsis "List monad transformer and class")
    (description "A List monad transformer and a List class.
With standard list operations for Lists")
    (license license:bsd-3)))

haskell-8.8-List

(define-public haskell-8.8-MonadPrompt
  (package
    (name "haskell-8.8-MonadPrompt")
    (version "1.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MonadPrompt/MonadPrompt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nmy7dfzrkd8yfv5i9vlmjq9khnyi76ayvkzgcf783v5hfzcn4mh"))))
    (properties `((upstream-name . "MonadPrompt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/MonadPrompt")
    (synopsis "MonadPrompt, implementation & examples")
    (description
     "\\\"Prompting\\\" monad that allows splitting the description
of a computation from the implementation of the effects
used in that computation.
<http://www.haskell.org/pipermail/haskell-cafe/2008-January/038301.html>")
    (license license:bsd-3)))

haskell-8.8-MonadPrompt

(define-public haskell-8.8-NineP
  (package
    (name "haskell-8.8-NineP")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/NineP/NineP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k6qdp4zmqjl2f6cqy1zzzl6ncb2m9r0qgh4c24i2h5kkxmm3cab"))))
    (properties `((upstream-name . "NineP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-in-base")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://9ph.googlecode.com")
    (synopsis "9P2000 in pure Haskell")
    (description
     "Pure Haskell implementation of the 9P2000 protocol from the
Plan 9 and Inferno operating systems.  Many implementations of
9P2000 exist including the Linux kernel v9fs module, wmii
(X window manager).  More information on 9P and implementations
may be found at http:\\/\\/9p.cat-v.org")
    (license license:bsd-3)))

haskell-8.8-NineP

(define-public haskell-8.8-NumInstances
  (package
    (name "haskell-8.8-NumInstances")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/NumInstances/NumInstances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ycnwn09izajv330l7a31mc0alifqmxjsn9qmfswwnbg6i4jmnyb"))))
    (properties `((upstream-name . "NumInstances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/conal/NumInstances")
    (synopsis "Instances of numeric classes for functions and tuples")
    (description
                 "Instances of numeric classes for functions and tuples.
Import \"Data.NumInstances\" to get all the instances.
If you want only function or only tuple instances, import
\"Data.NumInstances.Function\" or \"Data.NumInstances.Tuple\".")
    (license license:bsd-3)))

haskell-8.8-NumInstances

(define-public haskell-8.8-ObjectName
  (package
    (name "haskell-8.8-ObjectName")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ObjectName/ObjectName-" version
                    ".tar.gz"))
              (sha256
               (base32
                "046jm94rmm46cicd31pl54vdvfjvhd9ffbfycy2lxzc0fliyznvj"))))
    (properties `((upstream-name . "ObjectName") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/svenpanne/ObjectName")
    (synopsis "Explicitly handled object names")
    (description
     "This tiny package contains the class ObjectName, which corresponds to the
general notion of explicitly handled identifiers for API objects, e.g. a
texture object name in OpenGL or a buffer object name in OpenAL.")
    (license license:bsd-3)))

haskell-8.8-ObjectName

(define-public haskell-8.8-OneTuple
  (package
    (name "haskell-8.8-OneTuple")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OneTuple/OneTuple-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15ls6kkf953288q7rsc49bvw467ll4nq28hvsgbaazdn7hf75ixc"))))
    (properties `((upstream-name . "OneTuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03mygfz7lv6h0i30bq2grvmahbg9j7a36mc0wls2nr81dv9p19s7")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/OneTuple")
    (synopsis "Singleton Tuple")
    (description "This package provides a singleton tuple data type

> data OneTuple a = OneTuple a

Note: it's not a @@newtype@@")
    (license license:bsd-3)))

haskell-8.8-OneTuple

(define-public haskell-8.8-Only
  (package
    (name "haskell-8.8-Only")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Only/Only-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rdj3a629fk2vp121jq8mf2smkblrz5w3cxhlsyx6my2x29s2ymb"))))
    (properties `((upstream-name . "Only") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ahk7p34kmh041mz7lyc10nhcxgv2i4z8nvzxvqm2x34gslmsbzr")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/Only")
    (synopsis "The 1-tuple type or single-value \"collection\"")
    (description
     "This package provides a canonical anonymous 1-tuple type missing
from Haskell for attaching typeclass instances.

NOTE: There is also the </package/OneTuple OneTuple package> which
by using a boxed @@data@@-type provides a 1-tuple type which has
laziness properties which are more faithful to the ones of Haskell's
native tuples; whereas the primary purpose of 'Only' is to
provide the traditionally so named type-wrapper for attaching typeclass
instances.")
    (license license:bsd-3)))

haskell-8.8-Only

(define-public haskell-8.8-ParsecTools
  (package
    (name "haskell-8.8-ParsecTools")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ParsecTools/ParsecTools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11vshnbxfl8p38aix4h2b0vms8j58agwxbmhd9pkxai764sl6j7g"))))
    (properties `((upstream-name . "ParsecTools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ParsecTools")
    (synopsis "Parsec combinators for more complex objects.")
    (description "Combined parsers for complex objects: floating point, and
integral numbers.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-ParsecTools

(define-public haskell-8.8-SHA
  (package
    (name "haskell-8.8-SHA")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-SHA

(define-public haskell-8.8-StateVar
  (package
    (name "haskell-8.8-StateVar")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/StateVar/StateVar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12qg01aksbnc7cdh01y4z4jwrrhhwcakc9gh6ywxhq1bj591a9pf"))))
    (properties `((upstream-name . "StateVar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell-opengl/StateVar")
    (synopsis "State variables")
    (description
     "This package contains state variables, which are references in the IO monad,
like IORefs or parts of the OpenGL state.")
    (license license:bsd-3)))

haskell-8.8-StateVar

(define-public haskell-8.8-Xauth
  (package
    (name "haskell-8.8-Xauth")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Xauth/Xauth-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mvflp6y1nz9961gngbwk0b7wr8sx3p6296jfvvb6ln1kvm2scxs"))))
    (properties `((upstream-name . "Xauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages xorg) libxau)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/Xauth")
    (synopsis "A binding to the X11 authentication library")
    (description "A Haskell binding to the X11 authentication library.")
    (license license:bsd-3)))

haskell-8.8-Xauth

(define-public haskell-8.8-abstract-par
  (package
    (name "haskell-8.8-abstract-par")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/abstract-par/abstract-par-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q6qsniw4wks2pw6wzncb1p1j3k6al5njnvm2v5n494hplwqg2i4"))))
    (properties `((upstream-name . "abstract-par") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis
     "Type classes generalizing the functionality of the 'monad-par' library.")
    (description
     "The 'Par' monad offers a parallel programming API based on dataflow
programming.  To use the `Par` monad, install the @@monad-par@@
package, which includes this package as a dependency.

This package is an abstract interface only. It provides a number of
type clasess, but not an implementation.  The type classes separate
different levels of @@Par@@ functionality.  See the
\"Control.Monad.Par.Class\" module for more details.")
    (license license:bsd-3)))

haskell-8.8-abstract-par

(define-public haskell-8.8-action-permutations
  (package
    (name "haskell-8.8-action-permutations")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/action-permutations/action-permutations-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rhlzpwshixpnqma7sk28f22dkwz39b6lcwnzmd31rcnz5cyw6d4"))))
    (properties `((upstream-name . "action-permutations") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/action-permutations")
    (synopsis "Execute a set of actions (e.g. parsers) in each possible order")
    (description
     "Sequence a set of Alternative actions in each possible order,
based on \\\"Parsing Permutation Phrases\\\", by Arthur Baars,
Andres Loeh and S. Doaitse Swierstra, /Haskell Workshop 2001/.
This is particularly useful for constructing a parser for
permutations of elements.
This version has a slightly different interface from the paper.")
    (license license:bsd-3)))

haskell-8.8-action-permutations

(define-public haskell-8.8-alex
  (package
    (name "haskell-8.8-alex")
    (version "3.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alex/alex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "042lrkn0dbpjn5ivj6j26jzb1fwrj8c1aj18ykxja89isg0hiali"))))
    (properties `((upstream-name . "alex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.haskell.org/alex/")
    (synopsis "Alex is a tool for generating lexical analysers in Haskell")
    (description "Alex is a tool for generating lexical analysers in Haskell.
It takes a description of tokens based on regular
expressions and generates a Haskell module containing code
for scanning text efficiently. It is similar to the tool
lex or flex for C/C++.")
    (license license:bsd-3)))

haskell-8.8-alex

(define-public haskell-8.8-algebraic-graphs
  (package
    (name "haskell-8.8-algebraic-graphs")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/algebraic-graphs/algebraic-graphs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02y5g459zl6hgdyq0kkqv4gz9v2xp7y2al9m4g46wis5hb7zxfc9"))))
    (properties `((upstream-name . "algebraic-graphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/snowleopard/alga")
    (synopsis "A library for algebraic graph construction and transformation")
    (description
     "<https://github.com/snowleopard/alga Alga> is a library for algebraic construction and
manipulation of graphs in Haskell. See <https://github.com/snowleopard/alga-paper this paper>
for the motivation behind the library, the underlying theory and implementation details.

The top-level module
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html Algebra.Graph>
defines the main data type for /algebraic graphs/
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html#t:Graph Graph>,
as well as associated algorithms. For type-safe representation and
manipulation of /non-empty algebraic graphs/, see
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-NonEmpty.html Algebra.Graph.NonEmpty>.
Furthermore, /algebraic graphs with edge labels/ are implemented in
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Labelled.html Algebra.Graph.Labelled>.

The library also provides conventional graph data structures, such as
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-AdjacencyMap.html Algebra.Graph.AdjacencyMap>
along with its various flavours: adjacency maps specialised to graphs with
vertices of type 'Int'
(<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-AdjacencyIntMap.html Algebra.Graph.AdjacencyIntMap>),
non-empty adjacency maps
(<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-NonEmpty-AdjacencyMap.html Algebra.Graph.NonEmpty.AdjacencyMap>),
and adjacency maps with edge labels
(<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Labelled-AdjacencyMap.html Algebra.Graph.Labelled.AdjacencyMap>).
A large part of the API of algebraic graphs and adjacency maps is available
through the 'Foldable'-like type class
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-ToGraph.html Algebra.Graph.ToGraph>.

The type classes defined in
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Class.html Algebra.Graph.Class>
and
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-HigherKinded-Class.html Algebra.Graph.HigherKinded.Class>
can be used for polymorphic construction and manipulation of graphs.

This is an experimental library and the API is expected to remain unstable until version 1.0.0.
Please consider contributing to the on-going
<https://github.com/snowleopard/alga/issues discussions on the library API>.")
    (license license:expat)))

haskell-8.8-algebraic-graphs

(define-public haskell-8.8-almost-fix
  (package
    (name "haskell-8.8-almost-fix")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/almost-fix/almost-fix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03x715jcrsxfs2d08hsg3y5f6a4bnlzfxsmhzimvpdp9bw0psn90"))))
    (properties `((upstream-name . "almost-fix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/almost-fix")
    (synopsis "Recurse while a predicate is satisfied")
    (description "")
    (license license:bsd-3)))

haskell-8.8-almost-fix

(define-public haskell-8.8-annotated-wl-pprint
  (package
    (name "haskell-8.8-annotated-wl-pprint")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/annotated-wl-pprint/annotated-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "061xfz6qany3wf95csl8dcik2pz22cn8iv1qchhm16isw5zjs9hc"))))
    (properties `((upstream-name . "annotated-wl-pprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "138k24qxvl90l7dwdw1b3w36mpw93n0xi0nljblqg88pxg7jcvjx")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/david-christiansen/annotated-wl-pprint")
    (synopsis "The Wadler/Leijen Pretty Printer, with annotation support")
    (description
     "This is a modified version of wl-pprint, which was based on Wadler's
paper \"A Prettier  Printer\".  See the haddocks for full info.  This
version allows the library user to annotate the text with semantic
information, which can later be rendered in a variety of ways.")
    (license license:bsd-3)))

haskell-8.8-annotated-wl-pprint

(define-public haskell-8.8-appar
  (package
    (name "haskell-8.8-appar")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/appar/appar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07v3h766q9mnhphsm53718h1lds147ix7dj15kc5hnsj4vffvkn4"))))
    (properties `((upstream-name . "appar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/appar")
    (synopsis "A simple applicative parser")
    (description "A simple applicative parser in Parsec style")
    (license license:bsd-3)))

haskell-8.8-appar

(define-public haskell-8.8-array-memoize
  (package
    (name "haskell-8.8-array-memoize")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/array-memoize/array-memoize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p05vg8mdyad03aa7s1nrgw5xqgl80f6l7v0llhmi1q4xnrqrj3n"))))
    (properties `((upstream-name . "array-memoize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/array-memoize")
    (synopsis
     "Memoization combinators using arrays for finite sub-domains of functions")
    (description
     "Memoization combinators are great for providing high-performance Haskell programs,
but they can be even faster if memoization is performed on a finite, discrete domain
since an array can then be used to store results.

This package provides various combinators for doing just this, including also
combinators for quanitzing and discretizing Float/Double-valued functions.

Example:

@@
fib' :: (Int -> Int) -> Int -> Int
fib' _ 0 = 1
fib' _ 1 = 1
fib' rec n = rec (n - 1) + rec (n - 2)
fib :: Int -> Int
fib = arrayMemoFix (0, 1000) fib'
@@")
    (license license:bsd-3)))

haskell-8.8-array-memoize

(define-public haskell-8.8-arrow-extras
  (package
    (name "haskell-8.8-arrow-extras")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arrow-extras/arrow-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v3ab3h3rg38dvmyqqfsysgfpib8i81s87wr965cf7lxhfx3lg61"))))
    (properties `((upstream-name . "arrow-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/louispan/arrow-extras#readme")
    (synopsis "Extra functions for Control.Arrow")
    (description "Extra functions for Control.Arrow")
    (license license:bsd-3)))

haskell-8.8-arrow-extras

(define-public haskell-8.8-autoexporter
  (package
    (name "haskell-8.8-autoexporter")
    (version "1.1.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autoexporter/autoexporter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hgxfd5pykl6y1v3asnh46abfmi5fsdp0hs1kf6a2acqsnx9vad7"))))
    (properties `((upstream-name . "autoexporter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/autoexporter")
    (synopsis "Automatically re-export modules.")
    (description "Autoexporter automatically re-exports modules.")
    (license license:expat)))

haskell-8.8-autoexporter

(define-public haskell-8.8-base-compat
  (package
    (name "haskell-8.8-base-compat")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-compat/base-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nyvkaij4m01jndw72xl8931czz1xp6jpnynpajabys2ahabb9jk"))))
    (properties `((upstream-name . "base-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0h6vr19vr5bhm69w8rvswbvd4xgazggkcq8vz934x69www2cpgri")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/base-compat")
    (synopsis "A compatibility layer for base")
    (description
     "Provides functions available in later versions of @@base@@ to
a wider range of compilers, without requiring you to use CPP
pragmas in your code.  See the
<https://github.com/haskell-compat/base-compat/blob/master/base-compat/README.markdown README>
for what is covered. Also see the
<https://github.com/haskell-compat/base-compat/blob/master/base-compat/CHANGES.markdown changelog>
for recent changes.

Note that @@base-compat@@ does not add any orphan instances.
There is a separate package,
@@<http://hackage.haskell.org/package/base-orphans base-orphans>@@,
for that.

In addition, @@base-compat@@ does not backport any data types
or type classes. See
@@<https://github.com/haskell-compat/base-compat/blob/master/base-compat/README.markdown#data-types-and-type-classes this section of the README>@@
for more info.

@@base-compat@@ is designed to have zero dependencies. For a
version of @@base-compat@@ that depends on compatibility
libraries for a wider support window, see the
@@<http://hackage.haskell.org/package/base-compat-batteries base-compat-batteries>@@
package. Most of the modules in this library have the same
names as in @@base-compat-batteries@@ to make it easier to
switch between the two. There also exist versions of each
module with the suffix @@.Repl@@, which are distinct from
anything in @@base-compat-batteries@@, to allow for easier
use in GHCi.")
    (license license:expat)))

haskell-8.8-base-compat

(define-public haskell-8.8-base-noprelude
  (package
    (name "haskell-8.8-base-noprelude")
    (version "4.13.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-noprelude/base-noprelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ld1phm7jpyvm33dj568gy28inbiklrj00yvb83v5y7rn01w32kp"))))
    (properties `((upstream-name . "base-noprelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (home-page "https://github.com/hvr/base-noprelude")
    (synopsis "\"base\" package sans \"Prelude\" module")
    (description
     "This package simplifies defining custom \"Prelude\"s without having
to use @@-XNoImplicitPrelude@@ by re-exporting the full module-hierarchy of
the [base-4.13.0.0](https://hackage.haskell.org/package/base-4.13.0.0)
package /except/ for the \"Prelude\" module.

An usage example for such a \"Prelude\"-replacement is available with
the [Prelude](http://hackage.haskell.org/package/Prelude) package.

Starting with GHC 7.10 & Cabal-1.22 this package makes use of the
package-level @@reexported-modules@@ feature.

Each version of @@base-noprelude@@ depends on a specific
@@base@@-version and thus mirrors @@base@@'s
versioning (with the exception that @@base-noprelude@@ needs to add an
/additional/ 5th version component in case of bug-fix releases).

See <https://github.com/hvr/base-noprelude> for more information.")
    (license license:bsd-3)))

haskell-8.8-base-noprelude

(define-public haskell-8.8-base-orphans
  (package
    (name "haskell-8.8-base-orphans")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-orphans/base-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cxvjcyy0vsg21n85gxal03gfprw75vjd1h9sni00d60as9vbcip"))))
    (properties `((upstream-name . "base-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell-compat/base-orphans#readme")
    (synopsis "Backwards-compatible orphan instances for base")
    (description
     "@@base-orphans@@ defines orphan instances that mimic instances available in
later versions of @@base@@ to a wider (older) range of compilers.
@@base-orphans@@ does not export anything except the orphan instances
themselves and complements @@<http://hackage.haskell.org/package/base-compat
base-compat>@@.

See the README for what instances are covered:
<https://github.com/haskell-compat/base-orphans#readme>.
See also the
<https://github.com/haskell-compat/base-orphans#what-is-not-covered what is not covered>
section.")
    (license license:expat)))

haskell-8.8-base-orphans

(define-public haskell-8.8-base-prelude
  (package
    (name "haskell-8.8-base-prelude")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-prelude/base-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zk728sd09hh2r4xwz4lazsrrgg5cshydn64932sm0vckplndk73"))))
    (properties `((upstream-name . "base-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/nikita-volkov/base-prelude ")
    (synopsis
     "The most complete prelude formed solely from the \"base\" package")
    (description
     "A library which aims to reexport all the non-conflicting and
most general definitions from the \\\"base\\\" package.
This includes APIs for applicatives, arrows, monoids, foldables, traversables,
exceptions, generics, ST, MVars and STM.

This package will never have any dependencies other than \\\"base\\\".

/Versioning policy/

The versioning policy of this package deviates from PVP in the sense
that its exports in part are transitively determined by the version of \\\"base\\\".
Therefore it's recommended for the users of \\\"base-prelude\\\" to specify
the bounds of \\\"base\\\" as well.")
    (license license:expat)))

haskell-8.8-base-prelude

(define-public haskell-8.8-base-unicode-symbols
  (package
    (name "haskell-8.8-base-unicode-symbols")
    (version "0.2.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-unicode-symbols/base-unicode-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qkhp4ybmx4nbqqkrmw3hkm47bv61i2wpi20qb09wvk10g2dcr23"))))
    (properties `((upstream-name . "base-unicode-symbols") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-base" "-fbase-4-8")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://haskell.org/haskellwiki/Unicode-symbols")
    (synopsis "Unicode alternatives for common functions and operators")
    (description
     "This package defines new symbols for a number of functions,
operators and types in the base package.

All symbols are documented with their actual definition and
information regarding their Unicode code point. They should be
completely interchangeable with their definitions.

For further Unicode goodness you can enable the @@UnicodeSyntax@@
language extension [1]. This extension enables Unicode characters
to be used to stand for certain ASCII character sequences,
i.e. &#x2192; instead of @@->@@, &#x2200; instead of @@forall@@ and many
others.

Original idea by P&#xE9;ter Divi&#xE1;nszky.

\\[1] <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#unicode-syntax>")
    (license license:bsd-3)))

haskell-8.8-base-unicode-symbols

(define-public haskell-8.8-base16-bytestring
  (package
    (name "haskell-8.8-base16-bytestring")
    (version "0.1.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base16-bytestring/base16-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fk9zvkx005sy4adbyil86svnqhgrvmczmf16ajhzj2wkmkqjmjj"))))
    (properties `((upstream-name . "base16-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1lrxqhbjsml0q1ahpcx7p0xjy6bj1m6qzjwmv841r5r8jrm2a880")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/haskell/base16-bytestring")
    (synopsis "Fast base16 (hex) encoding and decoding for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according
to @@base16@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for
strict (see \"Data.ByteString.Base16\") and lazy @@ByteString@@s (see \"Data.ByteString.Base16.Lazy\").

See also the <https://hackage.haskell.org/package/base-encoding base-encoding> package which
provides an uniform API providing conversion paths between more binary and textual types.")
    (license license:bsd-3)))

haskell-8.8-base16-bytestring

(define-public haskell-8.8-base64-bytestring
  (package
    (name "haskell-8.8-base64-bytestring")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nc2m0by303x7zd0cshpvlhyapkabfhgbcaflg7jgaryssk7w0nm")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell/base64-bytestring")
    (synopsis "Fast base64 encoding and decoding for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according to @@base64@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for strict and lazy ByteStrings.")
    (license license:bsd-3)))

haskell-8.8-base64-bytestring

(define-public haskell-8.8-base64-string
  (package
    (name "haskell-8.8-base64-string")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-string/base64-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pkhrimabacsjalzq0y3a197fqfbspsbv8xszzg4vbb1fb59dj1y"))))
    (properties `((upstream-name . "base64-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://urchin.earth.li/~ian/cabal/base64-string/")
    (synopsis "Base64 implementation for String's.")
    (description
     "This Base64 implementation uses the characters
A-Z a-z 0-9 + /
along with
=
to signal the number of characters mod 3.
It is compliant with both PEM (RFC 989 / RFC 1421) and MIME (RFC 2045).")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-base64-string

(define-public haskell-8.8-basement
  (package
    (name "haskell-8.8-basement")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/basement/basement-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0srlws74yiraqaapgcjd9p5d1fwb3zr9swcz74jpjm55fls2nn37"))))
    (properties `((upstream-name . "basement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1indgsrk0yhkbqlxj39qqb5xqicwkmcliggb8wn87vgfswxpi1dn")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell-foundation/foundation#readme")
    (synopsis "Foundation scrap box of array & string")
    (description "Foundation most basic primitives without any dependencies")
    (license license:bsd-3)))

haskell-8.8-basement

(define-public haskell-8.8-bazel-runfiles
  (package
    (name "haskell-8.8-bazel-runfiles")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bazel-runfiles/bazel-runfiles-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x9w6j5yb0rxaaymzvv2hr5g00cy4zhkv79xgb8ns9frnv2bx2km"))))
    (properties `((upstream-name . "bazel-runfiles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/tweag/rules_haskell#readme")
    (synopsis "Locate Bazel runfiles location")
    (description
     "Please see the README on GitHub at <https://github.com/tweag/rules_haskell/blob/master/tools/runfiles/README.md>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-bazel-runfiles

(define-public haskell-8.8-benchpress
  (package
    (name "haskell-8.8-benchpress")
    (version "0.2.2.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/benchpress/benchpress-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bffchlwcyqgbnviqvm01lyj7zldvd3yj9yqnc8150lgxr29kvf9"))))
    (properties `((upstream-name . "benchpress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/WillSewell/benchpress")
    (synopsis "Micro-benchmarking with detailed statistics.")
    (description "Benchmarks actions and produces statistics
such as min, mean, median, standard deviation,
and max execution time.  Also computes
execution time percentiles.  Comes with
functions to pretty-print the results.")
    (license license:bsd-3)))

haskell-8.8-benchpress

(define-public haskell-8.8-between
  (package
    (name "haskell-8.8-between")
    (version "0.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/between/between-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pa6f7vadslvff0hlm939r2h8k130f16l2sjnzci79n54q9kadw3"))))
    (properties `((upstream-name . "between") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/trskop/between")
    (synopsis "Function combinator \"between\" and derived combinators")
    (description
     "It turns out that this combinator

> f ~@@~ g = (f .) . (. g)

is a powerful thing. It was abstracted from following (commonly used)
pattern @@f . h . g@@ where @@f@@ and @@g@@ are fixed.

This library not only defines @@~\\@@~@@ combinator, but also some derived
combinators that can help us easily define a lot of things including
lenses. See <http://hackage.haskell.org/package/lens lens package> for
detais on what lenses are.

Function @@Data.Function.on@@ can be implemented using @@~\\@@~@@ as:

> on :: (b -> b -> c) -> (a -> b) -> a -> a -> c
> on f g = (id ~@@~ g ~@@~ g) f

If function @@on3@@ existed in /base/ then it could be defined as:

> on3 :: (b -> b -> b -> d) -> (a -> b) -> a -> a -> a -> d
> on3 f g = (id ~@@~ g ~@@~ g ~@@~ g) f

Other usage examples and documentation can be found in
\"Data.Function.Between\" module.")
    (license license:bsd-3)))

haskell-8.8-between

(define-public haskell-8.8-binary-ieee754
  (package
    (name "haskell-8.8-binary-ieee754")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-ieee754/binary-ieee754-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m2dxr5a4rb18jh1xj5yxjpjybn6bz5pjxd2cx06nd6dif4qki0m"))))
    (properties `((upstream-name . "binary-ieee754") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/winterland1989/binary-ieee754")
    (synopsis "Backport ieee754 float double combinators to older binary")
    (description "Backport ieee754 float double combinators to older binary")
    (license license:bsd-3)))

haskell-8.8-binary-ieee754

(define-public haskell-8.8-binary-orphans
  (package
    (name "haskell-8.8-binary-orphans")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-orphans/binary-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gbmn5rpvyxhw5bxjmxwld6918lslv03b2f6hshssaw1il5x86j3"))))
    (properties `((upstream-name . "binary-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1h2d37szfrcwn9rphnijn4q9l947b0wwqjs1aqmm62xkhbad7jf6")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/binary-orphans")
    (synopsis "Compatibility package for binary; provides instances")
    (description
     "This package provides instances defined in later versions of @@binary@@ package

Prior version 1 this packages provided instances for other packages.
That functionality is moved to [binary-instances](https://hackage.haskell.org/package/binary-instances) package.")
    (license license:bsd-3)))

haskell-8.8-binary-orphans

(define-public haskell-8.8-binary-parser
  (package
    (name "haskell-8.8-binary-parser")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parser/binary-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s91289qh3xwbjm0zbnjj550asg1l801h5arx35j4msxrbwgcx3g"))))
    (properties `((upstream-name . "binary-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/nikita-volkov/binary-parser")
    (synopsis
     "A highly-efficient but limited parser API specialised for bytestrings")
    (description "")
    (license license:expat)))

haskell-8.8-binary-parser

(define-public haskell-8.8-binary-search
  (package
    (name "haskell-8.8-binary-search")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-search/binary-search-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ypn2i2c3mxd1zhpj515zf15y9sgz10akbyngg2ymp7ddbs2vqxh"))))
    (properties `((upstream-name . "binary-search") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/binary-search")
    (synopsis "Binary and exponential searches")
    (description
     "__Introduction__

This package provides varieties of binary search functions.
c.f.  \"Numeric.Search\" for the examples.

These search function can search for pure and monadic predicates, of type:

> pred :: Eq b => a -> b
> pred :: (Eq b, Monad m) => a -> m b

The predicates must satisfy that the domain range for any codomain value
is continuous; that is, @@∀x≦y≦z. pred x == pred z ⇒ pred y == pred x@@ .

For example, we can address the problem of finding the boundary
of an upward-closed set of integers, using a combination
of exponential and binary searches.

Variants are provided
for searching within bounded and unbounded intervals of
both 'Integer' and bounded integral types.

The package was created by Ross Paterson, and extended
by Takayuki Muranushi, to be used together with SMT solvers.

__The Module Structure__

*  \"Numeric.Search\" provides the generic search combinator, to search for pure and monadic predicates.
*  \"Numeric.Search.Bounded\" ,  \"Numeric.Search.Integer\" ,  \"Numeric.Search.Range\" provides the various specialized searchers, which means less number of function arguments, and easier to use.

<<https://travis-ci.org/nushio3/binary-search.svg?branch=master>>")
    (license license:bsd-3)))

haskell-8.8-binary-search

(define-public haskell-8.8-binary-shared
  (package
    (name "haskell-8.8-binary-shared")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-shared/binary-shared-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1clqq0rqjw1v7y6glkjnfyga5gxh768flyw617g47z0qa181c0c3"))))
    (properties `((upstream-name . "binary-shared") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.leksah.org")
    (synopsis "Sharing for the binary package")
    (description
     "I had problems with the size of the allocated heap space after serializing
and loading data with the binary package. The reason was that
binary does not support sharing of identical elements, so I came up
with the generic solution in this package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-binary-shared

(define-public haskell-8.8-bindings-DSL
  (package
    (name "haskell-8.8-bindings-DSL")
    (version "1.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bindings-DSL/bindings-DSL-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kqrd78nspl3lk4a0fqn47d8dirjg3b24dkvkigcrlb81hw35pk3"))))
    (properties `((upstream-name . "bindings-DSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jwiegley/bindings-dsl/wiki")
    (synopsis "FFI domain specific language, on top of hsc2hs.")
    (description
     "This is a set of macros to be used when writing Haskell FFI.
They were designed to be able to fully describe C interfaces,
so that hsc2hs can extract from them all Haskell code needed to
mimic such interfaces. All Haskell names used are automatically
derived from C names, structures are mapped to Haskell instances
of Storable, and there are also macros you can use with C code
to help write bindings to inline functions or macro functions.
Documentation is available at package homepage:

<https://github.com/jwiegley/bindings-dsl/wiki>

The extra module Bindings.Utilities will contain tools that may
be convenient when working with FFI.")
    (license license:bsd-3)))

haskell-8.8-bindings-DSL

(define-public haskell-8.8-bindings-uname
  (package
    (name "haskell-8.8-bindings-uname")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bindings-uname/bindings-uname-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lsw4dh5vgmfvrx62ns5kmngzlmjzbxkx43x5i2k5qlmzp1pa3hk"))))
    (properties `((upstream-name . "bindings-uname") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/bindings-uname")
    (synopsis "Low-level binding to POSIX uname(3)")
    (description "This is a low-level binding to POSIX uname(3)
function. Perhaps it shoule be part of unix package.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-bindings-uname

(define-public haskell-8.8-bitarray
  (package
    (name "haskell-8.8-bitarray")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitarray/bitarray-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00nqd62cbh42qqqvcl6iv1i9kbv0f0mkiygv4j70wfh5cl86yzxj"))))
    (properties `((upstream-name . "bitarray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10fk92v9afjqk43zi621jxl0n8kci0xjj32lz3vqa9xbh67zjz45")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~bkomuves/")
    (synopsis "Mutable and immutable bit arrays")
    (description "Mutable and immutable bit arrays.")
    (license license:bsd-3)))

haskell-8.8-bitarray

(define-public haskell-8.8-blake2
  (package
    (name "haskell-8.8-blake2")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/blake2/blake2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0y937kr3dp87likwrl4wpaw80jhf383k89zn8li1yj3zp1vb6niv"))))
    (properties `((upstream-name . "blake2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fhlint" "-f-llvm" "-f-support_blake2_sse")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/centromere/blake2")
    (synopsis "A library providing BLAKE2")
    (description
     "This library provides the <https://blake2.net/ BLAKE2> hash algorithms.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-blake2

(define-public haskell-8.8-blaze-builder
  (package
    (name "haskell-8.8-blaze-builder")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p66mh9z3aqgind755xzf39pvl2hwjnwrlwiwyj653yzb1gn6c9j")))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-blaze-builder

(define-public haskell-8.8-bmp
  (package
    (name "haskell-8.8-bmp")
    (version "1.2.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bmp/bmp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1k6s5z520dadj38y7ja0m4syrg094gyq14c63i6wx2701zj3viiw"))))
    (properties `((upstream-name . "bmp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ghc3klxfz5v8rb3rwblrnxmxfafplxrd9gc0y975g8k1q71p44k")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/benl23x5/bmp")
    (synopsis "Read and write uncompressed BMP image files.")
    (description
     "Read and write uncompressed BMP image files. 100% robust Haskell implementation.")
    (license license:expat)))

haskell-8.8-bmp

(define-public haskell-8.8-boolsimplifier
  (package
    (name "haskell-8.8-boolsimplifier")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boolsimplifier/boolsimplifier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13w2i7b2g9w5kzqnbjjdzf3r2dm7a4xxags02khhwlj1f8vsjvq9"))))
    (properties `((upstream-name . "boolsimplifier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xqm0vn9i49b75fnvnvcnr9m4zwvhqynrkcjdxghrsxayg420lnh")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/boolsimplifier")
    (synopsis "Simplification tools for simple propositional formulas.")
    (description
     "Normal form representation for boolean expressions. Typically simplifies such expressions, but is not guaranteed to produce the absolute simplest form.")
    (license license:bsd-3)))

haskell-8.8-boolsimplifier

(define-public haskell-8.8-buffer-pipe
  (package
    (name "haskell-8.8-buffer-pipe")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-pipe/buffer-pipe-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kywa95mq6s8ldjkvy9j8yalbm83ms9a1lg9s8h0xxw837jbcx88"))))
    (properties `((upstream-name . "buffer-pipe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/buffer-pipe")
    (synopsis "Read from stdin and write to stdout in large blocks")
    (description "Read from stdin and write to stdout in large blocks.
This can be inserted in a chain of piping commands.
E.g. if inserted after @@tar c@@ or before @@tar x@@
you can reduce jumping forth and back on the hard disk.

You may also try the @@buffer@@ command
from the Debian package of the same name.")
    (license license:bsd-3)))

haskell-8.8-buffer-pipe

(define-public haskell-8.8-bv
  (package
    (name "haskell-8.8-bv")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bv/bv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1nkvqwqcjl57p6ir0sllb54vbj6q0l3s3w7z3z2svxjq2ymqk884"))))
    (properties `((upstream-name . "bv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fgmp" "-f-test" "-fcheck-bounds" "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/iagoabal/haskell-bv")
    (synopsis "Bit-vector arithmetic library")
    (description "Bit-vectors implemented as a thin wrapper over integers.")
    (license license:bsd-3)))

haskell-8.8-bv

(define-public haskell-8.8-byteable
  (package
    (name "haskell-8.8-byteable")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byteable/byteable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qizg0kxxjqnd3cbrjhhidk5pbbciz0pb3z5kzikjjxnnnhk8fr4"))))
    (properties `((upstream-name . "byteable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/vincenthz/hs-byteable")
    (synopsis "Type class for sequence of bytes")
    (description
     "Abstract class to manipulate sequence of bytes

The use case of this class is abstracting manipulation of
types that are just wrapping a bytestring with stronger and
more meaniful name.

Usual definition of those types are of the form: newtype MyType = MyType ByteString")
    (license license:bsd-3)))

haskell-8.8-byteable

(define-public haskell-8.8-bytedump
  (package
    (name "haskell-8.8-bytedump")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytedump/bytedump-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pf01mna3isx3i7m50yz3pw5ygz5sg8i8pshjb3yw8q41w2ba5xf"))))
    (properties `((upstream-name . "bytedump") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/vincenthz/hs-bytedump")
    (synopsis "Flexible byte dump helpers for human readers.")
    (description
     "A set of helpers to dump bytes with lots of different output formats
easy to read for humans eyes.")
    (license license:bsd-3)))

haskell-8.8-bytedump

(define-public haskell-8.8-byteorder
  (package
    (name "haskell-8.8-byteorder")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byteorder/byteorder-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06995paxbxk8lldvarqpb3ygcjbg4v8dk4scib1rjzwlhssvn85x"))))
    (properties `((upstream-name . "byteorder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://community.haskell.org/~aslatter/code/byteorder")
    (synopsis "Exposes the native endianness or byte ordering of the system.")
    (description "This package is for working with the native byte-ordering of
the system.")
    (license license:bsd-3)))

haskell-8.8-byteorder

(define-public haskell-8.8-byteset
  (package
    (name "haskell-8.8-byteset")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/byteset/byteset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18dg863wbbjh95yial4gy6vi5spwygp0l7dfx6bj00lz4xdrqj8k"))))
    (properties `((upstream-name . "byteset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lgxxxrmw4g32pa861n6qbfpzwv14wfjrlp4hv5zd9hygy6v6q2p")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/byteset")
    (synopsis "Set of bytes.")
    (description
     "Data structure for sets of bytes, where bytes are @@Word8@@ values.")
    (license license:bsd-3)))

haskell-8.8-byteset

(define-public haskell-8.8-bytestring-builder
  (package
    (name "haskell-8.8-bytestring-builder")
    (version "0.10.8.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-builder/bytestring-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0grcrgwwwcvwrs9az7l4d3kf0lsqfa9qpmjzf6iyanvwn9nyzyi7"))))
    (properties `((upstream-name . "bytestring-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-fbytestring_has_builder")))
    (outputs (list "out" "static"))
    (home-page "https://hackage.haskell.org/package/bytestring-builder")
    (synopsis "The new bytestring builder, packaged outside of GHC")
    (description
     "This is the bytestring builder that is debuting in bytestring-0.10.4.0, which
should be shipping with GHC 7.8, probably late in 2013.  This builder has
several nice simplifications and improvements, and more out-of-box
functionality than the older blaze-builder.

Note that this package detects which version of bytestring you are compiling
against,  and if you are compiling against bytestring-0.10.4 or later, will
be an empty package.

This package lets the new interface and implementation be used with most
older compilers without upgrading bytestring, which can be rather
problematic.  In conjunction with blaze-builder-0.4 or later,  which
offers an implementation of blaze-builder in terms of bytestring-builder,
this should let most people try the new interface and implementation without
causing undue compatibility problems with packages that depend on
blaze-builder.

GHC 7.6 did debut an almost identical interface and implementation, but with
slightly different module names and organization.   Trying to re-export/rename
the builder provided with 7.6 did not turn out to be very practical,  because
this interface includes new functions that rely on Builder internals,
which are not exported in 7.6.  Furthermore, these module names should be
deprecated in 7.10.")
    (license license:bsd-3)))

haskell-8.8-bytestring-builder

(define-public haskell-8.8-bytestring-lexing
  (package
    (name "haskell-8.8-bytestring-lexing")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-lexing/bytestring-lexing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wrzniawhgpphc6yx1v972gyqxdbv0pizaz9bafahrshyb9svy81"))))
    (properties `((upstream-name . "bytestring-lexing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0icnbv83h542vkmn51ykzc4w1g7nl4w6d6lj79909hnwr2g10616")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis
     "Parse and produce literals efficiently from strict or lazy bytestrings.")
    (description
     "Parse and produce literals efficiently from strict or lazy bytestrings.

Some benchmarks for this package can be found at:
<http://community.haskell.org/~wren/bytestring-lexing/bench/html>")
    (license license:bsd-2)))

haskell-8.8-bytestring-lexing

(define-public haskell-8.8-bytestring-mmap
  (package
    (name "haskell-8.8-bytestring-mmap")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-mmap/bytestring-mmap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bv9xf4cpph1cbdwv6rbmq8ppi5wjpgd97lwln5l9ky5rvnaxg3v"))))
    (properties `((upstream-name . "bytestring-mmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplit-base")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~dons/code/bytestring-mmap/")
    (synopsis "mmap support for strict ByteStrings")
    (description
     "
This library provides a wrapper to mmap(2), allowing files or
devices to be lazily loaded into memory as strict or lazy
ByteStrings, using the virtual memory subsystem to do on-demand
loading.
")
    (license license:bsd-3)))

haskell-8.8-bytestring-mmap

(define-public haskell-8.8-cabal-appimage
  (package
    (name "haskell-8.8-cabal-appimage")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-appimage/cabal-appimage-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m3xq3k4s6rn90vd2sp115jyb722vi9wgih3lz05fnc2bypyg6zi"))))
    (properties `((upstream-name . "cabal-appimage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/gbrsales/cabal-appimage")
    (synopsis "Cabal support for creating AppImage applications")
    (description "This package provides a build hook automating the
creation of AppImage bundles.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.8-cabal-appimage

(define-public haskell-8.8-cabal-doctest
  (package
    (name "haskell-8.8-cabal-doctest")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-doctest/cabal-doctest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03if74imlhhk7m56nci5f1wclniwqdmwl4hl177040j1gnlac9i0"))))
    (properties `((upstream-name . "cabal-doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05v1awad3d1wvc763xcgvxm4n6n7bs7byc6s14kdbw35zcaddlcb")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/phadej/cabal-doctest")
    (synopsis "A Setup.hs helper for doctests running")
    (description
     "Currently (beginning of 2017), there isn't @@cabal doctest@@
command. Yet, to properly work doctest needs plenty of configuration.
This library provides the common bits for writing custom Setup.hs
See <https://github.com/haskell/cabal/issues/2327 Cabal/2327> for the progress
of @@cabal doctest@@, i.e. whether this library is obsolete.")
    (license license:bsd-3)))

haskell-8.8-cabal-doctest

(define-public haskell-8.8-call-stack
  (package
    (name "haskell-8.8-call-stack")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/call-stack/call-stack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iz0wkbcqchyji72c4j4zb72vfsfdp2ys8pf9mqqsxaq774r7ilm"))))
    (properties `((upstream-name . "call-stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/sol/call-stack#readme")
    (synopsis "Use GHC call-stacks in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-8.8-call-stack

(define-public haskell-8.8-cased
  (package
    (name "haskell-8.8-cased")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cased/cased-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08xdc0mpp6b6inaxh6cr6ni08sy2ahfcbq8xbs3m4cfqbrqfd543"))))
    (properties `((upstream-name . "cased") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jb55/cased")
    (synopsis "Track string casing in its type")
    (description "Track string casing in its type")
    (license license:expat)))

haskell-8.8-cased

(define-public haskell-8.8-cast
  (package
    (name "haskell-8.8-cast")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cast/cast-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14dwsy80v1k0d9ksxb83h5lrz311d3nsgzcxxvivcdj4jzjlbm94"))))
    (properties `((upstream-name . "cast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell-patterns/cast#readme")
    (synopsis "Abstact cast pattern ")
    (description "Generalized pattern that allow cast one type for another.
Look at README for example.")
    (license license:bsd-3)))

haskell-8.8-cast

(define-public haskell-8.8-cereal
  (package
    (name "haskell-8.8-cereal")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")
       #:cabal-revision
       ("1" "02v1nivac478nzzykjbq3rawnqskxjc4sb54m6s5jcgbigfnb2x0")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/GaloisInc/cereal")
    (synopsis "A binary serialization library")
    (description
     "A binary serialization library, similar to binary, that introduces an isolate
primitive for parser isolation, and labeled blocks for better error messages.")
    (license license:bsd-3)))

haskell-8.8-cereal

(define-public haskell-8.8-charsetdetect-ae
  (package
    (name "haskell-8.8-charsetdetect-ae")
    (version "1.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/charsetdetect-ae/charsetdetect-ae-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0321j2kmlvf88bhlbi8ddnzgbckq37sfb7nm7r0dvar6626s9flv"))))
    (properties `((upstream-name . "charsetdetect-ae") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://github.com/aelve/charsetdetect-ae")
    (synopsis
     "Character set detection using Mozilla's Universal Character Set Detector")
    (description
     "Mozilla have developed a robust and efficient character set detection algorithm for use in their web browsers. The algorithm is able to detect all of the most frequently encountered character encodings totally automatically.

This library wraps up their library and exposes a very simple Haskell interface to it. The library is portable, and is confirmed to work on both Unix and Windows.

This library is a /maintained/ fork of charsetdetect:

* It compiles with recent version of bytestring.

* It works correctly in presence of Template Haskell on GHC 7.6.

* It builds on 64-bit Windows.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-charsetdetect-ae

(define-public haskell-8.8-choice
  (package
    (name "haskell-8.8-choice")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/choice/choice-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qcyf6nqi0nyhbf3xwyib95y29j5ir94d5vg449mkpr92crf8ryk"))))
    (properties `((upstream-name . "choice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mboes/choice#readme")
    (synopsis "A solution to boolean blindness.")
    (description "Please see README.md.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-choice

(define-public haskell-8.8-circle-packing
  (package
    (name "haskell-8.8-circle-packing")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/circle-packing/circle-packing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06z8irwrjxxgk5xqlpy6a9mjl44kp9pgx2xpslhgxrd31nll9vk4"))))
    (properties `((upstream-name . "circle-packing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1jp1b6l5v1llmggy316s4bb78wjvgq8iya0i2zz4k5v6l5dl8ln2")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/circle-packing")
    (synopsis
     "Simple heuristic for packing discs of varying radii in a circle")
    (description
     "Given a number of circles with their radii, this packags
tries to arrange them tightly, without overlap and forming a
large circle.

Finding the optimal solution is NP hard, so only
heuristics are feasible. This particular
implementation is neither very good nor very fast,
compared to the state of the art in research. Nevertheless
it is simple to use and gives visually acceptable results.

You can explore the algorithm live at
<http://darcs.nomeata.de/circle-packing/ghcjs/ghcjs-demo.html>.

Contributions of better algorithms are welcome.")
    (license license:bsd-3)))

haskell-8.8-circle-packing

(define-public haskell-8.8-clay
  (package
    (name "haskell-8.8-clay")
    (version "0.13.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/clay/clay-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "192lsbyj6azjs2ygpx4i47fyr8zfmvwcas8mia07ndqglk2c9csx"))))
    (properties `((upstream-name . "clay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://fvisser.nl/clay")
    (synopsis "CSS preprocessor as embedded Haskell.")
    (description
     "Clay is a CSS preprocessor like LESS and Sass, but implemented as an embedded
domain specific language (EDSL) in Haskell. This means that all CSS selectors
and style rules are first class Haskell functions, which makes reuse and
composability easy.

The project is described on <http://fvisser.nl/clay>.

The API documentation can be found in the top level module \"Clay\".")
    (license license:bsd-3)))

haskell-8.8-clay

(define-public haskell-8.8-clock
  (package
    (name "haskell-8.8-clock")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/clock/clock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0539w9bjw6xbfv9v6aq9hijszxqdnqhilwpbwpql1400ji95r8q8"))))
    (properties `((upstream-name . "clock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/corsis/clock")
    (synopsis "High-resolution clock functions: monotonic, realtime, cputime.")
    (description
     "A package for convenient access to high-resolution clock and
timer functions of different operating systems via a unified API.

POSIX code and surface API was developed by Cetin Sert in 2009.

Windows code was contributed by Eugene Kirpichov in 2010.

FreeBSD code was contributed by Finn Espen Gundersen on 2013-10-14.

OS X code was contributed by Gerolf Seitz on 2013-10-15.

Derived @@Generic@@, @@Typeable@@ and other instances for @@Clock@@ and @@TimeSpec@@ was contributed by Mathieu Boespflug on 2014-09-17.

Corrected dependency listing for @@GHC < 7.6@@ was contributed by Brian McKenna on 2014-09-30.

Windows code corrected by Dimitri Sabadie on 2015-02-09.

Added @@timeSpecAsNanoSecs@@ as observed widely-used by Chris Done on 2015-01-06, exported correctly on 2015-04-20.

Imported Control.Applicative operators correctly for Haskell Platform on Windows on 2015-04-21.

Unit tests and instance fixes by Christian Burger on 2015-06-25.

Removal of fromInteger : Integer -> TimeSpec by Cetin Sert on 2015-12-15.

New Linux-specific Clocks: MonotonicRaw, Boottime, MonotonicCoarse, RealtimeCoarse by Cetin Sert on 2015-12-15.

Reintroduction fromInteger : Integer -> TimeSpec by Cetin Sert on 2016-04-05.

Fixes for older Linux build failures introduced by new Linux-specific clocks by Mario Longobardi on 2016-04-18.

Refreshment release in 2019-04 after numerous contributions.

[Version Scheme]
Major-@@/R/@@-ewrite . New-@@/F/@@-unctionality . @@/I/@@-mprovementAndBugFixes . @@/P/@@-ackagingOnly

* @@PackagingOnly@@ changes are made for quality assurance reasons.")
    (license license:bsd-3)))

haskell-8.8-clock

(define-public haskell-8.8-cmdargs
  (package
    (name "haskell-8.8-cmdargs")
    (version "0.10.20")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cmdargs/cmdargs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cbkmgrcnwgigg6z88y3c09gm7g6dwm7gzbgr53h8k1xik29s9hf"))))
    (properties `((upstream-name . "cmdargs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-testprog" "-fquotation")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ndmitchell/cmdargs#readme")
    (synopsis "Command line argument processing")
    (description
     "This library provides an easy way to define command line parsers. Most users
will want to use the \"System.Console.CmdArgs.Implicit\" module, whose
documentation contains an example.

* \"System.Console.CmdArgs.Explicit\" provides a way to write command line
parsers for both single mode programs (most programs) and multiple
mode programs (e.g. darcs or cabal). Parsers are defined by constructing
a data structure.

* \"System.Console.CmdArgs.Implicit\" provides a way to concisely define
command line parsers, up to three times shorter than getopt. These parsers
are translated into the Explicit data type.

* \"System.Console.CmdArgs.GetOpt\" provides a wrapper allowing compatiblity
with existing getopt parsers, mapping to the Explicit data type.

For a general reference on what command line flags are commonly used,
see <http://www.faqs.org/docs/artu/ch10s05.html>.")
    (license license:bsd-3)))

haskell-8.8-cmdargs

(define-public haskell-8.8-coercible-utils
  (package
    (name "haskell-8.8-coercible-utils")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/coercible-utils/coercible-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nadwhr96nvwz1vxxr7814h22v02zrycqa9xijgvrakf0j174yls"))))
    (properties `((upstream-name . "coercible-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0swbc29c1c742d7pam2flv7xqqwis5df10657yvzms83mfg4lv6a")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/sjakobi/coercible-utils")
    (synopsis "Utility functions for Coercible types")
    (description "Utility functions for Coercible types.")
    (license license:bsd-3)))

haskell-8.8-coercible-utils

(define-public haskell-8.8-colorful-monoids
  (package
    (name "haskell-8.8-colorful-monoids")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colorful-monoids/colorful-monoids-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yan2vxjdcal7zdh12m5yblcl9d1wcgjr09d3g64p09wdh82y6rq"))))
    (properties `((upstream-name . "colorful-monoids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/minad/colorful-monoids#readme")
    (synopsis "Styled console text output using ANSI escape sequences.")
    (description
     "This library provides styled text output using ANSI escape sequences. The colored text is modeled as nested Colored values, which form a Monoid. As a result the colored code has a relatively concise form.")
    (license license:expat)))

haskell-8.8-colorful-monoids

(define-public haskell-8.8-colour
  (package
    (name "haskell-8.8-colour")
    (version "2.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/colour/colour-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rq4l46jx4lpdppy71wf7m1n7pw2jwy788rm35ycwzb1g4clg39v"))))
    (properties `((upstream-name . "colour") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.haskell.org/haskellwiki/Colour")
    (synopsis "A model for human colour/color perception")
    (description
     "This package provides a data type for colours and transparency.
Colours can be blended and composed.
Various colour spaces are supported.
A module of colour names (\"Data.Colour.Names\") is provided.")
    (license license:expat)))

haskell-8.8-colour

(define-public haskell-8.8-composition
  (package
    (name "haskell-8.8-composition")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composition/composition-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0smdyzcnfwiab1wnazmk4szali1ckh7dqcdp9vn7qnnabq7k08vi"))))
    (properties `((upstream-name . "composition") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/composition")
    (synopsis "Combinators for unorthodox function composition")
    (description "")
    (license license:bsd-3)))

haskell-8.8-composition

(define-public haskell-8.8-concurrent-split
  (package
    (name "haskell-8.8-concurrent-split")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-split/concurrent-split-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i9gak7q3ay8g1kzq7dg0bs36bg88n7kwy3h1r6jrni7mz7jh05f"))))
    (properties `((upstream-name . "concurrent-split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/concurrent-split")
    (synopsis "MVars and Channels with distinguished input and output side")
    (description
     "MVars and Channels with distinguished input and output side.
When threads communicate via an MVar or a Chan
there are often clearly defined roles,
which thread is the sender and which one is receiver.
We provide wrappers around the standard concurrency communication channels
that make the distinction clear and type safe.

For example, if a function has a parameter of type @@TChan.In@@
then it is sure that it will only write to that channel.
Additionally if the compiler warns about an unused @@TChan.Out@@
that was created by @@TChan.new@@
then you know that the receiver part of your communication is missing.

This package requires only Haskell 98.

Related packages:

* @@stm-split@@: transactional communication in @@STM@@ monad

* @@chan-split@@: follows the same idea as this package and @@stm-split@@
but requires multi-parameter type classes with functional dependencies.

* @@privileged-concurrency@@:

* @@split-channel@@:")
    (license license:bsd-3)))

haskell-8.8-concurrent-split

(define-public haskell-8.8-cond
  (package
    (name "haskell-8.8-cond")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cond/cond-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12xcjxli1scd4asr4zc77i5q9qka2100gx97hv3vv12l7gj7d703"))))
    (properties `((upstream-name . "cond") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/kallisti-dev/cond")
    (synopsis "Basic conditional and boolean operators with monadic variants.")
    (description
     "This library provides:

* Implementations of various overloaded conditional operations

* Lifted monadic variants of those operations and common boolean operators

* A typeclass for boolean algebras.

Feel free to send ideas and suggestions for new conditional operators to the
maintainer.

Monadic looping constructs are not included as part of this package, since the
monad-loops package has a fairly complete collection of them already.")
    (license license:bsd-3)))

haskell-8.8-cond

(define-public haskell-8.8-conduit-combinators
  (package
    (name "haskell-8.8-conduit-combinators")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-combinators/conduit-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lz70vwp4y4lpsivxl0cshq7aq3968rh48r6rjvpyaj2l0bdj5wp"))))
    (properties `((upstream-name . "conduit-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "DEPRECATED Functionality merged into the conduit package itself")
    (description
     "See docs and README at <http://www.stackage.org/package/conduit-combinators>")
    (license license:expat)))

haskell-8.8-conduit-combinators

(define-public haskell-8.8-console-style
  (package
    (name "haskell-8.8-console-style")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/console-style/console-style-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxxs59bzgf81d3ww285znmmciij3rswfgyc89ngxb6p86l8x0bd"))))
    (properties `((upstream-name . "console-style") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/minad/console-style#readme")
    (synopsis "Styled console text output using ANSI escape sequences.")
    (description "Styled console text output using ANSI escape sequences.")
    (license license:expat)))

haskell-8.8-console-style

(define-public haskell-8.8-constraint-tuples
  (package
    (name "haskell-8.8-constraint-tuples")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraint-tuples/constraint-tuples-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16f9y0q771f3mc38g8jpr875c8grjav6sg9lwbhg7nmcvcczwqk2"))))
    (properties `((upstream-name . "constraint-tuples") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/RyanGlScott/constraint-tuples")
    (synopsis "Partially applicable constraint tuples")
    (description "This library provides classes and type aliases that
emulate the behavior of GHC's constraint tuple syntax.
Unlike GHC's built-in constraint tuples, the types in this
library can be partially applied.

This library exposes four different modules that provide
essentially the same API with slight differences in their
implementation:

* \"Data.Tuple.Constraint\": A @@CTupleN@@ class compiles to
a dictionary data type with @@N@@ fields.

* \"Data.Tuple.Constraint.ClassNewtype\": A @@CTupleN@@ class
compiles to a newtype around the corresponding built-in
constraint tuple type with @@N@@ arguments.

* @@Data.Tuple.Constraint.TypeFamily@@: A @@CTupleN@@ type
alias is a constraint tuple type constructor with @@N@@
arguments obtained by way of a type family. This will
compile to a built-in constraint tuple, but casted with
a type family axiom.

* @@Data.Tuple.Constraint.TypeSynonym@@: A @@CTupleN@@ type
alias is a constraint tuple type constructor with @@N@@
arguments obtained by way of a type synonym. This will
compile directly to a built-in constraint tuple, but
because this requires use of GHC features only present
on 8.0 or later, this module does not export anything on
earlier versions of GHC.")
    (license license:bsd-3)))

haskell-8.8-constraint-tuples

(define-public haskell-8.8-control-bool
  (package
    (name "haskell-8.8-control-bool")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/control-bool/control-bool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10amxm1ff7xhd8g66n65wkbb8d17n77v1nmwxkbzhrask398asp4"))))
    (properties `((upstream-name . "control-bool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/fumieval/control-bool")
    (synopsis "Useful combinators for boolean expressions")
    (description "")
    (license license:bsd-3)))

haskell-8.8-control-bool

(define-public haskell-8.8-control-monad-free
  (package
    (name "haskell-8.8-control-monad-free")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/control-monad-free/control-monad-free-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1habgf7byffqf1rqjkzpihvdhclaafgqsqpfpwp3fgpj5ayk1j33"))))
    (properties `((upstream-name . "control-monad-free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/pepeiborra/control-monad-free")
    (synopsis "Free monads and monad transformers")
    (description
     "This package provides datatypes to construct Free monads,
Free monad transformers, and useful instances. In addition it
provides the constructs to avoid quadratic complexity of left
associative bind, as explained in:

* Janis Voigtlander, /Asymptotic Improvement of Computations over Free Monads, MPC'08/")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-control-monad-free

(define-public haskell-8.8-control-monad-omega
  (package
    (name "haskell-8.8-control-monad-omega")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/control-monad-omega/control-monad-omega-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zx92zyvv10w61rzwhn1d4kggzmi9hggsyjcdav424280x31wb7n"))))
    (properties `((upstream-name . "control-monad-omega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/luqui/control-monad-omega")
    (synopsis "A breadth-first list monad.")
    (description "A monad for enumerating sets: like the list
monad but breadth-first.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-control-monad-omega

(define-public haskell-8.8-cpu
  (package
    (name "haskell-8.8-cpu")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpu/cpu-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0x19mlanmkg96h6h1i04w2i631z84y4rbk22ki4zhgsajysgw9sn"))))
    (properties `((upstream-name . "cpu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/vincenthz/hs-cpu")
    (synopsis "Cpu information and properties helpers.")
    (description
     "Lowlevel cpu routines to get basic properties of the cpu platform, like endianness and architecture.")
    (license license:bsd-3)))

haskell-8.8-cpu

(define-public haskell-8.8-cryptohash-md5
  (package
    (name "haskell-8.8-cryptohash-md5")
    (version "0.11.100.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-md5/cryptohash-md5-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y8q7s2bn4gdknw1wjikdnar2b5pgz3nv3220lxrlgpsf23x82vi"))))
    (properties `((upstream-name . "cryptohash-md5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "191nvffcrlyvr5dq99bbdxxl2qx44bla9adkhklyknf7ipqdd4yj")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/cryptohash-md5")
    (synopsis "Fast, pure and practical MD5 implementation")
    (description
     "A practical incremental and one-pass, pure API to the
<https://en.wikipedia.org/wiki/MD5 MD5 hash algorithm>
(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)
with performance close to the fastest implementations available in other languages.

The implementation is made in C with a haskell FFI wrapper that hides the C implementation.

If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [pureMD5 package](https://hackage.haskell.org/package/pureMD5).

=== Packages in the @@cryptohash-*@@ family

- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>
- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>
- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>
- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>

=== Relationship to the @@cryptohash@@ package and its API

This package has been originally a fork of @@cryptohash-0.11.7@@ because the @@cryptohash@@
package had been deprecated and so this package continues to satisfy the need for a
lightweight package providing the MD5 hash algorithm without any dependencies on packages
other than @@base@@ and @@bytestring@@. The API exposed by @@cryptohash-md5-0.11.*@@'s
\"Crypto.Hash.MD5\" module is guaranteed to remain a compatible superset of the API provided
by the @@cryptohash-0.11.7@@'s module of the same name.

Consequently, this package is designed to be used as a drop-in replacement for @@cryptohash-0.11.7@@'s
\"Crypto.Hash.MD5\" module, though with
a [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).
")
    (license license:bsd-3)))

haskell-8.8-cryptohash-md5

(define-public haskell-8.8-cryptohash-sha1
  (package
    (name "haskell-8.8-cryptohash-sha1")
    (version "0.11.100.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-sha1/cryptohash-sha1-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aqdxdhxhl9jldh951djpwxx8z7gzaqspxl7iwpl84i5ahrsyy9w"))))
    (properties `((upstream-name . "cryptohash-sha1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "10rpxrmqgwihmplczglwxf5q3l13z9j3kvi065z884y4dymmnkgc")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/cryptohash-sha1")
    (synopsis "Fast, pure and practical SHA-1 implementation")
    (description
     "A practical incremental and one-pass, pure API to
the [SHA-1 cryptographic hash algorithm](https://en.wikipedia.org/wiki/SHA-1) according
to [FIPS 180-4](http://dx.doi.org/10.6028/NIST.FIPS.180-4)
with performance close to the fastest implementations available in other languages.

The core SHA-1 algorithm is implemented in C and is thus expected
to be as fast as the standard [sha1sum(1) tool](https://linux.die.net/man/1/sha1sum).
(If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [SHA package](https://hackage.haskell.org/package/SHA).)

Additionally, this package provides support for

- HMAC-SHA-1: SHA-1-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)

conforming to [RFC6234](https://tools.ietf.org/html/rfc6234), [RFC4231](https://tools.ietf.org/html/rfc4231), [RFC5869](https://tools.ietf.org/html/rfc5869), et al..

=== Packages in the @@cryptohash-*@@ family

- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>
- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>
- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>
- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>

=== Relationship to the @@cryptohash@@ package and its API

This package has been originally a fork of @@cryptohash-0.11.7@@ because the @@cryptohash@@
package had been deprecated and so this package continues to satisfy the need for a
lightweight package providing the SHA-1 hash algorithm without any dependencies on packages
other than @@base@@ and @@bytestring@@. The API exposed by @@cryptohash-sha1-0.11.*@@'s
\"Crypto.Hash.SHA1\" module is guaranteed to remain a compatible superset of the API provided
by the @@cryptohash-0.11.7@@'s module of the same name.

Consequently, this package is designed to be used as a drop-in replacement for @@cryptohash-0.11.7@@'s
\"Crypto.Hash.SHA1\" module, though with
a [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).")
    (license license:bsd-3)))

haskell-8.8-cryptohash-sha1

(define-public haskell-8.8-cryptohash-sha256
  (package
    (name "haskell-8.8-cryptohash-sha256")
    (version "0.11.101.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-sha256/cryptohash-sha256-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p85vajcgw9hmq8zsz9krzx0vxh7aggwbg5w9ws8w97avcsn8xaj"))))
    (properties `((upstream-name . "cryptohash-sha256") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")
       #:cabal-revision
       ("4" "00p6sx2n1pzykm3my68hjfk8l66g66rh7inrfcnkd5mhilqdcqxr")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/cryptohash-sha256")
    (synopsis "Fast, pure and practical SHA-256 implementation")
    (description
     "A practical incremental and one-pass, pure API to
the [SHA-256 cryptographic hash algorithm](https://en.wikipedia.org/wiki/SHA-2) according
to [FIPS 180-4](http://dx.doi.org/10.6028/NIST.FIPS.180-4)
with performance close to the fastest implementations available in other languages.

The core SHA-256 algorithm is implemented in C and is thus expected
to be as fast as the standard [sha256sum(1) tool](https://linux.die.net/man/1/sha256sum);
for instance, on an /Intel Core i7-3770/ at 3.40GHz this implementation can
compute a SHA-256 hash over 230 MiB of data in under one second.
(If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [SHA package](https://hackage.haskell.org/package/SHA).)

Additionally, this package provides support for

- HMAC-SHA-256: SHA-256-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)
- HKDF-SHA-256: [HMAC-SHA-256-based Key Derivation Function](https://en.wikipedia.org/wiki/HKDF) (HKDF)

conforming to [RFC6234](https://tools.ietf.org/html/rfc6234), [RFC4231](https://tools.ietf.org/html/rfc4231), [RFC5869](https://tools.ietf.org/html/rfc5869), et al..

=== Packages in the @@cryptohash-*@@ family

- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>
- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>
- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>
- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>

=== Relationship to the @@cryptohash@@ package and its API

This package has been originally a fork of @@cryptohash-0.11.7@@ because the @@cryptohash@@
package had been deprecated and so this package continues to satisfy the need for a
lightweight package providing the SHA-256 hash algorithm without any dependencies on packages
other than @@base@@ and @@bytestring@@. The API exposed by @@cryptohash-sha256-0.11.*@@'s
\"Crypto.Hash.SHA256\" module is guaranteed to remain a compatible superset of the API provided
by the @@cryptohash-0.11.7@@'s module of the same name.

Consequently, this package is designed to be used as a drop-in replacement for @@cryptohash-0.11.7@@'s
\"Crypto.Hash.SHA256\" module, though with
a [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).")
    (license license:bsd-3)))

haskell-8.8-cryptohash-sha256

(define-public haskell-8.8-cryptohash-sha512
  (package
    (name "haskell-8.8-cryptohash-sha512")
    (version "0.11.100.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-sha512/cryptohash-sha512-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1abi23dr3vzslkh0cx24cdn2gy88jjm4qr6rcm543ajyaywqns8h"))))
    (properties `((upstream-name . "cryptohash-sha512") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0q9c08qd8ssl428ifa3g30r0lp81a8afcpyv7yzqjp88ihgcnfa6")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/cryptohash-sha512")
    (synopsis "Fast, pure and practical SHA-512 implementation")
    (description
     "A practical incremental and one-pass, pure API to
the [SHA-512 cryptographic hash algorithm](https://en.wikipedia.org/wiki/SHA-2) according
to [FIPS 180-4](http://dx.doi.org/10.6028/NIST.FIPS.180-4)
with performance close to the fastest implementations available in other languages.

The core SHA-512 algorithm is implemented in C and is thus expected
to be as fast as the standard [sha512sum(1) tool](https://linux.die.net/man/1/sha512sum).
(If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [SHA package](https://hackage.haskell.org/package/SHA).)

Additionally, this package provides support for

- HMAC-SHA-512: SHA-512-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)

conforming to [RFC6234](https://tools.ietf.org/html/rfc6234), [RFC4231](https://tools.ietf.org/html/rfc4231), [RFC5869](https://tools.ietf.org/html/rfc5869), et al..

=== Packages in the @@cryptohash-*@@ family

- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>
- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>
- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>
- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>

=== Relationship to the @@cryptohash@@ package and its API

This package has been originally a fork of @@cryptohash-0.11.7@@ because the @@cryptohash@@
package had been deprecated and so this package continues to satisfy the need for a
lightweight package providing the SHA-512 hash algorithm without any dependencies on packages
other than @@base@@ and @@bytestring@@. The API exposed by @@cryptohash-sha512-0.11.*@@'s
\"Crypto.Hash.SHA512\" module is guaranteed to remain a compatible superset of the API provided
by the @@cryptohash-0.11.7@@'s module of the same name.

Consequently, this package is designed to be used as a drop-in replacement for @@cryptohash-0.11.7@@'s
\"Crypto.Hash.SHA512\" module, though with
a [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).")
    (license license:bsd-3)))

haskell-8.8-cryptohash-sha512

(define-public haskell-8.8-csv
  (package
    (name "haskell-8.8-csv")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/csv/csv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "00767ai09wm7f0yzmpqck3cpgxncpr9djnmmz5l17ajz69139x4c"))
              (patches (search-patches "defaultMain.patch"))))
    (properties `((upstream-name . "csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/csv")
    (synopsis "CSV loader and dumper")
    (description
     "CSV loader and dumper

This library parses and dumps documents that are formatted
according to RFC 4180, \\\"The common Format and MIME Type for
Comma-Separated Values (CSV) Files\\\". This format is used, among
many other things, as a lingua franca for spreadsheets, and for
certain web services.")
    (license license:expat)))

haskell-8.8-csv

(define-public haskell-8.8-curl
  (package
    (name "haskell-8.8-curl")
    (version "1.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/curl/curl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vj4hpaa30jz7c702xpsfvqaqdxz28zslsqnsfx6bf6dpwvck1wh"))))
    (properties `((upstream-name . "curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnew-base")
       #:cabal-revision
       ("1" "02sq2bjw5igc2k9f9ssh58k2ivii2xsvk5r00ky3cxh8j61qy86q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://hackage.haskell.org/package/curl")
    (synopsis "Haskell binding to libcurl")
    (description
     "libcurl is a client-side URL transfer library, supporting FTP, FTPS, HTTP,
HTTPS, SCP, SFTP, TFTP, TELNET, DICT, LDAP, LDAPS and FILE.
libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading,
HTTP form based upload, proxies, cookies, user+password authentication
(Basic, Digest, NTLM, Negotiate, Kerberos4), file transfer resume,
http proxy tunneling and more!

This package provides a Haskell binding to libcurl.")
    (license license:bsd-3)))

haskell-8.8-curl

(define-public haskell-8.8-czipwith
  (package
    (name "haskell-8.8-czipwith")
    (version "1.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/czipwith/czipwith-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11v61zmjfdvfi6r0vy9fsj7j4g8hpq42pjhkzqjcksvlwm08bi1d"))))
    (properties `((upstream-name . "czipwith") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/lspitzner/czipwith/")
    (synopsis "CZipWith class and deriving via TH")
    (description "A typeclass similar to Data.Distributive, but for
data parameterised with a type constructor. The name
comes from the resemblance of its method to the regular
zipWith function. The abstraction is useful for example
for program config handling.")
    (license license:bsd-3)))

haskell-8.8-czipwith

(define-public haskell-8.8-data-accessor
  (package
    (name "haskell-8.8-data-accessor")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-accessor/data-accessor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f1yvvzr24qgrx6k2g101s7vp012802iw6kli903n28nig93yn0x"))))
    (properties `((upstream-name . "data-accessor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmonadfail" "-fcategory" "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Utilities for accessing and manipulating fields of records")
    (description
     "In Haskell 98 the name of a record field
is automatically also the name of a function which gets the value
of the according field.
E.g. if we have

data Pair a b = Pair @{first :: a, second :: b@}

then

> first  :: Pair a b -> a
> second :: Pair a b -> b

However for setting or modifying a field value
we need to use some syntactic sugar, which is often clumsy.

modifyFirst :: (a -> a) -> (Pair a b -> Pair a b)
modifyFirst f r\\@@(Pair @{first=a@}) = r@{first = f a@}

With this package you can define record field accessors
which allow setting, getting and modifying values easily.
The package clearly demonstrates the power of the functional approach:
You can combine accessors of a record and sub-records,
to make the access look like the fields of the sub-record belong to the main record.

Example:

> *Data.Accessor.Example> (first^:second^=10) (('b',7),\"hallo\")
> (('b',10),\"hallo\")

You can easily manipulate record fields in a 'Control.Monad.State.State' monad,
you can easily code 'Show' instances that use the Accessor syntax
and you can parse binary streams into records.
See @@Data.Accessor.Example@@ for demonstration of all features.

It would be great if in revised Haskell versions the names of record fields
are automatically 'Data.Accessor.Accessor's
rather than plain @@get@@ functions.
For now, the package @@data-accessor-template@@ provides Template Haskell functions
for automated generation of 'Data.Acesssor.Accessor's.
See also the other @@data-accessor@@ packages
that provide an Accessor interface to other data types.
The package @@enumset@@ provides accessors to bit-packed records.

For similar packages see @@lenses@@ and @@fclabel@@.
A related concept are editors
<http://conal.net/blog/posts/semantic-editor-combinators/>.
Editors only consist of a modify method
(and @@modify@@ applied to a 'const' function is a @@set@@ function).
This way, they can modify all function values of a function at once,
whereas an accessor can only change a single function value,
say, it can change @@f 0 = 1@@ to @@f 0 = 2@@.
This way, editors can even change the type of a record or a function.
An Arrow instance can be defined for editors,
but for accessors only a Category instance is possible ('(.)' method).
The reason is the @@arr@@ method of the @@Arrow@@ class,
that conflicts with the two-way nature (set and get) of accessors.")
    (license license:bsd-3)))

haskell-8.8-data-accessor

(define-public haskell-8.8-data-binary-ieee754
  (package
    (name "haskell-8.8-data-binary-ieee754")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-binary-ieee754/data-binary-ieee754-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02nzg1barhqhpf4x26mpzvk7jd29nali033qy01adjplv2z5m5sr"))))
    (properties `((upstream-name . "data-binary-ieee754") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://john-millikin.com/software/data-binary-ieee754/")
    (synopsis "Parser/Serialiser for IEEE-754 floating-point values")
    (description "Convert Float and Decimal values to/from raw octets.")
    (license license:expat)))

haskell-8.8-data-binary-ieee754

(define-public haskell-8.8-data-checked
  (package
    (name "haskell-8.8-data-checked")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-checked/data-checked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xjn7iqlsgi51h8gz4x40kc2qb5lwf6nw5kjwgkck1w5gjfd11yw"))))
    (properties `((upstream-name . "data-checked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mvv/data-checked")
    (synopsis "Type-indexed runtime-checked properties ")
    (description
     "This package provides a (phantom) type-indexed newtype evidence-wrapper for
values that are checked to satisfy the property associated with the type.")
    (license license:bsd-3)))

haskell-8.8-data-checked

(define-public haskell-8.8-data-default-class
  (package
    (name "haskell-8.8-data-default-class")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-class/data-default-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0miyjz8d4jyvqf2vp60lyfbnflx6cj2k8apmm9ly1hq0y0iv80ag"))))
    (properties `((upstream-name . "data-default-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/data-default-class")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-8.8-data-default-class

(define-public haskell-8.8-data-endian
  (package
    (name "haskell-8.8-data-endian")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-endian/data-endian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1abz87nha7cpw50yvf8fwvcca350wnnz2d3z9k30sg6wq4y7cc"))))
    (properties `((upstream-name . "data-endian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mvv/data-endian")
    (synopsis "Endian-sensitive data")
    (description
     "This package provides helpers for converting endian-sensitive data.")
    (license license:bsd-3)))

haskell-8.8-data-endian

(define-public haskell-8.8-data-fix
  (package
    (name "haskell-8.8-data-fix")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-fix/data-fix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05mhbcb04gxj1zl5y3zjss4p5lab5wyvzwk9pbg04ax2l24qmwih"))))
    (properties `((upstream-name . "data-fix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rjz9w5rs48nia2imk4345h8daczlgk85ak2k0dssframi2w8v3s")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/anton-k/data-fix")
    (synopsis "Fixpoint data types")
    (description
     "Fixpoint types and recursion schemes. If you define your AST as
fixpoint type, you get fold and unfold operations for free.

Thanks for contribution to: Matej Kollar, Herbert Valerio Riedel")
    (license license:bsd-3)))

haskell-8.8-data-fix

(define-public haskell-8.8-data-has
  (package
    (name "haskell-8.8-data-has")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-has/data-has-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ybkm9zvl0l60f44p80fislbdmwwhavqz31wymnikjsyc01x899w"))))
    (properties `((upstream-name . "data-has") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/winterland1989/data-has")
    (synopsis "Simple extensible product")
    (description "Simple extensible product")
    (license license:bsd-3)))

haskell-8.8-data-has

(define-public haskell-8.8-data-inttrie
  (package
    (name "haskell-8.8-data-inttrie")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-inttrie/data-inttrie-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m5xww8zvsa0whxl89wndpbdz9p5n03q3h3a904nqrxh966psfkb"))))
    (properties `((upstream-name . "data-inttrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/luqui/data-inttrie")
    (synopsis "A simple lazy, infinite trie from integers")
    (description "")
    (license license:bsd-3)))

haskell-8.8-data-inttrie

(define-public haskell-8.8-data-lens-light
  (package
    (name "haskell-8.8-data-lens-light")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-lens-light/data-lens-light-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmkvhl7zcsaxnx7d7b59cnrdnlnr9cfn910rpn34jny7fkydlvj"))))
    (properties `((upstream-name . "data-lens-light") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jmxcg685hqfmin77k3zn15ldqvbklcnm92sgblh2sm02l3k5fki")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/feuerbach/data-lens-light")
    (synopsis "Simple lenses, minimum dependencies")
    (description
     "See <https://github.com/feuerbach/data-lens-light/blob/master/README.md>")
    (license license:expat)))

haskell-8.8-data-lens-light

(define-public haskell-8.8-data-or
  (package
    (name "haskell-8.8-data-or")
    (version "1.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/data-or/data-or-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wp6qqq6k1zbdw9bv9gkzdiz6y8wp8r7zsqbjh54c43j3i7vdvwx"))))
    (properties `((upstream-name . "data-or") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis "A data type for non-exclusive disjunction.")
    (description "A data type for non-exclusive disjunction.")
    (license license:bsd-3)))

haskell-8.8-data-or

(define-public haskell-8.8-data-ordlist
  (package
    (name "haskell-8.8-data-ordlist")
    (version "0.4.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-ordlist/data-ordlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03a9ix1fcx08viwv2jg5ndw1qbkydyyrmjvqr9wasmcik9x1wv3g"))))
    (properties `((upstream-name . "data-ordlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/data-ordlist")
    (synopsis "Set and bag operations on ordered lists")
    (description
     "This module provides set and multiset operations on ordered lists.")
    (license license:bsd-3)))

haskell-8.8-data-ordlist

(define-public haskell-8.8-dec
  (package
    (name "haskell-8.8-dec")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dec/dec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1y8bvlm2371dq2v0jv1srki98nbhbz091wh0g2x58wz78h971f6r"))))
    (properties `((upstream-name . "dec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1v5f5yby0cld1ziqqgkcx8b50qkpviplspm82a6wl7lw28cjm0hs")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Decidable propositions.")
    (description "This package provides a @@Dec@@ type.

@@
type Neg a = a -> Void

data Dec a
\\    = Yes a
\\    | No (Neg a)
@@")
    (license license:bsd-3)))

haskell-8.8-dec

(define-public haskell-8.8-deepseq-generics
  (package
    (name "haskell-8.8-deepseq-generics")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0dcv4kf2g4xyacjpci9kql1gm706lkzhcyz9ks9jkbdvyvs8lf90")))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-deepseq-generics

(define-public haskell-8.8-deepseq-instances
  (package
    (name "haskell-8.8-deepseq-instances")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deepseq-instances/deepseq-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0shhk3hqy02qkrbbd85sbzhga7pvk6fwjnadnp6dkip55gllm24z"))))
    (properties `((upstream-name . "deepseq-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/TravisWhitaker/deepseq-instances")
    (synopsis "Candidate NFData Instances for Types in base")
    (description
     "Candidate NFData Instances for Types in base
This package provides correct-but-controversial NFData instances for types
in base. See this GitHub pull request for more details:
<https://github.com/haskell/deepseq/pull/50>")
    (license license:expat)))

haskell-8.8-deepseq-instances

(define-public haskell-8.8-dictionary-sharing
  (package
    (name "haskell-8.8-dictionary-sharing")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dictionary-sharing/dictionary-sharing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00aspv943qdqhlk39mbk00kb1dsa5r0caj8sslrn81fnsn252fwc"))))
    (properties `((upstream-name . "dictionary-sharing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1mn7jcc7h3b8f1pn9zigqp6mc2n0qb66lms5qnrx4zswdv5w9439")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/dictionary-sharing")
    (synopsis "Sharing/memoization of class members")
    (description "Library for ensuring that class members are shared.")
    (license license:bsd-3)))

haskell-8.8-dictionary-sharing

(define-public haskell-8.8-digest
  (package
    (name "haskell-8.8-digest")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/digest/digest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04gy2zp8yzvv7j9bdfvmfzcz3sqyqa6rwslqcn4vyair2vmif5v4"))))
    (properties `((upstream-name . "digest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-in-base")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/digest")
    (synopsis
     "Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now.")
    (description
     "This package provides efficient cryptographic hash implementations for
strict and lazy bytestrings. For now, CRC32 and Adler32 are supported;
they are implemented as FFI bindings to efficient code from zlib.")
    (license license:bsd-3)))

haskell-8.8-digest

(define-public haskell-8.8-directory-tree
  (package
    (name "haskell-8.8-directory-tree")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/directory-tree/directory-tree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05z5ws58kky3wcwwwv6q16m9vs0lzj35qqs9v5acy9m2nfal8272"))))
    (properties `((upstream-name . "directory-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://brandon.si/code/directory-tree-module-released/")
    (synopsis
     "A simple directory-like tree datatype, with useful IO functions")
    (description
     "A simple directory-like tree datatype, with useful IO functions and Foldable and Traversable instance

Provides a simple data structure mirroring a directory tree on the
filesystem, as well as useful functions for reading and writing
file and directory structures in the IO monad.

Importing the library and optional (useful) Foldable and Traverable libraries:

> import System.Directory.Tree
> import qualified Data.Foldable as F
> import qualified Data.Traversable as T

Write a hand-made directory tree of textfiles (strings) to the disk.
Simulates creating a new user Tux's home directory on a unix machine:

> writeDirectory$ \"/home\" :/ Dir \"Tux\" [File \"README\" \"Welcome!\"]

\"read\" a directory by opening all the files at a filepath with readFile,
returning an 'AnchoredDirTree String' (d2). Then check for any IO failures:

> do (base :/ d2) <- readDirectory \"../parent_dir/dir2/\"
>    let failed = anyFailed d2
>    if failed then ...

Use Foldable instance function to concat a directory 'dir' of text files into a
single file under the same directory:

> do (b :/ dt) <- readDirectory dir
>    let f = F.concat dt
>    return$ b :/ File \"ALL_TEXT\" f

Open all the files in the current directory as lazy bytestrings, ignoring
the base path in Anchored wrapper:

> import qualified Data.ByteString.Lazy as B
> do (_ :/ dTree) <- readDirectoryWith B.readFile \"./\"

This version also offers an experimental function `readDirectoryWithL` that does
lazy directory IO, allowing you to treat the returned `DirTree` as if it were a
normal lazily-generated data structure.

For example, the following does only the amount of IO necessary to list the file
names of the children of the root directory, similar to \"ls /\":

> do d <- readDirectoryWithL readFile \"/\"
>    mapM_ (putStrLn . name) $ contents $ free d

Any ideas or suggestions for improvements are most welcome :-)

/CHANGES/: from 0.11

- export 'System.Directory.Tree.transformDir' as requested

- add test suite to cabal file

- remove redundant @@removeNonexistent@@ (thanks to dmwit for patch)
")
    (license license:bsd-3)))

haskell-8.8-directory-tree

(define-public haskell-8.8-discount
  (package
    (name "haskell-8.8-discount")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discount/discount-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q1lz9dgxp5kq0ngh7pagijmlc616vwrfrb14pjx2vc9s7yvg779"))))
    (properties `((upstream-name . "discount") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages markup) discount)))
    (home-page "http://github.com/lightquake/discount")
    (synopsis "Haskell bindings to the discount Markdown library.")
    (description
     "Discount is a thin wrapper around the discount library <http://www.pell.portland.or.us/~orc/Code/discount/> for parsing Markdown. It supports both additional features such as definition lists and tables, while also having a mode for pure Markdown.")
    (license license:expat)))

haskell-8.8-discount

(define-public haskell-8.8-doldol
  (package
    (name "haskell-8.8-doldol")
    (version "0.4.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doldol/doldol-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r9ylifyyv2mg4b94ikv8q56j0z5f6qa8r2jcpqg0xzdznwxqlv5"))))
    (properties `((upstream-name . "doldol") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xwbdrfzd6z3nwkgnav2drisw2sn464ggkz8fid58cym9hbfpl47")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/QuietJoon/doldol/")
    (synopsis "Flag packer & handler for flaggable data")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/doldol#readme>")
    (license license:bsd-3)))

haskell-8.8-doldol

(define-public haskell-8.8-dotgen
  (package
    (name "haskell-8.8-dotgen")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dotgen/dotgen-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jcn5m9342jrdq7jln2v9msf9978ngrx0pq9rrjh8izhvbvph76s"))))
    (properties `((upstream-name . "dotgen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ku-fpg/dotgen")
    (synopsis "A simple interface for building .dot graph files.")
    (description
     "This package provides a simple interface for building .dot graph files,
for input into the dot and graphviz tools.
It includes a monadic interface for building graphs.")
    (license license:bsd-3)))

haskell-8.8-dotgen

(define-public haskell-8.8-dotnet-timespan
  (package
    (name "haskell-8.8-dotnet-timespan")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dotnet-timespan/dotnet-timespan-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hws424hf4ifijmz2xn3jvwvayll5jig83bgkl9zavwipkzqvjnq"))))
    (properties `((upstream-name . "dotnet-timespan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/YoEight/dotnet-timespan")
    (synopsis ".NET TimeSpan")
    (description ".NET TimeSpan")
    (license license:bsd-3)))

haskell-8.8-dotnet-timespan

(define-public haskell-8.8-double-conversion
  (package
    (name "haskell-8.8-double-conversion")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("1" "01f1jwhdk639dmh8c8sw8gcxbkv24vhwic6yngls8xj2hhgpsdcf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
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

haskell-8.8-double-conversion

(define-public haskell-8.8-dual
  (package
    (name "haskell-8.8-dual")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dual/dual-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rf7vywr342llc0p7rmd4l0r8gsaxza0mh6cdb5mg13m9jfb4125"))))
    (properties `((upstream-name . "dual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cm80lc3p8bpzj0crxccx2fp33p171gz4j56r9fc5g5kza390nrb")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/dual")
    (synopsis "Dual category")
    (description "")
    (license license:bsd-3)))

haskell-8.8-dual

(define-public haskell-8.8-easy-file
  (package
    (name "haskell-8.8-easy-file")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/easy-file/easy-file-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zmlcz723051qpn8l8vi51c5rx1blwrw4094jcshkmj8p9r2xxaj"))))
    (properties `((upstream-name . "easy-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/kazu-yamamoto/easy-file")
    (synopsis "Cross-platform File handling")
    (description "Cross-platform File handling for Unix\\/Mac\\/Windows")
    (license license:bsd-3)))

haskell-8.8-easy-file

(define-public haskell-8.8-echo
  (package
    (name "haskell-8.8-echo")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/echo/echo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vw5ykpwhr39wc0hhcgq3r8dh59zq6ib4zxbz1qd2wl21wqhfkvh"))))
    (properties `((upstream-name . "echo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("1" "0br8wfiybcw5hand4imiw0i5hacdmrax1dv8g95f35gazffbx42l")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/RyanGlScott/echo")
    (synopsis
     "A cross-platform, cross-console way to handle echoing terminal input")
    (description
     "The @@base@@ library exposes the @@hGetEcho@@ and @@hSetEcho@@ functions
for querying and setting echo status, but unfortunately, neither
function works with MinTTY consoles on Windows. This is a serious
issue, since @@hGetEcho@@ and @@hSetEcho@@ are often used to disable
input echoing when a program prompts for a password, so many
programs will reveal your password as you type it on MinTTY!

This library provides an alternative interface which works
with both MinTTY and other consoles. An example is included
which demonstrates how one might prompt for a password using
this library. To build it, make sure to configure with the
@@-fexample@@ flag.")
    (license license:bsd-3)))

haskell-8.8-echo

(define-public haskell-8.8-ed25519
  (package
    (name "haskell-8.8-ed25519")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ed25519/ed25519-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v8msqvgzimhs7p5ri25hrb1ni2wvisl5rmdxy89fc59py79b9fq"))))
    (properties `((upstream-name . "ed25519") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-properties" "-ftest-hlint" "-ftest-doctests" "-fno-donna")
       #:cabal-revision
       ("6" "0qyx6cl52fnll8lp6v9133wfvv3zhvq7v2crn441mng520j9wp48")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://thoughtpolice.github.com/hs-ed25519")
    (synopsis "Ed25519 cryptographic signatures")
    (description
     "This package provides a simple, fast, self-contained copy of the
Ed25519 public-key signature system with a clean interface. It also
includes support for detached signatures, and thorough documentation
on the design and implementation, including usage guidelines.")
    (license license:expat)))

haskell-8.8-ed25519

(define-public haskell-8.8-either-unwrap
  (package
    (name "haskell-8.8-either-unwrap")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/either-unwrap/either-unwrap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g1f5m7bcpnyg2sdvwx8x34ml6dqfrn326s8pbfciaqqf7wddayc"))))
    (properties `((upstream-name . "either-unwrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/gcross/either-unwrap")
    (synopsis "Functions for probing and unwrapping values inside of Either.")
    (description
     "Functions for probing and unwrapping values inside of Either.")
    (license license:bsd-3)))

haskell-8.8-either-unwrap

(define-public haskell-8.8-entropy
  (package
    (name "haskell-8.8-entropy")
    (version "0.4.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/entropy/entropy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qmzz0zgad13zl0kjrxz6cxg8ckn2w8saas2a2j72vbafpzmkixd"))))
    (properties `((upstream-name . "entropy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-halvm")
       #:cabal-revision
       ("2" "0cficrn47d98wyhrp922fh4bgh39zb3r6sv5jkay6yhrxb323nrb")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/TomMD/entropy")
    (synopsis "A platform independent entropy source")
    (description
     "A mostly platform independent method to obtain cryptographically strong entropy
(RDRAND, urandom, CryptAPI, and patches welcome)
Users looking for cryptographically strong (number-theoretically
sound) PRNGs should see the 'DRBG' package too.")
    (license license:bsd-3)))

haskell-8.8-entropy

(define-public haskell-8.8-erf
  (package
    (name "haskell-8.8-erf")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/erf/erf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0dxk2r32ajmmc05vaxcp0yw6vgv4lkbmh8jcshncn98xgsfbgw14"))))
    (properties `((upstream-name . "erf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/erf")
    (synopsis "The error function, erf, and related functions.")
    (description
     "A type class for the error function, erf, and related functions.
Instances for Float and Double.")
    (license license:bsd-3)))

haskell-8.8-erf

(define-public haskell-8.8-exact-combinatorics
  (package
    (name "haskell-8.8-exact-combinatorics")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exact-combinatorics/exact-combinatorics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ay98m9prmd1pi85v2n0rs2432hzb7mxizzg79sv0ln24an8amvj"))))
    (properties `((upstream-name . "exact-combinatorics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://wrengr.org/")
    (synopsis "Efficient exact computation of combinatoric functions.")
    (description "Efficient exact computation of combinatoric functions.")
    (license license:bsd-3)))

haskell-8.8-exact-combinatorics

(define-public haskell-8.8-exception-hierarchy
  (package
    (name "haskell-8.8-exception-hierarchy")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-hierarchy/exception-hierarchy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hph7mng5llcvazq9mqh9pndgbjjwivgmhpqlbf4r1xii7c0ymnx"))))
    (properties `((upstream-name . "exception-hierarchy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "yet")
    (synopsis "Exception type hierarchy with TemplateHaskell")
    (description "see sample code in samples/")
    (license license:bsd-3)))

haskell-8.8-exception-hierarchy

(define-public haskell-8.8-executable-path
  (package
    (name "haskell-8.8-executable-path")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/executable-path/executable-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vxwmnsvx13cawcyhbyljkds0l1vr996ijldycx7nj0asjv45iww"))))
    (properties `((upstream-name . "executable-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~bkomuves/")
    (synopsis "Finding out the full path of the executable.")
    (description
     "The documentation of \"System.Environment.getProgName\" says that
\\\"However, this is hard-to-impossible to implement on some non-Unix OSes,
so instead, for maximum portability, we just return the leafname
of the program as invoked.\\\"
This library tries to provide the missing path.
Note: Since base 4.6.0.0, there is also a function
\"System.Environment.getExecutablePath\".")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-executable-path

(define-public haskell-8.8-exit-codes
  (package
    (name "haskell-8.8-exit-codes")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exit-codes/exit-codes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00cyli96zkyqhjr3lqzrislqyk72xwm2dcqvjagklidh32d4k8ja"))))
    (properties `((upstream-name . "exit-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/JustusAdam/exit-codes")
    (synopsis "Exit codes as defined by BSD")
    (description
     "Expose the exit codes defined by BSD in sysexits.h to the Haskell world.")
    (license license:bsd-3)))

haskell-8.8-exit-codes

(define-public haskell-8.8-extensible-exceptions
  (package
    (name "haskell-8.8-extensible-exceptions")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extensible-exceptions/extensible-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1273nqws9ij1rp1bsq5jc7k2jxpqa0svawdbim05lf302y0firbc"))))
    (properties `((upstream-name . "extensible-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/extensible-exceptions")
    (synopsis "Extensible exceptions")
    (description "This package provides extensible exceptions for both new and
old versions of GHC (i.e., < 6.10).")
    (license license:bsd-3)))

haskell-8.8-extensible-exceptions

(define-public haskell-8.8-extractable-singleton
  (package
    (name "haskell-8.8-extractable-singleton")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extractable-singleton/extractable-singleton-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bf0naqx0gb66dr7g58lfaba87zmg09ynzdb3cyyymwcv4l1knp8"))))
    (properties `((upstream-name . "extractable-singleton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/athanclark/extractable-singleton#readme")
    (synopsis
              "A functor, where the \"stored\" value is isomorphic to Identity")
    (description "")
    (license license:bsd-3)))

haskell-8.8-extractable-singleton

(define-public haskell-8.8-fail
  (package
    (name "haskell-8.8-fail")
    (version "4.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fail/fail-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18nlj6xvnggy61gwbyrpmvbdkq928wv0wx2zcsljb52kbhddnp3d"))))
    (properties `((upstream-name . "fail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (home-page "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail")
    (synopsis "Forward-compatible MonadFail class")
    (description
     "This package contains the \"Control.Monad.Fail\" module providing the
<https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail MonadFail>
class that became available in
<https://hackage.haskell.org/package/base-4.9.0.0 base-4.9.0.0>
for older @@base@@ package versions.

This package turns into an empty package when used with GHC versions
which already provide the \"Control.Monad.Fail\" module to make way for
GHC's own \"Control.Monad.Fail\" module.")
    (license license:bsd-3)))

haskell-8.8-fail

(define-public haskell-8.8-failable
  (package
    (name "haskell-8.8-failable")
    (version "1.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/failable/failable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vffrjywaxwfpzb6a34il772mkkaqwv9372aibijnvwf82rnglwg"))))
    (properties `((upstream-name . "failable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/failable")
    (synopsis
     "A 'Failable' error monad class to unify failure across monads that can fail")
    (description
     "This library contains a 'Failable' error monad class to unify failure across monads and transformers most commonly used to implement pipelines that can fail and does so in a simple nonsense way by providing the means of signaling a computation \"failure\" while striving to keep the failure behaviour consistent with the actual definition of the monad/transformer. Please refer to the README file for a more elaborate description and some examples.")
    (license license:bsd-3)))

haskell-8.8-failable

(define-public haskell-8.8-fast-math
  (package
    (name "haskell-8.8-fast-math")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-math/fast-math-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15dyw88z9abiv6n40fz4g3jpj9v6qbxvqaf0ds32wh46igf1s425"))))
    (properties `((upstream-name . "fast-math") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/fast-math")
    (synopsis
     "Non IEEE-754 compliant compile-time floating-point optimisations")
    (description
     "The \"Numeric.FastMath\" module brings into scope many unsafe @@RULES@@ for
'Float's and 'Double's that can greatly improve run time performance.
It is roughly equivalent to gcc\\'s @@-ffast-math@@ compiler flag.
Optimisation (at least @@-O1@@) must be enabled for any @@RULES@@ to take effect.

These rules are unsafe because they don't strictly adhere to the
IEEE-754 regulations and may subtly change the results of your numeric computations.
See the <http://github.com/liyang/fast-math/ README> on github for more details.")
    (license license:bsd-3)))

haskell-8.8-fast-math

(define-public haskell-8.8-feature-flags
  (package
    (name "haskell-8.8-feature-flags")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/feature-flags/feature-flags-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lssjgksq0k2dd7l5lmzxnr9f5zk3gbh386zfmcqgc4iczdzfk0f"))))
    (properties `((upstream-name . "feature-flags") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/iand675/feature-flags")
    (synopsis
     "A simple library for dynamically enabling and disabling functionality.")
    (description
     "A simple library for dynamically enabling and disabling functionality.")
    (license license:expat)))

haskell-8.8-feature-flags

(define-public haskell-8.8-fedora-dists
  (package
    (name "haskell-8.8-fedora-dists")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-dists/fedora-dists-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hynmwic940vmna0czavbp1wx856ad9am7i6r0d2hq8jynrsin5w"))))
    (properties `((upstream-name . "fedora-dists") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/juhp/fedora-dists")
    (synopsis "Library for Fedora distribution versions")
    (description
     "This library provides the Dist datatype and various associated
metadata functions for Red Hat distributions (Fedora, EPEL, RHEL)
needed for packaging development and building.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-fedora-dists

(define-public haskell-8.8-fgl
  (package
    (name "haskell-8.8-fgl")
    (version "5.7.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fgl/fgl-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "04k5grp5d381wkc7sxgcl0sd3z3nlm6l6mmh103vhzh6p49vhs99"))))
    (properties `((upstream-name . "fgl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fcontainers042")
       #:cabal-revision
       ("1" "0d5b88j42a3f50b7kbksszvwvcgr59f8pcg3p6cvzq9f4n7y51s7")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/fgl")
    (synopsis "Martin Erwig's Functional Graph Library")
    (description
     "An inductive representation of manipulating graph data structures.

Original website can be found at <http://web.engr.oregonstate.edu/~erwig/fgl/haskell>.")
    (license license:bsd-3)))

haskell-8.8-fgl

(define-public haskell-8.8-file-embed
  (package
    (name "haskell-8.8-file-embed")
    (version "0.0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-embed/file-embed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bgysf6z13cmr5lsrhzrkv33sw9x1lkfnga3la2mcakh1aa3ijm4"))))
    (properties `((upstream-name . "file-embed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/snoyberg/file-embed")
    (synopsis "Use Template Haskell to embed file contents directly.")
    (description "Use Template Haskell to read a file or all the files in a
directory, and turn them into (path, bytestring) pairs
embedded in your Haskell code.")
    (license license:bsd-3)))

haskell-8.8-file-embed

(define-public haskell-8.8-filtrable
  (package
    (name "haskell-8.8-filtrable")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filtrable/filtrable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11jas9w611pslc3hanybsdwrh4292zvgigng8y4cv7gm0j908xng"))))
    (properties `((upstream-name . "filtrable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/strake/filtrable.hs")
    (synopsis "Class of filtrable containers")
    (description "See \"Data.Filtrable\".")
    (license license:bsd-3)))

haskell-8.8-filtrable

(define-public haskell-8.8-fingertree
  (package
    (name "haskell-8.8-fingertree")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-fingertree

(define-public haskell-8.8-finite-typelits
  (package
    (name "haskell-8.8-finite-typelits")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/finite-typelits/finite-typelits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iyp9fyd2ki9qcmk9infz9p6rjhsx9jrs3f5yz0yqs8vj5na81yj"))))
    (properties `((upstream-name . "finite-typelits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mniip/finite-typelits")
    (synopsis
     "A type inhabited by finitely many values, indexed by type-level naturals.")
    (description
     "A type inhabited by finitely many values, indexed by type-level naturals.")
    (license license:bsd-3)))

haskell-8.8-finite-typelits

(define-public haskell-8.8-first-class-patterns
  (package
    (name "haskell-8.8-first-class-patterns")
    (version "0.3.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/first-class-patterns/first-class-patterns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bh8ndf77pfh851d7szx0q2lpima6zm1d652s9j7jzchr7icyjvs"))))
    (properties `((upstream-name . "first-class-patterns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/kowainik/first-class-patterns")
    (synopsis "First class patterns and pattern matching, using type families")
    (description
     "This package implements a library of first class patterns. The
initial basis for this library was Morten Rhiger's \\\"Type-safe
pattern combinators\\\"; the patterns can be used in an almost
identical way to those of Morten Rhiger. In a series of blog
posts at
<http://reinerp.wordpress.com/category/pattern-combinators/>
the types of patterns were made more revealing using type
families, and a simpler implementation was used which avoids
some book-keeping.

The library reimplements most of Haskell's built-in
pattern matching facilities, plus some more. The pattern
matches of this library are lightweight: when GHC's
optimisation is turned on, all overhead should be optimised
away, leaving a standard Haskell pattern match.

If you're just reading the documentation for this library for
the first time, start with \"Data.Pattern\".")
    (license license:bsd-3)))

haskell-8.8-first-class-patterns

(define-public haskell-8.8-fixed
  (package
    (name "haskell-8.8-fixed")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fixed/fixed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10l2sh179xarb774q92cff2gkb20rsrlilfwp1fk61rzmz9yn64j"))))
    (properties `((upstream-name . "fixed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/fixed")
    (synopsis "Signed 15.16 precision fixed point arithmetic")
    (description "Signed 15.16 precision fixed point arithmetic")
    (license license:bsd-3)))

haskell-8.8-fixed

(define-public haskell-8.8-floatshow
  (package
    (name "haskell-8.8-floatshow")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/floatshow/floatshow-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zsxjwgm8nkphnmsbz03yvplc2r02qybb387n910j4j6vya98khc"))))
    (properties `((upstream-name . "floatshow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fgmp")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://bitbucket.org/dafis/floatshow")
    (synopsis "Alternative faster String representations for Double and Float,
String representations for more general numeric types.")
    (description "The String representations provided by this package
are generally longer than show's output, which constructs
the shortest string that is parsed as the original
number by read. This requires some time-consuming checks,
so show is slow for floating-point numbers. By producing
a digit-string guaranteed to be long enough to uniquely
determine the number without caring whether there's a
shorter representation, the display functions of this
package can be faster, sometimes by a big margin.
Text.FShow.Raw provides building blocks for representations
of numeric types which don't belong to RealFloat but have
some of its functionality.
The bulk of the code is a minor modification of code from
the base package, whence the GHC License is included as
an extra-source-file.")
    (license license:bsd-3)))

haskell-8.8-floatshow

(define-public haskell-8.8-fmlist
  (package
    (name "haskell-8.8-fmlist")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fmlist/fmlist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19h95ph7lh7llw6j1v1rssrdi5k7xw8x0iac9rgzss371s2w3g9d"))))
    (properties `((upstream-name . "fmlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/sjoerdvisscher/fmlist")
    (synopsis "FoldMap lists")
    (description
     "FoldMap lists are lists represented by their foldMap function.
FoldMap lists have O(1) cons, snoc and append, just like DLists,
but other operations might have favorable performance
characteristics as well. These wild claims are still completely
unverified though.")
    (license license:bsd-3)))

haskell-8.8-fmlist

(define-public haskell-8.8-focus
  (package
    (name "haskell-8.8-focus")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/focus/focus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09d85g6knv3wcn8ib5mpbpjn9xw1pbl3a6qlfy1lrzypv9lrv0ld"))))
    (properties `((upstream-name . "focus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/nikita-volkov/focus")
    (synopsis
     "A general abstraction for manipulating elements of container data structures")
    (description
     "An API for construction of free-form strategies of access and manipulation of
elements of arbitrary data structures.
It allows to implement efficient composite patterns, e.g.,
a simultaneous update and lookup of an element,
and even more complex things.

Strategies are meant to be interpreted by the host data structure libraries.
Thus they allow to implement all access and modification patterns of
a data structure with just a single function,
which interprets strategies.

This library provides pure and monadic interfaces,
so it supports both immutable and mutable data structures.")
    (license license:expat)))

haskell-8.8-focus

(define-public haskell-8.8-foreign-store
  (package
    (name "haskell-8.8-foreign-store")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/foreign-store/foreign-store-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p436dn6l5zjzizcsj0hn10s2n907gr7c8y89i4sm3h69lhqlw86"))))
    (properties `((upstream-name . "foreign-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/chrisdone/foreign-store")
    (synopsis
     "Store a stable pointer in a foreign context to be retrieved later.")
    (description
     "Store a stable pointer in a foreign context to be retrieved later. Persists through GHCi reloads.")
    (license license:bsd-3)))

haskell-8.8-foreign-store

(define-public haskell-8.8-forkable-monad
  (package
    (name "haskell-8.8-forkable-monad")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/forkable-monad/forkable-monad-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qnl3bvqiwh6d7lm3w06is5ivh025c7024695m7fzajvzbpk67jp"))))
    (properties `((upstream-name . "forkable-monad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/System-Indystress/ForkableMonad#readme")
    (synopsis "An implementation of forkIO for monad stacks.")
    (description
     "< This module defines a more generic version of Control.Concurrent's forkIO, which can directly run some complex monadic actions as well as plain IO actions.")
    (license license:bsd-3)))

haskell-8.8-forkable-monad

(define-public haskell-8.8-free-categories
  (package
    (name "haskell-8.8-free-categories")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/free-categories/free-categories-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s5fdl7sgqhwk3zqrbv9qjzp7r12wyh4pwz38yywzhc32gl0vm4r"))))
    (properties `((upstream-name . "free-categories") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/morphismtech/free-categories")
    (synopsis "free categories")
    (description "free categories, paths, and categorical folds")
    (license license:bsd-3)))

haskell-8.8-free-categories

(define-public haskell-8.8-funcmp
  (package
    (name "haskell-8.8-funcmp")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/funcmp/funcmp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1d5appkjhajb9ndv2gwnfz8lw2w53v8baajzmrhg26ihzj1bkch8"))))
    (properties `((upstream-name . "funcmp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/peti/funcmp")
    (synopsis
     "Functional MetaPost is a Haskell frontend to the MetaPost language")
    (description
     "Functional MetaPost is a Haskell frontend to the MetaPost language by John
Hobby. Users write their graphics as Haskell programs, which then emit
MetaPost code that can be compiled into encapsulated PostScript files and
smoothly included into e.g. LaTeX.

A collection of useful examples how to use Functional MetaPost can be found
in the <http://download.savannah.nongnu.org/releases/funcmp/Manual_eng.ps user's manual>.
The document doesn't offer very much detail in terms of explanations, but the
code samples are quite helpful. Further documentation can be found in the
<http://download.savannah.nongnu.org/releases/funcmp/Thesis_eng.ps original thesis>
that describes the implementation. The text is also available in
<http://download.savannah.nongnu.org/releases/funcmp/Thesis.ps German>.

Last but not least, there is a
<http://download.savannah.nongnu.org/releases/funcmp/Tutorial_eng.ps tutorial>
that offers many helpful examples (which is also available in
<http://download.savannah.nongnu.org/releases/funcmp/Tutorial.ps German>).")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-funcmp

(define-public haskell-8.8-fusion-plugin-types
  (package
    (name "haskell-8.8-fusion-plugin-types")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fusion-plugin-types/fusion-plugin-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14lzymjna6faiwj7bdm1jrz42jfj3w1wi2hv66mldjhadf45613d"))))
    (properties `((upstream-name . "fusion-plugin-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/composewell/fusion-plugin-types")
    (synopsis "Types for the fusion-plugin package.")
    (description
     "GHC package that provides types that when used in a package can be identified by the <https://hackage.haskell.org/package/fusion-plugin fusion-plugin> package to perform any extra optimizations.")
    (license license:bsd-3)))

haskell-8.8-fusion-plugin-types

(define-public haskell-8.8-gd
  (package
    (name "haskell-8.8-gd")
    (version "3000.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gd/gd-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1dkzv6zs00qi0jmblkw05ywizc8y3baz7pnz0lcqn1cs1mhcpbhl"))))
    (properties `((upstream-name . "gd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring-in-base")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xml) expat)
                             (@ (gnu packages fontutils)
                                fontconfig-with-documentation)
                             (@ (gnu packages fontutils) freetype)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages gd) gd)
                             (@ (gnu packages image) ijg-libjpeg)
                             (@ (gnu packages image) libpng)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/gd")
    (synopsis "A Haskell binding to a subset of the GD graphics library")
    (description "This is a binding to a (currently very small) subset of
the GD graphics library.")
    (license license:bsd-3)))

haskell-8.8-gd

(define-public haskell-8.8-generic-monoid
  (package
    (name "haskell-8.8-generic-monoid")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-monoid/generic-monoid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pradfv1i2z73f3vxx78ahmfsdszcgi44kn29aww2hdgf2np5l6g"))))
    (properties `((upstream-name . "generic-monoid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0p3hk9c6qn5kbgi3a4my3rq5cc43wcl93hx6axgzi5wkvimpv653")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/generic-monoid")
    (synopsis "Derive monoid instances for product types.")
    (description
     "Using GHC's generics, allow for deriving `Monoid` and `Semigroup` instances for your product types.")
    (license license:bsd-3)))

haskell-8.8-generic-monoid

(define-public haskell-8.8-geniplate-mirror
  (package
    (name "haskell-8.8-geniplate-mirror")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/geniplate-mirror/geniplate-mirror-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08w4rslxzv6z85qzam1yazjb6vrzcr55vsjjyjgsi86pb1a8hr3b"))))
    (properties `((upstream-name . "geniplate-mirror") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/danr/geniplate")
    (synopsis "Use Template Haskell to generate Uniplate-like functions.")
    (description
     "Use Template Haskell to generate Uniplate-like functions.

This is a maintained mirror of the
<http://hackage.haskell.org/package/geniplate geniplate> package,
written by Lennart Augustsson.")
    (license license:bsd-3)))

haskell-8.8-geniplate-mirror

(define-public haskell-8.8-ghc-byteorder
  (package
    (name "haskell-8.8-ghc-byteorder")
    (version "4.11.0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-byteorder/ghc-byteorder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dhzd7ygwm7b3hsrlm48iq4p634laby4hf7c8i7xp0c1g64hmrc6"))))
    (properties `((upstream-name . "ghc-byteorder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "088rz5c0pq2r1w3msy0y9hl4gca8s8nblpcz7w2f5sx5pajg8flj")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ghc-byteorder")
    (synopsis "\"GHC.ByteOrder\" API Compatibility Layer")
    (description
     "This package transparently supplies the \"GHC.ByteOrder\" API as provided in @@base-4.11.0.0@@ for legacy GHC releases which didn't provide it yet (i.e. GHC 7.0 through GHC 8.2).

This release reexports [GHC.ByteOrder from base](https://hackage.haskell.org/package/base-4.11.1.0/docs/GHC-ByteOrder.html) via Cabal's @@reexported-modules@@ mechanism.  For GHC 8.2 and earlier a different release of @@ghc-byteorder@@ (with the same minor version) is eligible by the Cabal solver with a backported \"GHC.ByteOrder\" module.

In order to use this compatibility layer, simply declare a dependency on @@ghc-byteorder@@ in your @@.cabal@@ package description like so

> build-depends: ghc-byteorder ^>= 4.11.0.0

And your code will be able to access this respective API version of the module via the usual

> import GHC.ByteOrder

mechanism.")
    (license license:bsd-3)))

haskell-8.8-ghc-byteorder

(define-public haskell-8.8-ghc-compact
  (package
    (name "haskell-8.8-ghc-compact")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-compact/ghc-compact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03sf8ap1ncjsibp9z7k9xgcsj9s0q3q6l4shf8k7p8dkwpjl1g2h"))))
    (properties `((upstream-name . "ghc-compact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "02dinasxkbrysdhl8w1c1a1ldiqna49zfbl9hgbk4xlnph0xw5wr")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ghc-compact")
    (synopsis "In memory storage of deeply evaluated data structure")
    (description
     "This package provides minimal functionality for working with
\"compact regions\", which hold a fully evaluated Haskell object graph.
These regions maintain the invariant that no pointers live inside the struct
that point outside it, which ensures efficient garbage collection without
ever reading the structure contents (effectively, it works as a manually
managed \"oldest generation\" which is never freed until the whole is
released).
Internally, the struct is stored a single contiguous block of memory,
which allows efficient serialization and deserialization of structs
for distributed computing.
This package provides a low-level API; see also the </package/compact
compact package> which provides a user-facing API.")
    (license license:bsd-3)))

haskell-8.8-ghc-compact

(define-public haskell-8.8-ghc-paths
  (package
    (name "haskell-8.8-ghc-paths")
    (version "0.1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-paths/ghc-paths-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1164w9pqnf7rjm05mmfjznz7rrn415blrkk1kjc0gjvks1vfdjvf"))))
    (properties `((upstream-name . "ghc-paths") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1d5za4k498q48wk6cz0jm3d68rh5ldz6adr8vp24nn7jv17g770w")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ghc-paths")
    (synopsis "Knowledge of GHC's installation directories")
    (description "Knowledge of GHC's installation directories")
    (license license:bsd-3)))

haskell-8.8-ghc-paths

(define-public haskell-8.8-ghc-tcplugins-extra
  (package
    (name "haskell-8.8-ghc-tcplugins-extra")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-tcplugins-extra/ghc-tcplugins-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v9y444gydfyk56y7adpabd633yv1d8jmddvgg272n8jpdpagw67"))))
    (properties `((upstream-name . "ghc-tcplugins-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/clash-lang/ghc-tcplugins-extra")
    (synopsis "Utilities for writing GHC type-checker plugins")
    (description "Utilities for writing GHC type-checker plugins, such as
creating constraints, with a stable API covering multiple
GHC releases.")
    (license license:bsd-2)))

haskell-8.8-ghc-tcplugins-extra

(define-public haskell-8.8-ghcjs-codemirror
  (package
    (name "haskell-8.8-ghcjs-codemirror")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghcjs-codemirror/ghcjs-codemirror-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15r09fdx6q3l8jk8k0hziw9hzvdj7p9jssj8nx78fjkdkxj2rfvc"))))
    (properties `((upstream-name . "ghcjs-codemirror") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ghcjs/CodeMirror")
    (synopsis "Installs CodeMirror JavaScript files")
    (description "CodeMirror is a versatile text editor implemented in
JavaScript for the browser. It is specialized for
editing code, and comes with a number of language modes
and addons that implement more advanced editing
functionaly.")
    (license license:expat)))

haskell-8.8-ghcjs-codemirror

(define-public haskell-8.8-githash
  (package
    (name "haskell-8.8-githash")
    (version "0.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/githash/githash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m2dhmddn9k75j5wyjilbh40n7fkgi7cyic9l0k2s7g9z93yyvql"))))
    (properties `((upstream-name . "githash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/snoyberg/githash#readme")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/githash>")
    (license license:bsd-3)))

haskell-8.8-githash

(define-public haskell-8.8-groups
  (package
    (name "haskell-8.8-groups")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groups/groups-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ggkygkyxw5ga4cza82bjvdraavl294k0h6b62d2px7z3nvqhifx"))))
    (properties `((upstream-name . "groups") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/groups")
    (synopsis "Haskell 98 groups")
    (description "Haskell 98 groups. A group is a monoid with invertibility.")
    (license license:bsd-3)))

haskell-8.8-groups

(define-public haskell-8.8-guarded-allocation
  (package
    (name "haskell-8.8-guarded-allocation")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/guarded-allocation/guarded-allocation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15a6g0bkjf9r0zl7x61ip05kb7k4rf7yxr7z8jybs5q8g78i1b0c"))))
    (properties `((upstream-name . "guarded-allocation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://hub.darcs.net/thielema/guarded-allocation/")
    (synopsis "Memory allocation with added stress tests and integrity checks")
    (description
     "Provide adaptions of @@mallocForeignPtrArray@@ and @@allocaArray@@
that add stress tests and integrity checks.

There are three modules:

* @@Guarded.Plain@@: exports the original allocation routines

* @@Guarded.Debug@@: exports allocation routines that add stress and checks

* @@Guarded@@: exports either @@Guarded.Plain@@ or @@Guarded.Debug@@
depending on the Cabal @@debug@@ flag.

It is intended that you always import the @@Guarded@@ module in user code
and install a package version with enabled debug flag
to a custom package database for debugging.
If you compile your user program you can choose production or debugging mode
by choosing the default or the custom debugging package database,
respectively.

This package is inspired by the famous Amiga debug tool MungWall.
The Linux counterpart is Electric Fence.")
    (license license:bsd-3)))

haskell-8.8-guarded-allocation

(define-public haskell-8.8-haddock-library
  (package
    (name "haskell-8.8-haddock-library")
    (version "1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haddock-library/haddock-library-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15xpv29yh3kb9qq9gmws2l8m64i7phvf47y08vxc2j55101sg4vh"))))
    (properties `((upstream-name . "haddock-library") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09v6lq3ncf3ax7b6n36vhsflm488x0qc8sgc3w17m09x1jl48d99")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.haskell.org/haddock/")
    (synopsis "Library exposing some functionality of Haddock.")
    (description
     "Haddock is a documentation-generation tool for Haskell
libraries. These modules expose some
functionality of it without pulling in the GHC
dependency. Please note that the API is likely
to change so be sure to specify upper bounds in
your projects. For interacting with Haddock
itself, see the [haddock package](https://hackage.haskell.org/package/haddock).")
    (license license:bsd-2)))

haskell-8.8-haddock-library

(define-public haskell-8.8-happy
  (package
    (name "haskell-8.8-happy")
    (version "1.19.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/happy/happy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03xlmq6qmdx4zvzw8bp33kd9g7yvcq5cz4wg50xilw812kj276pv"))))
    (properties `((upstream-name . "happy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")
       #:cabal-revision
       ("1" "13wydw1mmdry4l9r63vxjk4h55ci9hgwzn1a842qqk1m2rb4xiln")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://www.haskell.org/happy/")
    (synopsis "Happy is a parser generator for Haskell")
    (description
     "Happy is a parser generator for Haskell.  Given a grammar
specification in BNF, Happy generates Haskell code to parse the
grammar.  Happy works in a similar way to the @@yacc@@ tool for C.")
    (license license:bsd-2)))

haskell-8.8-happy

(define-public haskell-8.8-hashable
  (package
    (name "haskell-8.8-hashable")
    (version "1.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable/hashable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d4sn4xjf0swrfg8pl93ipavbj12ch3a9aykhkl6mjnczc9m8bl2"))))
    (properties `((upstream-name . "hashable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-finteger-gmp" "-fsse2" "-f-sse41" "-f-examples")
       #:cabal-revision
       ("2" "16va8hx4ynw0n5s2warhs13ilj7hrs5fcdn140h1fiix480as36n")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/tibbe/hashable")
    (synopsis "A class for types that can be converted to a hash value")
    (description "This package defines a class, 'Hashable', for types that
can be converted to a hash value.  This class
exists for the benefit of hashing-based data
structures.  The package provides instances for
basic types and a way to combine hash values.")
    (license license:bsd-3)))

haskell-8.8-hashable

(define-public haskell-8.8-haskeline
  (package
    (name "haskell-8.8-haskeline")
    (version "0.7.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskeline/haskeline-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1inyq7qwih0hnqlm6gy769vsxzjpvqx9ry390dmcvvql9520hrfj"))))
    (properties `((upstream-name . "haskeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fterminfo")
       #:cabal-revision
       ("2" "122dlq7yxir5l23zbyiwsf3q666rrjpan92a7cr09jlybwi5dwzf")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/judah/haskeline")
    (synopsis "A command-line interface for user input, written in Haskell.")
    (description
     "Haskeline provides a user interface for line input in command-line
programs.  This library is similar in purpose to readline, but since
it is written in Haskell it is (hopefully) more easily used in other
Haskell programs.

Haskeline runs both on POSIX-compatible systems and on Windows.")
    (license license:bsd-3)))

haskell-8.8-haskeline

(define-public haskell-8.8-haskell-gi-overloading
  (package
    (name "haskell-8.8-haskell-gi-overloading")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi-overloading/haskell-gi-overloading-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ak8f79ia9zlk94zr02sq8bqi5n5pd8ria8w1dj3adcdvpw9gmry"))))
    (properties `((upstream-name . "haskell-gi-overloading") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Overloading support for haskell-gi")
    (description
     "Control overloading support in haskell-gi generated bindings")
    (license license:bsd-3)))

haskell-8.8-haskell-gi-overloading

(define-public haskell-8.8-haskell-lexer
  (package
    (name "haskell-8.8-haskell-lexer")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lexer/haskell-lexer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mb3np20ig0hbgnfxrzr3lczq7ya4p76g20lvnxch8ikck61afii"))))
    (properties `((upstream-name . "haskell-lexer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/yav/haskell-lexer")
    (synopsis "A fully compliant Haskell 98 lexer.")
    (description "A fully compliant Haskell 98 lexer.")
    (license license:bsd-3)))

haskell-8.8-haskell-lexer

(define-public haskell-8.8-heap
  (package
    (name "haskell-8.8-heap")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/heap/heap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ahpsfmb76728w71xn4021ad7z752n6aqqgzdpcyis9i22g4ihm4"))))
    (properties `((upstream-name . "heap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/heap")
    (synopsis "Heaps in Haskell")
    (description "A flexible Haskell implementation of minimum, maximum,
minimum-priority, maximum-priority and custom-ordered
heaps.")
    (license license:bsd-3)))

haskell-8.8-heap

(define-public haskell-8.8-heaps
  (package
    (name "haskell-8.8-heaps")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/heaps/heaps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vg39qm8g69n10ys9v9knnaq5dqdjndj6ffy0xb78bwrr3rm5mci"))))
    (properties `((upstream-name . "heaps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/heaps/")
    (synopsis "Asymptotically optimal Brodal/Okasaki heaps.")
    (description
     "Asymptotically optimal Brodal\\/Okasaki bootstrapped skew-binomial heaps from the paper <http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.48.973 \"Optimal Purely Functional Priority Queues\">, extended with a 'Foldable' interface.")
    (license license:bsd-3)))

haskell-8.8-heaps

(define-public haskell-8.8-hedgehog-corpus
  (package
    (name "haskell-8.8-hedgehog-corpus")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-corpus/hedgehog-corpus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "194pj8mjia5v4mc0hcyxgipf15j0dr44w02r1bcf89b4b8vnk5hq"))))
    (properties `((upstream-name . "hedgehog-corpus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/tmcgilchrist/hedgehog-corpus")
    (synopsis "hedgehog-corpus")
    (description "Collection of strings for testing things.")
    (license license:bsd-3)))

haskell-8.8-hedgehog-corpus

(define-public haskell-8.8-heredoc
  (package
    (name "haskell-8.8-heredoc")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/heredoc/heredoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h0g2f7yscwl1ba1yn3jnz2drvd6ns9m910hwlmq3kdq3k39y3f9"))))
    (properties `((upstream-name . "heredoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://hackage.haskell.org/package/heredoc")
    (synopsis "multi-line string / here document using QuasiQuotes")
    (description "multi-line string / here document using QuasiQuotes")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-heredoc

(define-public haskell-8.8-hlibcpuid
  (package
    (name "haskell-8.8-hlibcpuid")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hlibcpuid/hlibcpuid-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ncsxmdcg2jr76vsja5nq39kiq7lsqm61bimspk4yk5d0z490n81"))))
    (properties `((upstream-name . "hlibcpuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/dtaskoff/hlibcpuid#readme")
    (synopsis "Bindings to https://github.com/anrieff/libcpuid")
    (description
     "Please see the README on GitHub at <https://github.com/dtaskoff/hlibcpuid#readme>")
    (license license:expat)))

haskell-8.8-hlibcpuid

(define-public haskell-8.8-hmpfr
  (package
    (name "haskell-8.8-hmpfr")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hmpfr/hmpfr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x8n5245rm0brjl7vhcabazh1k69dcjdas70pnrnlkx26bqfpb9b"))))
    (properties `((upstream-name . "hmpfr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-integer-simple")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages multiprecision) mpfr)))
    (home-page "https://github.com/michalkonecny/hmpfr")
    (synopsis "Haskell binding to the MPFR library")
    (description "Haskell binding to the MPFR library.

The library includes both a pure and a mutable interface.
The mutable interface should have a lot less overhead
than the pure one.

Some simple examples of usage can be found in demo/Demo.hs.")
    (license license:bsd-3)))

haskell-8.8-hmpfr

(define-public haskell-8.8-hnock
  (package
    (name "haskell-8.8-hnock")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hnock/hnock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1d3w6lmvsanzwjs3r424fhalv19ia6k4w6m37jaqkq60lmzkfp5d"))))
    (properties `((upstream-name . "hnock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jtobin/hnock")
    (synopsis "A Nock interpreter.")
    (description
     "A Nock interpreter.

From the shell, simply pipe Nock expressions into the hnock executable:

> $ echo '*[[[4 5] [6 14 15]] [0 7]]' | hnock
> [14 15]

For playing around in GHCi, import the Nock library and use hnock to parse
and evaluate Nock expressions:

> *Nock> hnock \"*[[[4 5] [6 14 15]] [0 7]]\"
> [14 15]

To evaluate raw nock Nouns, i.e. to compute nock(a) for some noun a, use the
'nock' function:

> *Nock> let expression = hnock \"[[[4 5] [6 14 15]] [0 7]]\"
> *Nock> expression
> [[[4 5] [6 [14 15]]] [0 7]]
> *Nock> nock expression
> [14 15]")
    (license license:expat)))

haskell-8.8-hnock

(define-public haskell-8.8-hostname
  (package
    (name "haskell-8.8-hostname")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hostname/hostname-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p6gm4328946qxc295zb6vhwhf07l1fma82vd0siylnsnsqxlhwv"))))
    (properties `((upstream-name . "hostname") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/hostname")
    (synopsis
     "A very simple package providing a cross-platform means of determining the hostname")
    (description "")
    (license license:bsd-3)))

haskell-8.8-hostname

(define-public haskell-8.8-hs-php-session
  (package
    (name "haskell-8.8-hs-php-session")
    (version "0.0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-php-session/hs-php-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xwdikiqy2dxyzr6wx51wy51vifsvshblx7kkhfqd7izjf87ww8f"))))
    (properties `((upstream-name . "hs-php-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1dj1r73v31bd2091pqvrg7vdc3lgjh373ynxn49dlhqmyw45kiw8")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://codeberg.org/elblake/hs-php-session")
    (synopsis "PHP session and values serialization")
    (description
     "A library for encoding and decoding serialized PHP sessions in the format
used by the \\\"php\\\" setting for session.serialize_handler as well as
encoding and decoding serialized values.")
    (license license:bsd-3)))

haskell-8.8-hs-php-session

(define-public haskell-8.8-hsc2hs-notests
  (package
    (name "haskell-8.8-hsc2hs-notests")
    (version "0.68.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsc2hs/hsc2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jl94cr2jhjmvz7l9idpr352vwxlsanyiq7ya1vvrlry3vj1aygx"))))
    (properties `((upstream-name . "hsc2hs") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-in-ghc-tree")
       #:cabal-revision
       ("1" "0nzmlx0kdsq5231m6dbvdb5zssj1h4lkqplp8rb28z3yl5h6h3sa")))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-hsc2hs-notests

(define-public haskell-8.8-hscolour
  (package
    (name "haskell-8.8-hscolour")
    (version "1.24.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hscolour/hscolour-" version
                    ".tar.gz"))
              (sha256
               (base32
                "079jwph4bwllfp03yfr26s5zc6m6kw3nhb1cggrifh99haq34cr4"))))
    (properties `((upstream-name . "hscolour") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~malcolm/hscolour/")
    (synopsis "Colourise Haskell code.")
    (description
     "hscolour is a small Haskell script to colourise Haskell code. It currently
has six output formats:
ANSI terminal codes (optionally XTerm-256colour codes),
HTML 3.2 with <font> tags,
HTML 4.01 with CSS,
HTML 4.01 with CSS and mouseover annotations,
XHTML 1.0 with inline CSS styling,
LaTeX,
and mIRC chat codes.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-hscolour

(define-public haskell-8.8-hsp
  (package
    (name "haskell-8.8-hsp")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsp/hsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1ayfywgrlmzivsq6lirmgvl65x1shf8041lzw2yh245rkmd91lsf"))))
    (properties `((upstream-name . "hsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://hub.darcs.net/nibro/hsp")
    (synopsis
     "Haskell Server Pages is a library for writing dynamic server-side web pages.")
    (description
     "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of
writing dynamic server-side web pages. Features include:

* Embedded XML syntax

* A (low-to-mid-level) programming model for writing dynamic web pages

* A cgi-handler utility (as a separate package, hsp-cgi)

For details on usage, please see the website, and the author's thesis.")
    (license license:bsd-3)))

haskell-8.8-hsp

(define-public haskell-8.8-html
  (package
    (name "haskell-8.8-html")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/html/html-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0q9hmfii62kc82ijlg238fxrzxhsivn42x5wd6ffcr9xldg4jd8c"))))
    (properties `((upstream-name . "html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/html")
    (synopsis "HTML combinator library")
    (description "This package contains a combinator library for constructing
HTML documents.")
    (license license:bsd-3)))

haskell-8.8-html

(define-public haskell-8.8-hw-int
  (package
    (name "haskell-8.8-hw-int")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-int/hw-int-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13ifa28b12hiibhmwas5hn3dmmiz2rihlc837hhii0z1ng03s360"))))
    (properties `((upstream-name . "hw-int") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0q6w4a9dnwx1y34dwb439vg25lkpqmgxlq9r3j94sb4h90qm91dw")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/haskell-works/hw-int#readme")
    (synopsis "Additional facilities for Integers")
    (description "Additional faciltiies for Integers. Please see README.md")
    (license license:bsd-3)))

haskell-8.8-hw-int

(define-public haskell-8.8-hxt-charproperties
  (package
    (name "haskell-8.8-hxt-charproperties")
    (version "9.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-charproperties/hxt-charproperties-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bk88hj2pqlvcnyfncqyb9j7w9vvdxcq3cgr0w2l09c0abas23pm"))))
    (properties `((upstream-name . "hxt-charproperties") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-profile")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Character properties and classes for XML and Unicode")
    (description
     "Character properties defined by XML and Unicode standards.
These modules contain predicates for Unicode blocks and char proprties
and character predicates defined by XML.
Supported Unicode version is 12.1.0
9.3.0.2: Supported Unicode version 9.0.0")
    (license license:expat)))

haskell-8.8-hxt-charproperties

(define-public haskell-8.8-iconv
  (package
    (name "haskell-8.8-iconv")
    (version "0.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iconv/iconv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0m5m0ph5im443xcz60wm1zp98bnmf8l1b5gfllxwhjriwdl52hin"))))
    (properties `((upstream-name . "iconv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/iconv")
    (synopsis "String encoding conversion")
    (description "Provides an interface to the POSIX iconv library functions
for string encoding conversion.")
    (license license:bsd-3)))

haskell-8.8-iconv

(define-public haskell-8.8-ieee754
  (package
    (name "haskell-8.8-ieee754")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ieee754/ieee754-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lcs521g9lzy9d7337vg4w7q7s8500rfqy7rcifcz6pm6yfgyb8f"))))
    (properties `((upstream-name . "ieee754") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/patperry/hs-ieee754")
    (synopsis "Utilities for dealing with IEEE floating point numbers")
    (description
     "Utilities for dealing with IEEE floating point numbers, ported
from the Tango math library; approximate and exact equality
comparisons for general types.")
    (license license:bsd-3)))

haskell-8.8-ieee754

(define-public haskell-8.8-if
  (package
    (name "haskell-8.8-if")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/if/if-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "078lg8b6n4bhlhh6ax4k4n8k8fk7hiwcnzyr4h9zbq6vczl77xi8"))))
    (properties `((upstream-name . "if") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/winterland1989/if")
    (synopsis "(?) and (?>) conditional operator")
    (description
     "(?) and (?>) conditional operator, it can be used with any existed version of base.")
    (license license:bsd-3)))

haskell-8.8-if

(define-public haskell-8.8-iff
  (package
    (name "haskell-8.8-iff")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iff/iff-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0dr8w7lqb1yv4zg8mkqjws215pm5h9zd3n2g6wnpwc41hj04b23b"))))
    (properties `((upstream-name . "iff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~thielema/iff/")
    (synopsis "Constructing and dissecting IFF files")
    (description
     "The Interchange File Format of Electronic Arts is a container format used for many kinds of data.
Common file formats are
e.g. IFF-8SVX for 8-bit sampled sounds and
IFF-ILBM for images in an interleaved way that is close to image representation in Amiga computers.
Cf. <http://netghost.narod.ru/gff/vendspec/iff/index.htm>
This library does only handle the IFF container format
and does not handle any specific IFF data type.
The intention is the same as of Amiga's @@iffparse.library@@.
See <http://wiki.amigaos.net/index.php/IFFParse_Library>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-iff

(define-public haskell-8.8-ihs
  (package
    (name "haskell-8.8-ihs")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ihs/ihs-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1zfmxgb3l7mihzjyggzb30d9b57y2z80yk562z2x2padsqx95gqk"))))
    (properties `((upstream-name . "ihs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/minad/ihs")
    (synopsis "Interpolated Haskell")
    (description
     "This abomination allows you to quickly generate text files in a style similar to ERB from Ruby or PHP. But you stay typesafe!")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-ihs

(define-public haskell-8.8-indents
  (package
    (name "haskell-8.8-indents")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/indents/indents-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dpcwiz0dwn5aqdsc50plfaawh86adhf7jx5dsmhn5q5nz32qn51"))))
    (properties `((upstream-name . "indents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zbcf8m4n63ff06hjp0mr18i59y5wd6c1k5z1j6rnl7kymghkjrg")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/jaspervdj/indents")
    (synopsis "indentation sensitive parser-combinators for parsec")
    (description
     "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.")
    (license license:bsd-3)))

haskell-8.8-indents

(define-public haskell-8.8-indexed
  (package
    (name "haskell-8.8-indexed")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/indexed/indexed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hpmzg9ziqgng4wh4g0x4p6sdvn9f31hymwxdvfffydzqq70k17g"))))
    (properties `((upstream-name . "indexed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/reinerp/indexed")
    (synopsis "Haskell98 indexed functors, monads, comonads")
    (description "Haskell98 indexed functors, monads, comonads")
    (license license:bsd-3)))

haskell-8.8-indexed

(define-public haskell-8.8-indexed-profunctors
  (package
    (name "haskell-8.8-indexed-profunctors")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-profunctors/indexed-profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rdvj62rapkkj5zv5jyx2ynfwn2iszx1w2q08j9ik17zklqv9pri"))))
    (properties `((upstream-name . "indexed-profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/indexed-profunctors")
    (synopsis "Utilities for indexed profunctors")
    (description
     "This package contains basic definitions related to indexed profunctors.  These
are primarily intended as internal utilities to support the @@optics@@ and
@@generic-lens@@ package families.")
    (license license:bsd-3)))

haskell-8.8-indexed-profunctors

(define-public haskell-8.8-inj
  (package
    (name "haskell-8.8-inj")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/inj/inj-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1dhssqy5369vzcxkkrv8bi5bjz0z67dawwzc27mz9m40bq7324j0"))))
    (properties `((upstream-name . "inj") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/inj")
    (synopsis "A class for injective (one-to-one) functions")
    (description "")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-inj

(define-public haskell-8.8-inspection-testing
  (package
    (name "haskell-8.8-inspection-testing")
    (version "0.4.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inspection-testing/inspection-testing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nz8j56l3h7sn927mcsms9af9rpqkmxc0c0vf9mln567wpb75h3"))))
    (properties `((upstream-name . "inspection-testing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-more-tests")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/nomeata/inspection-testing")
    (synopsis "GHC plugin to do inspection testing")
    (description
     "Some carefully crafted libraries make promises to their
users beyond functionality and performance.

Examples are: Fusion libraries promise intermediate data
structures to be eliminated. Generic programming libraries promise
that the generic implementation is identical to the
hand-written one. Some libraries may promise allocation-free
or branch-free code.

Conventionally, the modus operandi in all these cases is
that the library author manually inspects the (intermediate or
final) code produced by the compiler. This is not only
tedious, but makes it very likely that some change, either
in the library itself or the surrounding eco-system,
breaks the library’s promised without anyone noticing.

This package provides a disciplined way of specifying such
properties, and have them checked by the compiler. This way,
this checking can be part of the ususal development cycle
and regressions caught early.

See the documentation in \"Test.Inspection\" or the project
webpage for more examples and more information.")
    (license license:expat)))

haskell-8.8-inspection-testing

(define-public haskell-8.8-instance-control
  (package
    (name "haskell-8.8-instance-control")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/instance-control/instance-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wvb3hia5n0nmfd5ih17qp6f7517s164c5mhrn29ai7vv20x6vbx"))))
    (properties `((upstream-name . "instance-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/lazac/instance-control")
    (synopsis
     "Controls how the compiler searches for instances using type families.")
    (description
     "GHC has no capability to perform graph searches on instance definition. Because of that,
transitive rules for type classes cannot be defined. This package solves the issue with
type functions performing a search on the graph where nodes are types and edges are
rules from a given rule database. After constructing the type-level representation of the
wanted path, the system constructs the needed functions from the value-level representation
of the database.")
    (license license:bsd-3)))

haskell-8.8-instance-control

(define-public haskell-8.8-int-cast
  (package
    (name "haskell-8.8-int-cast")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1l5n3hsa8gr0wzc3cb32ha2j8kcf976i84z04580q41macf0r0h6")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/int-cast")
    (synopsis "Checked conversions between integral types")
    (description
     "Provides statically or dynamically checked conversions between integral types. See documentation in \"Data.IntCast\" for more details.")
    (license license:bsd-3)))

haskell-8.8-int-cast

(define-public haskell-8.8-integer-logarithms
  (package
    (name "haskell-8.8-integer-logarithms")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integer-logarithms/integer-logarithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zzapclfabc76g8jzsbsqwdllx2zn0gp4raq076ib6v0mfgry2lv"))))
    (properties `((upstream-name . "integer-logarithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-finteger-gmp" "-f-check-bounds")
       #:cabal-revision
       ("3" "0z81yksgx20d0rva41blsjcp3jsp1qy9sy385fpig0l074fzv6ym")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskellari/integer-logarithms")
    (synopsis "Integer logarithms.")
    (description
     "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"
from the arithmoi package.

Also provides \"GHC.Integer.Logarithms.Compat\" and
\"Math.NumberTheory.Power.Natural\" modules, as well as some
additional functions in migrated modules.")
    (license license:expat)))

haskell-8.8-integer-logarithms

(define-public haskell-8.8-io-machine
  (package
    (name "haskell-8.8-io-machine")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-machine/io-machine-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jqw6g0nm1mx9c6qnbrwr5mpgaiyfjzqwj0r6mzhsvxvzkawip05"))))
    (properties `((upstream-name . "io-machine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/YoshikuniJujo/io-machine#readme")
    (synopsis "Easy I/O model to learn IO monad")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-io-machine

(define-public haskell-8.8-io-manager
  (package
    (name "haskell-8.8-io-manager")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-manager/io-manager-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04584flxw3qwzdnas8nbxp6riw6jfvhgy0kkkzjkxg53y1d8ri3s"))))
    (properties `((upstream-name . "io-manager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/io-manager")
    (synopsis "Skeleton library around the IO monad.")
    (description "A skeleton library to help learners of Haskell
concentrate on the pure-functional aspect and
let the IO be handled by the library.")
    (license license:bsd-3)))

haskell-8.8-io-manager

(define-public haskell-8.8-io-storage
  (package
    (name "haskell-8.8-io-storage")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-storage/io-storage-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ga9bd7iri6vlsxnjx765yy3bxc4lbz644wyw88yzvpjgz6ga3cs"))))
    (properties `((upstream-name . "io-storage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/willdonnelly/io-storage")
    (synopsis "A key-value store in the IO monad.")
    (description
     "This library allows an application to extend the 'global state'
hidden inside the IO monad with semi-arbitrary data. Data is
required to be 'Typeable'. The library provides an essentially
unbounded number of key-value stores indexed by strings, with
each key within the stores also being a string.")
    (license license:bsd-3)))

haskell-8.8-io-storage

(define-public haskell-8.8-irc-ctcp
  (package
    (name "haskell-8.8-irc-ctcp")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-ctcp/irc-ctcp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16mp9dpp57id760zc932dszd5r1ncskwwxrp0djka5r1alddjz6n"))))
    (properties `((upstream-name . "irc-ctcp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/barrucadu/irc-ctcp")
    (synopsis "A CTCP encoding and decoding library for IRC clients.")
    (description
     "CTCP (Client To Client Protocol) is a way of sending arbitrary data
over an IRC network, which may include bytes not allowed in standard
IRC messages. CTCPs are sent as a PRIVMSG or NOTICE, where the first
and last characters as @@\\\\001@@ (SOH), and special bytes are escaped
by encoding them into a two-byte sequence beginning with @@\\\\020@@
(DLE). CTCPs consist of command name (typically in upper-case)
followed by list of space-separated arguments, which may be empty.

One use of CTCPs supported by the vast majority of IRC clients today
is the ACTION command, typically invoked with /me. For example, if
the user @@foo@@ in the channel @@#bar@@ were to issue

> /me dances

everyone in the channel would receive the message

> :foo PRIVMSG #bar :\\001ACTION dances\\001

Other common uses of CTCP include requesting the name and version of
a user's IRC client, their local time, determining ping times, and
initiating file transfers (DCC).

Characters are escaped as follows:

[@@\\\\000@@ (NUL)] @@\\\\020 \\\\060@@ (\"0\")

[@@\\\\012@@ (NL)]  @@\\\\020 \\\\156@@ (\"n\")

[@@\\\\015@@ (CR)]  @@\\\\020 \\\\162@@ (\"r\")

[@@\\\\020@@ (DLE)] @@\\\\020 \\\\020@@

All other appearences of the escape character are errors, and are
dropped.

See <http://www.irchelp.org/irchelp/rfc/ctcpspec.html> for more
details.")
    (license license:expat)))

haskell-8.8-irc-ctcp

(define-public haskell-8.8-iso3166-country-codes
  (package
    (name "haskell-8.8-iso3166-country-codes")
    (version "0.20140203.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/iso3166-country-codes/iso3166-country-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dhaddxawpk74dpyz1xm3i9rh8ksiqd36p25isdfzjhvsqff1mml"))))
    (properties `((upstream-name . "iso3166-country-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0n01pmvkqi0w9l203i1v7kb6bb867plv4h5hmzlkpnhrf5abf0zf")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/iso3166-country-codes")
    (synopsis "A datatype for ISO 3166 country codes")
    (description "Defines datatype CountryCode that has a two
letter constructor corresponding to each of the two letter
ISO 3166 country codes, and mappings from that type to the
official name of the country.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-iso3166-country-codes

(define-public haskell-8.8-iso639
  (package
    (name "haskell-8.8-iso639")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iso639/iso639-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s15vb00nqxnmm59axapipib1snh6q5qhfdw7pgb9vdsz8i86jqj"))))
    (properties `((upstream-name . "iso639") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/HugoDaniel/iso639")
    (synopsis "ISO-639-1 language codes ")
    (description
     "
ISO-639-1 language codes mapping to Haskell datatypes

The code is generated from the <http://www.loc.gov/standards/iso639-2/php/English_list.php official site> using haskell-src-exts in an extra file included in the .tar.gz.

Special thanks to Petter Bergman for the suggestions and bug fixing
")
    (license license:bsd-3)))

haskell-8.8-iso639

(define-public haskell-8.8-ix-shapable
  (package
    (name "haskell-8.8-ix-shapable")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ix-shapable/ix-shapable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ljlzywnw0h8ijwb6yh4r8l6z7bbknwxv9cjq7lkfx7m2vgy1sh"))))
    (properties `((upstream-name . "ix-shapable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ix-shapable")
    (synopsis "Reshape multi-dimensional arrays.")
    (description "Reshape multi-dimensional arrays.

Provides the 'Shapable' class, respresenting those
instances of 'Ix' that provide to arrays indexing
that is isomorphic to that of C-style
multi-dimensional arrays.

Factored out of the 'carray' library with the kind
permission of its author.")
    (license license:bsd-3)))

haskell-8.8-ix-shapable

(define-public haskell-8.8-jailbreak-cabal
  (package
    (name "haskell-8.8-jailbreak-cabal")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jailbreak-cabal/jailbreak-cabal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1221gxggyk3pjqkc72wxx9gjl8dvqna1rn9nh9zkcmdpv5yww7wd"))))
    (properties `((upstream-name . "jailbreak-cabal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p1p7ax750jyk2hzq6gpckwylfbx4n5izflxysdy4sylpimdz16m")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/peti/jailbreak-cabal")
    (synopsis "Strip version restrictions from Cabal files")
    (description
     "Strip version restrictions from build dependencies in Cabal files.")
    (license license:bsd-3)))

haskell-8.8-jailbreak-cabal

(define-public haskell-8.8-js-dgtable
  (package
    (name "haskell-8.8-js-dgtable")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/js-dgtable/js-dgtable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b10kx703kbkb5q1ggdpqcrxqjb33kh24khk21rb30w0xrdxd3g2"))))
    (properties `((upstream-name . "js-dgtable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ndmitchell/js-dgtable#readme")
    (synopsis "Obtain minified jquery.dgtable code")
    (description
     "This package bundles the minified <https://github.com/danielgindi/jquery.dgtable jquery.dgtable> code into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream jquery.dgtable version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).")
    (license license:expat)))

haskell-8.8-js-dgtable

(define-public haskell-8.8-js-flot
  (package
    (name "haskell-8.8-js-flot")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/js-flot/js-flot-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yjyzqh3qzhy5h3nql1fckw0gcfb0f4wj9pm85nafpfqp2kg58hv"))))
    (properties `((upstream-name . "js-flot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ndmitchell/js-flot#readme")
    (synopsis "Obtain minified flot code")
    (description
     "This package bundles the minified <http://www.flotcharts.org/ Flot> code
(a jQuery plotting library) into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream flot version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).")
    (license license:expat)))

haskell-8.8-js-flot

(define-public haskell-8.8-js-jquery
  (package
    (name "haskell-8.8-js-jquery")
    (version "3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/js-jquery/js-jquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q68jzbs7kp07dnq8cprdcc8fd41rim38039vg0w4x11lgniq70"))))
    (properties `((upstream-name . "js-jquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ndmitchell/js-jquery#readme")
    (synopsis "Obtain minified jQuery code")
    (description
     "This package bundles the minified <http://jquery.com/ jQuery> code into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream jQuery version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).")
    (license license:expat)))

haskell-8.8-js-jquery

(define-public haskell-8.8-keycode
  (package
    (name "haskell-8.8-keycode")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/keycode/keycode-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "046k8d1h5wwadf5z4pppjkc3g7v2zxlzb06s1xgixc42y5y41yan"))))
    (properties `((upstream-name . "keycode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1a8a51sz670cfh73q9l2dckfqgv59lpxk8dg5xd9fnvi2ba7wdf1")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/RyanGlScott/keycode")
    (synopsis "Maps web browser keycodes to their corresponding keyboard keys")
    (description
     "Keyboard events in web browsers are often represented as keycodes,
which (1) are difficult to remember, and (2) sometimes vary from
browser to browser. \"Web.KeyCode\" allows one to look up a key
press's keycode and get a plain English description of the key
that was pressed, to reduce confusion.")
    (license license:bsd-3)))

haskell-8.8-keycode

(define-public haskell-8.8-kind-apply
  (package
    (name "haskell-8.8-kind-apply")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-apply/kind-apply-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wq0jfi8jdah6mwc6amrfjs5ld0bz86y53va9sm0hzvpiyb4bpcq"))))
    (properties `((upstream-name . "kind-apply") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/kind-apply")
    (synopsis "Utilities to work with lists of types")
    (description
     "This packages reifies the concept of list of types, and application of those to list constructors.")
    (license license:bsd-3)))

haskell-8.8-kind-apply

(define-public haskell-8.8-kmeans
  (package
    (name "haskell-8.8-kmeans")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kmeans/kmeans-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02rc3bd2cp1fp0fxbzqiy34s5gn38j8hgviilz1584z05jhj97ix"))))
    (properties `((upstream-name . "kmeans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/kmeans")
    (synopsis "K-means clustering algorithm")
    (description "A simple library for k-means clustering")
    (license license:bsd-3)))

haskell-8.8-kmeans

(define-public haskell-8.8-l10n
  (package
    (name "haskell-8.8-l10n")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/l10n/l10n-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "182w8l9h2zw8lxr1fahnmcasbd09z2z00ii7gkmq2y95dm3k4w0a"))))
    (properties `((upstream-name . "l10n") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/louispan/l10n#readme")
    (synopsis
     "Enables providing localization as typeclass instances in separate files.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-l10n

(define-public haskell-8.8-labels
  (package
    (name "haskell-8.8-labels")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/labels/labels-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04rh8c9ncd9radarz4fjka9hc3i6crvibpyj3y8qpij0acmw1d76"))))
    (properties `((upstream-name . "labels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/chrisdone/labels#readme")
    (synopsis "Anonymous records via named tuples")
    (description
     "Declare and access tuple fields with labels. An approach to anonymous records.")
    (license license:bsd-3)))

haskell-8.8-labels

(define-public haskell-8.8-largeword
  (package
    (name "haskell-8.8-largeword")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/idontgetoutmuch/largeword")
    (synopsis
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (description
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (license license:bsd-3)))

haskell-8.8-largeword

(define-public haskell-8.8-lawful
  (package
    (name "haskell-8.8-lawful")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lawful/lawful-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "014drjks30wij31fm371q5d8m6x3fpf3z52dim6zmxxv0r0pjmh0"))))
    (properties `((upstream-name . "lawful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/matt-noonan/lawful#readme")
    (synopsis "Assert the lawfulness of your typeclass instances.")
    (description "Assert the lawfulness of your typeclass instances.")
    (license license:bsd-3)))

haskell-8.8-lawful

(define-public haskell-8.8-lazy-csv
  (package
    (name "haskell-8.8-lazy-csv")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lazy-csv/lazy-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17v495xnv38bx9zfjfa8dl3prj94lg74dhn1jzqrjq488gfwp2w8"))))
    (properties `((upstream-name . "lazy-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/lazy-csv")
    (synopsis "Efficient lazy parsers for CSV (comma-separated values).")
    (description "The CSV format is defined by RFC 4180.
These efficient lazy parsers (String and ByteString variants)
can report all CSV formatting errors, whilst also
returning all the valid data, so the user can choose
whether to continue, to show warnings, or to halt on
error.  Valid fields retain information about their
original location in the input, so a secondary parser from
textual fields to typed values can give intelligent error
messages.")
    (license license:bsd-3)))

haskell-8.8-lazy-csv

(define-public haskell-8.8-leancheck
  (package
    (name "haskell-8.8-leancheck")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leancheck/leancheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14wi7h07pipd56grhaqmhb8wmr52llgd3xb7fm8hi9fb1sfzmvg0"))))
    (properties `((upstream-name . "leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/rudymatela/leancheck#readme")
    (synopsis "Enumerative property-based testing")
    (description
     "LeanCheck is a simple enumerative property-based testing library.

Properties are defined as Haskell functions returning a boolean value which
should be true for all possible choices of argument values.    LeanCheck
applies enumerated argument values to these properties in search for a
counterexample.  Properties can be viewed as parameterized unit tests.

LeanCheck works by producing tiers of test values: a possibly infinite list
of finite sublists of same-and-increasingly-sized values.

LeanCheck has lean core with only 180 lines of Haskell code.")
    (license license:bsd-3)))

haskell-8.8-leancheck

(define-public haskell-8.8-lens-family-core
  (package
    (name "haskell-8.8-lens-family-core")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-family-core/lens-family-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ni6s873hy2h3b316835ssmlyr05yinb3a8jq5b01p9ppp9zrd0r"))))
    (properties `((upstream-name . "lens-family-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/lens-family-core")
    (synopsis "Haskell 2022 Lens Families")
    (description
     "This package provides first class(†) functional references in Van Laarhoven style supporting the following optics:

* Lenses (view, over)

* Traversals (toListOf, matching, over)

* Setters (over)

* Grates (zipWithOf, under, review)

* Resetters (under)

* Adapters (view, review)

* Grids (toListOf, over / under, review)

* Prisms (matching, over / under, review)

* Getters (view)

* Folders (toListOf)

* Reviewers (review)

(†) For optimal first-class support use the @@lens-family@@ package with rank 2 / rank N polymorphism.
\"Lens.Family.Clone\" allows for first-class support of lenses and traversals for those who cannot support rank 2 polymorphism.")
    (license license:bsd-3)))

haskell-8.8-lens-family-core

(define-public haskell-8.8-libffi
  (package
    (name "haskell-8.8-libffi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libffi/libffi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g7jnhng3j7z5517aaqga0144aamibsbpgm3yynwyfzkq1kp0f28"))))
    (properties `((upstream-name . "libffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages libffi) libffi)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages libffi) libffi)))
    (home-page "https://hackage.haskell.org/package/libffi")
    (synopsis "A binding to libffi")
    (description
     "A binding to libffi, allowing C functions of types only known at runtime to be called from Haskell.")
    (license license:bsd-3)))

haskell-8.8-libffi

(define-public haskell-8.8-libgit
  (package
    (name "haskell-8.8-libgit")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libgit/libgit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08km9y2wqz426c5c6r49ar5snl8ss1w7d55yqivksdkwk3fn0k0x"))))
    (properties `((upstream-name . "libgit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/vincenthz/hs-libgit")
    (synopsis "Simple Git Wrapper")
    (description
     "Simple git wrapper to access common git functions in a simple haskell way.")
    (license license:bsd-3)))

haskell-8.8-libgit

(define-public haskell-8.8-list-singleton
  (package
    (name "haskell-8.8-list-singleton")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/list-singleton/list-singleton-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mb2kwj3gvykwh0iywwzqdnma27nxs1hl1rvnp3qxi893p4ikyiw"))))
    (properties `((upstream-name . "list-singleton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/list-singleton")
    (synopsis "Easily and clearly create lists with only one element in them.")
    (description
     "The @@list-singleton@@ package allows you to easily and clearly create lists
with only one element in them, which are typically called \"singleton lists\"
or simply \"singletons\". (Not to be confused with
the @@[singletons](https://hackage.haskell.org/package/singletons)@@ package!)

With any luck this library will be included in future versions of
the @@[base](https://hackage.haskell.org/package/base)@@ package. See this
mailing list thread for an extended discussion:
<https://mail.haskell.org/pipermail/libraries/2019-August/029801.html>.")
    (license license:isc)))

haskell-8.8-list-singleton

(define-public haskell-8.8-loch-th
  (package
    (name "haskell-8.8-loch-th")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/loch-th/loch-th-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hvdkcyrlnv65q8x8h0441x30wr9bbfbg3961xd3fy9an5r961fc"))))
    (properties `((upstream-name . "loch-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/liskin/loch-th")
    (synopsis
     "Support for precise error locations in source files (Template Haskell version)")
    (description "This module provides a Template Haskell based mechanism to
tag failures with the location of the failure call. The
location message includes the file name, line and column
numbers.")
    (license license:bsd-3)))

haskell-8.8-loch-th

(define-public haskell-8.8-logfloat
  (package
    (name "haskell-8.8-logfloat")
    (version "0.13.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logfloat/logfloat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10kza99pzs0ajn6xqd66sm059xp43i2sl0mnd8257q1av1qvsx7p"))))
    (properties `((upstream-name . "logfloat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuseffi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis "Log-domain floating point numbers")
    (description
     "This module presents a type for storing numbers in the log-domain.
The main reason for doing this is to prevent underflow when
multiplying many probabilities as is done in Hidden Markov
Models. It is also helpful for preventing overflow.")
    (license license:bsd-3)))

haskell-8.8-logfloat

(define-public haskell-8.8-lzma
  (package
    (name "haskell-8.8-lzma")
    (version "0.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lzma/lzma-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0i416gqi8j55nd1pqbkxvf3f6hn6fjys6gq98lkkxphva71j30xg"))))
    (properties `((upstream-name . "lzma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "07gc1zl4a38p3yg7md1hfrb2ca7yjzansh1mv8xs0c89jaqbgcr5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "https://github.com/hvr/lzma")
    (synopsis "LZMA/XZ compression and decompression")
    (description
     "This package provides a pure interface for compressing and
decompressing
<https://en.wikipedia.org/wiki/LZMA LZMA (Lempel–Ziv–Markov chain algorithm)>
streams of data represented as lazy @@ByteString@@s. A
monadic incremental interface is provided as well. This package
relies on the <http://tukaani.org/xz/ liblzma C library>.

The following packages are based on this package and provide
API support for popular streaming frameworks:

* </package/lzma-streams lzma-streams> (for </package/io-streams io-streams>)

* </package/pipes-lzma pipes-lzma> (for </package/pipes pipes>)

* </package/lzma-conduit lzma-conduit> (for </package/conduit conduit>)
")
    (license license:bsd-3)))

haskell-8.8-lzma

(define-public haskell-8.8-magic
  (package
    (name "haskell-8.8-magic")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/magic/magic-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10p0gjjjwr1dda7hahwrwn5njbfhl67arq3v3nf1jr3vymlkn75j"))))
    (properties `((upstream-name . "magic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages imagemagick) imagemagick)))
    (home-page "https://hackage.haskell.org/package/magic")
    (synopsis "Interface to C file/magic library")
    (description
     "This package provides a Haskell interface to the C libmagic library.
With it, you can determine the type of a file by examining its contents
rather than its name.  The Haskell interface provides a full-featured
binding.")
    (license license:bsd-3)))

haskell-8.8-magic

(define-public haskell-8.8-managed
  (package
    (name "haskell-8.8-managed")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/managed/managed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00wzfy9facwgimrilz7bxaigr79w10733h8zfgyhll644p2rnz38"))))
    (properties `((upstream-name . "managed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b95c8lfc45lqjmykbyrls7lpnyjsv770zsdyg5fw9x65r83mdw2")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/managed")
    (synopsis "A monad for managed values")
    (description
     "In Haskell you very often acquire values using the @@with...@@
idiom using functions of type @@(a -> IO r) -> IO r@@.  This idiom forms a
@@Monad@@, which is a special case of the @@ContT@@ monad (from @@transformers@@) or
the @@Codensity@@ monad (from @@kan-extensions@@).  The main purpose behind this
package is to provide a restricted form of these monads specialized to this
unusually common case.

The reason this package defines a specialized version of these types is to:

* be more beginner-friendly,

* simplify inferred types and error messages, and:

* provide some additional type class instances that would otherwise be orphan
instances")
    (license license:bsd-3)))

haskell-8.8-managed

(define-public haskell-8.8-microlens
  (package
    (name "haskell-8.8-microlens")
    (version "0.4.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens/microlens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z6zdprpr193a56r5s67q75554rrqyp2kk6srxn1gif7fd54sj2f"))))
    (properties `((upstream-name . "microlens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "A tiny lens library with no dependencies")
    (description
     "NOTE: If you're writing an app, you probably want <http://hackage.haskell.org/package/microlens-platform microlens-platform> – it has the most features. <http://hackage.haskell.org/package/microlens microlens> is intended more for library writers who want a tiny lens library (after all, lenses are pretty useful for everything, not just for updating records!).

This library is an extract from <http://hackage.haskell.org/package/lens lens> (with no dependencies). It's not a toy lenses library, unsuitable for “real world”, but merely a small one. It is compatible with lens, and should have same performance. It also has better documentation.

There's a longer readme <https://github.com/monadfix/microlens#readme on Github>. It has a migration guide for lens users, a description of other packages in the family, a discussion of other lens libraries you could use instead, and so on.

Here are some usecases for this library:

* You want to define lenses or traversals in your own library, but don't want to depend on lens. Having lenses available often make working with a library more pleasant.

* You just want to be able to use lenses to transform data (or even just use @@over _1@@ to change the first element of a tuple).

* You are new to lenses and want a small library to play with.

However, don't use this library if:

* You need @@Iso@@s, @@Prism@@s, indexed traversals, or actually anything else which isn't defined here (though some indexed functions are available elsewhere – containers and vector provide them for their types, and <http://hackage.haskell.org/package/ilist ilist> provides indexed functions for lists).

* You want a library with a clean, understandable implementation (in which case you're looking for <http://hackage.haskell.org/package/lens-simple lens-simple>).

As already mentioned, if you're writing an application which uses lenses more extensively, look at <http://hackage.haskell.org/package/microlens-platform microlens-platform> – it combines features of most other microlens packages (<http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>).

If you want to export getters or folds and don't mind the <http://hackage.haskell.org/package/contravariant contravariant> dependency, please consider using <http://hackage.haskell.org/package/microlens-contra microlens-contra>.

If you haven't ever used lenses before, read <http://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html this tutorial>. (It's for lens, but it applies to microlens just as well.)

Note that microlens has no dependencies starting from GHC 7.10 (base-4.8). Prior to that, it depends on transformers-0.2 or above.")
    (license license:bsd-3)))

haskell-8.8-microlens

(define-public haskell-8.8-mime-types
  (package
    (name "haskell-8.8-mime-types")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mime-types/mime-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lkipa4v73z3l5lqs6sdhl898iq41kyxv2jb9agsajzgd58l6cha"))))
    (properties `((upstream-name . "mime-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Basic mime-type handling types and functions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/mime-types>.")
    (license license:expat)))

haskell-8.8-mime-types

(define-public haskell-8.8-minimal-configuration
  (package
    (name "haskell-8.8-minimal-configuration")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minimal-configuration/minimal-configuration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bxz3vmy5b6jxb41h83xrwqihbaqvjj5lm4bfg9x2ykksfqdc3kw"))))
    (properties `((upstream-name . "minimal-configuration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/minimal-configuration")
    (synopsis "Minimal ini like configuration library with a few extras")
    (description
     "The module exported provides the ability to manage a configuration file in
the users home directory (or the Windows equivalent). Where the configuration
takes the form of key=value, without sections, that for example an \\'.ini\\'
would have.

The library simplifies serilization/deserialization of the configuration into
a structure similar in behavior to a 'Map', as well as an interactive way to
fill in values for simple cases.

Consider the following example, where a user would run the application for the
first time, it would ask him for his name; however on a followup run it would
just print a greeting with his name.

> import System.Config.File
>
> main = loadLocal \".apprc\" >>= \\conf -> do
>     let name = getV conf \"name\"
>     case name of Just n  -> putStrLn $ \"hello \" ++ n
>                  Nothing -> do conf' <- fillInteractively conf [(\"name\", acceptNonBlank)]
>                                saveConfiguration conf'")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-minimal-configuration

(define-public haskell-8.8-minimorph
  (package
    (name "haskell-8.8-minimorph")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minimorph/minimorph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fmnlv2qr8vnxk82b208fp7ckp920zrj9z9xv7lv6d5lgnsasf2c"))))
    (properties `((upstream-name . "minimorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-minimorph

(define-public haskell-8.8-mintty
  (package
    (name "haskell-8.8-mintty")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mintty/mintty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1njhz7wjmsk5pbr7gfkl95k50npkmm0iyxp3j93bbsg4rmxzg2kw"))))
    (properties `((upstream-name . "mintty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwin32-2-5-3")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/RyanGlScott/mintty")
    (synopsis
     "A reliable way to detect the presence of a MinTTY console on Windows")
    (description "MinTTY is a Windows-specific terminal emulator for the
widely used Cygwin and MSYS projects, which provide
Unix-like environments for Windows. MinTTY consoles behave
differently from native Windows consoles (such as
@@cmd.exe@@ or PowerShell) in many ways, and in some cases,
these differences make it necessary to treat MinTTY
consoles differently in code.

The @@mintty@@ library provides a simple way to detect if
your code in running in a MinTTY console on Windows. It
exports @@isMinTTY@@, which does the right thing 90% of the
time (by checking if standard error is attached to
MinTTY), and it also exports @@isMinTTYHandle@@ for the
other 10% of the time (when you want to check is some
arbitrary handle is attached to MinTTY). As you might
expect, both of these functions will simply return @@False@@
on any non-Windows operating system.")
    (license license:bsd-3)))

haskell-8.8-mintty

(define-public haskell-8.8-missing-foreign
  (package
    (name "haskell-8.8-missing-foreign")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/missing-foreign/missing-foreign-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11f8pknbarlj956nmalqhd2v704z7d7xbi61hs1q8vb2p36kc6wy"))))
    (properties `((upstream-name . "missing-foreign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/missing-foreign")
    (synopsis "Convenience functions for FFI work")
    (description "Add several functions missing in the standard
Foreign modules:

* copy and move based on Storable

* calloc")
    (license license:bsd-3)))

haskell-8.8-missing-foreign

(define-public haskell-8.8-mmap
  (package
    (name "haskell-8.8-mmap")
    (version "0.5.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmap/mmap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y5mk3yf4b8r6rzmlx1xqn4skaigrqnv08sqq0v7r3nbw42bpz2q"))))
    (properties `((upstream-name . "mmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mmaptest")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/mmap")
    (synopsis "Memory mapped files for POSIX and Windows")
    (description "This library provides a wrapper to mmap(2) or MapViewOfFile,
allowing files or devices to be lazily loaded into memory as
strict or lazy ByteStrings, ForeignPtrs or plain Ptrs, using
the virtual memory subsystem to do on-demand loading.
Modifications are also supported.")
    (license license:bsd-3)))

haskell-8.8-mmap

(define-public haskell-8.8-monad-skeleton
  (package
    (name "haskell-8.8-monad-skeleton")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-skeleton/monad-skeleton-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17jm69pwysx2kbx06n80iy396nbj5dys9iwdivargfzx7xql0s59"))))
    (properties `((upstream-name . "monad-skeleton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/fumieval/monad-skeleton")
    (synopsis "Monads of program skeleta")
    (description "Fast operational monad library")
    (license license:bsd-3)))

haskell-8.8-monad-skeleton

(define-public haskell-8.8-monad-st
  (package
    (name "haskell-8.8-monad-st")
    (version "0.2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-st/monad-st-" version
                    ".tar.gz"))
              (sha256
               (base32
                "025zi9xzliwgyasq5hrfxwzg4ksj3kj0ys2kp62fi1n4ddbih64f"))))
    (properties `((upstream-name . "monad-st") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01bb0a8h51inkn0hyvgw5iw662q6853j47bvjdha8a2z3fwapfya")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/monad-st")
    (synopsis "Provides a MonadST class")
    (description "Provides a MonadST class")
    (license license:bsd-3)))

haskell-8.8-monad-st

(define-public haskell-8.8-monad-time
  (package
    (name "haskell-8.8-monad-time")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-time/monad-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z30c0k5bqlz86vwajnm6kj26i09zx6dzqwd00z6ba8hqyzm1x0a"))))
    (properties `((upstream-name . "monad-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/scrive/monad-time")
    (synopsis "Type class for monads which carry
the notion of the current time.")
    (description "'MonadTime' type class for monads
which carry the notion of the current time.")
    (license license:bsd-3)))

haskell-8.8-monad-time

(define-public haskell-8.8-monads-tf
  (package
    (name "haskell-8.8-monads-tf")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monads-tf/monads-tf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wdhskwa6dw8qljbvwpyxj8ca6y95q2np7z4y4q6bpf4anmd5794"))))
    (properties `((upstream-name . "monads-tf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/monads-tf")
    (synopsis "Monad classes, using type families")
    (description
     "Monad classes using type families, with instances for various
monad transformers, inspired by the paper /Functional Programming
with Overloading and Higher-Order Polymorphism/, by Mark P
Jones, in /Advanced School of Functional Programming/, 1995
(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).

This package is almost a compatible replacement for the @@mtl-tf@@ package.")
    (license license:bsd-3)))

haskell-8.8-monads-tf

(define-public haskell-8.8-mountpoints
  (package
    (name "haskell-8.8-mountpoints")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mountpoints/mountpoints-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hnm31pqcffphyc463wf0vbik9fzm5lb2r4wjdc1y4dqzmjdzz37"))))
    (properties `((upstream-name . "mountpoints") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/mountpoints")
    (synopsis "list mount points")
    (description "Lists currently mounted filesystems.

Works on: Linux, BSD, Mac OS X, Android")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-mountpoints

(define-public haskell-8.8-mtl-compat
  (package
    (name "haskell-8.8-mtl-compat")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mtl-compat/mtl-compat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17iszr5yb4f17g8mq6i74hsamii8z6m2qfsmgzs78mhiwa7kjm8r"))))
    (properties `((upstream-name . "mtl-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-f-two-point-one" "-f-two-point-two")))
    (outputs (list "out" "static"))
    (home-page "https://github.com/haskell-compat/mtl-compat")
    (synopsis "Backported Control.Monad.Except module from mtl")
    (description
     "This package backports the \"Control.Monad.Except\" module from
@@mtl@@ (if using @@mtl-2.2.0.1@@ or earlier), which reexports the
@@ExceptT@@ monad transformer and the @@MonadError@@ class.

This package should only be used if there is a need to use the
@@Control.Monad.Except@@ module specifically. If you just want
the @@mtl@@ class instances for @@ExceptT@@, use
@@transformers-compat@@ instead, since @@mtl-compat@@ does nothing
but reexport the instances from that package.

Note that unlike how @@mtl-2.2@@ or later works, the
\"Control.Monad.Except\" module defined in this package exports
all of @@ExceptT@@'s monad class instances. Therefore, you may
have to declare @@import Control.Monad.Except ()@@ at the top of
your file to get all of the @@ExceptT@@ instances in scope.")
    (license license:bsd-3)))

haskell-8.8-mtl-compat

(define-public haskell-8.8-mtl-prelude
  (package
    (name "haskell-8.8-mtl-prelude")
    (version "2.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mtl-prelude/mtl-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cqjl0mcnj6qgx46qxjygndzlgch4mc0q0sm3wbd4fynjfhdv9n4"))))
    (properties `((upstream-name . "mtl-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/nikita-volkov/mtl-prelude ")
    (synopsis
              "Reexports of most definitions from \"mtl\" and \"transformers\" ")
    (description
     "This package only exports definitions from the \\\"mtl\\\" and \\\"transformers\\\"
libraries.
Unlike every module of \\\"mtl\\\" it does not reexport
@@Control.Monad@@ and @@Control.Monad.Fix@@.

In combination with the <http://hackage.haskell.org/package/base-prelude \"base-prelude\"> library,
this should give you a quite rich prelude.

The @@2.*@@ versions are restricted by
the feature set of @@mtl-2.2@@ and @@transformers-0.4@@,
however they provide support for newer versions of those libraries as well.")
    (license license:expat)))

haskell-8.8-mtl-prelude

(define-public haskell-8.8-multiarg
  (package
    (name "haskell-8.8-multiarg")
    (version "0.30.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multiarg/multiarg-" version
                    ".tar.gz"))
              (sha256
               (base32
                "188pqjpd1l4kwv4gnym6nq6nyfmcrq153bdpqbfjmmh6iqx65yn9"))))
    (properties `((upstream-name . "multiarg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-programs")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/massysett/multiarg")
    (synopsis "Command lines for options that take multiple arguments")
    (description "multiarg helps you build command-line parsers for
programs with options that take more than one argument.
See the documentation in the Multiarg module for details.")
    (license license:bsd-3)))

haskell-8.8-multiarg

(define-public haskell-8.8-multimap
  (package
    (name "haskell-8.8-multimap")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multimap/multimap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d3l5q4yvmywl6i9ip96zz0fvhjdh00mfbbniphbjxsi8wlwack3"))))
    (properties `((upstream-name . "multimap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://hub.darcs.net/scravy/multimap")
    (synopsis "A multimap.")
    (description
     "This is a simple implementation of a multimap, based on \"Data.Map\".

[@@v1.1@@]
@@!@@ had its arguments flipped. Fixed.
Also added @@fromMap@@.

[@@v1.2@@]
Added \"Data.SetMap\", renamed @@Multimap@@ to \"Data.MultiMap\".
Fixed the type of @@delete@@. Derive instances for @@Data@@
and @@Typeable@@.

[@@v1.2.1@@]
Fixed typos in the documentation.")
    (license license:expat)))

haskell-8.8-multimap

(define-public haskell-8.8-multiset
  (package
    (name "haskell-8.8-multiset")
    (version "0.3.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multiset/multiset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i0mjjdv8ayfars014nch5p3jlbl1wlr1bbkp7q2iknkllasxz3r"))))
    (properties `((upstream-name . "multiset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/multiset")
    (synopsis "The Data.MultiSet container type")
    (description
     "A variation of Data.Set.
Multisets, sometimes also called bags, can contain multiple copies of the same key.")
    (license license:bsd-3)))

haskell-8.8-multiset

(define-public haskell-8.8-murmur-hash
  (package
    (name "haskell-8.8-murmur-hash")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/murmur-hash/murmur-hash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bb58kfnzvx3mpc0rc0dhqc1fk36nm8prd6gvf20gk6lxaadpfc9"))))
    (properties `((upstream-name . "murmur-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "006mxzpb8qq603nsxf3ywf0irms7yvz54pf72pzi0rihz9lvw3sl")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/nominolo/murmur-hash")
    (synopsis "MurmurHash2 implementation for Haskell.")
    (description
     "Implements MurmurHash2, a good, fast, general-purpose,
non-cryptographic hashing function.  See
<http://murmurhash.googlepages.com/> for details.

This implementation is pure Haskell, so it might be a bit slower
than a C FFI binding.")
    (license license:bsd-3)))

haskell-8.8-murmur-hash

(define-public haskell-8.8-mysql
  (package
    (name "haskell-8.8-mysql")
    (version "0.1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mysql/mysql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vkc39hx55hqwgkhqm80ckabbjaq4f9840msznf71glzihzg8k0n"))))
    (properties `((upstream-name . "mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "static" "doc"))
    (native-inputs (list (@ (gnu packages databases) mysql)))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/paul-rouse/mysql")
    (synopsis "A low-level MySQL client library.")
    (description
     "A low-level client library for the MySQL database, implemented as
bindings to the C @@mysqlclient@@ API.

/Important licensing note/: This library is BSD-licensed under the
terms of the MySQL FOSS License Exception
<http://www.mysql.com/about/legal/licensing/foss-exception/>.

Since this library links against the GPL-licensed @@mysqlclient@@
library, a non-open-source application that uses it /may/ be
subject to the terms of the GPL.")
    (license license:bsd-3)))

haskell-8.8-mysql

(define-public haskell-8.8-names-th
  (package
    (name "haskell-8.8-names-th")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/names-th/names-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12ally0n6ixsxj0zwbvw439dbx29phvh0rd6l5sd0c5a514a32aa"))))
    (properties `((upstream-name . "names-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Manipulate name strings for TH")
    (description "This package includes functions to manipulate name string
and extra library functions for Template Haskell.")
    (license license:bsd-3)))

haskell-8.8-names-th

(define-public haskell-8.8-nano-erl
  (package
    (name "haskell-8.8-nano-erl")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nano-erl/nano-erl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04pfk3a9m6fgspyk2vriixldsx2y9p2jcwzfjfvpgjiq5dl602ip"))))
    (properties `((upstream-name . "nano-erl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/nano-erl")
    (synopsis "Small library for Erlang-style actor semantics")
    (description
     "A small, beginner-friendly library for Erlang-style actor semantics,
for coordinating concurrent processes and message passing

Processes are plain IO actions, so no monad transformers needed (no liftIO!)

For best performance, compile with:

> ghc -O2 -threaded -rtsopts -with-rtsopts=-N")
    (license license:expat)))

haskell-8.8-nano-erl

(define-public haskell-8.8-nanospec
  (package
    (name "haskell-8.8-nanospec")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nanospec/nanospec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rcmhl9bhyfvanalnf1r86wkx6rq6wdvagnw1h011jcnnb1cq56g"))))
    (properties `((upstream-name . "nanospec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hspec/nanospec#readme")
    (synopsis "A lightweight implementation of a subset of Hspec's API")
    (description
     "A lightweight implementation of a subset of Hspec's API with minimal dependencies.")
    (license license:expat)))

haskell-8.8-nanospec

(define-public haskell-8.8-nats
  (package
    (name "haskell-8.8-nats")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nats/nats-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v40drmhixck3pz3mdfghamh73l4rp71mzcviipv1y8jhrfxilmr"))))
    (properties `((upstream-name . "nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-fhashable" "-fbinary" "-ftemplate-haskell")
       #:cabal-revision
       ("4" "0qccypqkfs7hi0v2bsjfqfhpi2jgsnpfwi9vmcqh7jxk5g08njk0")))
    (outputs (list "out" "static"))
    (home-page "http://github.com/ekmett/nats/")
    (synopsis "Natural numbers")
    (description "Natural numbers.")
    (license license:bsd-3)))

haskell-8.8-nats

(define-public haskell-8.8-natural-sort
  (package
    (name "haskell-8.8-natural-sort")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-sort/natural-sort-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l3bkbqzrlpdhzazqqlx71ah0m13ypa0981qvw3sn9q8d0sbfwkv"))))
    (properties `((upstream-name . "natural-sort") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://john-millikin.com/software/natural-sort/")
    (synopsis "User-friendly text collation")
    (description
     "The built-in comparisons for textual data are based on Unicode ordinals. This
does not match most every-day sorting algorithms. For example,
\\\"z10.txt\\\" is sorted after \\\"z2.txt\\\" by users, but before it by
na&#239;ve algorithms.

This package provides an implementation of \\\"natural sort\\\", which more
closely matches user expectations.

See also: <http://www.davekoelle.com/alphanum.html>")
    (license license:bsd-3)))

haskell-8.8-natural-sort

(define-public haskell-8.8-netrc
  (package
    (name "haskell-8.8-netrc")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netrc/netrc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11iax3ick0im397jyyjkny7lax9bgrlgk90a25dp2jsglkphfpls"))))
    (properties `((upstream-name . "netrc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring_has_builder")
       #:cabal-revision
       ("9" "0srgxcgzzkrq96zg8vk61wnr4mrvgcxbgpdh2kklsfc2p6phzzp7")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hvr/netrc")
    (synopsis "Parser for .netrc files")
    (description
     "This package provides a parser and a printer for so-called @@.netrc@@ files.

See <http://linux.die.net/man/5/netrc netrc(5)> manual page for more
information about @@.netrc@@ files.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-netrc

(define-public haskell-8.8-network-info
  (package
    (name "haskell-8.8-network-info")
    (version "0.2.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-info/network-info-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0anmgzcpnz7nw3n6vq0r25m1s9l2svpwi83wza0lzkrlbnbzd02n"))))
    (properties `((upstream-name . "network-info") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07kiw56lhc56kqrnvpa11f5nnnid6by3aq00jrkcbbg7w0q71a6d")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/jacobstanley/network-info")
    (synopsis "Access the local computer's basic network configuration")
    (description "This library provides simple read-only access to the
local computer's networking configuration. It is
currently capable of getting a list of all the network
interfaces and their respective IPv4, IPv6 and MAC
addresses.

network-info has been tested and is known to work on
Ubuntu 10.10, FreeBSD 9.0, Mac OS X 10.6.4 and Windows
XP/7. It probably works on other flavours of Linux,
OS X, FreeBSD and Windows as well.")
    (license license:bsd-3)))

haskell-8.8-network-info

(define-public haskell-8.8-network-uri
  (package
    (name "haskell-8.8-network-uri")
    (version "2.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-uri/network-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08x7myvjasm326byi3jz1hgv2fqk0vvkfiwi8zlc4b2xy64i6750"))))
    (properties `((upstream-name . "network-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0gwvyz2s98lp6cx1jhg8z08n3mv3ycffxm0yvz4whc85s2ppswj3")))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-network-uri

(define-public haskell-8.8-newtype
  (package
    (name "haskell-8.8-newtype")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/newtype/newtype-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1b7bamnd0p8vmxvlg39g5d4a2av49kx10rdyz04ixa28pg8zy01s"))))
    (properties `((upstream-name . "newtype") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0yll88ydchd2gqcvdk28fchf2vygpd42ky2bigg4ga08jan2nacx")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/newtype")
    (synopsis "A typeclass and set of functions for working with newtypes.")
    (description
     "Per Conor McBride, the 'Newtype' typeclass represents the packing and unpacking of a @@newtype@@, and allows you to operate under that @@newtype@@ with functions such as 'ala'. See \"Control.Newtype\" for documentation and examples.")
    (license license:bsd-3)))

haskell-8.8-newtype

(define-public haskell-8.8-nicify-lib
  (package
    (name "haskell-8.8-nicify-lib")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nicify-lib/nicify-lib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cp76s0msf1i8a7pkzjl6qgi18n7zdya3pg90ml1dnidg5nzh9kx"))))
    (properties `((upstream-name . "nicify-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/nicify-lib")
    (synopsis "Pretty print the standard output of default `Show` instances.")
    (description
     "Pretty print the standard output of `show` for algebraic datatypes")
    (license license:expat)))

haskell-8.8-nicify-lib

(define-public haskell-8.8-nix-paths
  (package
    (name "haskell-8.8-nix-paths")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nix-paths/nix-paths-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y09wl1ihxmc9p926g595f70pdcsx78r3q5n5rna23lpq8xicdxb"))))
    (properties `((upstream-name . "nix-paths") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fallow-relative-paths")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/peti/nix-paths")
    (synopsis "Knowledge of Nix's installation directories.")
    (description "This module provides full paths to various Nix
utilities, like @@nix-store@@, @@nix-instantiate@@, and
@@nix-env@@.")
    (license license:bsd-3)))

haskell-8.8-nix-paths

(define-public haskell-8.8-no-value
  (package
    (name "haskell-8.8-no-value")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/no-value/no-value-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jczx8d4ah74wiishdcv335hlr0330wwq0vfb5rv4gmrvbpkgllf"))))
    (properties `((upstream-name . "no-value") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/cdornan/no-value#readme")
    (synopsis "A type class for choosing sentinel-like values")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/no-value#readme>")
    (license license:bsd-3)))

haskell-8.8-no-value

(define-public haskell-8.8-nowdoc
  (package
    (name "haskell-8.8-nowdoc")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nowdoc/nowdoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s2j7z9zyb3y3k5hviqjnb3l2z9mvxll5m9nsvq566hn5h5lkzjg"))))
    (properties `((upstream-name . "nowdoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "074xgrxs8ynq29bsx66an03q0457f80ga9jf4sqi0q34jgfpmbcv")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/YoshikuniJujo/nowdoc#readme")
    (synopsis "Here document without variable expansion like PHP Nowdoc")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/nowdoc#readme>")
    (license license:bsd-3)))

haskell-8.8-nowdoc

(define-public haskell-8.8-numbers
  (package
    (name "haskell-8.8-numbers")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jwiegley/numbers#readme")
    (synopsis "Various number types")
    (description "Instances of the numerical classes for a variety of
different numbers: (computable) real numbers,
arbitrary precision fixed numbers,
arbitrary precision floating point numbers,
differentiable numbers, symbolic numbers,
natural numbers, interval arithmetic.")
    (license license:bsd-3)))

haskell-8.8-numbers

(define-public haskell-8.8-numeric-extras
  (package
    (name "haskell-8.8-numeric-extras")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-extras/numeric-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mk11c0gz1yjy5b8dvq6czfny57pln0bs7x28fz38qyr44872067"))))
    (properties `((upstream-name . "numeric-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/numeric-extras")
    (synopsis "Useful tools from the C standard library")
    (description "Useful tools from the C standard library")
    (license license:bsd-3)))

haskell-8.8-numeric-extras

(define-public haskell-8.8-numhask
  (package
    (name "haskell-8.8-numhask")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/numhask/numhask-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wwhpsrbnaa0nmb9x31wnk66dbvajd54mflvbnifff2dkaha89x1"))))
    (properties `((upstream-name . "numhask") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/tonyday567/numhask#readme")
    (synopsis "numeric classes")
    (description "A numeric class heirarchy.")
    (license license:bsd-3)))

haskell-8.8-numhask

(define-public haskell-8.8-numtype-dk
  (package
    (name "haskell-8.8-numtype-dk")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numtype-dk/numtype-dk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0avkdbhxijcja9i9g3cqh699mys8nhsxgrrpkknycmqpvp07sy4q"))))
    (properties `((upstream-name . "numtype-dk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "003w6zzg5dzrmc9anffvvf42hcimzqz0nxkvv25k5kbizfmfjdfj")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/bjornbm/numtype-dk")
    (synopsis "Type-level integers, using TypeNats, Data
Kinds, and Closed Type Families.")
    (description
     "This package provides type level representations of the
(positive and negative) integers and basic operations (addition,
subtraction, multiplication, division, exponentiation) on these.
The numtype-dk package differs from the numtype package in that
the NumTypes are implemented using Data Kinds, TypeNats, and
Closed Type Families rather than Functional Dependencies.
Requires GHC 7.8 or later.")
    (license license:bsd-3)))

haskell-8.8-numtype-dk

(define-public haskell-8.8-ofx
  (package
    (name "haskell-8.8-ofx")
    (version "0.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ofx/ofx-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1wpcxzrbqw576pgx1jrpqs604ds0lpmg1282shd828lwg5myp33r"))))
    (properties `((upstream-name . "ofx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.github.com/massysett/ofx")
    (synopsis "Parser for OFX data")
    (description
     "A parser for Open Financial Exchange (OFX) financial data. This
handles OFX version 1.03, which is documented at http://www.ofx.net
This also handles QFX, which is OFX plus some minor additions made
by Intuit, the publishers of Quicken.

The parser will place all the data into a tree, which you can query
for whatever data you may need, although you will need to be
familiar with the OFX spec to do this. There is also a Transaction
type which you can easily parse from the tree; this will contain
most, perhaps all, of the data you will be interested in if your OFX
file is from a bank or credit card account.

All the OFX and QFX files I have seen use the format from the 1.0
series of OFX, which is primarily SGML based. OFX version 2 is XML
based.  This parser likely will not work on those files.")
    (license license:bsd-3)))

haskell-8.8-ofx

(define-public haskell-8.8-old-locale
  (package
    (name "haskell-8.8-old-locale")
    (version "1.0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/old-locale/old-locale-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l3viphiszvz5wqzg7a45zp40grwlab941q5ay29iyw8p3v8pbyv"))))
    (properties `((upstream-name . "old-locale") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04b9vn007hlvsrx4ksd3r8r3kbyaj2kvwxchdrmd4370qzi8p6gs")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/old-locale")
    (synopsis "locale library")
    (description "This package provides the ability to adapt to
locale conventions such as date and time formats.")
    (license license:bsd-3)))

haskell-8.8-old-locale

(define-public haskell-8.8-oo-prototypes
  (package
    (name "haskell-8.8-oo-prototypes")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oo-prototypes/oo-prototypes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xpm2adf47clhzpwd833w706mc5xfxwr2wp4aywigy11687f9bly"))))
    (properties `((upstream-name . "oo-prototypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/yi-editor/oo-prototypes")
    (synopsis "Support for OO-like prototypes")
    (description "Support for OO-like prototypes")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-oo-prototypes

(define-public haskell-8.8-open-browser
  (package
    (name "haskell-8.8-open-browser")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/open-browser/open-browser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rna8ir2cfp8gk0rd2q60an51jxc08lx4gl0liw8wwqgh1ijxv8b"))))
    (properties `((upstream-name . "open-browser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/rightfold/open-browser")
    (synopsis "Open a web browser from Haskell.")
    (description "Open a web browser from Haskell.
Currently BSD, Linux, OS X and Windows are supported.")
    (license license:bsd-3)))

haskell-8.8-open-browser

(define-public haskell-8.8-optional-args
  (package
    (name "haskell-8.8-optional-args")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optional-args/optional-args-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r5hhn6xvc01grggxdyy48daibwzi0aikgidq0ahpa6bfynm8d1f"))))
    (properties `((upstream-name . "optional-args") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1f3j092lk2qa6hi2p4iciyyxg27mzm37dlcw5hg3ch2wh6jw0a37")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/optional-args")
    (synopsis "Optional function arguments")
    (description
     "This library provides a type for specifying `Optional` function
arguments

Read the tutorial in \"Data.Optional\" to learn more")
    (license license:bsd-3)))

haskell-8.8-optional-args

(define-public haskell-8.8-ordered-containers
  (package
    (name "haskell-8.8-ordered-containers")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ordered-containers/ordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j92dm36s0cfhc7s4k3dk36ibkvr6w1nhaq6q1m5vkbh1qrwfnn7"))))
    (properties `((upstream-name . "ordered-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ordered-containers")
    (synopsis
     "Set- and Map-like types that remember the order elements were inserted")
    (description "")
    (license license:bsd-3)))

haskell-8.8-ordered-containers

(define-public haskell-8.8-overhang
  (package
    (name "haskell-8.8-overhang")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/overhang/overhang-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07iafybg45130jhwin6jj2fnkgcwra367f5df91xn34kaj9zas0x"))))
    (properties `((upstream-name . "overhang") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jship/overhang#readme")
    (synopsis "Hang loose with your lambdas!")
    (description "Combinators for clean, \"hanging\" lambdas.")
    (license license:expat)))

haskell-8.8-overhang

(define-public haskell-8.8-packcheck
  (package
    (name "haskell-8.8-packcheck")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/packcheck/packcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05hwcmg67vicrig7syfxkpbsaqfjzlik4jq8ijz2gdkh7v3czrvr"))))
    (properties `((upstream-name . "packcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/composewell/packcheck")
    (synopsis "Universal build and CI testing for Haskell packages")
    (description
     "This package contains a universal CI/build script @@packcheck.sh@@ and config
files designed such that you can just copy over @@.travis.yml@@, @@appveyor.yml@@
or @@.circleci/config.yml@@ to your package repo and your package is CI ready
in a jiffy.  You can build and test packages on local machine as well. For
local testing, copy @@packcheck.sh@@ to your local machine, put it in your
PATH, and run it from your package directory:

> $ packcheck.sh cabal-v2
> $ packcheck.sh stack

You can try the script on this package itself. It builds and comprehensively
sanity tests a Haskell package across build tools (stack/cabal), uniformly,
consistently and across all platforms (Linux\\/MacOS\\/Windows).  You do not
need to be familiar with any of the build tools to use it.

This is also a minimal yet complete model package (with tests, benchmarks, CI
already working) that can be used as a starting point to develop a new
package. Beginners can use it to learn about haskell package metadata
structure, benchmarks, tests, CI configs etc.

See the README for comprehensive documentation.")
    (license license:bsd-3)))

haskell-8.8-packcheck

(define-public haskell-8.8-parallel
  (package
    (name "haskell-8.8-parallel")
    (version "3.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parallel/parallel-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xkfi96w6yfpppd0nw1rnszdxmvifwzm699ilv6332ra3akm610p"))))
    (properties `((upstream-name . "parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1q45wzpf2sda0244l55gakl3g5zqhcb27m86nhl3vslcjc35mpbf")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/parallel")
    (synopsis "Parallel programming library")
    (description
     "This package provides a library for parallel programming.

For documentation start from the \"Control.Parallel.Strategies\"
module below.

For more tutorial documentation, see the book <http://simonmar.github.io/pages/pcph.html Parallel and Concurrent Programming in Haskell>.

To understand the principles behind the library, see
<http://simonmar.github.io/bib/papers/strategies.pdf Seq no more: Better Strategies for Parallel Haskell>.")
    (license license:bsd-3)))

haskell-8.8-parallel

(define-public haskell-8.8-parseargs
  (package
    (name "haskell-8.8-parseargs")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parseargs/parseargs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a95h2ggrfpy2y6g24jih6w917cvz7f7dxl81mwyyqrsxvf9siiw"))))
    (properties `((upstream-name . "parseargs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/BartMassey/parseargs")
    (synopsis "Parse command-line arguments")
    (description "Full-featured command-line argument parsing library.")
    (license license:bsd-3)))

haskell-8.8-parseargs

(define-public haskell-8.8-parsec-class
  (package
    (name "haskell-8.8-parsec-class")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-class/parsec-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wqpivsrjsp9996fz6lb06rxl3860afc4l8hbx8d1vxhwv2lx702"))))
    (properties `((upstream-name . "parsec-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/peti/parsec-class")
    (synopsis
     "Class of types that can be constructed from their text representation")
    (description
     "This library provides the type class 'HasParser' as a dual to 'Pretty'.
Instances of this class provide a parser than can be used to construct the
type from its text representation.")
    (license license:expat)))

haskell-8.8-parsec-class

(define-public haskell-8.8-parsec-numbers
  (package
    (name "haskell-8.8-parsec-numbers")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-numbers/parsec-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gzy4v3r02kvdxvgg1nj83mmb6aph2v4ilf9c7y6nbvi2x49l0bp"))))
    (properties `((upstream-name . "parsec-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-parsec1")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/parsec-numbers")
    (synopsis "Utilities for parsing numbers from strings")
    (description
     "parsec-numbers provides the number parsers without the need to
use a large (and unportable) token parser")
    (license license:bsd-3)))

haskell-8.8-parsec-numbers

(define-public haskell-8.8-parser-combinators
  (package
    (name "haskell-8.8-parser-combinators")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parser-combinators/parser-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k95nvgnl5820y094yfh7b868l0xd1diclm4kx9560p5rm02w5h3"))))
    (properties `((upstream-name . "parser-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis
     "Lightweight package providing commonly useful parser combinators")
    (description
     "Lightweight package providing commonly useful parser combinators.")
    (license license:bsd-3)))

haskell-8.8-parser-combinators

(define-public haskell-8.8-partial-handler
  (package
    (name "haskell-8.8-partial-handler")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-handler/partial-handler-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cf1748zyr07zv0ffi44rf5b9f7ygdybbdcl7m7c0zj14kq2miwl"))))
    (properties `((upstream-name . "partial-handler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/nikita-volkov/partial-handler ")
    (synopsis "A composable exception handler")
    (description
     "If you have ever had to compose an exception handler for exceptions of multiple types,
you know how frustraiting it can get.
This library approaches this issue by providing a composable exception handler type,
which has instances of the standard classes.

Composability means that you can define custom partial handlers and
reuse them by composing other handlers from them.

Here is an example of a composable partial handler,
which only defines what to do in case of a ThreadKilled exception
(the code uses the LambdaCase extension):

>ignoreThreadKilled :: PartialHandler ()
>ignoreThreadKilled =
>  typed $ \\case
>    ThreadKilled -> Just $ return ()
>    _ -> Nothing

Here's how you can construct a handler of type @@SomeException -> IO ()@@
using this library:

>totalizeRethrowing $
>  ignoreThreadKilled <>
>  onAlreadyExists (putStrLn \"Already exists\")

and here is how you would do it traditionally (with the MultiWayIf extension):

>\\e -> if
>  | Just ThreadKilled <- fromException e ->
>      return ()
>  | Just e' <- fromException e, isAlreadyExistsError e' ->
>      putStrLn \"Already exists\"
>  | otherwise ->
>      throwIO e

Putting all the syntactic trickery to make it shorter aside,
this handler is a monolith block of code.
Unlike with PartialHandler you can neither decompose it into simpler ones,
nor compose it with other handlers to form a more complex one.")
    (license license:expat)))

haskell-8.8-partial-handler

(define-public haskell-8.8-partial-isomorphisms
  (package
    (name "haskell-8.8-partial-isomorphisms")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-isomorphisms/partial-isomorphisms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r51ykq6i11gzypv93bnw8pzn4zdyrabiiqfpbhpvs0rj6k1ymac"))))
    (properties `((upstream-name . "partial-isomorphisms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.informatik.uni-marburg.de/~rendel/unparse")
    (synopsis "Partial isomorphisms.")
    (description "Partial isomorphisms as described in the
paper:

Tillmann Rendel and Klaus Ostermann.
Invertible Syntax Descriptions:
Unifying Parsing and Pretty Printing.
In /Proc. of Haskell Symposium/, 2010.

The paper also describes invertible syntax
descriptions as a common interface for
parsers and pretty printers. These are
distributed separately in the
/invertible-syntax/ package.")
    (license license:bsd-3)))

haskell-8.8-partial-isomorphisms

(define-public haskell-8.8-pathwalk
  (package
    (name "haskell-8.8-pathwalk")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pathwalk/pathwalk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "148fapj00f59aa2igfq6hwrdcwcyslvrskmfvdia0crid9jd1q3n"))))
    (properties `((upstream-name . "pathwalk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/Xe/pathwalk")
    (synopsis "Path walking utilities for Haskell programs")
    (description
     "\"System.Directory.PathWalk\" is an implementation of Python's excellent
os.walk function.  Given a root directory, it recursively scans all
subdirectories, calling a callback with directories and files it finds.
Importantly, it calls the callback as soon as it finishes scanning each
directory to allow the caller to begin processing results immediately.

Maximum memory usage is O(N+M) where N is the depth of the tree and M
is the maximum number of entries in a particular directory.

> import System.Directory.PathWalk
>
> pathWalk \"some/directory\" $ \\root dirs files -> do
>   forM_ files $ \\file ->
>     when (\".hs\" `isSuffixOf` file) $ do
>       putStrLn $ joinPath [root, file]")
    (license license:expat)))

haskell-8.8-pathwalk

(define-public haskell-8.8-pattern-arrows
  (package
    (name "haskell-8.8-pattern-arrows")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pattern-arrows/pattern-arrows-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13q7bj19hd60rnjfc05wxlyck8llxy11z3mns8kxg197wxrdkhkg"))))
    (properties `((upstream-name . "pattern-arrows") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vngc3mlyj52fl6cdrbwngpcyzp0gahq2h1sy1ysga62mv76wpc9")))
    (outputs (list "out" "static" "doc"))
    (home-page
     "http://blog.functorial.com/posts/2013-10-27-Pretty-Printing-Arrows.html")
    (synopsis "Arrows for Pretty Printing")
    (description
     "A library for generating concise pretty printers based on precedence rules.")
    (license license:expat)))

haskell-8.8-pattern-arrows

(define-public haskell-8.8-peano
  (package
    (name "haskell-8.8-peano")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/peano/peano-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yzcxrl41dacvx2wkyxjj7hgvz56l4qb59r4h9rmaqd7jcwx5z9i"))))
    (properties `((upstream-name . "peano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0wl22dnz6ld300cg6id3lw991bp8kdfi8h0nbv37vn79i1zdcj5n")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/peano")
    (synopsis "Peano numbers")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-peano

(define-public haskell-8.8-phantom-state
  (package
    (name "haskell-8.8-phantom-state")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/phantom-state/phantom-state-"
                    version ".tar.gz"))
              (sha256
               (base32
                "049q1ii8rgwwjli16hxs9ak813x2lw5k8y8l7zjsks8hx2cfyy7r"))))
    (properties `((upstream-name . "phantom-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/phantom-state")
    (synopsis
     "Phantom State Transformer. Like State Monad, but without values.")
    (description
     "A monad transformer that mimics the State Monad Transformer from the
<http://hackage.haskell.org/package/transformers transformers> package,
but dropping the values. In those cases that you want to use the State
Monad but you only care about effects and how the state changes, use
this library to earn a plus of efficiency.")
    (license license:bsd-3)))

haskell-8.8-phantom-state

(define-public haskell-8.8-pid1
  (package
    (name "haskell-8.8-pid1")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pid1/pid1-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xkz4vdh8cblpl8k2xmqs8vwv2c0vpxdbikcf2dnmzbg9fdvz5wy"))))
    (properties `((upstream-name . "pid1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11yg5pjci1d6p5ml0ic4vqn70vjx8vvhqs20rahgfqhh8palkyw9")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/fpco/pid1#readme")
    (synopsis
     "Do signal handling and orphan reaping for Unix PID1 init processes")
    (description
     "Please see README.md or view Haddocks at <https://www.stackage.org/package/pid1>")
    (license license:expat)))

haskell-8.8-pid1

(define-public haskell-8.8-placeholders
  (package
    (name "haskell-8.8-placeholders")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/placeholders/placeholders-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ih35n2pw5gr9ggj2xz5zfcs4bdk200fdw6q9hdy3xna7maphak5"))))
    (properties `((upstream-name . "placeholders") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ahammar/placeholders")
    (synopsis "Placeholders for use while developing Haskell code")
    (description "While working on some Haskell code, it is often useful to
work incrementally by inserting @@undefined@@ as a
placeholder for missing code.

This library provides placeholders that produce better
messages when evaluated at run-time and also generate
compile-time warnings so that they do not get forgotten
so easily.
For details, see <http://github.com/ahammar/placeholders>")
    (license license:bsd-3)))

haskell-8.8-placeholders

(define-public haskell-8.8-pointedlist
  (package
    (name "haskell-8.8-pointedlist")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pointedlist/pointedlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16xsrzqql7i4z6a3xy07sqnbyqdmcar1jiacla58y4mvkkwb0g3l"))))
    (properties `((upstream-name . "pointedlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/pointedlist")
    (synopsis
     "A zipper-like comonad which works as a list, tracking a position.")
    (description
     "A PointedList tracks the position in a non-empty list which works similarly
to a zipper. A current item is always required, and therefore the list may
never be empty.
A circular PointedList wraps around to the other end when progressing past
the actual edge.")
    (license license:bsd-3)))

haskell-8.8-pointedlist

(define-public haskell-8.8-pointless-fun
  (package
    (name "haskell-8.8-pointless-fun")
    (version "1.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pointless-fun/pointless-fun-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m5hwd0mr7bmb2sbs1qa7l65xrr5h2wjznknsrk1ga08qkd5jp6h"))))
    (properties `((upstream-name . "pointless-fun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis "Some common point-free combinators.")
    (description "Some common point-free combinators.")
    (license license:bsd-3)))

haskell-8.8-pointless-fun

(define-public haskell-8.8-polyparse
  (package
    (name "haskell-8.8-polyparse")
    (version "1.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polyparse/polyparse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yvhg718dlksiw3v27m2d8m1sn4r4f5s0p56zq3lynhy1sc74k0w"))))
    (properties `((upstream-name . "polyparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "05qrn5pfdy45x1nkx7dvhnxs9j6d6cssws4kwn2sl3n9qmagr8mc")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~malcolm/polyparse/")
    (synopsis "A variety of alternative parser combinator libraries.")
    (description
     "This version, 1.13 is a Non-Maintainer Upload (NMU).
Report issues to the Hackage Trustees issue tracker.

A variety of alternative parser combinator libraries, including
the original HuttonMeijer set.  The Poly sets have features like
good error reporting, arbitrary token type, running state, lazy
parsing, and so on.  Finally, Text.Parse is a proposed
replacement for the standard Read class, for better
deserialisation of Haskell values from Strings.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-polyparse

(define-public haskell-8.8-possibly
  (package
    (name "haskell-8.8-possibly")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/possibly/possibly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08pannfx1831xp4zj4q3qp64vjr208df83qdwvzzlrn9ffc9ikaj"))))
    (properties `((upstream-name . "possibly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/cdornan/enum-text#readme")
    (synopsis "type Possibly a = Either String a")
    (description
     "A surprisingly useful type synonym for Either in which the Left diagnostic is a String, i.e, @@type Possibly a = Either String a@@")
    (license license:bsd-3)))

haskell-8.8-possibly

(define-public haskell-8.8-post-mess-age
  (package
    (name "haskell-8.8-post-mess-age")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/post-mess-age/post-mess-age-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k6njm7fbj7y6bzqkfpdby4az13i2sqg7lacnn5ry2hkrfqrmxnh"))))
    (properties `((upstream-name . "post-mess-age") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/post-mess-age")
    (synopsis
     "Send messages to a handle concurrently without getting them mixed.")
    (description
     "Do you have a program that output messages to the screen from different
threads and you are tired of getting them all messed up? Welcome to the
/post-mess-age/. Using a simple /passer object/ you can make your logging
messages useful again. The methodology is explained in the API docs.
You can use post-mess-age not only for the 'stdout' handle, but with anything!")
    (license license:bsd-3)))

haskell-8.8-post-mess-age

(define-public haskell-8.8-prefix-units
  (package
    (name "haskell-8.8-prefix-units")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
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

haskell-8.8-prefix-units

(define-public haskell-8.8-prelude-compat
  (package
    (name "haskell-8.8-prelude-compat")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prelude-compat/prelude-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mv00d5k5wqb39iyghdbf4lfqznwb1whcc9a564ly4wzka70y9f1"))))
    (properties `((upstream-name . "prelude-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/prelude-compat")
    (synopsis
     "Provide Prelude and Data.List with fixed content across GHC versions")
    (description
     "This package allows you to write warning-free code
that compiles with versions of 'base' before and after AMP and FTP,
that is, 'base' before and beginning with 4.8, respectively,
and GHC before and beginning with 7.10, respectively.
It serves three purposes:

* Prevent you from name clashes of FTP-Prelude
with locally defined functions having names like '<*>', 'join', 'foldMap'.

* Prevent you from redundant import warnings
if you manually import \"Data.Monoid\" or \"Control.Applicative\".

* Fix list functions to the list type, contrarily to the aim of the FTP.
This way you are saved from @@length (2,1) == 1@@ and @@maximum (2,1) == 1@@,
until you import @@Data.Foldable@@.

You should add

> import Prelude2010
> import Prelude ()

to your modules.
This way, you must change all affected modules.
If you want to avoid this you may try the 'prelude2010' package
or if you already import Prelude explicitly, you may try to add

> Default-Extensions: CPP, NoImplicitPrelude
> CPP-Options: -DPrelude=Prelude2010

to your Cabal file.

In my opinion, this is the wrong way round.
The presented Prelude2010 module should have been the one for GHC-7.10
and the Prelude with added and generalized list functions
should have been an additional PreludeFTP,
preferably exported by a separate package
like all other alternate Prelude projects.
But the purpose of the FTP was to save some import statements
at the expense of blowing up the 'Foldable' class
and prevent simple ways to write code that works
with GHC version before and starting with GHC-7.10
and that does not provoke warnings.

Related packages:

* 'base-compat': The opposite approach -
Make future function definitions available in older GHC versions.

* 'haskell2010': Defines the Prelude for Haskell 2010.
Unfortunately, 'haskell2010' is not available anymore since GHC-7.10,
because of the AMP.

* 'numeric-prelude':
It is intended to provide a refined numeric class hierarchy
but it also provides a non-numeric subset of the Prelude
that is more stable than the one of 'base'.")
    (license license:bsd-3)))

haskell-8.8-prelude-compat

(define-public haskell-8.8-prelude-safeenum
  (package
    (name "haskell-8.8-prelude-safeenum")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prelude-safeenum/prelude-safeenum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wp6b7bvnp2wz0kigwm4vfca74phh3bbpqybqdgm60isfaz3yfl"))))
    (properties `((upstream-name . "prelude-safeenum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis
     "A redefinition of the Prelude's Enum class in order to render it safe.")
    (description
     "A redefinition of the Prelude's Enum class in order to render
it safe. That is, the Haskell Language Report defines pred,
succ, fromEnum, and toEnum to be partial functions when the
type is Bounded, but this is unacceptable. We define a new
type-class hierarchy for enumeration which is safe and also
generalizes to cover types which can only be enumerated in one
direction.")
    (license license:bsd-3)))

haskell-8.8-prelude-safeenum

(define-public haskell-8.8-pretty-class
  (package
    (name "haskell-8.8-pretty-class")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-class/pretty-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qdfp2kpahzflq9a3idwmb0pqs4l7almxn5rbw5gp2pmdx81p3am"))))
    (properties `((upstream-name . "pretty-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ddssff/pretty-class")
    (synopsis "Pretty printing class similar to Show.")
    (description
     "Pretty printing class similar to Show, based on the HughesPJ
pretty printing library.  Provides the pretty printing class
and instances for the Prelude types.  This upload replaces the
old pretty-class package (which I believe nobody is using) with
a copy of Lennart's prettyclass package with a small change to
its Char instance.")
    (license license:bsd-3)))

haskell-8.8-pretty-class

(define-public haskell-8.8-pretty-hex
  (package
    (name "haskell-8.8-pretty-hex")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-hex/pretty-hex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c8pa0rdb2q8rf4acy4gww0hj5lrzclzdh52yi2aiaaij4lqzir7"))))
    (properties `((upstream-name . "pretty-hex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/pretty-hex")
    (synopsis "A library for hex dumps of ByteStrings")
    (description
     "This library generates pretty hex dumps of ByteStrings in the
style of other common *nix hex dump tools.")
    (license license:bsd-3)))

haskell-8.8-pretty-hex

(define-public haskell-8.8-pretty-terminal
  (package
    (name "haskell-8.8-pretty-terminal")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-terminal/pretty-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rr5mwg4j2zw0k1p2y042z5769l53vlxn5c9bf23jw7whi6gfxlf"))))
    (properties `((upstream-name . "pretty-terminal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ncs74ycnpkcqazhz3iqi2cx9nr88vg8i457ynmf7a5jxf35s4z9")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/loganmac/pretty-terminal#readme")
    (synopsis
     "Styling and coloring terminal output with ANSI escape sequences.")
    (description
     "Please see the README on Github at <https://github.com/loganmac/pretty-terminal#readme>")
    (license license:bsd-3)))

haskell-8.8-pretty-terminal

(define-public haskell-8.8-prettyclass
  (package
    (name "haskell-8.8-prettyclass")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyclass/prettyclass-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11l9ajci7nh1r547hx8hgxrhq8mh5gdq30pdf845wvilg9p48dz5"))))
    (properties `((upstream-name . "prettyclass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/prettyclass")
    (synopsis "Pretty printing class similar to Show.")
    (description "Pretty printing class similar to Show, based on the HughesPJ
pretty printing library.  Provides the pretty printing class
and instances for the Prelude types.")
    (license license:bsd-3)))

haskell-8.8-prettyclass

(define-public haskell-8.8-prettyprinter
  (package
    (name "haskell-8.8-prettyprinter")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter/prettyprinter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "023hfz75xgvyymbipyph7xmaaki2d5qa6fh4lx9adl1h4s8g34yi"))))
    (properties `((upstream-name . "prettyprinter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildreadme")
       #:cabal-revision
       ("1" "1zrwrv6q2w7zvvy4swzigrwy1jzrhljd776i04y8wdn8kha8qxgi")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "A modern, easy to use, well-documented, extensible pretty-printer.")
    (description
     "A modern, easy to use, well-documented, extensible pretty-printer. For more see README.md")
    (license license:bsd-2)))

haskell-8.8-prettyprinter

(define-public haskell-8.8-primes
  (package
    (name "haskell-8.8-primes")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/primes/primes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ny6fzr967d1fifk050k95j9snnbjjif2bxf3v9s93k3zdc6bmkl"))))
    (properties `((upstream-name . "primes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/sebfisch/primes")
    (synopsis "Efficient, purely functional generation of prime numbers")
    (description
     "This Haskell library provides an efficient lazy wheel sieve for
prime generation inspired by /Lazy wheel sieves and spirals of/
/primes/ by Colin Runciman and /The Genuine Sieve of Eratosthenes/
by Melissa O'Neil.")
    (license license:bsd-3)))

haskell-8.8-primes

(define-public haskell-8.8-primitive-notests
  (package
    (name "haskell-8.8-primitive-notests")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive/primitive-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pgpjzlfn037lw7lsszpqmqhbf33fnd86jna1whdd4pl57cbg2yx"))))
    (properties `((upstream-name . "primitive") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/haskell/primitive")
    (synopsis "Primitive memory-related operations")
    (description
     "This package provides various primitive memory-related operations.")
    (license license:bsd-3)))

haskell-8.8-primitive-notests

(define-public haskell-8.8-proxied
  (package
    (name "haskell-8.8-proxied")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/proxied/proxied-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ldcyvzg5i4axkn5qwgkc8vrc0f0715842ca41d7237p1bh98s4r"))))
    (properties `((upstream-name . "proxied") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/RyanGlScott/proxied")
    (synopsis "Make functions consume Proxy instead of undefined")
    (description
     "@@proxied@@ is a simple library that exports a function to
convert constant functions to ones that take a @@proxy@@
value in the \"Data.Proxied\" module. This is useful for
retrofiting typeclasses that have functions that return a
constant value for any value of a particular type (but
still need to consume some value, since one of the
parameterized types must appear in a typeclass function).
Often, these functions are given @@undefined@@ as an
argument, which might be considered poor design.

@@Proxy@@, however, does not carry any of the
error-throwing risks of @@undefined@@, so it is much more
preferable to take @@Proxy@@ as an argument to a constant
function instead of @@undefined@@. Unfortunately, @@Proxy@@
wasn't included in @@base@@ until GHC 7.8, so many of @@base@@'s
typeclasses still contain constant functions that aren't
amenable to passing @@Proxy@@. @@proxied@@ addresses this
issue by providing variants of those typeclass functions
that take an explicit @@proxy@@ value.

This library also contains the \"Data.Proxyless\" module,
which works in the opposite direction. That is, one can
take functions which take @@Proxy@@ (or @@undefined@@) as an
argument and convert them to functions which take no
arguments. This trick relies on the @@-XTypeApplications@@
extension, so it is only available with GHC 8.0 or later.")
    (license license:bsd-3)))

haskell-8.8-proxied

(define-public haskell-8.8-pulse-simple
  (package
    (name "haskell-8.8-pulse-simple")
    (version "0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pulse-simple/pulse-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1as1cnx50mqmib5llzy2w218rg7dxmhz6nfa9kryfjzk0n5rshl4"))))
    (properties `((upstream-name . "pulse-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pulseaudio) pulseaudio)))
    (home-page "https://hackage.haskell.org/package/pulse-simple")
    (synopsis "binding to Simple API of pulseaudio")
    (description
     "Binding to simple version of client API for the pulseaudio soundserver.
Although it does not provide advanced features and some not-so-adavanced features like
volume control, it should be enough for simple applications.
Confirmed to work on linux(32 bit and 64 bit) with ghc 6.8, 6.10, 7.0.4.")
    (license license:bsd-3)))

haskell-8.8-pulse-simple

(define-public haskell-8.8-quiet
  (package
    (name "haskell-8.8-quiet")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/quiet/quiet-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k2y6aa5c7d0sils11m0r1nk1fmck7iq10wr35v77r6wg5rzd2qi"))))
    (properties `((upstream-name . "quiet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jacobstanley/quiet#readme")
    (synopsis "Generic deriving of Read/Show with no record labels.")
    (description
     "Please see the README on GitHub at <https://github.com/jacobstanley/quiet#readme>")
    (license license:bsd-3)))

haskell-8.8-quiet

(define-public haskell-8.8-random
  (package
    (name "haskell-8.8-random")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/random/random-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nis3lbkp8vfx8pkr6v7b7kr5m334bzb0fk9vxqklnp2aw8a865p"))))
    (properties `((upstream-name . "random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pv5d7bm2rgap7llp5vjsplrg048gvf0226y0v19gpvdsx7n4rvv")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/random")
    (synopsis "random number library")
    (description "This package provides a basic random number generation
library, including the ability to split random number
generators.")
    (license license:bsd-3)))

haskell-8.8-random

(define-public haskell-8.8-rank1dynamic
  (package
    (name "haskell-8.8-rank1dynamic")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rank1dynamic/rank1dynamic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19x2w44f31589vf4s428m7g3dz75qykr7mv599rf3gls4zjx781r"))))
    (properties `((upstream-name . "rank1dynamic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://haskell-distributed.github.com")
    (synopsis
     "Like Data.Dynamic/Data.Typeable but with support for rank-1 polymorphic types")
    (description
     "\"Data.Typeable\" and \"Data.Dynamic\" only support monomorphic types.
In this package we provide similar functionality but with
support for rank-1 polymorphic types.")
    (license license:bsd-3)))

haskell-8.8-rank1dynamic

(define-public haskell-8.8-rawfilepath
  (package
    (name "haskell-8.8-rawfilepath")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rawfilepath/rawfilepath-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lsvpnv1dncxw6a8a9w1jnzxlv2ya69ly4p4qsl720pzyx4ipc6b"))))
    (properties `((upstream-name . "rawfilepath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/xtendo-org/rawfilepath#readme")
    (synopsis "Use RawFilePath instead of FilePath")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-rawfilepath

(define-public haskell-8.8-rawstring-qm
  (package
    (name "haskell-8.8-rawstring-qm")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rawstring-qm/rawstring-qm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zk82akj2p4hl9hqwr30fixqfkjlpnb02qwhhflvcpv8gnxpg88i"))))
    (properties `((upstream-name . "rawstring-qm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/tolysz/rawstring-qm")
    (synopsis "Simple raw string quotation and dictionary interpolation")
    (description
     "Supply a couple of usefull QuasiQuotes so we can use functions to lookup values
It has quasiquotes for Strings, Text and Builders")
    (license license:bsd-3)))

haskell-8.8-rawstring-qm

(define-public haskell-8.8-rdtsc
  (package
    (name "haskell-8.8-rdtsc")
    (version "1.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rdtsc/rdtsc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0l6r5v6bgqf7lq9j6bf7w362bz7bv4xrsbz90ns60v4dyqjskjal"))))
    (properties `((upstream-name . "rdtsc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mgrabmueller/rdtsc")
    (synopsis "Binding for the rdtsc machine instruction")
    (description
     "This module provides the function 'rdtsc' for accessing
the 'rdtsc' machine register on modern IA-32 processors.  This is
a 64-bit counter which counts the number of processor cycles since
the machine has been powered up.  Using this instruction, you can
make very precise time measurements which are independent of the
actual CPU frequency.  But note that you can get strange results
sometimes on a superscalar processor.

Also note that the Haskell foreign function interface imposes some
additional overheads.  On my machine, it takes about 950 cycles to
call this function twice and to compute the difference, whereas in
C the overhead is only about 88 cycles.")
    (license license:bsd-3)))

haskell-8.8-rdtsc

(define-public haskell-8.8-read-editor
  (package
    (name "haskell-8.8-read-editor")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/read-editor/read-editor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11bhfyzvw305avnp9abf45jvwflwdh8gshx5l08szyr3d2lfr2pd"))))
    (properties `((upstream-name . "read-editor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/yamadapc/haskell-read-editor")
    (synopsis
     "Opens a temporary file on the system's EDITOR and returns the resulting edits")
    (description
     "See <https://github.com/yamadapc/haskell-read-editor> for more information")
    (license license:expat)))

haskell-8.8-read-editor

(define-public haskell-8.8-readable
  (package
    (name "haskell-8.8-readable")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/readable/readable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ja39cg26wy2fs00gi12x7iq5k8i366pbqi3p916skfa5jnkfc3h"))))
    (properties `((upstream-name . "readable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dywlvxjszqa1dj5r1cva0viv2l1hm8mw75zddnf96pfpd00fmga")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mightybyte/readable")
    (synopsis "Reading from Text and ByteString")
    (description
     "Provides a Readable type class for reading data types from ByteString and
Text.  Also includes efficient implementations for common data types.")
    (license license:bsd-3)))

haskell-8.8-readable

(define-public haskell-8.8-record-hasfield
  (package
    (name "haskell-8.8-record-hasfield")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-hasfield/record-hasfield-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jlyhj4nlj4hrypdcv7393nccjmfjnh1311incgqhm5wzigjygaj"))))
    (properties `((upstream-name . "record-hasfield") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ndmitchell/record-hasfield#readme")
    (synopsis "A version of GHC.Records as available in future GHCs.")
    (description
     "This package provides a version of \"GHC.Records\" as it will be after the implementation of
<https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0042-record-set-field.rst GHC proposal #42>,
plus some helper functions over it.")
    (license license:bsd-3)))

haskell-8.8-record-hasfield

(define-public haskell-8.8-ref-fd
  (package
    (name "haskell-8.8-ref-fd")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ref-fd/ref-fd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1camr7cv1fglicyp2ivv7qv1yidj36zxcglfvmw7giqdj7r7j5w8"))))
    (properties `((upstream-name . "ref-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/ref-fd")
    (synopsis "A type class for monads with references using functional
dependencies.")
    (description
     "Contains a 'MonadRef' type class that abstracts over the
details of manipulating references, allowing one to write code
that can operate in either the ST monad or the IO monad.")
    (license license:bsd-3)))

haskell-8.8-ref-fd

(define-public haskell-8.8-refact
  (package
    (name "haskell-8.8-refact")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/refact/refact-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v0zxcx29b8jxs2kgy9csykqcp8kzhdvyylw2xfwmj4pfxr2kl0a"))))
    (properties `((upstream-name . "refact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/refact")
    (synopsis "Specify refactorings to perform with apply-refact")
    (description
     "This library provides a datatype which can be interpreted by apply-refact. It exists
as a seperate library so that applications can specify refactorings without depending on GHC.")
    (license license:bsd-3)))

haskell-8.8-refact

(define-public haskell-8.8-regex-base
  (package
    (name "haskell-8.8-regex-base")
    (version "0.94.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-base/regex-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "055rlq67xnbqv43fgrlw6d7s8nhyavahrp6blihwjmqizksq47y4"))))
    (properties `((upstream-name . "regex-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13lnky4ps9as73jqrwz4aqn5sfyrcz2zj2ng52xzz512fv59baj4")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "Common \"Text.Regex.*\" API for Regex matching")
    (description
     "This package doesn't provide the ability to do regex matching, but instead provides the type-classes that constitute the abstract API that is implemented by @@regex-*@@ backends such as

* <//hackage.haskell.org/package/regex-posix regex-posix>

* <//hackage.haskell.org/package/regex-parsec regex-parsec>

* <//hackage.haskell.org/package/regex-dfa regex-dfa>

* <//hackage.haskell.org/package/regex-tdfa regex-tdfa>

* <//hackage.haskell.org/package/regex-pcre regex-pcre>

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.8-regex-base

(define-public haskell-8.8-rev-state
  (package
    (name "haskell-8.8-rev-state")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rev-state/rev-state-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06gry2ysvdg5q0b86gr8i86xsbxw2yrnld9g7rcp7mppswwhw1zf"))))
    (properties `((upstream-name . "rev-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1w2kry4a801l6acimz3b82f3666fx62zzw5q9si1ahlf3mrkr7hk")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/DanBurton/rev-state#readme")
    (synopsis "Reverse State monad transformer")
    (description "It's like the State monad transformer.
But Reversed! The state goes backwards.")
    (license license:bsd-3)))

haskell-8.8-rev-state

(define-public haskell-8.8-rfc5051
  (package
    (name "haskell-8.8-rfc5051")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rfc5051/rfc5051-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lxkq414ni986ciml4gbvf463fn55z299knky7pq3ixb1qislpb1"))))
    (properties `((upstream-name . "rfc5051") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mkunicodedata")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/rfc5051")
    (synopsis "Simple unicode collation as per RFC5051.")
    (description
     "This library implements @@i;unicode-casemap@@,
the simple, non locale-sensitive unicode collation
algorithm described in RFC 5051 (<http://www.rfc-editor.org/rfc/rfc5051.txt>).
Proper unicode collation can be done using text-icu, but that is a big
dependency that depends on a large C library, and rfc5051 might be better
for some purposes.

Here is a list of strings sorted by the Prelude's @@sort@@ function:
@@Abe Oeb abe ab&#233; oeb &#193;be &#196;be &#212;eb &#225;be &#228;be &#244;eb@@.

Here is the same list sorted by @@sortBy compareUnicode@@:

@@Abe abe ab&#233; &#193;be &#225;be &#196;be &#228;be Oeb oeb &#212;eb &#244;eb@@")
    (license license:bsd-3)))

haskell-8.8-rfc5051

(define-public haskell-8.8-roles
  (package
    (name "haskell-8.8-roles")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roles/roles-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "181lmjmvv6285q5zh6cf991jw7d6f0g225vya3iqqb8vn8qjz7g2"))))
    (properties `((upstream-name . "roles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/matt-noonan/roles/")
    (synopsis "Composable class-based roles")
    (description "Composable class-based roles")
    (license license:bsd-3)))

haskell-8.8-roles

(define-public haskell-8.8-rosezipper
  (package
    (name "haskell-8.8-rosezipper")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rosezipper/rosezipper-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g6ppa8cappdbq9923lsac504dfjh0ks64gbm6qbihrc34f4zavc"))))
    (properties `((upstream-name . "rosezipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/rosezipper")
    (synopsis "Generic zipper implementation for Data.Tree")
    (description "A Haskell datastructure for working with locations in
trees or forests.")
    (license license:bsd-3)))

haskell-8.8-rosezipper

(define-public haskell-8.8-safe-foldable
  (package
    (name "haskell-8.8-safe-foldable")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-foldable/safe-foldable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l87j0liv0hgdv3f3d4s4962df5q5xcyhmnfz2fj773r1v62wzya"))))
    (properties `((upstream-name . "safe-foldable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/tejon/safe-foldable#readme")
    (synopsis "Safe wrappers for null-partial Foldable operations")
    (description "")
    (license license:expat)))

haskell-8.8-safe-foldable

(define-public haskell-8.8-scanf
  (package
    (name "haskell-8.8-scanf")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scanf/scanf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xf3g3dajaci71mgnd7z5xy4a29w40gg43a41x3fvd1a2wpi6xan"))))
    (properties `((upstream-name . "scanf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/Lysxia/scanf#readme")
    (synopsis "Easy and type-safe format strings for parsing and printing")
    (description "A lightweight library for one-off parsing and printing.

See README.")
    (license license:expat)))

haskell-8.8-scanf

(define-public haskell-8.8-semigroups
  (package
    (name "haskell-8.8-semigroups")
    (version "0.19.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroups/semigroups-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j36cha1wb9vxnd8axfna92b2q5hnrn3ap8d8yin89c69gk63rvr"))))
    (properties `((upstream-name . "semigroups") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fhashable" "-fbinary" "-fbytestring" "-f-bytestring-builder" "-fcontainers" "-fdeepseq" "-ftagged" "-ftemplate-haskell" "-ftext" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("2" "0xm3diaq83pyvgmgw25vx2d1c3sc914kly0sxg3vch54n1j4npxa")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/semigroups/")
    (synopsis "Anything that associates")
    (description
     "In mathematics, a semigroup is an algebraic structure consisting of a set together with an associative binary operation. A semigroup generalizes a monoid in that there might not exist an identity element. It also (originally) generalized a group (a monoid with all inverses) to a type where every element did not have to have an inverse, thus the name semigroup.")
    (license license:bsd-3)))

haskell-8.8-semigroups

(define-public haskell-8.8-semiring-simple
  (package
    (name "haskell-8.8-semiring-simple")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semiring-simple/semiring-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a7xd58jl3dm03z2wv4iyp3dfjnpydn3lmlz25azqna57x9ip3f0"))))
    (properties `((upstream-name . "semiring-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/semiring-simple")
    (synopsis "A module for dealing with semirings.")
    (description
     "Semirings are like normal rings, except you can't subtract. This library
provides a type class for semirings.")
    (license license:bsd-3)))

haskell-8.8-semiring-simple

(define-public haskell-8.8-servant-auth
  (package
    (name "haskell-8.8-servant-auth")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth/servant-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12s1m7vqp0ka8nani4cnrb6fad2y5mxji95bba2b6b07ih8xbd3v"))))
    (properties `((upstream-name . "servant-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "06jpxqz5444k19p1n4i4yf2pvql37w9ngssp1grxl42dxk2bcg94")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "Authentication combinators for servant")
    (description
     "This package provides an @@Auth@@ combinator for 'servant'. This combinator
allows using different authentication schemes in a straightforward way,
and possibly in conjunction with one another.

'servant-auth' additionally provides concrete authentication schemes, such
as Basic Access Authentication, JSON Web Tokens, and Cookies.

For more details on how to use this, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.8-servant-auth

(define-public haskell-8.8-setenv
  (package
    (name "haskell-8.8-setenv")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/setenv/setenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cnbgrvb9byyahb37zlqrj05rj25v190crgcw8wmlgf0mwwxyn73"))))
    (properties `((upstream-name . "setenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ny4g3kjys0hqg41mnwrsymy1bwhl8l169kis4y4fa58sb06m4f5")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/setenv")
    (synopsis "A cross-platform library for setting environment variables")
    (description
     "A cross-platform library for setting environment variables

Note: Since @@base-4.7.0.0@@ the functions @@setEnv@@ and
@@unsetEnv@@ are provided by @@System.Environment@@.
@@System.SetEnv@@ merily re-exports those functions when built
with @@base >= 4.7@@.")
    (license license:expat)))

haskell-8.8-setenv

(define-public haskell-8.8-shell-utility
  (package
    (name "haskell-8.8-shell-utility")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-utility/shell-utility-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n15v0avvkxvczmyjc6g4z9axr5c61n8jlpa1cm4xr3qk7spm1mi"))))
    (properties `((upstream-name . "shell-utility") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://hub.darcs.net/thielema/shell-utility/")
    (synopsis "Utility functions for writing command-line programs")
    (description
     "Utility functions for writing command-line programs including
parsing of numbers with restrictions and enumerations
for command-line arguments,
verbosity controlled output,
escaping shell arguments, exit with message.

The package has very light dependencies and is Haskell 98.")
    (license license:bsd-3)))

haskell-8.8-shell-utility

(define-public haskell-8.8-show-combinators
  (package
    (name "haskell-8.8-show-combinators")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/show-combinators/show-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07ds87ldl9165hj3k5h84iawc6vqlbggni3dg1nhbxww1spxn0n9"))))
    (properties `((upstream-name . "show-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0n3xlpm41wpw1ybmacg9s7150nx00qrdlw2rq4fzz7iw7333cyjx")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/Lysxia/show-combinators#readme")
    (synopsis "Combinators to write Show instances")
    (description
     "A minimal pretty-printing library for Show instances in Haskell.")
    (license license:expat)))

haskell-8.8-show-combinators

(define-public haskell-8.8-siggy-chardust
  (package
    (name "haskell-8.8-siggy-chardust")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/siggy-chardust/siggy-chardust-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hssby6mak0bq1fqv47hp6rnw51yz1kgzgsmnvh2k9jfq0y0qwwz"))))
    (properties `((upstream-name . "siggy-chardust") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lknm1jr6h5qpixc727aj3zbmj4ia21r9lb8gzj50iildgmfk33b")))
    (outputs (list "out" "static" "doc"))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/siggy-chardust#readme")
    (synopsis "Rounding rationals to significant digits and decimal places.")
    (description
     "The round function from the prelude returns an integer. The standard librarys of C and C++ have round functions that return floating point numbers. Rounding in this library takes and returns rationals and can round to a number of significant digits or a number of decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-siggy-chardust

(define-public haskell-8.8-signal
  (package
    (name "haskell-8.8-signal")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/signal/signal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rbnblp2d9cw54jnxjcfjhp0bizvcdcxg9y1b4ky0iskny9dvgy4"))))
    (properties `((upstream-name . "signal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/pmlodawski/signal")
    (synopsis "Multiplatform signal support for Haskell")
    (description
     "This simple library allows you to handle os signals on both Linux and Windows.")
    (license license:expat)))

haskell-8.8-signal

(define-public haskell-8.8-simple-affine-space
  (package
    (name "haskell-8.8-simple-affine-space")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-affine-space/simple-affine-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172yn8kispqbn6zrdn610mh3l728ffb6lwa1zk5qgwm0lfpx3849"))))
    (properties `((upstream-name . "simple-affine-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-hlint" "-ftest-doc-coverage")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.haskell.org/haskellwiki/Yampa")
    (synopsis "A simple library for affine and vector spaces.")
    (description
     "Affine spaces and vector spaces with a few basic instances.

This library implements affine spaces and vector spaces. Two instances are
provided for affine spaces (points) and two more for vector spaces (vectors).
These definitions are strict, implement deepseq, and are designed to have
minimal memory overhead.")
    (license license:bsd-3)))

haskell-8.8-simple-affine-space

(define-public haskell-8.8-simple-cabal
  (package
    (name "haskell-8.8-simple-cabal")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cabal/simple-cabal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "035h20sz2hg2xc1k5ds1q367fa10px936dlhj3yxkydp3wprqr7x"))))
    (properties `((upstream-name . "simple-cabal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/juhp/simple-cabal")
    (synopsis "Cabal file wrapper library")
    (description "Find and read .cabal files, and
a Cabal dependency compatibility layer.")
    (license license:bsd-3)))

haskell-8.8-simple-cabal

(define-public haskell-8.8-simple-reflect
  (package
    (name "haskell-8.8-simple-reflect")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-reflect/simple-reflect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ayvrx5cm8n6db21jiyjmk5h93pw7cz1707hih09hlhk9jh5x0h7"))))
    (properties `((upstream-name . "simple-reflect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page
     "http://twanvl.nl/blog/haskell/simple-reflection-of-expressions")
    (synopsis "Simple reflection of expressions containing variables")
    (description
     "This package allows simple reflection of expressions containing variables.
Reflection here means that a Haskell expression is turned into a string.
The primary aim of this package is teaching and understanding;
there are no options for manipulating the reflected expressions beyond showing them.")
    (license license:bsd-3)))

haskell-8.8-simple-reflect

(define-public haskell-8.8-since
  (package
    (name "haskell-8.8-since")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/since/since-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zy1vwna8a0421l3jvdm8mg36xwgj4xl3p2xkf678ahbzk0179vs"))))
    (properties `((upstream-name . "since") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/athanclark/since#readme")
    (synopsis "Get the number of seconds since the last invocation")
    (description "")
    (license license:bsd-3)))

haskell-8.8-since

(define-public haskell-8.8-skip-var
  (package
    (name "haskell-8.8-skip-var")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skip-var/skip-var-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07nljfjd45fagisd99pqz2jhznfapk9cgd9lyy9cija7pmxfbg5z"))))
    (properties `((upstream-name . "skip-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vl2y19l7xhlq08f91ggycj4imfdxvkj2fsaz8ifc0waxk3q7ja8")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/dtaskoff/skip-var#readme")
    (synopsis "Skip variables")
    (description
     "Please see the README on GitHub at <https://github.com/dtaskoff/skip-var#readme>")
    (license license:expat)))

haskell-8.8-skip-var

(define-public haskell-8.8-snowflake
  (package
    (name "haskell-8.8-snowflake")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snowflake/snowflake-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pfd8lqwv0504hli6fhwiqckcca0x9pnfzmy3kz36w7138rclmpi"))))
    (properties `((upstream-name . "snowflake") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y5v3nsin8iyxvh0abfhs7ma75p5zjvha0lp41801pdiikacfzha")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/snowflake")
    (synopsis
     "A loose port of Twitter Snowflake to Haskell. Generates arbitrary precision, unique, time-sortable identifiers.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-snowflake

(define-public haskell-8.8-some
  (package
    (name "haskell-8.8-some")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/some/some-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12mv5gzcvl4n5rz685r2nmmiykvnkvrvx7k4cvwscdjjgnqa9y6c"))))
    (properties `((upstream-name . "some") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtype-unsafe")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/phadej/some")
    (synopsis "Existential type: Some")
    (description
     "This library defines an existential type 'Some'.

@@
data Some f where
\\    Some :: f a -> Some f
@@

in few variants, and utilities to work with it.

If you are unsure which variant to use, use the one in \"Data.Some\" module.")
    (license license:bsd-3)))

haskell-8.8-some

(define-public haskell-8.8-sop-core
  (package
    (name "haskell-8.8-sop-core")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sop-core/sop-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c4xk4bw1ij4gpgy35iv08bhcxhv1siy55qnvp2xd6wcc3qnghys"))))
    (properties `((upstream-name . "sop-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1d4sagrlhmvai3f4hvb9rn8aqsjbvi00z0mzv1gds9nblshk83xd")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/sop-core")
    (synopsis "True Sums of Products")
    (description
     "Implementation of n-ary sums and n-ary products.

The module \"Data.SOP\" is the main module of this library and contains
more detailed documentation.

The main use case of this package is to serve as the core of
@@<https://hackage.haskell.org/package/generics-sop generics-sop>@@.

A detailed description of the ideas behind this library is provided by
the paper:

* Edsko de Vries and Andres Löh.
<http://www.andres-loeh.de/TrueSumsOfProducts True Sums of Products>.
Workshop on Generic Programming (WGP) 2014.
")
    (license license:bsd-3)))

haskell-8.8-sop-core

(define-public haskell-8.8-sort
  (package
    (name "haskell-8.8-sort")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sort/sort-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03bpyn0mimfyilfjs26b9c8sclbzsbardjhy6d822jybg548kqyf"))))
    (properties `((upstream-name . "sort") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/cdornan/sort")
    (synopsis "A Haskell sorting toolkit")
    (description "A library of general-purpose sorting utilities.")
    (license license:bsd-3)))

haskell-8.8-sort

(define-public haskell-8.8-sorted-list
  (package
    (name "haskell-8.8-sorted-list")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sorted-list/sorted-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2ygkh32q2kk5g7b7hnrl8z8azvgwsj36f3ndg79pzhghapdr5l"))))
    (properties `((upstream-name . "sorted-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page
     "https://github.com/Daniel-Diaz/sorted-list/blob/master/README.md")
    (synopsis "Type-enforced sorted lists and related functions.")
    (description
     "Type-enforced sorted lists and related functions.

These are useful for:

* Constraining the argument of a function to be a sorted list
by stating in your type that the input list is a sorted list.

* Avoiding sorting a list twice.

* Creating a list that is sorted from the moment of its construction,
so it doesn't have to be sorted later.

* Performing list operations keeping the input list sorted.

* Improving those list operations that can be
benefited from the ordering of its elements.

* Creating infinite lists that are sorted!

* And more!

If you are missing a feature, do not hesitate
to ask by opening an issue at the bug-tracker.")
    (license license:bsd-3)))

haskell-8.8-sorted-list

(define-public haskell-8.8-spoon
  (package
    (name "haskell-8.8-spoon")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/spoon/spoon-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m41k0mfy6fpfrv2ym4m5jsjaj9xdfl2iqpppd3c4d0fffv51cxr"))))
    (properties `((upstream-name . "spoon") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09s5jjcsg4g4qxchq9g2l4i9d5zh3rixpkbiysqcgl69kj8mwv74")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/spoon")
    (synopsis "Catch errors thrown from pure computations.")
    (description
     "Takes an error-throwing expression and puts it back in the Maybe it belongs in.

Note that this suffers from the <https://ghc.haskell.org/trac/ghc/ticket/5902 asynchronous exceptions re-thrown as synchronous> problem. Buyer beware.")
    (license license:bsd-3)))

haskell-8.8-spoon

(define-public haskell-8.8-squeather
  (package
    (name "haskell-8.8-squeather")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/squeather/squeather-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10w3db0lz14qjvvba5rkq9fhcq28ir4214shy45phnrpqlw7fdl5"))))
    (properties `((upstream-name . "squeather") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/massysett/squeather#readme")
    (synopsis
     "Use databases with the version 3 series of the SQLite C library")
    (description
     "Please see the README on GitHub at <https://github.com/massysett/squeather#readme>")
    (license license:bsd-3)))

haskell-8.8-squeather

(define-public haskell-8.8-srcloc
  (package
    (name "haskell-8.8-srcloc")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/srcloc/srcloc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vn0zqsk191ghh2993hls05hp7kvnskaafnfrrqhfbmpdg7dp7h6"))))
    (properties `((upstream-name . "srcloc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mainland/srcloc")
    (synopsis "Data types for managing source code locations.")
    (description
     "Data types for tracking, combining, and printing source code locations.")
    (license license:bsd-3)))

haskell-8.8-srcloc

(define-public haskell-8.8-stack-templatizer
  (package
    (name "haskell-8.8-stack-templatizer")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stack-templatizer/stack-templatizer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wz9xa3zs2c6706p3zydkz5rl8076hqak10mi4ianmfidp2v446w"))))
    (properties `((upstream-name . "stack-templatizer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/prikhi/stack-templatizer#readme")
    (synopsis "Generate a stack template from a folder.")
    (description
     "@@stack-templatizer@@ is an application that generates a @@.hsfiles@@ stack
template from a folder of template files.

You can install the application using @@stack install
stack-templatizer --resolver nightly@@ or by cloning the repository and
running @@stack install@@.

Then run @@stack-templatizer my-folder@@ to turn all the files in @@my-folder@@
into a @@my-folder.hsfiles@@ stack template.

You can see an example folder & the generated @@hs-files@@ in the
<https://github.com/prikhi/hpack-template hpack template repository>.")
    (license license:bsd-3)))

haskell-8.8-stack-templatizer

(define-public haskell-8.8-stateref
  (package
    (name "haskell-8.8-stateref")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stateref/stateref-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hdpw6g255lj7jjvgqwhjdpzmka546vda5qjvry8gjj6nfm91lvx"))))
    (properties `((upstream-name . "stateref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusestm" "-fusetmvar")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~mokus/stateref/")
    (synopsis "Abstraction for things that work like IORef.")
    (description "A collection of type-classes generalizing the
read\\/write\\/modify operations for stateful variables
provided by things like IORef, TVar, &c.
Note that The interface has changed a bit from the
0.2.* version.  \\\"*Ref\\\" functions are now called
\\\"*Reference\\\" and new \\\"*Ref\\\" function exist with
simpler signatures.
The new 'Ref' existential type provides a convenient
monad-indexed reference type, and the HasRef class
indicates monads for which there is a default
reference type for every referent.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-stateref

(define-public haskell-8.8-stm-chans
  (package
    (name "haskell-8.8-stm-chans")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-chans/stm-chans-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f27sp09yha43xk9q55sc185jyjs5h7gq2dhsyx6bm9kz9dzqi13"))))
    (properties `((upstream-name . "stm-chans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v9axxcfszqdmf3dhjxy34ybh22x3r5c48mdnbvjh5i5lp7g7vp2")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis "Additional types of channels for STM.")
    (description "Additional types of channels for STM.")
    (license license:bsd-3)))

haskell-8.8-stm-chans

(define-public haskell-8.8-stm-delay
  (package
    (name "haskell-8.8-stm-delay")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-delay/stm-delay-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cla21v89gcvmr1iwzibq13v1yq02xg4h6k9l6kcprj7mhd5hcmi"))))
    (properties `((upstream-name . "stm-delay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/joeyadams/haskell-stm-delay")
    (synopsis "Updatable one-shot timer polled with STM")
    (description
     "This library lets you create a one-shot timer, poll it using STM,
and update it to ring at a different time than initially specified.

It uses GHC event manager timeouts when available
(GHC 7.2+, @@-threaded@@, non-Windows OS), yielding performance similar
to @@threadDelay@@ and @@registerDelay@@.  Otherwise, it falls back to
forked threads and @@threadDelay@@.

[0.1.1]
Add tryWaitDelayIO, improve performance for certain cases of @@newDelay@@
and @@updateDelay@@, and improve example.")
    (license license:bsd-3)))

haskell-8.8-stm-delay

(define-public haskell-8.8-stm-extras
  (package
    (name "haskell-8.8-stm-extras")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-extras/stm-extras-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pmpf1r8q1favrbgvrnggvs93vwvml79yfqbs4xjqnjsglahl8c8"))))
    (properties `((upstream-name . "stm-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/louispan/stm-extras#readme")
    (synopsis "Extra STM functions")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-stm-extras

(define-public haskell-8.8-stm-split
  (package
    (name "haskell-8.8-stm-split")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-split/stm-split-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06c41p01x62p79bzwryjxr34l7cj65gl227fwwsvd9l6ihk8grp8"))))
    (properties `((upstream-name . "stm-split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/stm-split")
    (synopsis
     "TMVars, TVars and TChans with distinguished input and output side")
    (description
     "Transactional MVars, Vars and Channels with distinguished input and output side.
When threads communicate via a TMVar, a TVar or a TChan
there are often clearly defined roles,
which thread is the sender and which one is receiver.
We provide wrappers around the standard concurrency communication channels
that make the distinction clear and type safe.

For example, if a function has a parameter of type @@TChan.In@@
then it is sure that it will only write to that channel.
Additionally if the compiler warns about an unused @@TChan.Out@@
that was created by @@TChan.new@@
then you know that the receiver part of your communication is missing.

See also package @@concurrent-split@@ for non-transactional communication.
This package follows the same idea as @@chan-split@@ but is strictly Haskell 98.")
    (license license:bsd-3)))

haskell-8.8-stm-split

(define-public haskell-8.8-strict
  (package
    (name "haskell-8.8-strict")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strict/strict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08cjajqz9h47fkq98mlf3rc8n5ghbmnmgn8pfsl3bdldjdkmmlrc"))))
    (properties `((upstream-name . "strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplit-base")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.cse.unsw.edu.au/~rl/code/strict.html")
    (synopsis "Strict data types and String IO.")
    (description
     "This package provides strict versions of some standard Haskell data
types (pairs, Maybe and Either). It also contains strict IO
operations.")
    (license license:bsd-3)))

haskell-8.8-strict

(define-public haskell-8.8-strict-concurrency
  (package
    (name "haskell-8.8-strict-concurrency")
    (version "0.2.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-concurrency/strict-concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2nk5fn6gclzkwn5mbkb7gcqisms8y5m3kr64hd9lska3n39n82"))))
    (properties `((upstream-name . "strict-concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ygale/strict-concurrency")
    (synopsis "Strict concurrency abstractions")
    (description
     "This package provides head normal form strict versions of some
standard Haskell concurrency abstractions (MVars,Chans), which
provide control over where evaluation takes place not offered by
the default lazy types. This may be useful for deciding when and
where evaluation occurs, leading to improved time or space use,
depending on the circumstances.")
    (license license:bsd-3)))

haskell-8.8-strict-concurrency

(define-public haskell-8.8-string-combinators
  (package
    (name "haskell-8.8-string-combinators")
    (version "0.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-combinators/string-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07ky2z5f1l5mb7r3rvyraak0bzciq4krkg5lv8g0a5vxpnzlm4cl"))))
    (properties `((upstream-name . "string-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/basvandijk/string-combinators")
    (synopsis "Polymorphic functions to build and combine stringlike values")
    (description "@@string-combinators@@ provides handy polymorphic functions
to build and combine string-like values.

All functions are polymorphic in their string-like type
but usually have a 'Monoid' or 'IsString' constraint.")
    (license license:bsd-3)))

haskell-8.8-string-combinators

(define-public haskell-8.8-string-conv
  (package
    (name "haskell-8.8-string-conv")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-conv/string-conv-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fb04bm384rpiq7kd7v783z1sriqialvjyn0f6dg2si9dwza0ngj"))))
    (properties `((upstream-name . "string-conv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/Soostone/string-conv")
    (synopsis "Standardized conversion between string types")
    (description "Avoids the need to remember many different functions
for converting string types.  Just use one universal
function toS for all monomorphic string conversions.")
    (license license:bsd-3)))

haskell-8.8-string-conv

(define-public haskell-8.8-stringsearch
  (package
    (name "haskell-8.8-stringsearch")
    (version "0.3.6.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stringsearch/stringsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jpy9xjcjdbpi3wk6mg7xwd7wfi2mma70p97v1ij5i8bj9qijpr9"))))
    (properties `((upstream-name . "stringsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4" "-f-base3")
       #:cabal-revision
       ("1" "0z5pz5dccapz9k39r2zmf056m0x2m2lj3jahhnw3mfxlmps07378")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://bitbucket.org/dafis/stringsearch")
    (synopsis "Fast searching, splitting and replacing of ByteStrings")
    (description "This package provides several functions to quickly
search for substrings in strict or lazy ByteStrings.
It also provides functions for breaking or splitting
on substrings and replacing all occurrences of a
substring (the first in case of overlaps) with another.
GHC before 6.10 are no longer supported, other compilers
only if they support BangPatterns. If you need it to
work with other compilers, send a feature request.")
    (license license:bsd-3)))

haskell-8.8-stringsearch

(define-public haskell-8.8-stripe-concepts
  (package
    (name "haskell-8.8-stripe-concepts")
    (version "1.0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-concepts/stripe-concepts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n4q3hsgqrqypmkkim8mcksdlljgldr908wqxlcz6k1wsv9klyc6"))))
    (properties `((upstream-name . "stripe-concepts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Types for the Stripe API")
    (description
     "This is a minimal package that just defines a common set of types
for working with the <https://stripe.com/ Stripe> API.")
    (license license:expat)))

haskell-8.8-stripe-concepts

(define-public haskell-8.8-sundown
  (package
    (name "haskell-8.8-sundown")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sundown/sundown-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09xh3pbyarflfjk17bn2isgpmsq49d6gmq7z918kf4c32fc7x6yb"))))
    (properties `((upstream-name . "sundown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/bitonic/sundown")
    (synopsis "Bindings to the sundown markdown library")
    (description
     "Bindings to GitHub's C markdown library: <https://github.com/vmg/sundown>.

The Haskell code is in the public domain. For sundown's license, refer to
its GitHub page.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-sundown

(define-public haskell-8.8-superbuffer
  (package
    (name "haskell-8.8-superbuffer")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/superbuffer/superbuffer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3c2v2ca5lzz6265bcn9g04j6aihm7kw8w91ywfl7bkg1agp9fp"))))
    (properties `((upstream-name . "superbuffer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/agrafix/superbuffer#readme")
    (synopsis "Efficiently build a bytestring from smaller chunks")
    (description
     "Efficiently (both fast and memory efficient) build a bytestring from smaller chunks")
    (license license:bsd-3)))

haskell-8.8-superbuffer

(define-public haskell-8.8-symbol
  (package
    (name "haskell-8.8-symbol")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/symbol/symbol-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cc8kdm68pirb0s7n46v0yvw5b718qf7qip40jkg5q3c3xsafx6h"))))
    (properties `((upstream-name . "symbol") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0jdbaap11pkgb6m98v57k7qnx62pqxy7pa2i7293ywa4q305qgm1")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://www.cs.drexel.edu/~mainland/")
    (synopsis "A 'Symbol' type for fast symbol comparison.")
    (description
     "Provides a 'Symbol' data type allowing fast symbol comparisons
and functions for interning symbols and recovering their
'String' representation.")
    (license license:bsd-3)))

haskell-8.8-symbol

(define-public haskell-8.8-symengine
  (package
    (name "haskell-8.8-symengine")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/symengine/symengine-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x42rbkc2lq06iqwkwwh5h4y9xl0xf1qfg47n62ax1j6j9mgfn8a"))))
    (properties `((upstream-name . "symengine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/symengine/symengine.hs#readme")
    (synopsis "SymEngine symbolic mathematics engine for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.8-symengine

(define-public haskell-8.8-system-filepath
  (package
    (name "haskell-8.8-system-filepath")
    (version "0.4.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/system-filepath/system-filepath-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14yras4pz2dh55xpwmazcgxijvi8913pjgzb9iw50mjq1lycwmhn"))))
    (properties `((upstream-name . "system-filepath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18llfvisghrn9w9yfgacqn51gs50a0lngah3bmg852h0swj7vkp8")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "High-level, byte-based file and directory path manipulations (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-8.8-system-filepath

(define-public haskell-8.8-system-info
  (package
    (name "haskell-8.8-system-info")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/system-info/system-info-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10a43hb20gb8vgggibsnd3xg3al1wm4phjpp1mf2hnkf4nwxilm4"))))
    (properties `((upstream-name . "system-info") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ChaosGroup/system-info#readme")
    (synopsis "Get the name of the operating system")
    (description
     "Please see the README on Github at <https://github.com/ChaosGroup/system-info#readme>")
    (license license:expat)))

haskell-8.8-system-info

(define-public haskell-8.8-tagged
  (package
    (name "haskell-8.8-tagged")
    (version "0.8.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagged/tagged-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00kcc6lmj7v3xm2r3wzw5jja27m4alcw1wi8yiismd0bbzwzrq7m"))))
    (properties `((upstream-name . "tagged") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdeepseq" "-ftransformers")
       #:cabal-revision
       ("3" "19klgkhkca9qgq2ylc41z85x7piagjh8wranriy48dcfkgraw94a")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/tagged")
    (synopsis
     "Haskell 98 phantom types to avoid unsafely passing dummy arguments")
    (description
     "Haskell 98 phantom types to avoid unsafely passing dummy arguments.")
    (license license:bsd-3)))

haskell-8.8-tagged

(define-public haskell-8.8-tagged-identity
  (package
    (name "haskell-8.8-tagged-identity")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-identity/tagged-identity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n5jafvcck6mq14fb1wrgclkrkxz4vd1x09y028awz66makn5v1c"))))
    (properties `((upstream-name . "tagged-identity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mrkkrp/tagged-identity")
    (synopsis
     "Trivial monad transformer that allows identical monad stacks have different types")
    (description
     "Trivial monad transformer that allows identical monad stacks have different types.")
    (license license:bsd-3)))

haskell-8.8-tagged-identity

(define-public haskell-8.8-tagshare
  (package
    (name "haskell-8.8-tagshare")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagshare/tagshare-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q3chp1rmwmxa8rxv7548wsvbqbng6grrnv1587p08385sp4ncfj"))))
    (properties `((upstream-name . "tagshare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/tagshare")
    (synopsis "TagShare - explicit sharing with tags")
    (description "TagShare supplies a monad for sharing values based on tags
and types. Each tag and type is bound to at most one value
in a dynamic map.

The principal use of this package is to ensure that
constant class members or other overloaded values are
shared.")
    (license license:bsd-3)))

haskell-8.8-tagshare

(define-public haskell-8.8-tao
  (package
    (name "haskell-8.8-tao")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tao/tao-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0iqsah4l87bd25cpk575hsq5qbx506gz1ajf6fyv6pmi0sb1w2hb"))))
    (properties `((upstream-name . "tao") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Type-level assertion operators.")
    (description "Type-level unit testing via assertion operators/functions.")
    (license license:expat)))

haskell-8.8-tao

(define-public haskell-8.8-tar
  (package
    (name "haskell-8.8-tar")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tar/tar-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1ppim7cgmn7ng8zbdrwkxhhizc30h15h1c9cdlzamc5jcagl915k"))))
    (properties `((upstream-name . "tar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-time" "-f-old-bytestring")
       #:cabal-revision
       ("5" "15dqywn1lsyqb0nq1amj70mh1i079b7xwr02wbpcdzmdljg9c55w")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/tar")
    (synopsis "Reading, writing and manipulating \".tar\" archive files.")
    (description
     "This library is for working with \\\"@@.tar@@\\\" archive files. It
can read and write a range of common variations of archive
format including V7, POSIX USTAR and GNU formats.

It provides support for packing and unpacking portable
archives. This makes it suitable for distribution but not
backup because details like file ownership and exact
permissions are not preserved.

It also provides features for random access to archive
content using an index.")
    (license license:bsd-3)))

haskell-8.8-tar

(define-public haskell-8.8-template-haskell-compat-v0208
  (package
    (name "haskell-8.8-template-haskell-compat-v0208")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/template-haskell-compat-v0208/template-haskell-compat-v0208-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s1ynp568i7y5v062kliia46c3cmaijslf2hlmdkkqfdvf8fmzp1"))))
    (properties `((upstream-name . "template-haskell-compat-v0208")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page
     "https://github.com/nikita-volkov/template-haskell-compat-v0208")
    (synopsis
     "A backwards compatibility layer for Template Haskell newer than 2.8")
    (description "")
    (license license:expat)))

haskell-8.8-template-haskell-compat-v0208

(define-public haskell-8.8-testing-type-modifiers
  (package
    (name "haskell-8.8-testing-type-modifiers")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/testing-type-modifiers/testing-type-modifiers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wh2n95n39ivv6kbqn42vbzrj8zagsmk6f2al2qj40bg5kgdl2q5"))))
    (properties `((upstream-name . "testing-type-modifiers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/testing-type-modifiers")
    (synopsis "Data type modifiers for property based testing")
    (description
     "Property based testing libraries such as QuickCheck tend to include type modifiers. Most of them
are used to quantify over subsets of a type. For example a property on non-empty lists:

@@  prop_tail_length (NonEmpty xs) = length (tail xs) == length xs - 1 @@

This library is intended to supply these modifiers to be used by testing libraries, in an effort to make
properties more portable between testing frameworks.

For every modifier it also provides an access function that converts to the underlying type, which
enables point-free style properties as such:

@@
prop_tail_length2 = (> 0) . length . nonEmpty
@@")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-testing-type-modifiers

(define-public haskell-8.8-text-binary
  (package
    (name "haskell-8.8-text-binary")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-binary/text-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gl10pwg3qwsk0za3c70j4n6a9129wwf1b7d3a461h816yv55xn"))))
    (properties `((upstream-name . "text-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/kawu/text-binary")
    (synopsis "Binary instances for text types")
    (description "A compatibility layer providing Binary instances for strict
and lazy text types for versions older than 1.2.1 of
<https://hackage.haskell.org/package/text>.")
    (license license:bsd-2)))

haskell-8.8-text-binary

(define-public haskell-8.8-text-icu
  (package
    (name "haskell-8.8-text-icu")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-icu/text-icu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y3z5jda7v2iyll2148ivxfd2yhp27d3ryxrspp0cdq394klqxp2"))))
    (properties `((upstream-name . "text-icu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0gij22pwb0z8gn5k8zga8km703s65apca3rvl8bf7n8q1hq4wx86")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)))
    (home-page "https://github.com/bos/text-icu")
    (synopsis "Bindings to the ICU library")
    (description
     "Haskell bindings to the International Components for Unicode (ICU)
libraries.  These libraries provide robust and full-featured Unicode
services on a wide variety of platforms.

Features include:

* Both pure and impure bindings, to allow for fine control over efficiency
and ease of use.

* Breaking of strings on character, word, sentence, and line boundaries.

* Access to the Unicode Character Database (UCD) of character metadata.

* String collation functions, for locales where the conventions for
lexicographic ordering differ from the simple numeric ordering of
character codes.

* Character set conversion functions, allowing conversion between
Unicode and over 220 character encodings.

* Unicode normalization.  (When implementations keep strings in a
normalized form, they can be assured that equivalent strings have a
unique binary representation.)

* Regular expression search and replace.")
    (license license:bsd-3)))

haskell-8.8-text-icu

(define-public haskell-8.8-th-abstraction
  (package
    (name "haskell-8.8-th-abstraction")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-abstraction/th-abstraction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ygbky8sk0nk4jyfjf6rj1ghv83rflcfcbsmnn7rnjzks0xg7zin"))))
    (properties `((upstream-name . "th-abstraction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/glguy/th-abstraction")
    (synopsis "Nicer interface for reified information about data types")
    (description "This package normalizes variations in the interface for
inspecting datatype information via Template Haskell
so that packages and support a single, easier to use
informational datatype while supporting many versions
of Template Haskell.")
    (license license:isc)))

haskell-8.8-th-abstraction

(define-public haskell-8.8-th-bang-compat
  (package
    (name "haskell-8.8-th-bang-compat")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-bang-compat/th-bang-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p5zpiqk8141a4n362m3kpd92sx0192gpv172ixdnfgabk07gn1z"))))
    (properties `((upstream-name . "th-bang-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-template-haskell-210")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/th-bang-compat")
    (synopsis "Compatibility for bang-type template")
    (description "This package provides compatible interfaces
for bang-type template")
    (license license:bsd-3)))

haskell-8.8-th-bang-compat

(define-public haskell-8.8-th-constraint-compat
  (package
    (name "haskell-8.8-th-constraint-compat")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-constraint-compat/th-constraint-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wx35f24gryal0h0gadq351gws82qvficcq23pyd1ajrxhgnv3zc"))))
    (properties `((upstream-name . "th-constraint-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-template-haskell-209")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/th-constraint-compat")
    (synopsis "Compatibility for type constraint template")
    (description "This package provides compatibe interfaces
for type constraint template")
    (license license:bsd-3)))

haskell-8.8-th-constraint-compat

(define-public haskell-8.8-th-data-compat
  (package
    (name "haskell-8.8-th-data-compat")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-data-compat/th-data-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03d5ddbxzfn60ysxxn17q7gzdlls8hvlsvhzai4mn0qfjpwi6ljx"))))
    (properties `((upstream-name . "th-data-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/th-data-compat")
    (synopsis "Compatibility for data definition template of TH")
    (description "This package contains wrapped name definitions of
data definition template")
    (license license:bsd-3)))

haskell-8.8-th-data-compat

(define-public haskell-8.8-th-reify-compat
  (package
    (name "haskell-8.8-th-reify-compat")
    (version "0.0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-reify-compat/th-reify-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "171m4fibjq4ml33xvbb0qdm625adknsdgz8flb4xhag075z2w6xg"))))
    (properties `((upstream-name . "th-reify-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/khibino/haskell-th-reify-compat/")
    (synopsis "Compatibility for the result type of TH reify")
    (description "This package contains compatible interfaces against
the result type of TH reify function.")
    (license license:bsd-3)))

haskell-8.8-th-reify-compat

(define-public haskell-8.8-th-strict-compat
  (package
    (name "haskell-8.8-th-strict-compat")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-strict-compat/th-strict-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jmajcnw832df503jbg2fmrmnskc43i07214vpc4fw359cgd7yn3"))))
    (properties `((upstream-name . "th-strict-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://gitlab.com/igrep/th-strict-compat")
    (synopsis "Compatibility shim for Bang and Strict in Template Haskell.")
    (description "See README")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-th-strict-compat

(define-public haskell-8.8-th-test-utils
  (package
    (name "haskell-8.8-th-test-utils")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-test-utils/th-test-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0450d9q8ndk8zyj7x9ybl892jijrzn3pcxqm5igki9n8x3w37k"))))
    (properties `((upstream-name . "th-test-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/LeapYear/th-test-utils#readme")
    (synopsis "Utility functions for testing Template Haskell code")
    (description
     "Utility functions for testing Template Haskell code, including
functions for testing failures in the Q monad.")
    (license license:bsd-3)))

haskell-8.8-th-test-utils

(define-public haskell-8.8-threads
  (package
    (name "haskell-8.8-threads")
    (version "0.5.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/threads/threads-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bjnjhnq3km6xqk0fn1fgyz5xdw4h6lylbwwbcmkkfzwcz0c76hk"))))
    (properties `((upstream-name . "threads") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/basvandijk/threads")
    (synopsis "Fork threads and wait for their result")
    (description
     "This package provides functions to fork threads and
wait for their result, whether it's an exception or a
normal value.

Besides waiting for the termination of a single thread
this packages also provides functions to wait for a
group of threads to terminate.

This package is similar to the
@@threadmanager@@, @@async@@ and @@spawn@@ packages.
The advantages of this package are:

* Simpler API.

* More efficient in both space and time.

* No space-leak when forking a large number of threads.

* Correct handling of asynchronous exceptions.

* GHC specific functionality like @@forkOn@@ and @@forkIOWithUnmask@@.")
    (license license:bsd-3)))

haskell-8.8-threads

(define-public haskell-8.8-time-locale-compat
  (package
    (name "haskell-8.8-time-locale-compat")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-locale-compat/time-locale-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2hmj8wwrfkndwzgm11qr496ca2ahwdxcj3m0ii91bxvrk1bzq7"))))
    (properties `((upstream-name . "time-locale-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/khibino/haskell-time-locale-compat")
    (synopsis "Compatibile module for time-format locale")
    (description
     "This package contains wrapped name module for time-format locale between old-locale and time-1.5.")
    (license license:bsd-3)))

haskell-8.8-time-locale-compat

(define-public haskell-8.8-time-locale-vietnamese
  (package
    (name "haskell-8.8-time-locale-vietnamese")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-locale-vietnamese/time-locale-vietnamese-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xhbfdzrlhj3096w2dgk2ijpzs4kzym11sz3r0h8r19a3jrjs1ln"))))
    (properties `((upstream-name . "time-locale-vietnamese") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/tungd/time-locale-vietnamese#readme")
    (synopsis "Vietnamese locale for date and time format")
    (description "Vietnamese locale for date and time format")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-time-locale-vietnamese

(define-public haskell-8.8-time-units
  (package
    (name "haskell-8.8-time-units")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-units/time-units-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16g0i6r6vj9w4lbn12jqrhgbbjjca8wbzq6546dz08aks1yrk0g1"))))
    (properties `((upstream-name . "time-units") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/acw/time-units")
    (synopsis "A basic library for defining units of time as types.")
    (description
     "In many cases, it is useful (either for error checking or documentation
reasons) to define input and output types as having a particular unit of
time. In addition, by creating a type class defining type units, this
library should make it easier to separate the units of time the developer
wants to think in versus the units of time the library author wants to
think in.")
    (license license:bsd-3)))

haskell-8.8-time-units

(define-public haskell-8.8-timeit
  (package
    (name "haskell-8.8-timeit")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/timeit/timeit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sliqpvl501rlcj6s0lhmsf5ym24j4h881wzc1f1wdyvg3jz8kd1"))))
    (properties `((upstream-name . "timeit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vgxfk2021jh6jk3dimchmf9f71844zj080342qvnn5lck7c7mrm")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/merijn/timeit")
    (synopsis "Time monadic computations with an IO base.")
    (description
     "A simple wrapper to show the used CPU time of monadic computation with an
IO base.")
    (license license:bsd-3)))

haskell-8.8-timeit

(define-public haskell-8.8-timezone-series
  (package
    (name "haskell-8.8-timezone-series")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timezone-series/timezone-series-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1blwgnyzqn917rgqkl4dncv9whv3xmk0lav040qq0214vksmvlz5"))))
    (properties `((upstream-name . "timezone-series") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://projects.haskell.org/time-ng/")
    (synopsis "Enhanced timezone handling for Data.Time")
    (description "This package endows Data.Time, from the time
package, with several data types and functions
for enhanced processing of timezones. For one way
to create timezone series, see the timezone-olson
(<http://hackage.haskell.org/package/timezone-olson>)
and timezone-olson-th
(<http://hackage.haskell.org/package/timezone-olson-th>)
packages.")
    (license license:bsd-3)))

haskell-8.8-timezone-series

(define-public haskell-8.8-torsor
  (package
    (name "haskell-8.8-torsor")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/torsor/torsor-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "173dn2n24xdlyymw5hqd6qd1r6h65bqrhpkcl49kccxr10xgb8vm"))))
    (properties `((upstream-name . "torsor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/andrewthad/torsor#readme")
    (synopsis "Torsor Typeclass")
    (description "Torsor Typeclass")
    (license license:bsd-3)))

haskell-8.8-torsor

(define-public haskell-8.8-transformers-compat
  (package
    (name "haskell-8.8-transformers-compat")
    (version "0.6.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-compat/transformers-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yd936az31g9995frc84g05rrb5b7w59ajssc5183lp6wm8h4bky"))))
    (properties `((upstream-name . "transformers-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-two" "-f-three" "-f-four" "-f-five" "-ffive-three" "-fmtl" "-fgeneric-deriving")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/transformers-compat/")
    (synopsis "A small compatibility shim for the transformers library")
    (description
     "This package includes backported versions of types that were added
to transformers in transformers 0.3, 0.4, and 0.5 for users who need strict
transformers 0.2 or 0.3 compatibility to run on old versions of the
platform, but also need those types.

Those users should be able to just depend on @@transformers >= 0.2@@
and @@transformers-compat >= 0.3@@.

Note: missing methods are not supplied, but this at least permits the types to be used.")
    (license license:bsd-3)))

haskell-8.8-transformers-compat

(define-public haskell-8.8-transformers-fix
  (package
    (name "haskell-8.8-transformers-fix")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-fix/transformers-fix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02aapq88k81q9r6wmvmg9zjyrmz9qzi4gss75p18lkc4dgrzzlb5"))))
    (properties `((upstream-name . "transformers-fix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "126gyjr8jp42md6nblx7c0kan97jgsakvsf2vzv2pj828ax1icrs")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/thumphries/transformers-fix")
    (synopsis "Monad transformer for evaluating to a fixpoint")
    (description "Monad transformer for evaluating to a fixpoint.")
    (license license:bsd-3)))

haskell-8.8-transformers-fix

(define-public haskell-8.8-tree-fun
  (package
    (name "haskell-8.8-tree-fun")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-fun/tree-fun-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07vgsps4kjld75ndnjjaigsk5vvg11vjp740pznhsw79k3qjbs9a"))))
    (properties `((upstream-name . "tree-fun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/tree-fun")
    (synopsis
     "Library for functions pertaining to tree exploration and manipulation")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-tree-fun

(define-public haskell-8.8-trivial-constraint
  (package
    (name "haskell-8.8-trivial-constraint")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trivial-constraint/trivial-constraint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y0iyll7ml5qz271cqa0dc3w2j3w1d8jjaxwaf2flcidigws69z5"))))
    (properties `((upstream-name . "trivial-constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/leftaroundabout/trivial-constraint")
    (synopsis "Constraints that any type, resp. no type fulfills")
    (description
     "Since GHC 7.4, constraints are first-class: we have the constraint
kind, and thus type-classes have a kind of form @@k -> Constraint@@,
or @@k -> l -> m -> ... -> Constraint@@ for a multi-param type class.
Such type-level functions can be used as arguments to data types, or
as instances for other type classes.

For any given arity, the constraint-valued functions form a semigroup
with respect to “constraint intersection”, which Haskell supports with
tuple syntax, e.g.

@@
type NewCstrt¹ a = (Cstrt¹₀ a, Cstrt¹₁ a)
@@

means that @@NewCstrt¹ :: * -> Constraint@@ requires that for
any given parameter both @@Cstrt¹₀@@ and @@Cstrt¹₁@@ be fulfilled.
It is intuitive enough that this type-level semigroup can be extended
to a monoid, but out of the box this is only possible for arity 0,
i.e. for @@Cstrt⁰ :: Constraint@@

@@
(Cstrt⁰, ()) ~ ((), Cstrt⁰) ~ Cstrt⁰
@@

For higher arity, this would require type-level lambdas, like for
@@Cstrt² :: * -> * -> Constraint@@

@@
(Cstrt², \\\\a b -> ()) ~ (\\\\a b -> (), Cstrt²) ~ Cstrt²
@@

which is not valid Haskell syntax. It is easy enough to define the
lambdas in an ad-hoc manner as

@@
type Unconstrained² a b = ()
@@

and then

@@
(Cstrt², Unconstrained²) ~ (Unconstrained², Cstrt²) ~ Cstrt²
@@

This library provides those /trivial constraints/ in
a single, documented place, and it uses classes instead of
type-synonyms (which would be problematic when it comes to partial
application). Arities 0-9 are provided.

They can be useful in any construction that is parameterised over a
constrainer-class, when you do /not/ wish to actually constrain the
domain with it.

The other thing this library provides are the opposite classes,
i.e. @@\\\\a b ... -> Impossible@@, constraints which can /never/ be
fulfilled. They are essentially dual to the @@Unconstrained@@ ones,
and can likewise be useful as parameters that should completely
“disable” a conditional feature.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-trivial-constraint

(define-public haskell-8.8-tuple-th
  (package
    (name "haskell-8.8-tuple-th")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tuple-th/tuple-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mrl4vvxmby7sf1paf7hklzidnr6wq55822i73smqyz0xpf3gsjn"))))
    (properties `((upstream-name . "tuple-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/tuple-th")
    (synopsis
     "Generate (non-recursive) utility functions for tuples of statically known size")
    (description
     "Template Haskell functions for generating functions similar to those in Data.List for tuples of statically known size.")
    (license license:bsd-3)))

haskell-8.8-tuple-th

(define-public haskell-8.8-tuples-homogenous-h98
  (package
    (name "haskell-8.8-tuples-homogenous-h98")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tuples-homogenous-h98/tuples-homogenous-h98-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fhz246wh6x0s0sjkmd3qcylsx2gfrmgmvgb7js2zjg91y7zqnh2"))))
    (properties `((upstream-name . "tuples-homogenous-h98") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/ppetr/tuples-homogenous-h98")
    (synopsis
     "Wrappers for n-ary tuples with Traversable and Applicative/Monad instances.")
    (description
     "Provides @@newtype@@ wrappers for n-ary homogenous tuples of types @@(a,...,a)@@ and instances for @@Functor@@, @@Applicative@@ (zipping), @@Monad@@, @@Foldable@@ and @@Traversable@@. The package aims to be Haskell98 compliant.")
    (license license:bsd-3)))

haskell-8.8-tuples-homogenous-h98

(define-public haskell-8.8-type-equality
  (package
    (name "haskell-8.8-type-equality")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-equality/type-equality-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s4cl11rvvv7n95i3pq9lmmx08kwh4z7l3d1hbv4wi8il81baa27"))))
    (properties `((upstream-name . "type-equality") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0sajw67mmk5syhbrwx4bz82j5cjhm04n4kjl0pp3dnphxg1m5nbw")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/hesselink/type-equality")
    (synopsis "Data.Type.Equality compat package")
    (description
     "This library defines a propositional equality data type,
shims @@Data.Type.Equality@@ as well as possible for older GHCs (< 7.8).

@@
data a :~: b where
\\    Refl :: a :~: a
@@

The module @@Data.Type.Equality.Hetero@@ shims @@:~~:@@ equality, for
compilers with @@PolyKinds@@")
    (license license:bsd-3)))

haskell-8.8-type-equality

(define-public haskell-8.8-type-fun
  (package
    (name "haskell-8.8-type-fun")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-fun/type-fun-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qb9h6x1npq1pc8h7n6ism5a6jccysn76czqym1f69x0qh1jjlay"))))
    (properties `((upstream-name . "type-fun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/s9gf4ult/type-fun")
    (synopsis "Collection of widely reimplemented type families")
    (description "")
    (license license:bsd-3)))

haskell-8.8-type-fun

(define-public haskell-8.8-type-hint
  (package
    (name "haskell-8.8-type-hint")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-hint/type-hint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fcrma7m6y7i1y42rzhv7qch8xkk93lkh1767saw4hsb9fzwsq8i"))))
    (properties `((upstream-name . "type-hint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mvv/type-hint")
    (synopsis "Guide type inference with proxy values")
    (description
     "This package provides 'Proxy' values for various types from the @@base@@
library and functions to use these values as hints for type inference.")
    (license license:bsd-3)))

haskell-8.8-type-hint

(define-public haskell-8.8-type-level-integers
  (package
    (name "haskell-8.8-type-level-integers")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-level-integers/type-level-integers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fn7zhpmixbp2nd4lryvfzy19g8kj03kh1r264fvnrdbnfjf72qi"))))
    (properties `((upstream-name . "type-level-integers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/mtesseract/type-level-integers")
    (synopsis "Provides integers lifted to the type level")
    (description "This packages provides type level integers together with
type families for basic arithmetic.")
    (license license:bsd-3)))

haskell-8.8-type-level-integers

(define-public haskell-8.8-type-level-numbers
  (package
    (name "haskell-8.8-type-level-numbers")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-level-numbers/type-level-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12iiyaqi60fpds7fv1qvphy84rwyj71maq54mfwpcr0bdrgyymjv"))))
    (properties `((upstream-name . "type-level-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nzam0mkawxaq793l5isrfnc3vg8s73lca5nig0y50kfmyk30sbc")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/type-level-numbers")
    (synopsis "Type level numbers implemented using type families.")
    (description
     "This is type level numbers implemented using type families. Natural
numbers use binary encoding. With default context stack numbers up
to 2^18-1 coudl be represented. Signed integer numbers use balanced ternary
encoding.

Package is structured as folows:

* [@@TypeLevel.Number.Classes@@] contain generic type families such as Add

* [@@TypeLevel.Number.Nat@@] natural numbers implemented using binary encoding

* [@@TypeLevel.Number.Int@@] signed integers implemented using balanced
ternary encoding

* [@@TypeLevel.Boolean@@] type level booleans

So far comparison of numbers, subtraction and multiplication of
numbers are supported.")
    (license license:bsd-3)))

haskell-8.8-type-level-numbers

(define-public haskell-8.8-type-operators
  (package
    (name "haskell-8.8-type-operators")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-operators/type-operators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cm3vfarjpwm885i5w5mjyg1ibg9bm5q34hbacpl3c9q9l1vwl4j"))))
    (properties `((upstream-name . "type-operators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/Shou/type-operators#readme")
    (synopsis "Various type-level operators")
    (description
     "A set of type-level operators meant to be helpful, e.g. ($), a
tightly binding (->), and the multi-constraint operator (Show <+> [a, b]).")
    (license license:bsd-3)))

haskell-8.8-type-operators

(define-public haskell-8.8-type-spec
  (package
    (name "haskell-8.8-type-spec")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-spec/type-spec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z94hgvmnpcv9va7spdkmbxz99ri1skdq3kwxbid77cpyh95xsxq"))))
    (properties `((upstream-name . "type-spec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/sheyll/type-spec#readme")
    (synopsis "Type Level Specification by Example")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-type-spec

(define-public haskell-8.8-uglymemo
  (package
    (name "haskell-8.8-uglymemo")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uglymemo/uglymemo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ixqg5d0ly1r18jbgaa89i6kjzgi6c5hanw1b1y8c5fbq14yz2gy"))))
    (properties `((upstream-name . "uglymemo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/uglymemo")
    (synopsis "A simple (but internally ugly) memoization function.")
    (description "A simple (but internally ugly) memoization function.

* New in 0.1.0.1: Make it exception safe.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-uglymemo

(define-public haskell-8.8-unbounded-delays
  (package
    (name "haskell-8.8-unbounded-delays")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unbounded-delays/unbounded-delays-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11b1vmlfv4pmmpl4kva58w7cf50xsj819cq3wzqgnbz3px9pxbar"))))
    (properties `((upstream-name . "unbounded-delays") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/basvandijk/unbounded-delays")
    (synopsis "Unbounded thread delays and timeouts")
    (description
     "The @@threadDelay@@ and @@timeout@@ functions from the @@base@@ library
use the bounded @@Int@@ type for specifying the delay or timeout
period. This packages provides alternatives which use the
unbounded @@Integer@@ type.")
    (license license:bsd-3)))

haskell-8.8-unbounded-delays

(define-public haskell-8.8-unconstrained
  (package
    (name "haskell-8.8-unconstrained")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unconstrained/unconstrained-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03811shhcfkcrsai3a1vw99g0pmg8m3cfi8gfiaf8b13l1k7lwfj"))))
    (properties `((upstream-name . "unconstrained") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13fj2jlh44774www49fwp7h7z6gr23scfbvg745rpywys49c0559")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/unconstrained")
    (synopsis "Null constraint")
    (description "")
    (license license:bsd-3)))

haskell-8.8-unconstrained

(define-public haskell-8.8-unicode-show
  (package
    (name "haskell-8.8-unicode-show")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-show/unicode-show-"
                    version ".tar.gz"))
              (sha256
               (base32
                "158vnv6d7s1ahm3fr5s8ns585bcds8pf19rsglsyfk33qps3il9i"))))
    (properties `((upstream-name . "unicode-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/haskell-jp/unicode-show#readme")
    (synopsis "print and show in unicode")
    (description
     "This package provides variants of 'show' and 'print' functions that does not escape non-ascii characters.

See <http://github.com/haskell-jp/unicode-show#readme README> for usage.

Run ghci with  @@-interactive-print@@ flag to print unicode characters. See <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/interactive-evaluation.html#ghci-interactive-print Using a custom interactive printing function> section in the GHC manual.")
    (license license:bsd-3)))

haskell-8.8-unicode-show

(define-public haskell-8.8-unicode-transforms
  (package
    (name "haskell-8.8-unicode-transforms")
    (version "0.3.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-transforms/unicode-transforms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1010sahi4mjzqmxqlj3w73rlymbl2370x5vizjqbx7mb86kxzx4f"))))
    (properties `((upstream-name . "unicode-transforms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-bench-show" "-f-has-icu" "-f-has-llvm")
       #:cabal-revision
       ("2" "0kbcn5881sxh0i8pqckjam4kwr1n7m3gl5ppcq4li32dzfiz9b57")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/composewell/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 13.0.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-8.8-unicode-transforms

(define-public haskell-8.8-union-find
  (package
    (name "haskell-8.8-union-find")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/union-find/union-find-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1v7hj42j9w6jlzi56jg8rh4p58gfs1c5dx30wd1qqvn0p0mnihp6"))))
    (properties `((upstream-name . "union-find") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13cwjh03n82sgshbk4fdlvhc0pb3v979sdcdrpvnpjdqmvcprs92")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/nominolo/union-find")
    (synopsis "Efficient union and equivalence testing of sets.")
    (description
     "The Union\\/Find algorithm implements these operations in
(effectively) constant-time:

1. Check whether two elements are in the same equivalence class.

2. Create a union of two equivalence classes.

3. Look up the descriptor of the equivalence class.")
    (license license:bsd-3)))

haskell-8.8-union-find

(define-public haskell-8.8-unix-bytestring
  (package
    (name "haskell-8.8-unix-bytestring")
    (version "0.3.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-bytestring/unix-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1340zxy9w8nmmhhwgg9rznvz8iyfhinpycdpkryqp60ilhyjgv53"))))
    (properties `((upstream-name . "unix-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis "Unix/Posix-specific functions for ByteStrings.")
    (description
     "Unix\\/Posix-specific functions for ByteStrings.

Provides @@ByteString@@ file-descriptor based I\\/O API, designed
loosely after the @@String@@ file-descriptor based I\\/O API in
\"System.Posix.IO\". The functions here wrap standard C implementations
of the functions specified by the ISO\\/IEC 9945-1:1990 (``POSIX.1'')
and X\\/Open Portability Guide Issue 4, Version 2 (``XPG4.2'')
specifications.

Note that this package doesn't require the @@unix@@ package as a
dependency. But you'll need it in order to get your hands on
an @@Fd@@, so we're not offering a complete replacement.")
    (license license:bsd-3)))

haskell-8.8-unix-bytestring

(define-public haskell-8.8-unix-compat
  (package
    (name "haskell-8.8-unix-compat")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-compat/unix-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a8brv9fax76b1fymslzyghwa6ma8yijiyyhn12msl3i5x24x6k5"))))
    (properties `((upstream-name . "unix-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-time")
       #:cabal-revision
       ("3" "16zpcf6wxfdxn09v3a62rpa7axsqzah6f5amcvbpky23bbf6w95h")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/jacobstanley/unix-compat")
    (synopsis "Portable POSIX-compatibility layer.")
    (description "This package provides portable implementations of parts
of the unix package. This package re-exports the unix
package when available. When it isn't available,
portable implementations are used.")
    (license license:bsd-3)))

haskell-8.8-unix-compat

(define-public haskell-8.8-unliftio-core
  (package
    (name "haskell-8.8-unliftio-core")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-core/unliftio-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3siyx3drkw7igs380a87h8qfbbgcyxxlcnshp698hcc4yqphr4"))))
    (properties `((upstream-name . "unliftio-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "08ybg150pa1h1d5z6qqicfv8yfjpc3mrjp70xdn4la72zhpnb9xh")))
    (outputs (list "out" "static" "doc"))
    (home-page
     "https://github.com/fpco/unliftio/tree/master/unliftio-core#readme")
    (synopsis "The MonadUnliftIO typeclass for unlifting monads to IO")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio-core>")
    (license license:expat)))

haskell-8.8-unliftio-core

(define-public haskell-8.8-unlit
  (package
    (name "haskell-8.8-unlit")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unlit/unlit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05am6mngvwj3a4mnwf1x3wbb2fvh3lj9jc5cvbmi269zhkjcv7j8"))))
    (properties `((upstream-name . "unlit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/unlit")
    (synopsis "Tool to convert literate code between styles or to code.")
    (description
     "Tool to convert literate code between styles or to code.
Usage:

> unlit
>   -f STYLE_NAME  --from=STYLE_NAME    Source style (all, bird, haskell, latex, markdown, tildefence, backtickfence)
>   -t STYLE_NAME  --to=STYLE_NAME      Target style (bird, latex, tildefence, backtickfence, code)
>   -i FILE        --input=FILE         Input file (optional)
>   -o FILE        --output=FILE        Output file (optional)
>   -l LANGUAGE    --language=LANGUAGE  Programming language (restrict fenced code blocks)
>   -h             --help               Show help
>   -v             --version            Show version
")
    (license license:bsd-3)))

haskell-8.8-unlit

(define-public haskell-8.8-unsafe
  (package
    (name "haskell-8.8-unsafe")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unsafe/unsafe-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hc6xr1i3hkz25gdgfx1jqgpsc9mwa05bkfynp0mcfdlyz6782nz"))))
    (properties `((upstream-name . "unsafe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://code.haskell.org/~thielema/unsafe/")
    (synopsis "Unified interface to unsafe functions")
    (description
     "SafeHaskell introduced the notion of safe and unsafe modules.
In order to make as many as possible modules \\\"safe\\\",
the well-known unsafe functions were moved to distinguished modules.
This makes it hard to write packages that work
with both old and new versions of GHC.
This package provides a single module @@System.Unsafe@@
that exports the unsafe functions from the base package.
It provides them in a style ready for qualification,
that is, you should import them by

> import qualified System.Unsafe as Unsafe

The package also contains a script called @@rename-unsafe.sh@@.
It replaces all occurrences of the original identifiers
with the qualified identifiers from this package.
You still have to adapt the import commands.
It uses the @@darcs-replace-rec@@ script from the @@darcs-scripts@@ package.")
    (license license:bsd-3)))

haskell-8.8-unsafe

(define-public haskell-8.8-utf8-light
  (package
    (name "haskell-8.8-utf8-light")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utf8-light/utf8-light-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rwyc5z331yfnm4hpx0sph6i1zvkd1z10vvglhnp0vc9wy644k0q"))))
    (properties `((upstream-name . "utf8-light") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "10ryqbxpa4bkjxwpp9c3vd9x7q4gdj38x7qnzvck25q06csfy9kq")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/utf8-light")
    (synopsis "Unicode")
    (description "Lightweight UTF8 handling.")
    (license license:bsd-3)))

haskell-8.8-utf8-light

(define-public haskell-8.8-utf8-string
  (package
    (name "haskell-8.8-utf8-string")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utf8-string/utf8-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h7imvxkahiy8pzr8cpsimifdfvv18lizrb33k6mnq70rcx9w2zv"))))
    (properties `((upstream-name . "utf8-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "02vhj5gykkqa2dyn7s6gn8is1b5fdn9xcqqvlls268g7cpv6rk38")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/glguy/utf8-string/")
    (synopsis "Support for reading and writing UTF8 Strings")
    (description "A UTF8 layer for Strings. The utf8-string
package provides operations for encoding UTF8
strings to Word8 lists and back, and for reading and
writing UTF8 without truncation.")
    (license license:bsd-3)))

haskell-8.8-utf8-string

(define-public haskell-8.8-util
  (package
    (name "haskell-8.8-util")
    (version "0.1.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/util/util-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qhx4r27sny25sykacf5xi5br4msq4335ghp5zc3fq0lii3866s7"))))
    (properties `((upstream-name . "util") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0z9bf05jn5y9k5nrjksfpzjml5xchjrj3nk3jh90g8pygs2658rb")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/util")
    (synopsis "Utilities")
    (description "")
    (license license:bsd-3)))

haskell-8.8-util

(define-public haskell-8.8-void
  (package
    (name "haskell-8.8-void")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/void/void-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05vk3x1r9a2pqnzfji475m5gdih2im1h7rbi2sc67p1pvj6pbbsk"))))
    (properties `((upstream-name . "void") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-safe")))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/ekmett/void")
    (synopsis "A Haskell 98 logically uninhabited data type")
    (description
     "A Haskell 98 logically uninhabited data type, used to indicate that a given term should not exist.")
    (license license:bsd-3)))

haskell-8.8-void

(define-public haskell-8.8-word24
  (package
    (name "haskell-8.8-word24")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mhjln83z2sz0pq9phlzjbdl7lny8fn3pb0smphm2rz09j6nmb0m")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/winterland1989/word24")
    (synopsis "24-bit word and int types for GHC")
    (description "24-bit Word and Int data types.")
    (license license:bsd-3)))

haskell-8.8-word24

(define-public haskell-8.8-wrap
  (package
    (name "haskell-8.8-wrap")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wrap/wrap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03pmfwwx2ykjglzrc4k09q2lv8piq107j32dg0r1aadj2ysc9fzq"))))
    (properties `((upstream-name . "wrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://hackage.haskell.org/package/wrap")
    (synopsis "Wrap a function's return value with another function")
    (description "Wrap a function's return value with another function")
    (license license:bsd-3)))

haskell-8.8-wrap

(define-public haskell-8.8-writer-cps-transformers
  (package
    (name "haskell-8.8-writer-cps-transformers")
    (version "0.5.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-transformers/writer-cps-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "071jiwdpjh5d7nm5jfgmk0lgpms0x3bijwjh25nnpy7q7lfczskn"))))
    (properties `((upstream-name . "writer-cps-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (home-page "https://github.com/minad/writer-cps-transformers#readme")
    (synopsis "WriteT and RWST monad transformers")
    (description
     "NOTE: From version 0.5.6.0 on the modules provided by this package went upstream to transformers. This package acts as a compatibility package for GHC versions older than 8.6. The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. The corresponding MTL class instances are in the package writer-cps-mtl (<http://hackage.haskell.org/package/writer-cps-mtl>).")
    (license license:bsd-3)))

haskell-8.8-writer-cps-transformers

(define-public haskell-8.8-xdg-basedir
  (package
    (name "haskell-8.8-xdg-basedir")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xdg-basedir/xdg-basedir-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0azlzaxp2dn4l1nr7shsxah2magk1szf6fx0mv75az00qsjw6qg4"))))
    (properties `((upstream-name . "xdg-basedir") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "http://github.com/willdonnelly/xdg-basedir")
    (synopsis
     "A basic implementation of the XDG Base Directory specification.")
    (description "On Unix platforms, this should be a very straightforward
implementation of the XDG Base Directory spec. On Windows,
it will attempt to do the right thing with regards to
choosing appropriate directories.")
    (license license:bsd-3)))

haskell-8.8-xdg-basedir

(define-public haskell-8.8-xml
  (package
    (name "haskell-8.8-xml")
    (version "1.3.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xml/xml-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0g814lj7vaxvib2g3r734221k80k7ap9czv9hinifn8syals3l9j"))))
    (properties `((upstream-name . "xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "15cxa19dp8nqvrrp0bmndkdas2jzg573x8ri75r6kiv8r4vkv8y7")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/GaloisInc/xml")
    (synopsis "A simple XML library.")
    (description "A simple XML library.")
    (license license:bsd-3)))

haskell-8.8-xml

(define-public haskell-8.8-xml-types
  (package
    (name "haskell-8.8-xml-types")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-types/xml-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "102cm0nvfmf9gn8hvn5z8qvmg931laczs33wwd5iyz9bc37f9mfs"))))
    (properties `((upstream-name . "xml-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page "https://git.singpolyma.net/xml-types-haskell")
    (synopsis "Basic types for representing XML")
    (description
     "Basic types for representing XML.

The idea is to have a full set of appropriate types, which various XML
libraries can share. Instead of having equivalent-but-incompatible types
for every binding, parser, or client, they all share the same types can
can thus interoperate easily.

This library contains complete types for most parts of an XML document,
including the prologue, node tree, and doctype. Some basic combinators
are included for common tasks, including traversing the node tree and
filtering children.")
    (license license:expat)))

haskell-8.8-xml-types

(define-public haskell-8.8-yjtools
  (package
    (name "haskell-8.8-yjtools")
    (version "0.9.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yjtools/yjtools-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13zbq37p2prbyxq1wply7qqpc2wwsic78wzcgbc430nfrrpiq4lv"))))
    (properties `((upstream-name . "yjtools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (home-page
     "http://homepage3.nifty.com/salamander/second/projects/yjtools/index.xhtml")
    (synopsis "some tools for Monad, List, Tuple and so on.")
    (description "ifM, whenM, unlessM, doWhile, doWhile_ and so on.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-yjtools

(define-public haskell-8.8-zlib
  (package
    (name "haskell-8.8-zlib")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zlib/zlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fii0qfc60lfp93vwb78p2fv3jjyklgdhw4ms262z6cysq6qkd84"))))
    (properties `((upstream-name . "zlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-non-blocking-ffi" "-f-pkg-config" "-f-bundled-c-zlib")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/zlib")
    (synopsis "Compression and decompression in the gzip and zlib formats")
    (description "This package provides a pure interface for compressing and
decompressing streams of data represented as lazy
'ByteString's. It uses the
<https://en.wikipedia.org/wiki/Zlib zlib C library>
so it has high performance. It supports the \\\"zlib\\\",
\\\"gzip\\\" and \\\"raw\\\" compression formats.

It provides a convenient high level API suitable for most
tasks and for the few cases where more control is needed it
provides access to the full zlib feature set.")
    (license license:bsd-3)))

haskell-8.8-zlib

(define-public haskell-8.8-zstd
  (package
    (name "haskell-8.8-zstd")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zstd/zstd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vjw8r11k9kj6c63sfkwz8akq0g32g1bv6n6clvs4g2j12zq1xk8"))))
    (properties `((upstream-name . "zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fstandalone")))
    (outputs (list "out" "static" "doc"))
    (home-page "https://github.com/luispedro/hs-zstd")
    (synopsis "Haskell bindings to the Zstandard compression algorithm")
    (description
     "A fast lossless compression algorithm, targeting real-time
compression scenarios at zlib-level and better compression ratios.")
    (license license:bsd-3)))

haskell-8.8-zstd

