;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage000)
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
(define-public haskell-8.10-AC-Angle
  (package
    (name "haskell-8.10-AC-Angle")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/AC-Angle")
    (synopsis "Angles in degrees and radians.")
    (description "A simple little library for dealing with geometric angles.")
    (license license:bsd-3)))

haskell-8.10-AC-Angle

(define-public haskell-8.10-ANum
  (package
    (name "haskell-8.10-ANum")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/DanBurton/ANum#readme")
    (synopsis "Num instance for Applicatives provided via the ANum newtype")
    (description "")
    (license license:bsd-3)))

haskell-8.10-ANum

(define-public haskell-8.10-Boolean
  (package
    (name "haskell-8.10-Boolean")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-Boolean

(define-public haskell-8.10-BoundedChan
  (package
    (name "haskell-8.10-BoundedChan")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/BoundedChan")
    (synopsis "Implementation of bounded channels.")
    (description
     "This library introduces BoundedChan. BoundedChans differ from
Chans in that they are guaranteed to contain no more than a
certain number of elements.")
    (license license:bsd-3)))

haskell-8.10-BoundedChan

(define-public haskell-8.10-Cabal-syntax
  (package
    (name "haskell-8.10-Cabal-syntax")
    (version "3.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Cabal-syntax/Cabal-syntax-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lcj4g55sj5iv727g7k57pscgyj0fx3smwapm1gmd5qkc3yfa9fa"))))
    (properties `((upstream-name . "Cabal-syntax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "A library for working with .cabal files")
    (description
     "This library provides tools for reading and manipulating the .cabal file
format.

Version 3.6 (unlike the following versions) is a dummy package that
prevents module name clases between Cabal and Cabal-syntax if used together
with a Cabal flag as described below.

In Cabal-3.7 this package was split off. To avoid module name clashes, you
can add this to your .cabal file:

> flag Cabal-syntax
>   description: Use the new Cabal-syntax package
>   default: False
>   manual: False
>
> library
>   -- ...
>   if flag(Cabal-syntax)
>     build-depends: Cabal-syntax >= 3.7
>   else
>     build-depends: Cabal < 3.7, Cabal-syntax < 3.7

This will default to the older build, but will allow consumers to opt-in to
the newer libraries by requiring Cabal or Cabal-syntax >= 3.7")
    (license license:bsd-3)))

haskell-8.10-Cabal-syntax

(define-public haskell-8.10-Decimal
  (package
    (name "haskell-8.10-Decimal")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Decimal/Decimal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19w7i9f0lbiyzwa0v3bm95233vi7f1688f0xms6cnjsf88h04ym3"))))
    (properties `((upstream-name . "Decimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/PaulJohnson/Haskell-Decimal")
    (synopsis "Decimal numbers with variable precision")
    (description "A decimal number has an integer mantissa and a negative
exponent.  The exponent can be interpreted as the number
of decimal places in the value.")
    (license license:bsd-3)))

haskell-8.10-Decimal

(define-public haskell-8.10-Diff
  (package
    (name "haskell-8.10-Diff")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Diff/Diff-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0w166w5jksiqad7xf2ldjl2ykap0xf08byrl92qwp6r1qym4lppx"))))
    (properties `((upstream-name . "Diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/Diff")
    (synopsis "O(ND) diff algorithm in haskell.")
    (description
     "Implementation of the standard diff algorithm, and utilities for pretty printing.")
    (license license:bsd-3)))

haskell-8.10-Diff

(define-public haskell-8.10-FindBin
  (package
    (name "haskell-8.10-FindBin")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/audreyt/findbin")
    (synopsis "Locate directory of original program")
    (description
     "This module locates the full directory to the running program,
to allow the use of paths relative to it.
FindBin supports invocation of Haskell programs via \"ghci\",
via \"runhaskell/runghc\", as well as compiled as an executable.")
    (license license:bsd-3)))

haskell-8.10-FindBin

(define-public haskell-8.10-FloatingHex
  (package
    (name "haskell-8.10-FloatingHex")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FloatingHex/FloatingHex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c38062vnjmy3fc5nxwg7sgbfabikaakgdsl34ka229s6w7pm8x3"))))
    (properties `((upstream-name . "FloatingHex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-FloatingHex

(define-public haskell-8.10-GenericPretty
  (package
    (name "haskell-8.10-GenericPretty")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-GenericPretty

(define-public haskell-8.10-HSlippyMap
  (package
    (name "haskell-8.10-HSlippyMap")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/apeyroux/HSlippyMap")
    (synopsis "OpenStreetMap Slippy Map")
    (description
     "OpenStreetMap (OSM) Slippy Map is, in general, a term referring to modern web maps which let you zoom and pan around (the map slips around when you drag the mouse). - http://wiki.openstreetmap.org/wiki/Slippy_Map")
    (license license:bsd-3)))

haskell-8.10-HSlippyMap

(define-public haskell-8.10-HSvm
  (package
    (name "haskell-8.10-HSvm")
    (version "0.1.1.3.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HSvm/HSvm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n97frz0hbc85wlyflihnj9w5hvg7x4cbawqjimr12zlsqh26iag"))))
    (properties `((upstream-name . "HSvm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://hackage.haskell.org/package/HSvm")
    (synopsis "Haskell Bindings for libsvm")
    (description
     "The library embeds libsvm and provides a type-safe interface into SVM models.")
    (license license:bsd-3)))

haskell-8.10-HSvm

(define-public haskell-8.10-HsYAML
  (package
    (name "haskell-8.10-HsYAML")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-HsYAML

(define-public haskell-8.10-List
  (package
    (name "haskell-8.10-List")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/yairchu/generator")
    (synopsis "List monad transformer and class")
    (description "A List monad transformer and a List class.
With standard list operations for Lists")
    (license license:bsd-3)))

haskell-8.10-List

(define-public haskell-8.10-MapWith
  (package
    (name "haskell-8.10-MapWith")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/MapWith/MapWith-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xkyaj83yblf42qawv4nyi8miaynydd8b3ysx62f9y10bqxk7dja"))))
    (properties `((upstream-name . "MapWith") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/davjam/MapWith#readme")
    (synopsis
     "mapWith: like fmap, but with additional parameters (isFirst, isLast, etc).")
    (description
     "fmap over Traversables (including lists), but pass additional parameters to the map function, such as
isFirst, isLast, prevElt, nextElt, index from start or end, custom params.
For examples see https://github.com/davjam/MapWith/blob/master/doc/examples.hs")
    (license license:bsd-3)))

haskell-8.10-MapWith

(define-public haskell-8.10-MonadPrompt
  (package
    (name "haskell-8.10-MonadPrompt")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/MonadPrompt")
    (synopsis "MonadPrompt, implementation & examples")
    (description
     "\\\"Prompting\\\" monad that allows splitting the description
of a computation from the implementation of the effects
used in that computation.
<http://www.haskell.org/pipermail/haskell-cafe/2008-January/038301.html>")
    (license license:bsd-3)))

haskell-8.10-MonadPrompt

(define-public haskell-8.10-NineP
  (package
    (name "haskell-8.10-NineP")
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
    (outputs (list "out" "doc"))
    (home-page "http://9ph.googlecode.com")
    (synopsis "9P2000 in pure Haskell")
    (description
     "Pure Haskell implementation of the 9P2000 protocol from the
Plan 9 and Inferno operating systems.  Many implementations of
9P2000 exist including the Linux kernel v9fs module, wmii
(X window manager).  More information on 9P and implementations
may be found at http:\\/\\/9p.cat-v.org")
    (license license:bsd-3)))

haskell-8.10-NineP

(define-public haskell-8.10-NumInstances
  (package
    (name "haskell-8.10-NumInstances")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/conal/NumInstances")
    (synopsis "Instances of numeric classes for functions and tuples")
    (description
                 "Instances of numeric classes for functions and tuples.
Import \"Data.NumInstances\" to get all the instances.
If you want only function or only tuple instances, import
\"Data.NumInstances.Function\" or \"Data.NumInstances.Tuple\".")
    (license license:bsd-3)))

haskell-8.10-NumInstances

(define-public haskell-8.10-ObjectName
  (package
    (name "haskell-8.10-ObjectName")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ObjectName/ObjectName-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xdkfc97salzj5s3fvmwk4k0097dcd8c4xcr5ghhv9mz0wcxm9gz"))))
    (properties `((upstream-name . "ObjectName") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/svenpanne/ObjectName")
    (synopsis "Explicitly handled object names")
    (description
     "This tiny package contains the class ObjectName, which corresponds to the
general notion of explicitly handled identifiers for API objects, e.g. a
texture object name in OpenGL or a buffer object name in OpenAL.")
    (license license:bsd-3)))

haskell-8.10-ObjectName

(define-public haskell-8.10-OneTuple
  (package
    (name "haskell-8.10-OneTuple")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/OneTuple")
    (synopsis "Singleton Tuple")
    (description "This package provides a singleton tuple data type

> data OneTuple a = OneTuple a

Note: it's not a @@newtype@@")
    (license license:bsd-3)))

haskell-8.10-OneTuple

(define-public haskell-8.10-Only
  (package
    (name "haskell-8.10-Only")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-Only

(define-public haskell-8.10-ParsecTools
  (package
    (name "haskell-8.10-ParsecTools")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/ParsecTools")
    (synopsis "Parsec combinators for more complex objects.")
    (description "Combined parsers for complex objects: floating point, and
integral numbers.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-ParsecTools

(define-public haskell-8.10-SHA
  (package
    (name "haskell-8.10-SHA")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-SHA

(define-public haskell-8.10-StateVar
  (package
    (name "haskell-8.10-StateVar")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/StateVar/StateVar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "098q4lk60najzpbfal4bg4sh7izxm840aa5h4ycaamjn77d3jjsy"))))
    (properties `((upstream-name . "StateVar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskell-opengl/StateVar")
    (synopsis "State variables")
    (description
     "This package contains state variables, which are references in the IO monad,
like IORefs or parts of the OpenGL state.")
    (license license:bsd-3)))

haskell-8.10-StateVar

(define-public haskell-8.10-Xauth
  (package
    (name "haskell-8.10-Xauth")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages xorg) libxau)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/Xauth")
    (synopsis "A binding to the X11 authentication library")
    (description "A Haskell binding to the X11 authentication library.")
    (license license:bsd-3)))

haskell-8.10-Xauth

(define-public haskell-8.10-abstract-par
  (package
    (name "haskell-8.10-abstract-par")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-abstract-par

(define-public haskell-8.10-action-permutations
  (package
    (name "haskell-8.10-action-permutations")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-action-permutations

(define-public haskell-8.10-alex
  (package
    (name "haskell-8.10-alex")
    (version "3.2.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alex/alex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v0vm1l4xvybzwj1p6j5j58yiw5nhbnx7yxjnpyjy6wggsig3llv"))))
    (properties `((upstream-name . "alex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://www.haskell.org/alex/")
    (synopsis "Alex is a tool for generating lexical analysers in Haskell")
    (description "Alex is a tool for generating lexical analysers in Haskell.
It takes a description of tokens based on regular
expressions and generates a Haskell module containing code
for scanning text efficiently. It is similar to the tool
lex or flex for C/C++.")
    (license license:bsd-3)))

haskell-8.10-alex

(define-public haskell-8.10-algebraic-graphs
  (package
    (name "haskell-8.10-algebraic-graphs")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-algebraic-graphs

(define-public haskell-8.10-almost-fix
  (package
    (name "haskell-8.10-almost-fix")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/almost-fix")
    (synopsis "Recurse while a predicate is satisfied")
    (description "")
    (license license:bsd-3)))

haskell-8.10-almost-fix

(define-public haskell-8.10-annotated-wl-pprint
  (package
    (name "haskell-8.10-annotated-wl-pprint")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/david-christiansen/annotated-wl-pprint")
    (synopsis "The Wadler/Leijen Pretty Printer, with annotation support")
    (description
     "This is a modified version of wl-pprint, which was based on Wadler's
paper \"A Prettier  Printer\".  See the haddocks for full info.  This
version allows the library user to annotate the text with semantic
information, which can later be rendered in a variety of ways.")
    (license license:bsd-3)))

haskell-8.10-annotated-wl-pprint

(define-public haskell-8.10-appar
  (package
    (name "haskell-8.10-appar")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/appar")
    (synopsis "A simple applicative parser")
    (description "A simple applicative parser in Parsec style")
    (license license:bsd-3)))

haskell-8.10-appar

(define-public haskell-8.10-array-memoize
  (package
    (name "haskell-8.10-array-memoize")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-array-memoize

(define-public haskell-8.10-arrow-extras
  (package
    (name "haskell-8.10-arrow-extras")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/louispan/arrow-extras#readme")
    (synopsis "Extra functions for Control.Arrow")
    (description "Extra functions for Control.Arrow")
    (license license:bsd-3)))

haskell-8.10-arrow-extras

(define-public haskell-8.10-autoexporter
  (package
    (name "haskell-8.10-autoexporter")
    (version "1.1.20")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autoexporter/autoexporter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aciwnsxb76hl2yx1n8mbmd6rhl41f1axq3c2djdc6mkkiyh9qc1"))))
    (properties `((upstream-name . "autoexporter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/autoexporter")
    (synopsis "Automatically re-export modules.")
    (description "Autoexporter automatically re-exports modules.")
    (license license:expat)))

haskell-8.10-autoexporter

(define-public haskell-8.10-base-compat
  (package
    (name "haskell-8.10-base-compat")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-base-compat

(define-public haskell-8.10-base-orphans
  (package
    (name "haskell-8.10-base-orphans")
    (version "0.8.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-orphans/base-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sqmh3x07aw2l2vzj8dhhs1a41kl8r0n46ayn92dh3yvg95ir8i0"))))
    (properties `((upstream-name . "base-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-base-orphans

(define-public haskell-8.10-base-prelude
  (package
    (name "haskell-8.10-base-prelude")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base-prelude/base-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nn5v2y9kl7i3n21250m7cvn55lvkmzj22wx6q4kaag5ycwwczrs"))))
    (properties `((upstream-name . "base-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-base-prelude

(define-public haskell-8.10-base-unicode-symbols
  (package
    (name "haskell-8.10-base-unicode-symbols")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-base-unicode-symbols

(define-public haskell-8.10-base64-bytestring
  (package
    (name "haskell-8.10-base64-bytestring")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring/base64-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1adcnkcx4nh3d59k94bkndj0wkgbvchz576qwlpaa7148a86q391"))))
    (properties `((upstream-name . "base64-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskell/base64-bytestring")
    (synopsis "Fast base64 encoding and decoding for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according to @@base64@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for strict and lazy ByteStrings.")
    (license license:bsd-3)))

haskell-8.10-base64-bytestring

(define-public haskell-8.10-base64-string
  (package
    (name "haskell-8.10-base64-string")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-base64-string

(define-public haskell-8.10-basement
  (package
    (name "haskell-8.10-basement")
    (version "0.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/basement/basement-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01kk3z0c48c2jhni8ba165zxzm4sljy18r97cad1yd897qjsy2mv"))))
    (properties `((upstream-name . "basement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "16q5ilgblwhdhwxq8p76dp3c3gm55b6scgswx863zpjyca5avaif")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskell-foundation/foundation#readme")
    (synopsis "Foundation scrap box of array & string")
    (description "Foundation most basic primitives without any dependencies")
    (license license:bsd-3)))

haskell-8.10-basement

(define-public haskell-8.10-bazel-runfiles
  (package
    (name "haskell-8.10-bazel-runfiles")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/tweag/rules_haskell#readme")
    (synopsis "Locate Bazel runfiles location")
    (description
     "Please see the README on GitHub at <https://github.com/tweag/rules_haskell/blob/master/tools/runfiles/README.md>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-bazel-runfiles

(define-public haskell-8.10-benchpress
  (package
    (name "haskell-8.10-benchpress")
    (version "0.2.2.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/benchpress/benchpress-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ihg97zkvhq7sbp851q3qdpf2mmi2l88w742pq6cldhlhb8q7xa5"))))
    (properties `((upstream-name . "benchpress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/WillSewell/benchpress")
    (synopsis "Micro-benchmarking with detailed statistics.")
    (description "Benchmarks actions and produces statistics
such as min, mean, median, standard deviation,
and max execution time.  Also computes
execution time percentiles.  Comes with
functions to pretty-print the results.")
    (license license:bsd-3)))

haskell-8.10-benchpress

(define-public haskell-8.10-between
  (package
    (name "haskell-8.10-between")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-between

(define-public haskell-8.10-binary-ieee754
  (package
    (name "haskell-8.10-binary-ieee754")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/winterland1989/binary-ieee754")
    (synopsis "Backport ieee754 float double combinators to older binary")
    (description "Backport ieee754 float double combinators to older binary")
    (license license:bsd-3)))

haskell-8.10-binary-ieee754

(define-public haskell-8.10-binary-orphans
  (package
    (name "haskell-8.10-binary-orphans")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/binary-orphans")
    (synopsis "Compatibility package for binary; provides instances")
    (description
     "This package provides instances defined in later versions of @@binary@@ package

Prior version 1 this packages provided instances for other packages.
That functionality is moved to [binary-instances](https://hackage.haskell.org/package/binary-instances) package.")
    (license license:bsd-3)))

haskell-8.10-binary-orphans

(define-public haskell-8.10-binary-parser
  (package
    (name "haskell-8.10-binary-parser")
    (version "0.5.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parser/binary-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k3rc1szwahc5w2lxddnjpd4zkfi2hmcq398sixf2qx44f2kk6vp"))))
    (properties `((upstream-name . "binary-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/nikita-volkov/binary-parser")
    (synopsis
     "A highly-efficient but limited parser API specialised for bytestrings")
    (description "")
    (license license:expat)))

haskell-8.10-binary-parser

(define-public haskell-8.10-binary-search
  (package
    (name "haskell-8.10-binary-search")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-search/binary-search-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13dp9wbf58k4rbr9ychf7p0zkrpzykxhh4fws741sk9mcjmrkgv7"))))
    (properties `((upstream-name . "binary-search") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-binary-search

(define-public haskell-8.10-binary-shared
  (package
    (name "haskell-8.10-binary-shared")
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
    (outputs (list "out" "doc"))
    (home-page "http://www.leksah.org")
    (synopsis "Sharing for the binary package")
    (description
     "I had problems with the size of the allocated heap space after serializing
and loading data with the binary package. The reason was that
binary does not support sharing of identical elements, so I came up
with the generic solution in this package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-binary-shared

(define-public haskell-8.10-bindings-DSL
  (package
    (name "haskell-8.10-bindings-DSL")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-bindings-DSL

(define-public haskell-8.10-bindings-uname
  (package
    (name "haskell-8.10-bindings-uname")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/bindings-uname")
    (synopsis "Low-level binding to POSIX uname(3)")
    (description "This is a low-level binding to POSIX uname(3)
function. Perhaps it shoule be part of unix package.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-bindings-uname

(define-public haskell-8.10-bitarray
  (package
    (name "haskell-8.10-bitarray")
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
    (outputs (list "out" "doc"))
    (home-page "http://code.haskell.org/~bkomuves/")
    (synopsis "Mutable and immutable bit arrays")
    (description "Mutable and immutable bit arrays.")
    (license license:bsd-3)))

haskell-8.10-bitarray

(define-public haskell-8.10-blake2
  (package
    (name "haskell-8.10-blake2")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/centromere/blake2")
    (synopsis "A library providing BLAKE2")
    (description
     "This library provides the <https://blake2.net/ BLAKE2> hash algorithms.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-blake2

(define-public haskell-8.10-blaze-builder
  (package
    (name "haskell-8.10-blaze-builder")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-builder/blaze-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rxg6vjr0ji6g1nngrqpl4k1q9w66fwkhld9cqm5yfhx0a69kp1c"))))
    (properties `((upstream-name . "blaze-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "026vxh94h2hwncy1mn51xzfpnhj8ijp5xc8fpq7dwc63fkrps0gh")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/blaze-builder/blaze-builder")
    (synopsis "Efficient buffered output.")
    (description
     "This library allows to efficiently serialize Haskell values to lazy bytestrings
with a large average chunk size. The large average chunk size allows to make
good use of cache prefetching in later processing steps (e.g. compression) and
reduces the system call overhead when writing the resulting lazy bytestring to a
file or sending it over the network.

This library was inspired by the module Data.Binary.Builder provided by the
binary package. It was originally developed with the specific needs of the
blaze-html package in mind. Since then it has been restructured to serve as a
drop-in replacement for Data.Binary.Builder, which it improves upon both in
speed as well as expressivity.")
    (license license:bsd-3)))

haskell-8.10-blaze-builder

(define-public haskell-8.10-bmp
  (package
    (name "haskell-8.10-bmp")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/benl23x5/bmp")
    (synopsis "Read and write uncompressed BMP image files.")
    (description
     "Read and write uncompressed BMP image files. 100% robust Haskell implementation.")
    (license license:expat)))

haskell-8.10-bmp

(define-public haskell-8.10-boolsimplifier
  (package
    (name "haskell-8.10-boolsimplifier")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/boolsimplifier")
    (synopsis "Simplification tools for simple propositional formulas.")
    (description
     "Normal form representation for boolean expressions. Typically simplifies such expressions, but is not guaranteed to produce the absolute simplest form.")
    (license license:bsd-3)))

haskell-8.10-boolsimplifier

(define-public haskell-8.10-buffer-pipe
  (package
    (name "haskell-8.10-buffer-pipe")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/buffer-pipe")
    (synopsis "Read from stdin and write to stdout in large blocks")
    (description "Read from stdin and write to stdout in large blocks.
This can be inserted in a chain of piping commands.
E.g. if inserted after @@tar c@@ or before @@tar x@@
you can reduce jumping forth and back on the hard disk.

You may also try the @@buffer@@ command
from the Debian package of the same name.")
    (license license:bsd-3)))

haskell-8.10-buffer-pipe

(define-public haskell-8.10-bv
  (package
    (name "haskell-8.10-bv")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/iagoabal/haskell-bv")
    (synopsis "Bit-vector arithmetic library")
    (description "Bit-vectors implemented as a thin wrapper over integers.")
    (license license:bsd-3)))

haskell-8.10-bv

(define-public haskell-8.10-byteable
  (package
    (name "haskell-8.10-byteable")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/vincenthz/hs-byteable")
    (synopsis "Type class for sequence of bytes")
    (description
     "Abstract class to manipulate sequence of bytes

The use case of this class is abstracting manipulation of
types that are just wrapping a bytestring with stronger and
more meaniful name.

Usual definition of those types are of the form: newtype MyType = MyType ByteString")
    (license license:bsd-3)))

haskell-8.10-byteable

(define-public haskell-8.10-bytedump
  (package
    (name "haskell-8.10-bytedump")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/vincenthz/hs-bytedump")
    (synopsis "Flexible byte dump helpers for human readers.")
    (description
     "A set of helpers to dump bytes with lots of different output formats
easy to read for humans eyes.")
    (license license:bsd-3)))

haskell-8.10-bytedump

(define-public haskell-8.10-byteorder
  (package
    (name "haskell-8.10-byteorder")
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
    (outputs (list "out" "doc"))
    (home-page "http://community.haskell.org/~aslatter/code/byteorder")
    (synopsis "Exposes the native endianness or byte ordering of the system.")
    (description "This package is for working with the native byte-ordering of
the system.")
    (license license:bsd-3)))

haskell-8.10-byteorder

(define-public haskell-8.10-byteset
  (package
    (name "haskell-8.10-byteset")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/byteset")
    (synopsis "Set of bytes.")
    (description
     "Data structure for sets of bytes, where bytes are @@Word8@@ values.")
    (license license:bsd-3)))

haskell-8.10-byteset

(define-public haskell-8.10-bytestring-builder
  (package
    (name "haskell-8.10-bytestring-builder")
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

haskell-8.10-bytestring-builder

(define-public haskell-8.10-bytestring-mmap
  (package
    (name "haskell-8.10-bytestring-mmap")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-bytestring-mmap

(define-public haskell-8.10-bytestring-strict-builder
  (package
    (name "haskell-8.10-bytestring-strict-builder")
    (version "0.4.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-strict-builder/bytestring-strict-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1knin3mfj2qfh7xhvbrpakd037y7qqic24f1w93v8p6y5g7bc3zp"))))
    (properties `((upstream-name . "bytestring-strict-builder")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/nikita-volkov/bytestring-strict-builder")
    (synopsis "An efficient strict bytestring builder")
    (description
     "According to
<https://github.com/nikita-volkov/bytestring-builders-benchmark the competition benchmarks>,
this library provides on average the fastest builder of strict bytestrings.

Practical benchmarks have proven it to be highly performant as well.
The encoders from the \\\"postgresql-binary\\\" library have shown
a stable performance improvement by factors of up to 10 after the migration
from the standard builder to \\\"bytestring-strict-builder\\\".")
    (license license:expat)))

haskell-8.10-bytestring-strict-builder

(define-public haskell-8.10-bytestring-tree-builder
  (package
    (name "haskell-8.10-bytestring-tree-builder")
    (version "0.2.7.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-tree-builder/bytestring-tree-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lmm52716b0qqnlpqgiscc92wk9n1fckydmp4vzi58h5majzpnyb"))))
    (properties `((upstream-name . "bytestring-tree-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/nikita-volkov/bytestring-tree-builder")
    (synopsis
     "A very efficient ByteString builder implementation based on the binary tree")
    (description
     "According to
<https://github.com/nikita-volkov/bytestring-builders-benchmark the benchmarks>
this builder implementation beats all the alternatives.
It is especially well-suited for generating strict bytestrings,
beating the standard builder by at least the factor of 4.")
    (license license:expat)))

haskell-8.10-bytestring-tree-builder

(define-public haskell-8.10-bzlib
  (package
    (name "haskell-8.10-bzlib")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bzlib/bzlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n599xwyxghf52kam30k1l2qh8cg91h55c2bgchnqyj103hb7nfy"))))
    (properties `((upstream-name . "bzlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r9b9y5qlz9k8wdzb23jif9wgvxi7r652i9apwzdaq7g1l08i6ky")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)))
    (home-page "https://hackage.haskell.org/package/bzlib")
    (synopsis "Compression and decompression in the bzip2 format")
    (description "This package provides a pure interface for compressing and
decompressing streams of data represented as lazy
'ByteString's. It uses the bz2 C library so it has high
performance.

It provides a convenient high level API suitable for most
tasks and for the few cases where more control is needed it
provides access to the full bzip2 feature set.")
    (license license:bsd-3)))

haskell-8.10-bzlib

(define-public haskell-8.10-c-enum
  (package
    (name "haskell-8.10-c-enum")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c-enum/c-enum-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01i8dfzrcpkji4vnnflabfbxd4f6q8mmzh1whnizqp14pbzmkqv2"))))
    (properties `((upstream-name . "c-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/YoshikuniJujo/c-enum#readme")
    (synopsis "To make a type corresponding to an enum of C language")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/c-enum#readme>")
    (license license:bsd-3)))

haskell-8.10-c-enum

(define-public haskell-8.10-c14n
  (package
    (name "haskell-8.10-c14n")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c14n/c14n-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j5g36sxz6bp2z0z10d47lqh7rmclx3296zafc5vzns8d884sm0n"))))
    (properties `((upstream-name . "c14n") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages xml) libxml2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xml) libxml2)))
    (home-page "https://github.com/mbg/c14n#readme")
    (synopsis "Bindings to the c14n implementation in libxml.")
    (description
     "Haskell bindings for the c14n implementation in libxml (XML canonicalisation). See the README at <https://github.com/mbg/c14n#readme> for more information.")
    (license license:expat)))

haskell-8.10-c14n

(define-public haskell-8.10-cabal-appimage
  (package
    (name "haskell-8.10-cabal-appimage")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-appimage/cabal-appimage-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mkbfy9nxdmr8sbvpr6zrh2vvycslmrbc1m32mfxk9kr44f4wjli"))))
    (properties `((upstream-name . "cabal-appimage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/gbrsales/cabal-appimage")
    (synopsis "Cabal support for creating AppImage applications")
    (description "This package provides a build hook automating the
creation of AppImage bundles.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.10-cabal-appimage

(define-public haskell-8.10-cabal-doctest
  (package
    (name "haskell-8.10-cabal-doctest")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-doctest/cabal-doctest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wxs0xkspc80h0g8ks792lrzldxvcnhc9rja1j0k678ijs20hmjm"))))
    (properties `((upstream-name . "cabal-doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0mh64vifcy5dbbx2n3llhbxx8mczifmipyqwrsb3vx2p2jyhvskd")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskellari/cabal-doctest")
    (synopsis "A Setup.hs helper for running doctests")
    (description
     "As of now (end of 2021), there isn't @@cabal doctest@@
command. Yet, to properly work, @@doctest@@ needs plenty of configuration.
This library provides the common bits for writing a custom @@Setup.hs@@.")
    (license license:bsd-3)))

haskell-8.10-cabal-doctest

(define-public haskell-8.10-call-stack
  (package
    (name "haskell-8.10-call-stack")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/call-stack/call-stack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ski7ihdxah7x4x07qgkjljg8hzqs9d6aa5k4cmr40bzp3i8s3mq"))))
    (properties `((upstream-name . "call-stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/sol/call-stack#readme")
    (synopsis "Use GHC call-stacks in a backward compatible way")
    (description "")
    (license license:expat)))

haskell-8.10-call-stack

(define-public haskell-8.10-cased
  (package
    (name "haskell-8.10-cased")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/jb55/cased")
    (synopsis "Track string casing in its type")
    (description "Track string casing in its type")
    (license license:expat)))

haskell-8.10-cased

(define-public haskell-8.10-cast
  (package
    (name "haskell-8.10-cast")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskell-patterns/cast#readme")
    (synopsis "Abstact cast pattern ")
    (description "Generalized pattern that allow cast one type for another.
Look at README for example.")
    (license license:bsd-3)))

haskell-8.10-cast

(define-public haskell-8.10-cereal
  (package
    (name "haskell-8.10-cereal")
    (version "0.5.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cereal/cereal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kvnlm22qdmb7g2jz7imsvh799q4nvms1ni0cbba5vigp5ai64hp"))))
    (properties `((upstream-name . "cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")
       #:cabal-revision
       ("1" "16hdvwa1qpwicn512mnsksi4zdnwmqnn9sdga4iy3jza4rj9lzgy")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/GaloisInc/cereal")
    (synopsis "A binary serialization library")
    (description
     "A binary serialization library, similar to binary, that introduces an isolate
primitive for parser isolation, and labeled blocks for better error messages.")
    (license license:bsd-3)))

haskell-8.10-cereal

(define-public haskell-8.10-charsetdetect-ae
  (package
    (name "haskell-8.10-charsetdetect-ae")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-charsetdetect-ae

(define-public haskell-8.10-choice
  (package
    (name "haskell-8.10-choice")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mboes/choice#readme")
    (synopsis "A solution to boolean blindness.")
    (description "Please see README.md.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-choice

(define-public haskell-8.10-circle-packing
  (package
    (name "haskell-8.10-circle-packing")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-circle-packing

(define-public haskell-8.10-clay
  (package
    (name "haskell-8.10-clay")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-clay

(define-public haskell-8.10-clock
  (package
    (name "haskell-8.10-clock")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/clock/clock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l850pf1dxjf3i15wc47d64gzkpzgvw0bq13fd8zvklq9kdyap44"))))
    (properties `((upstream-name . "clock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "doc"))
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

Refactoring for Windows, Mac implementation consistence by Alexander Vershilov on 2021-01-16.

[Version Scheme]
Major-@@/R/@@-ewrite . New-@@/F/@@-unctionality . @@/I/@@-mprovementAndBugFixes . @@/P/@@-ackagingOnly

* @@PackagingOnly@@ changes are made for quality assurance reasons.")
    (license license:bsd-3)))

haskell-8.10-clock

(define-public haskell-8.10-cmdargs
  (package
    (name "haskell-8.10-cmdargs")
    (version "0.10.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cmdargs/cmdargs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xfabq187n1vqrnnm4ciprpl0dcjq97rksyjnpcniwva9rffmn7p"))))
    (properties `((upstream-name . "cmdargs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-testprog" "-fquotation")
       #:cabal-revision
       ("1" "0kdvgrfnim43qz145v1d0iwgil2j7w2xjg4z725lyrwrk8rhqi82")))
    (outputs (list "out" "doc"))
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

haskell-8.10-cmdargs

(define-public haskell-8.10-colorful-monoids
  (package
    (name "haskell-8.10-colorful-monoids")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/minad/colorful-monoids#readme")
    (synopsis "Styled console text output using ANSI escape sequences.")
    (description
     "This library provides styled text output using ANSI escape sequences. The colored text is modeled as nested Colored values, which form a Monoid. As a result the colored code has a relatively concise form.")
    (license license:expat)))

haskell-8.10-colorful-monoids

(define-public haskell-8.10-colour
  (package
    (name "haskell-8.10-colour")
    (version "2.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/colour/colour-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wgqj64mh2y2zk77kv59k3xb3dk4wmgfp988y74sp9a4d76mvlrc"))))
    (properties `((upstream-name . "colour") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://www.haskell.org/haskellwiki/Colour")
    (synopsis "A model for human colour/color perception")
    (description
     "This package provides a data type for colours and transparency.
Colours can be blended and composed.
Various colour spaces are supported.
A module of colour names (\"Data.Colour.Names\") is provided.")
    (license license:expat)))

haskell-8.10-colour

(define-public haskell-8.10-composition
  (package
    (name "haskell-8.10-composition")
    (version "1.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composition/composition-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bnl8kmaqbjnznqgnjj2gr2qygln6y6493prk0anpd8zdylzf2xm"))))
    (properties `((upstream-name . "composition") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/composition")
    (synopsis "Combinators for unorthodox function composition")
    (description "")
    (license license:bsd-3)))

haskell-8.10-composition

(define-public haskell-8.10-concurrent-split
  (package
    (name "haskell-8.10-concurrent-split")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-concurrent-split

(define-public haskell-8.10-cond
  (package
    (name "haskell-8.10-cond")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-cond

(define-public haskell-8.10-conduit-combinators
  (package
    (name "haskell-8.10-conduit-combinators")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "DEPRECATED Functionality merged into the conduit package itself")
    (description
     "See docs and README at <http://www.stackage.org/package/conduit-combinators>")
    (license license:expat)))

haskell-8.10-conduit-combinators

(define-public haskell-8.10-console-style
  (package
    (name "haskell-8.10-console-style")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/minad/console-style#readme")
    (synopsis "Styled console text output using ANSI escape sequences.")
    (description "Styled console text output using ANSI escape sequences.")
    (license license:expat)))

haskell-8.10-console-style

(define-public haskell-8.10-constraint-tuples
  (package
    (name "haskell-8.10-constraint-tuples")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-constraint-tuples

(define-public haskell-8.10-control-bool
  (package
    (name "haskell-8.10-control-bool")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/fumieval/control-bool")
    (synopsis "Useful combinators for boolean expressions")
    (description "")
    (license license:bsd-3)))

haskell-8.10-control-bool

(define-public haskell-8.10-control-monad-free
  (package
    (name "haskell-8.10-control-monad-free")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/pepeiborra/control-monad-free")
    (synopsis "Free monads and monad transformers")
    (description
     "This package provides datatypes to construct Free monads,
Free monad transformers, and useful instances. In addition it
provides the constructs to avoid quadratic complexity of left
associative bind, as explained in:

* Janis Voigtlander, /Asymptotic Improvement of Computations over Free Monads, MPC'08/")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-control-monad-free

(define-public haskell-8.10-control-monad-omega
  (package
    (name "haskell-8.10-control-monad-omega")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/luqui/control-monad-omega")
    (synopsis "A breadth-first list monad.")
    (description "A monad for enumerating sets: like the list
monad but breadth-first.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-control-monad-omega

(define-public haskell-8.10-cpu
  (package
    (name "haskell-8.10-cpu")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/vincenthz/hs-cpu")
    (synopsis "Cpu information and properties helpers.")
    (description
     "Lowlevel cpu routines to get basic properties of the cpu platform, like endianness and architecture.")
    (license license:bsd-3)))

haskell-8.10-cpu

(define-public haskell-8.10-cryptohash-md5
  (package
    (name "haskell-8.10-cryptohash-md5")
    (version "0.11.101.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-md5/cryptohash-md5-"
                    version ".tar.gz"))
              (sha256
               (base32
                "018g13hkmq5782i24b4518hcd926fl6x6fh5hd7b9wlxwc5dn21v"))))
    (properties `((upstream-name . "cryptohash-md5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0s2f5cd46lqymmbpcnzlxsim5qk8yrr52j5mmi31zrhd24b3bqln")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/hvr/cryptohash-md5")
    (synopsis "Fast, pure and practical MD5 implementation")
    (description
     "A practical incremental and one-pass, pure API to the
<https://en.wikipedia.org/wiki/MD5 MD5 hash algorithm>
(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)
with performance close to the fastest implementations available in other languages.

The implementation is made in C with a haskell FFI wrapper that hides the C implementation.

NOTE: This package has been forked off @@cryptohash-0.11.7@@ because the @@cryptohash@@ package
has been deprecated and so this package continues to satisfy the need for a lightweight package
providing the MD5 hash algorithm without any dependencies on packages other than
@@base@@ and @@bytestring@@.

Consequently, this package can be used as a drop-in replacement for @@cryptohash@@'s
\"Crypto.Hash.MD5\" module, though with a clearly smaller footprint.")
    (license license:bsd-3)))

haskell-8.10-cryptohash-md5

(define-public haskell-8.10-cryptohash-sha1
  (package
    (name "haskell-8.10-cryptohash-sha1")
    (version "0.11.101.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-sha1/cryptohash-sha1-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h9jl9v38gj0vnscqx7xdklk634p05fa6z2pcvknisq2mnbjq154"))))
    (properties `((upstream-name . "cryptohash-sha1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bz9rfl7b2iwn45m0lxcmsyi5rrv3xdgzx2lzr79bds91dw6i25b")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/hvr/cryptohash-sha1")
    (synopsis "Fast, pure and practical SHA-1 implementation")
    (description
     "A practical incremental and one-pass, pure API to the
<https://en.wikipedia.org/wiki/SHA-1 SHA-1 hash algorithm>
(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)
with performance close to the fastest implementations available in other languages.

The implementation is made in C with a haskell FFI wrapper that hides the C implementation.

NOTE: This package has been forked off @@cryptohash-0.11.7@@ because the @@cryptohash@@ package has been
deprecated and so this package continues to satisfy the need for a lightweight package
providing the SHA1 hash algorithm without any dependencies on packages other than
@@base@@ and @@bytestring@@.

Consequently, this package can be used as a drop-in replacement for @@cryptohash@@'s
\"Crypto.Hash.SHA1\" module, though with a clearly smaller footprint.")
    (license license:bsd-3)))

haskell-8.10-cryptohash-sha1

(define-public haskell-8.10-cryptohash-sha256
  (package
    (name "haskell-8.10-cryptohash-sha256")
    (version "0.11.102.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-sha256/cryptohash-sha256-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xkb7iqplbw4fy1122p79xf1zcb7k44rl0wmfj1q06l7cdqxr9vk"))))
    (properties `((upstream-name . "cryptohash-sha256") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-exe" "-fuse-cbits")
       #:cabal-revision
       ("1" "1hyzqv30rpj920ddnr0zypyjjlh52vyp2d140pn2byayj820rkgs")))
    (outputs (list "out" "doc"))
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

haskell-8.10-cryptohash-sha256

(define-public haskell-8.10-cryptohash-sha512
  (package
    (name "haskell-8.10-cryptohash-sha512")
    (version "0.11.101.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-sha512/cryptohash-sha512-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a6sc5b6w0k47fyjhyrfm3p25jsbsqjknfq5mbj53p2p1qsfykc1"))))
    (properties `((upstream-name . "cryptohash-sha512") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mjbn84bg9r3m1dcfpmmalck2wdfdm4i8wrqfi624mbaqs8a0fqs")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/hvr/cryptohash-sha512")
    (synopsis "Fast, pure and practical SHA-512 implementation")
    (description
     "A practical incremental and one-pass, pure API to the
<https://en.wikipedia.org/wiki/SHA-2 SHA-512 hash algorithm>
(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)
with performance close to the fastest implementations available in other languages.

The implementation is made in C with a haskell FFI wrapper that hides the C implementation.

NOTE: This package has been forked off @@cryptohash-0.11.7@@ because the @@cryptohash@@ package has been
deprecated and so this package continues to satisfy the need for a lightweight package
providing the SHA512 hash algorithm without any dependencies on packages other than
@@base@@ and @@bytestring@@.

Consequently, this package can be used as a drop-in replacement for @@cryptohash@@'s
\"Crypto.Hash.SHA512\" module, though with a clearly smaller footprint.")
    (license license:bsd-3)))

haskell-8.10-cryptohash-sha512

(define-public haskell-8.10-csv
  (package
    (name "haskell-8.10-csv")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-csv

(define-public haskell-8.10-curl
  (package
    (name "haskell-8.10-curl")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-curl

(define-public haskell-8.10-czipwith
  (package
    (name "haskell-8.10-czipwith")
    (version "1.0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/czipwith/czipwith-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zvi7wmbh09ngbyvavvhn6s3vz1pnps59fl1sq3vih6s03s0zmai"))))
    (properties `((upstream-name . "czipwith") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lijciq9ly8cmv7kjkazi8rz8zhh205f64iv3fsjj4spy2lpkyhx")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/lspitzner/czipwith/")
    (synopsis "CZipWith class and deriving via TH")
    (description "A typeclass similar to Data.Distributive, but for
data parameterised with a type constructor. The name
comes from the resemblance of its method to the regular
zipWith function. The abstraction is useful for example
for program config handling.")
    (license license:bsd-3)))

haskell-8.10-czipwith

(define-public haskell-8.10-data-accessor
  (package
    (name "haskell-8.10-data-accessor")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-data-accessor

(define-public haskell-8.10-data-binary-ieee754
  (package
    (name "haskell-8.10-data-binary-ieee754")
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
    (outputs (list "out" "doc"))
    (home-page "https://john-millikin.com/software/data-binary-ieee754/")
    (synopsis "Parser/Serialiser for IEEE-754 floating-point values")
    (description "Convert Float and Decimal values to/from raw octets.")
    (license license:expat)))

haskell-8.10-data-binary-ieee754

(define-public haskell-8.10-data-checked
  (package
    (name "haskell-8.10-data-checked")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mvv/data-checked")
    (synopsis "Type-indexed runtime-checked properties ")
    (description
     "This package provides a (phantom) type-indexed newtype evidence-wrapper for
values that are checked to satisfy the property associated with the type.")
    (license license:bsd-3)))

haskell-8.10-data-checked

(define-public haskell-8.10-data-default-class
  (package
    (name "haskell-8.10-data-default-class")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/data-default-class")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-8.10-data-default-class

(define-public haskell-8.10-data-endian
  (package
    (name "haskell-8.10-data-endian")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mvv/data-endian")
    (synopsis "Endian-sensitive data")
    (description
     "This package provides helpers for converting endian-sensitive data.")
    (license license:bsd-3)))

haskell-8.10-data-endian

(define-public haskell-8.10-data-forest
  (package
    (name "haskell-8.10-data-forest")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-forest/data-forest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l16hg1pfzrbi2ih6najcam18p2b5lvmmkl6fxvk7izynvcc79jc"))))
    (properties `((upstream-name . "data-forest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0m0fp8fx21257z5k1g575wjcmavd29qav4cgjcwg5nxkxwrfldg8")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/typeclasses/data-forest")
    (synopsis "A simple multi-way tree data structure.")
    (description "In some contexts, forests (collections of zero
or more trees) are more important than trees.
The /data-forest/ library provides a @@Tree@@
type much like the one from the popular
/containers/ library, but it also provides a
@@Forest@@ type with its own @@Functor@@ and
@@Foldable@@ instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-data-forest

(define-public haskell-8.10-data-has
  (package
    (name "haskell-8.10-data-has")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-has/data-has-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zkjn2m4s59h09i3kgqxr45xw8kr34d1f2fxanac1c7y8242vdbz"))))
    (properties `((upstream-name . "data-has") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/winterland1989/data-has")
    (synopsis "Simple extensible product")
    (description "Simple extensible product")
    (license license:bsd-3)))

haskell-8.10-data-has

(define-public haskell-8.10-data-inttrie
  (package
    (name "haskell-8.10-data-inttrie")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/luqui/data-inttrie")
    (synopsis "A simple lazy, infinite trie from integers")
    (description "")
    (license license:bsd-3)))

haskell-8.10-data-inttrie

(define-public haskell-8.10-data-lens-light
  (package
    (name "haskell-8.10-data-lens-light")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-lens-light/data-lens-light-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xczbmgin315qh9wpl6v2vvnp6hv1irfbfqs7pk034qcpx61fwdl"))))
    (properties `((upstream-name . "data-lens-light") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/feuerbach/data-lens-light")
    (synopsis "Simple lenses, minimum dependencies")
    (description
     "See <https://github.com/feuerbach/data-lens-light/blob/master/README.md>")
    (license license:expat)))

haskell-8.10-data-lens-light

(define-public haskell-8.10-data-or
  (package
    (name "haskell-8.10-data-or")
    (version "1.0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/data-or/data-or-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n8ym5skpyd15akra1vj97z2h3bq62fh1966yz1i8qds5xq96a4x"))))
    (properties `((upstream-name . "data-or") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "A data type for non-exclusive disjunction.")
    (description "A data type for non-exclusive disjunction.")
    (license license:bsd-3)))

haskell-8.10-data-or

(define-public haskell-8.10-data-ordlist
  (package
    (name "haskell-8.10-data-ordlist")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/data-ordlist")
    (synopsis "Set and bag operations on ordered lists")
    (description
     "This module provides set and multiset operations on ordered lists.")
    (license license:bsd-3)))

haskell-8.10-data-ordlist

(define-public haskell-8.10-dec
  (package
    (name "haskell-8.10-dec")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dec/dec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0yslffafmqfkvhcw2arpc53hfmn1788z85ss9lxnbclr29lbvzgc"))))
    (properties `((upstream-name . "dec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01xin7sn8j2aq4yq61qjxsggakl0igwhaqpsv6jcjraqgj7vwrq3")))
    (outputs (list "out" "doc"))
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

haskell-8.10-dec

(define-public haskell-8.10-deepseq-generics
  (package
    (name "haskell-8.10-deepseq-generics")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-deepseq-generics

(define-public haskell-8.10-deepseq-instances
  (package
    (name "haskell-8.10-deepseq-instances")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/TravisWhitaker/deepseq-instances")
    (synopsis "Candidate NFData Instances for Types in base")
    (description
     "Candidate NFData Instances for Types in base
This package provides correct-but-controversial NFData instances for types
in base. See this GitHub pull request for more details:
<https://github.com/haskell/deepseq/pull/50>")
    (license license:expat)))

haskell-8.10-deepseq-instances

(define-public haskell-8.10-dictionary-sharing
  (package
    (name "haskell-8.10-dictionary-sharing")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/dictionary-sharing")
    (synopsis "Sharing/memoization of class members")
    (description "Library for ensuring that class members are shared.")
    (license license:bsd-3)))

haskell-8.10-dictionary-sharing

(define-public haskell-8.10-digest
  (package
    (name "haskell-8.10-digest")
    (version "0.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/digest/digest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l5383l5pvp018rj3vabrppnzcqrr2g0dvgvmsrbjdn02wzab5jm"))))
    (properties `((upstream-name . "digest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-in-base")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/digest")
    (synopsis
     "Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now.")
    (description
     "This package provides efficient cryptographic hash implementations for
strict and lazy bytestrings. For now, CRC32 and Adler32 are supported;
they are implemented as FFI bindings to efficient code from zlib.")
    (license license:bsd-3)))

haskell-8.10-digest

(define-public haskell-8.10-directory-tree
  (package
    (name "haskell-8.10-directory-tree")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-directory-tree

(define-public haskell-8.10-discount
  (package
    (name "haskell-8.10-discount")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages markup) discount)))
    (home-page "http://github.com/lightquake/discount")
    (synopsis "Haskell bindings to the discount Markdown library.")
    (description
     "Discount is a thin wrapper around the discount library <http://www.pell.portland.or.us/~orc/Code/discount/> for parsing Markdown. It supports both additional features such as definition lists and tables, while also having a mode for pure Markdown.")
    (license license:expat)))

haskell-8.10-discount

(define-public haskell-8.10-doctest-lib
  (package
    (name "haskell-8.10-doctest-lib")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-lib/doctest-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vswam0dhw52dihgnzirh18gqs8rj8h6jd7pl6y1mg2f9f9zmih2"))))
    (properties `((upstream-name . "doctest-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hub.darcs.net/thielema/doctest-lib/")
    (synopsis "Parts of doctest exposed as library")
    (description "Parts of doctest exposed as library.
For use with the doctest-extract utility.")
    (license license:expat)))

haskell-8.10-doctest-lib

(define-public haskell-8.10-doldol
  (package
    (name "haskell-8.10-doldol")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/QuietJoon/doldol/")
    (synopsis "Flag packer & handler for flaggable data")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/doldol#readme>")
    (license license:bsd-3)))

haskell-8.10-doldol

(define-public haskell-8.10-dot
  (package
    (name "haskell-8.10-dot")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dot/dot-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "10w45ssasprag42d59lln733swr7s7a15v64ys6qzzl6ina4s55n"))))
    (properties `((upstream-name . "dot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/andrewthad/dot")
    (synopsis "Datatypes and encoding for graphviz dot files")
    (description "Datatypes and encoding for graphviz dot files.
See the example directory for example usage.")
    (license license:bsd-3)))

haskell-8.10-dot

(define-public haskell-8.10-dotgen
  (package
    (name "haskell-8.10-dotgen")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ku-fpg/dotgen")
    (synopsis "A simple interface for building .dot graph files.")
    (description
     "This package provides a simple interface for building .dot graph files,
for input into the dot and graphviz tools.
It includes a monadic interface for building graphs.")
    (license license:bsd-3)))

haskell-8.10-dotgen

(define-public haskell-8.10-dotnet-timespan
  (package
    (name "haskell-8.10-dotnet-timespan")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/YoEight/dotnet-timespan")
    (synopsis ".NET TimeSpan")
    (description ".NET TimeSpan")
    (license license:bsd-3)))

haskell-8.10-dotnet-timespan

(define-public haskell-8.10-double-conversion
  (package
    (name "haskell-8.10-double-conversion")
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
       ("2" "1r36a83gbsqvb1iq9wjs2pmmw1nvmw5vmfay8jad3d8hfqhfpa7b")))
    (outputs (list "out" "doc"))
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

haskell-8.10-double-conversion

(define-public haskell-8.10-dual
  (package
    (name "haskell-8.10-dual")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/dual")
    (synopsis "Dual category")
    (description "")
    (license license:bsd-3)))

haskell-8.10-dual

(define-public haskell-8.10-easy-file
  (package
    (name "haskell-8.10-easy-file")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/kazu-yamamoto/easy-file")
    (synopsis "Cross-platform File handling")
    (description "Cross-platform File handling for Unix\\/Mac\\/Windows")
    (license license:bsd-3)))

haskell-8.10-easy-file

(define-public haskell-8.10-echo
  (package
    (name "haskell-8.10-echo")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/echo/echo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hqfdd4kvpp59cjjv790bkf72yqr9xjfqlbjcrdsc9a8j3r1pzn9"))))
    (properties `((upstream-name . "echo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
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

haskell-8.10-echo

(define-public haskell-8.10-ed25519
  (package
    (name "haskell-8.10-ed25519")
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
    (outputs (list "out" "doc"))
    (home-page "http://thoughtpolice.github.com/hs-ed25519")
    (synopsis "Ed25519 cryptographic signatures")
    (description
     "This package provides a simple, fast, self-contained copy of the
Ed25519 public-key signature system with a clean interface. It also
includes support for detached signatures, and thorough documentation
on the design and implementation, including usage guidelines.")
    (license license:expat)))

haskell-8.10-ed25519

(define-public haskell-8.10-either-unwrap
  (package
    (name "haskell-8.10-either-unwrap")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/gcross/either-unwrap")
    (synopsis "Functions for probing and unwrapping values inside of Either.")
    (description
     "Functions for probing and unwrapping values inside of Either.")
    (license license:bsd-3)))

haskell-8.10-either-unwrap

(define-public haskell-8.10-entropy
  (package
    (name "haskell-8.10-entropy")
    (version "0.4.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/entropy/entropy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vp99gqavv5hg09zs2v0p74cxn135z1bq7qhxbk47d36npz3s1m9"))))
    (properties `((upstream-name . "entropy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-halvm")
       #:cabal-revision
       ("2" "1h0wj1hxvlmirqdb175qcsq7c9241ijk7d0cx7sh4h77gxfza2bc")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/TomMD/entropy")
    (synopsis "A platform independent entropy source")
    (description
     "A mostly platform independent method to obtain cryptographically strong entropy
(RDRAND, urandom, CryptAPI, and patches welcome)
Users looking for cryptographically strong (number-theoretically
sound) PRNGs should see the 'DRBG' package too.")
    (license license:bsd-3)))

haskell-8.10-entropy

(define-public haskell-8.10-erf
  (package
    (name "haskell-8.10-erf")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/erf")
    (synopsis "The error function, erf, and related functions.")
    (description
     "A type class for the error function, erf, and related functions.
Instances for Float and Double.")
    (license license:bsd-3)))

haskell-8.10-erf

(define-public haskell-8.10-error-or
  (package
    (name "haskell-8.10-error-or")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/error-or/error-or-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ry06vhz7mrl7i587vw3pv2ralh8aw7km6jfhagww0hmckwdjqmm"))))
    (properties `((upstream-name . "error-or") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/error-or#readme")
    (synopsis "Composable, hierarchical errors.")
    (description
     "An Applicative Functor with error accumulation. Built in tree like error type meant for gathering and reporting errors to users.")
    (license license:bsd-3)))

haskell-8.10-error-or

(define-public haskell-8.10-exact-combinatorics
  (package
    (name "haskell-8.10-exact-combinatorics")
    (version "0.2.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exact-combinatorics/exact-combinatorics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qrhgd468ljpnfciaxzimmn1rhvapcrrsy4wb2r08hn3vjflmd3n"))))
    (properties `((upstream-name . "exact-combinatorics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Efficient exact computation of combinatoric functions.")
    (description "Efficient exact computation of combinatoric functions.")
    (license license:bsd-3)))

haskell-8.10-exact-combinatorics

(define-public haskell-8.10-exception-hierarchy
  (package
    (name "haskell-8.10-exception-hierarchy")
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
    (outputs (list "out" "doc"))
    (home-page "yet")
    (synopsis "Exception type hierarchy with TemplateHaskell")
    (description "see sample code in samples/")
    (license license:bsd-3)))

haskell-8.10-exception-hierarchy

(define-public haskell-8.10-exception-via
  (package
    (name "haskell-8.10-exception-via")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-via/exception-via-"
                    version ".tar.gz"))
              (sha256
               (base32
                "046f787jw3v1c61q9c9canq0m266wv39rsk0613fyrhl96sss66m"))))
    (properties `((upstream-name . "exception-via") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/parsonsmatt/exception-via#readme")
    (synopsis "DerivingVia for your hierarchical exceptions")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/exception-via#readme>")
    (license license:bsd-3)))

haskell-8.10-exception-via

(define-public haskell-8.10-executable-path
  (package
    (name "haskell-8.10-executable-path")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-executable-path

(define-public haskell-8.10-exit-codes
  (package
    (name "haskell-8.10-exit-codes")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/JustusAdam/exit-codes")
    (synopsis "Exit codes as defined by BSD")
    (description
     "Expose the exit codes defined by BSD in sysexits.h to the Haskell world.")
    (license license:bsd-3)))

haskell-8.10-exit-codes

(define-public haskell-8.10-extensible-exceptions
  (package
    (name "haskell-8.10-extensible-exceptions")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/extensible-exceptions")
    (synopsis "Extensible exceptions")
    (description "This package provides extensible exceptions for both new and
old versions of GHC (i.e., < 6.10).")
    (license license:bsd-3)))

haskell-8.10-extensible-exceptions

(define-public haskell-8.10-extractable-singleton
  (package
    (name "haskell-8.10-extractable-singleton")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/athanclark/extractable-singleton#readme")
    (synopsis
              "A functor, where the \"stored\" value is isomorphic to Identity")
    (description "")
    (license license:bsd-3)))

haskell-8.10-extractable-singleton

(define-public haskell-8.10-fail
  (package
    (name "haskell-8.10-fail")
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

haskell-8.10-fail

(define-public haskell-8.10-failable
  (package
    (name "haskell-8.10-failable")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/failable")
    (synopsis
     "A 'Failable' error monad class to unify failure across monads that can fail")
    (description
     "This library contains a 'Failable' error monad class to unify failure across monads and transformers most commonly used to implement pipelines that can fail and does so in a simple nonsense way by providing the means of signaling a computation \"failure\" while striving to keep the failure behaviour consistent with the actual definition of the monad/transformer. Please refer to the README file for a more elaborate description and some examples.")
    (license license:bsd-3)))

haskell-8.10-failable

(define-public haskell-8.10-fast-math
  (package
    (name "haskell-8.10-fast-math")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-fast-math

(define-public haskell-8.10-feature-flags
  (package
    (name "haskell-8.10-feature-flags")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/iand675/feature-flags")
    (synopsis
     "A simple library for dynamically enabling and disabling functionality.")
    (description
     "A simple library for dynamically enabling and disabling functionality.")
    (license license:expat)))

haskell-8.10-feature-flags

(define-public haskell-8.10-fedora-dists
  (package
    (name "haskell-8.10-fedora-dists")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/juhp/fedora-dists")
    (synopsis "Library for Fedora distribution versions")
    (description
     "This library provides the Dist datatype and various associated
metadata functions for Red Hat distributions (Fedora, EPEL, RHEL)
needed for packaging development and building.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-fedora-dists

(define-public haskell-8.10-fgl
  (package
    (name "haskell-8.10-fgl")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/fgl")
    (synopsis "Martin Erwig's Functional Graph Library")
    (description
     "An inductive representation of manipulating graph data structures.

Original website can be found at <http://web.engr.oregonstate.edu/~erwig/fgl/haskell>.")
    (license license:bsd-3)))

haskell-8.10-fgl

(define-public haskell-8.10-file-embed
  (package
    (name "haskell-8.10-file-embed")
    (version "0.0.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-embed/file-embed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pavxj642phrkq67620g10wqykjfhmm9yj2rm8pja83sadfvhrph"))))
    (properties `((upstream-name . "file-embed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/snoyberg/file-embed")
    (synopsis "Use Template Haskell to embed file contents directly.")
    (description "Use Template Haskell to read a file or all the files in a
directory, and turn them into (path, bytestring) pairs
embedded in your Haskell code.")
    (license license:bsd-2)))

haskell-8.10-file-embed

(define-public haskell-8.10-filtrable
  (package
    (name "haskell-8.10-filtrable")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/strake/filtrable.hs")
    (synopsis "Class of filtrable containers")
    (description "See \"Data.Filtrable\".")
    (license license:bsd-3)))

haskell-8.10-filtrable

(define-public haskell-8.10-fingertree
  (package
    (name "haskell-8.10-fingertree")
    (version "0.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fingertree/fingertree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wdzpli8bpgk8lrsp105zb0y5gn1r2029laclvhz264bza93q9pk"))))
    (properties `((upstream-name . "fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-fingertree

(define-public haskell-8.10-finite-typelits
  (package
    (name "haskell-8.10-finite-typelits")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mniip/finite-typelits")
    (synopsis
     "A type inhabited by finitely many values, indexed by type-level naturals.")
    (description
     "A type inhabited by finitely many values, indexed by type-level naturals.")
    (license license:bsd-3)))

haskell-8.10-finite-typelits

(define-public haskell-8.10-first-class-families
  (package
    (name "haskell-8.10-first-class-families")
    (version "0.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/first-class-families/first-class-families-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wnsq69f2br9h9hnf8sx41pchwjag86hb41ivjl7wx81psyqy72a"))))
    (properties `((upstream-name . "first-class-families") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0idiqb4ckwa7hya827gc2cbjh83wmz3cppnl124834pkla2h99np")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/Lysxia/first-class-families#readme")
    (synopsis "First-class type families")
    (description "A library for type-level programming.

See README.")
    (license license:expat)))

haskell-8.10-first-class-families

(define-public haskell-8.10-first-class-patterns
  (package
    (name "haskell-8.10-first-class-patterns")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-first-class-patterns

(define-public haskell-8.10-fixed
  (package
    (name "haskell-8.10-fixed")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/fixed")
    (synopsis "Signed 15.16 precision fixed point arithmetic")
    (description "Signed 15.16 precision fixed point arithmetic")
    (license license:bsd-3)))

haskell-8.10-fixed

(define-public haskell-8.10-floatshow
  (package
    (name "haskell-8.10-floatshow")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-floatshow

(define-public haskell-8.10-fmlist
  (package
    (name "haskell-8.10-fmlist")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/sjoerdvisscher/fmlist")
    (synopsis "FoldMap lists")
    (description
     "FoldMap lists are lists represented by their foldMap function.
FoldMap lists have O(1) cons, snoc and append, just like DLists,
but other operations might have favorable performance
characteristics as well. These wild claims are still completely
unverified though.")
    (license license:bsd-3)))

haskell-8.10-fmlist

(define-public haskell-8.10-focus
  (package
    (name "haskell-8.10-focus")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/focus/focus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03h6gq0k5z9a7nar29qijfnd4gwxd8h16dfsig74bsdzazj50c1m"))))
    (properties `((upstream-name . "focus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-focus

(define-public haskell-8.10-foreign-store
  (package
    (name "haskell-8.10-foreign-store")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/chrisdone/foreign-store")
    (synopsis
     "Store a stable pointer in a foreign context to be retrieved later.")
    (description
     "Store a stable pointer in a foreign context to be retrieved later. Persists through GHCi reloads.")
    (license license:bsd-3)))

haskell-8.10-foreign-store

(define-public haskell-8.10-forkable-monad
  (package
    (name "haskell-8.10-forkable-monad")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/System-Indystress/ForkableMonad#readme")
    (synopsis "An implementation of forkIO for monad stacks.")
    (description
     "< This module defines a more generic version of Control.Concurrent's forkIO, which can directly run some complex monadic actions as well as plain IO actions.")
    (license license:bsd-3)))

haskell-8.10-forkable-monad

(define-public haskell-8.10-free-categories
  (package
    (name "haskell-8.10-free-categories")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/morphismtech/free-categories")
    (synopsis "free categories")
    (description "free categories, paths, and categorical folds")
    (license license:bsd-3)))

haskell-8.10-free-categories

(define-public haskell-8.10-funcmp
  (package
    (name "haskell-8.10-funcmp")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-funcmp

(define-public haskell-8.10-fusion-plugin-types
  (package
    (name "haskell-8.10-fusion-plugin-types")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/composewell/fusion-plugin-types")
    (synopsis "Types for the fusion-plugin package.")
    (description
     "GHC package that provides types that when used in a package can be identified by the <https://hackage.haskell.org/package/fusion-plugin fusion-plugin> package to perform any extra optimizations.")
    (license license:bsd-3)))

haskell-8.10-fusion-plugin-types

(define-public haskell-8.10-gd
  (package
    (name "haskell-8.10-gd")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xml) expat)
                             (@ (gnu packages fontutils)
                                fontconfig-with-documentation)
                             (@ (gnu packages fontutils) freetype)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages gd) gd)
                             (@ (gnu packages image) ijg-libjpeg)
                             (@ (gnu packages image) libpng)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/gd")
    (synopsis "A Haskell binding to a subset of the GD graphics library")
    (description "This is a binding to a (currently very small) subset of
the GD graphics library.")
    (license license:bsd-3)))

haskell-8.10-gd

(define-public haskell-8.10-generic-monoid
  (package
    (name "haskell-8.10-generic-monoid")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/generic-monoid")
    (synopsis "Derive monoid instances for product types.")
    (description
     "Using GHC's generics, allow for deriving `Monoid` and `Semigroup` instances for your product types.")
    (license license:bsd-3)))

haskell-8.10-generic-monoid

(define-public haskell-8.10-generics-eot
  (package
    (name "haskell-8.10-generics-eot")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-eot/generics-eot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6zhs6l1xcig66757664f1bchzlm4f1ijvg5dsnacq05jbdxrlv"))))
    (properties `((upstream-name . "generics-eot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://generics-eot.readthedocs.io/")
    (synopsis
     "A library for generic programming that aims to be easy to understand")
    (description
     "Documentation is here: <https://generics-eot.readthedocs.io/>")
    (license license:bsd-3)))

haskell-8.10-generics-eot

(define-public haskell-8.10-geniplate-mirror
  (package
    (name "haskell-8.10-geniplate-mirror")
    (version "0.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/geniplate-mirror/geniplate-mirror-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kw4q7l556sfd82r2p0z3cv4sg8kcr45wb4s2sy996bs3ymn8fjb"))))
    (properties `((upstream-name . "geniplate-mirror") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/danr/geniplate")
    (synopsis "Use Template Haskell to generate Uniplate-like functions.")
    (description
     "Use Template Haskell to generate Uniplate-like functions.

This is a maintained mirror of the
<http://hackage.haskell.org/package/geniplate geniplate> package,
written by Lennart Augustsson.")
    (license license:bsd-3)))

haskell-8.10-geniplate-mirror

(define-public haskell-8.10-ghc-byteorder
  (package
    (name "haskell-8.10-ghc-byteorder")
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
       ("4" "0jc4d4is49d6ddxpdkyqkpr464y80ydsb57shqndp08assplj93b")))
    (outputs (list "out" "doc"))
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

haskell-8.10-ghc-byteorder

(define-public haskell-8.10-ghc-paths
  (package
    (name "haskell-8.10-ghc-paths")
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
       ("5" "12y71qx0yjxxjjzvkpx12ld0fkmpkli8qxpfxp3xfnz8w0gxbv9c")))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/ghc-paths")
    (synopsis "Knowledge of GHC's installation directories")
    (description "Knowledge of GHC's installation directories")
    (license license:bsd-3)))

haskell-8.10-ghc-paths

(define-public haskell-8.10-ghc-source-gen
  (package
    (name "haskell-8.10-ghc-source-gen")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-source-gen/ghc-source-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhqsklibgiv51hs8mnrkn784rc5sxf5z8cfv8hf9jqlny50720f"))))
    (properties `((upstream-name . "ghc-source-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/google/ghc-source-gen#readme")
    (synopsis "Constructs Haskell syntax trees for the GHC API.")
    (description
     "@@ghc-source-gen@@ is a library for generating Haskell source code.
It uses the <https://hackage.haskell.org/package/ghc ghc> library
to support recent language extensions, and provides a simple, consistent
interface across several major versions of GHC.

To get started, take a look at the \"GHC.SourceGen\" module.

For more information, please see the <https://github.com/google/ghc-source-gen README>.")
    (license license:bsd-3)))

haskell-8.10-ghc-source-gen

(define-public haskell-8.10-ghc-tcplugins-extra
  (package
    (name "haskell-8.10-ghc-tcplugins-extra")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-tcplugins-extra/ghc-tcplugins-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gddqcczb8ixmrlfbfb06dc470jsjhvsxx3q2nsd4mcx2x6jdk08"))))
    (properties `((upstream-name . "ghc-tcplugins-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/clash-lang/ghc-tcplugins-extra")
    (synopsis "Utilities for writing GHC type-checker plugins")
    (description "Utilities for writing GHC type-checker plugins, such as
creating constraints, with a stable API covering multiple
GHC releases.")
    (license license:bsd-2)))

haskell-8.10-ghc-tcplugins-extra

(define-public haskell-8.10-ghc-trace-events
  (package
    (name "haskell-8.10-ghc-trace-events")
    (version "0.1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-trace-events/ghc-trace-events-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1whhadv077c0kgz4c3jwrynjkamgkc4rinf0pd18m3d3bdk27w0k"))))
    (properties `((upstream-name . "ghc-trace-events") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/maoe/ghc-trace-events")
    (synopsis
     "Faster traceEvent and traceMarker, and binary object logging for
eventlog")
    (description
     "ghc-trace-events provides faster traceEvent and traceMarker as well
as arbitrary binary object logging for the eventlog framework. Unlike the
<http://hackage.haskell.org/package/base/docs/Debug-Trace.html#g:2 eventlog tracing functions in base>,
all the tracing functions in this library don't evaluate the input if user
event logging (the
<https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/runtime_control.html#rts-flag--l%20⟨flags⟩ -lu>
flag) is disabled, which can give a significant boost in performance. Take a
look at the benchmark suite for the details.

This library provies the following modules:

[\"Debug.Trace.String\"] Drop-in replacements for the event tracing functions in
\"Debug.Trace\".
[\"Debug.Trace.ByteString\"] UTF-8 encoded 'ByteString' variant
of the event tracing functions in \"Debug.Trace\". It's faster than the 'String'
variant.
[\"Debug.Trace.Text\"] 'Text' variant of the event tracing functions
in \"Debug.Trace\". It's faster than the 'String' variant.
[\"Debug.Trace.Binary\"] Arbitary binary object logging available for GHC 8.8 or
later. Unlike the other tracing functions 'Debug.Trace.Binary.traceBinaryEvent'
takes an arbitrary 'ByteString' object as opposed to a UTF-8
encoded string.")
    (license license:bsd-3)))

haskell-8.10-ghc-trace-events

(define-public haskell-8.10-ghci-hexcalc
  (package
    (name "haskell-8.10-ghci-hexcalc")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/takenobu-hs/ghci-hexcalc")
    (synopsis "GHCi as a Hex Calculator interactive")
    (description
     "This package defines operations for an interactive hex-caluclator using GHCi.
This is a simple and casual interactive tool like Perl and Excel
for daily work.")
    (license license:bsd-3)))

haskell-8.10-ghci-hexcalc

(define-public haskell-8.10-ghcjs-codemirror
  (package
    (name "haskell-8.10-ghcjs-codemirror")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ghcjs/CodeMirror")
    (synopsis "Installs CodeMirror JavaScript files")
    (description "CodeMirror is a versatile text editor implemented in
JavaScript for the browser. It is specialized for
editing code, and comes with a number of language modes
and addons that implement more advanced editing
functionaly.")
    (license license:expat)))

haskell-8.10-ghcjs-codemirror

(define-public haskell-8.10-groups
  (package
    (name "haskell-8.10-groups")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groups/groups-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f5c8dg9b74glfw2sdvdcl9c8igs6knz1bayk4gvvzvypsl547nf"))))
    (properties `((upstream-name . "groups") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/groups")
    (synopsis "Groups")
    (description "A group is a monoid with invertibility.")
    (license license:bsd-3)))

haskell-8.10-groups

(define-public haskell-8.10-guarded-allocation
  (package
    (name "haskell-8.10-guarded-allocation")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-guarded-allocation

(define-public haskell-8.10-haddock-library
  (package
    (name "haskell-8.10-haddock-library")
    (version "1.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haddock-library/haddock-library-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15ak06q8yp11xz1hwr0sg2jqi3r78p1n89ik05hicqvxl3awf1pq"))))
    (properties `((upstream-name . "haddock-library") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1fnfcr3gvdjrya0czr3k2sqv4xmmvyv66yni2mckfppra93mcglg")))
    (outputs (list "out" "doc"))
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

haskell-8.10-haddock-library

(define-public haskell-8.10-happy
  (package
    (name "haskell-8.10-happy")
    (version "1.20.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/happy/happy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1346r2x5ravs5fqma65bzjragqbb2g6v41wz9maknwm2jf7kl79v"))))
    (properties `((upstream-name . "happy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16dy1cv942rizxp8slnnbwi5l24ggsmy38madbin9scz38idqisx")))
    (outputs (list "out" "doc"))
    (home-page "https://www.haskell.org/happy/")
    (synopsis "Happy is a parser generator for Haskell")
    (description
     "Happy is a parser generator for Haskell.  Given a grammar
specification in BNF, Happy generates Haskell code to parse the
grammar.  Happy works in a similar way to the @@yacc@@ tool for C.")
    (license license:bsd-2)))

haskell-8.10-happy

(define-public haskell-8.10-hashable
  (package
    (name "haskell-8.10-hashable")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/tibbe/hashable")
    (synopsis "A class for types that can be converted to a hash value")
    (description "This package defines a class, 'Hashable', for types that
can be converted to a hash value.  This class
exists for the benefit of hashing-based data
structures.  The package provides instances for
basic types and a way to combine hash values.")
    (license license:bsd-3)))

haskell-8.10-hashable

(define-public haskell-8.10-haskell-gi-overloading
  (package
    (name "haskell-8.10-haskell-gi-overloading")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Overloading support for haskell-gi")
    (description
     "Control overloading support in haskell-gi generated bindings")
    (license license:bsd-3)))

haskell-8.10-haskell-gi-overloading

(define-public haskell-8.10-haskell-lexer
  (package
    (name "haskell-8.10-haskell-lexer")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/yav/haskell-lexer")
    (synopsis "A fully compliant Haskell 98 lexer.")
    (description "A fully compliant Haskell 98 lexer.")
    (license license:bsd-3)))

haskell-8.10-haskell-lexer

(define-public haskell-8.10-heap
  (package
    (name "haskell-8.10-heap")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/heap")
    (synopsis "Heaps in Haskell")
    (description "A flexible Haskell implementation of minimum, maximum,
minimum-priority, maximum-priority and custom-ordered
heaps.")
    (license license:bsd-3)))

haskell-8.10-heap

(define-public haskell-8.10-heaps
  (package
    (name "haskell-8.10-heaps")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/heaps/heaps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zbw0qrlnhb42v04phzwmizbpwg21wnpl7p4fbr9xsasp7w9scl9"))))
    (properties `((upstream-name . "heaps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/heaps/")
    (synopsis "Asymptotically optimal Brodal/Okasaki heaps.")
    (description
     "Asymptotically optimal Brodal\\/Okasaki bootstrapped skew-binomial heaps from the paper <http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.48.973 \"Optimal Purely Functional Priority Queues\">, extended with a 'Foldable' interface.")
    (license license:bsd-3)))

haskell-8.10-heaps

(define-public haskell-8.10-hedgehog-corpus
  (package
    (name "haskell-8.10-hedgehog-corpus")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/tmcgilchrist/hedgehog-corpus")
    (synopsis "hedgehog-corpus")
    (description "Collection of strings for testing things.")
    (license license:bsd-3)))

haskell-8.10-hedgehog-corpus

(define-public haskell-8.10-heredoc
  (package
    (name "haskell-8.10-heredoc")
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
    (outputs (list "out" "doc"))
    (home-page "http://hackage.haskell.org/package/heredoc")
    (synopsis "multi-line string / here document using QuasiQuotes")
    (description "multi-line string / here document using QuasiQuotes")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-heredoc

(define-public haskell-8.10-hlibcpuid
  (package
    (name "haskell-8.10-hlibcpuid")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/dtaskoff/hlibcpuid#readme")
    (synopsis "Bindings to https://github.com/anrieff/libcpuid")
    (description
     "Please see the README on GitHub at <https://github.com/dtaskoff/hlibcpuid#readme>")
    (license license:expat)))

haskell-8.10-hlibcpuid

(define-public haskell-8.10-hmpfr
  (package
    (name "haskell-8.10-hmpfr")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-hmpfr

(define-public haskell-8.10-hnock
  (package
    (name "haskell-8.10-hnock")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-hnock

(define-public haskell-8.10-hostname
  (package
    (name "haskell-8.10-hostname")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/hostname")
    (synopsis
     "A very simple package providing a cross-platform means of determining the hostname")
    (description "")
    (license license:bsd-3)))

haskell-8.10-hostname

(define-public haskell-8.10-hpc-codecov
  (package
    (name "haskell-8.10-hpc-codecov")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpc-codecov/hpc-codecov-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0999qfm9866gwqk4sx6av21rwbbirvdj5lr4ffl25zimwvirsbd2"))))
    (properties `((upstream-name . "hpc-codecov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/8c6794b6/hpc-codecov#readme")
    (synopsis "Generate codecov report from hpc data")
    (description
     "The hpc-codecov package contains an executable and library codes for
generating <https://codecov.io Codeocv> JSON coverage report from
@@.tix@@ and @@.mix@@ files made with
<https://hackage.haskell.org/package/hpc hpc>.  See the
<https://github.com/8c6794b6/hpc-codecov#readme README> for
more info.")
    (license license:bsd-3)))

haskell-8.10-hpc-codecov

(define-public haskell-8.10-hs-php-session
  (package
    (name "haskell-8.10-hs-php-session")
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
    (outputs (list "out" "doc"))
    (home-page "https://codeberg.org/elblake/hs-php-session")
    (synopsis "PHP session and values serialization")
    (description
     "A library for encoding and decoding serialized PHP sessions in the format
used by the \\\"php\\\" setting for session.serialize_handler as well as
encoding and decoding serialized values.")
    (license license:bsd-3)))

haskell-8.10-hs-php-session

(define-public haskell-8.10-hscolour
  (package
    (name "haskell-8.10-hscolour")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-hscolour

(define-public haskell-8.10-hsp
  (package
    (name "haskell-8.10-hsp")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-hsp

(define-public haskell-8.10-html
  (package
    (name "haskell-8.10-html")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/html")
    (synopsis "HTML combinator library")
    (description "This package contains a combinator library for constructing
HTML documents.")
    (license license:bsd-3)))

haskell-8.10-html

(define-public haskell-8.10-hw-int
  (package
    (name "haskell-8.10-hw-int")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/haskell-works/hw-int#readme")
    (synopsis "Additional facilities for Integers")
    (description "Additional faciltiies for Integers. Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-int

(define-public haskell-8.10-hxt-charproperties
  (package
    (name "haskell-8.10-hxt-charproperties")
    (version "9.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-charproperties/hxt-charproperties-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jm98jddbsd60jc2bz8wa71rslagbaqf00ia7fvfsaiaa54nk0r8"))))
    (properties `((upstream-name . "hxt-charproperties") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-profile")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Character properties and classes for XML and Unicode")
    (description "Character properties defined by XML and Unicode standards.
These modules contain predicates for Unicode blocks,
char properties
and character predicates defined by XML.
Supported Unicode version is 13.0.0
9.4.0.0: Supported Unicode version 12.1.0
9.3.0.2: Supported Unicode version 9.0.0")
    (license license:expat)))

haskell-8.10-hxt-charproperties

(define-public haskell-8.10-iconv
  (package
    (name "haskell-8.10-iconv")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/iconv")
    (synopsis "String encoding conversion")
    (description "Provides an interface to the POSIX iconv library functions
for string encoding conversion.")
    (license license:bsd-3)))

haskell-8.10-iconv

(define-public haskell-8.10-ieee754
  (package
    (name "haskell-8.10-ieee754")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/patperry/hs-ieee754")
    (synopsis "Utilities for dealing with IEEE floating point numbers")
    (description
     "Utilities for dealing with IEEE floating point numbers, ported
from the Tango math library; approximate and exact equality
comparisons for general types.")
    (license license:bsd-3)))

haskell-8.10-ieee754

(define-public haskell-8.10-if
  (package
    (name "haskell-8.10-if")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/winterland1989/if")
    (synopsis "(?) and (?>) conditional operator")
    (description
     "(?) and (?>) conditional operator, it can be used with any existed version of base.")
    (license license:bsd-3)))

haskell-8.10-if

(define-public haskell-8.10-iff
  (package
    (name "haskell-8.10-iff")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-iff

(define-public haskell-8.10-ihs
  (package
    (name "haskell-8.10-ihs")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/minad/ihs")
    (synopsis "Interpolated Haskell")
    (description
     "This abomination allows you to quickly generate text files in a style similar to ERB from Ruby or PHP. But you stay typesafe!")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-ihs

(define-public haskell-8.10-indents
  (package
    (name "haskell-8.10-indents")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/jaspervdj/indents")
    (synopsis "indentation sensitive parser-combinators for parsec")
    (description
     "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.")
    (license license:bsd-3)))

haskell-8.10-indents

(define-public haskell-8.10-indexed
  (package
    (name "haskell-8.10-indexed")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/reinerp/indexed")
    (synopsis "Haskell98 indexed functors, monads, comonads")
    (description "Haskell98 indexed functors, monads, comonads")
    (license license:bsd-3)))

haskell-8.10-indexed

(define-public haskell-8.10-indexed-profunctors
  (package
    (name "haskell-8.10-indexed-profunctors")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-profunctors/indexed-profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cbccbvrx73drr1jf3yyw0rp1mcfv3jc1rvdcby5xxx4ja543fjs"))))
    (properties `((upstream-name . "indexed-profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/indexed-profunctors")
    (synopsis "Utilities for indexed profunctors")
    (description
     "This package contains basic definitions related to indexed profunctors.  These
are primarily intended as internal utilities to support the @@optics@@ and
@@generic-lens@@ package families.")
    (license license:bsd-3)))

haskell-8.10-indexed-profunctors

(define-public haskell-8.10-indexed-traversable
  (package
    (name "haskell-8.10-indexed-traversable")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-traversable/indexed-traversable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13b91rkhs6wcshaz3dwx6x3xjpw5z5bm2riwp78zxccqf7p5hs2i"))))
    (properties `((upstream-name . "indexed-traversable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0l2k9jrmixkkf7qzzq0bqgvk6axaqi9sxxkpb4dgj8frmc4bg8aj")))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/indexed-traversable")
    (synopsis "FunctorWithIndex, FoldableWithIndex, TraversableWithIndex")
    (description
     "This package provides three useful generalizations:

@@
class Functor f => FunctorWithIndex i f | f -> i where
\\  imap :: (i -> a -> b) -> f a -> f b
@@

@@
class Foldable f => FoldableWithIndex i f | f -> i where
\\  ifoldMap :: Monoid m => (i -> a -> m) -> f a -> m
@@

@@
class (FunctorWithIndex i t, FoldableWithIndex i t, Traversable t) => TraversableWithIndex i t | t -> i where
\\  itraverse :: Applicative f => (i -> a -> f b) -> t a -> f (t b)
@@

This package contains instances for types in GHC boot libraries.
For some additional instances see [indexed-traversable-instances](https://hackage.haskell.org/package/indexed-traversable-instances).

The [keys](https://hackage.haskell.org/package/keys) package provides similar functionality,
but uses (associated) @@TypeFamilies@@ instead of @@FunctionalDependencies@@.")
    (license license:bsd-2)))

haskell-8.10-indexed-traversable

(define-public haskell-8.10-inj
  (package
    (name "haskell-8.10-inj")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/inj")
    (synopsis "A class for injective (one-to-one) functions")
    (description "")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-inj

(define-public haskell-8.10-inspection-testing
  (package
    (name "haskell-8.10-inspection-testing")
    (version "0.4.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inspection-testing/inspection-testing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qz1npyycj4bvyly9xmjbnhw569l52h38gx02rk0r7zhapw83aig"))))
    (properties `((upstream-name . "inspection-testing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-more-tests" "-f-old-text-tests")))
    (outputs (list "out" "doc"))
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

haskell-8.10-inspection-testing

(define-public haskell-8.10-instance-control
  (package
    (name "haskell-8.10-instance-control")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-instance-control

(define-public haskell-8.10-int-cast
  (package
    (name "haskell-8.10-int-cast")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/hvr/int-cast")
    (synopsis "Checked conversions between integral types")
    (description
     "Provides statically or dynamically checked conversions between integral types. See documentation in \"Data.IntCast\" for more details.")
    (license license:bsd-3)))

haskell-8.10-int-cast

(define-public haskell-8.10-integer-logarithms
  (package
    (name "haskell-8.10-integer-logarithms")
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
       ("4" "1jml3fygxcbh9f6nl006mc2gmixlwkzpnnsfxgdmk6pi786b8vrk")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskellari/integer-logarithms")
    (synopsis "Integer logarithms.")
    (description
     "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"
from the arithmoi package.

Also provides \"GHC.Integer.Logarithms.Compat\" and
\"Math.NumberTheory.Power.Natural\" modules, as well as some
additional functions in migrated modules.")
    (license license:expat)))

haskell-8.10-integer-logarithms

(define-public haskell-8.10-integer-roots
  (package
    (name "haskell-8.10-integer-roots")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integer-roots/integer-roots-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15sn3jgm8axm8f9z02aj3xdf318qwwc5qfc8b4r0n7hfr1jgrqs5"))))
    (properties `((upstream-name . "integer-roots") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/Bodigrim/integer-roots")
    (synopsis "Integer roots and perfect powers")
    (description
     "Calculating integer roots and testing perfect powers of arbitrary precision. Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-8.10-integer-roots

(define-public haskell-8.10-io-machine
  (package
    (name "haskell-8.10-io-machine")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/YoshikuniJujo/io-machine#readme")
    (synopsis "Easy I/O model to learn IO monad")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-io-machine

(define-public haskell-8.10-io-manager
  (package
    (name "haskell-8.10-io-manager")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/io-manager")
    (synopsis "Skeleton library around the IO monad.")
    (description "A skeleton library to help learners of Haskell
concentrate on the pure-functional aspect and
let the IO be handled by the library.")
    (license license:bsd-3)))

haskell-8.10-io-manager

(define-public haskell-8.10-io-storage
  (package
    (name "haskell-8.10-io-storage")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/willdonnelly/io-storage")
    (synopsis "A key-value store in the IO monad.")
    (description
     "This library allows an application to extend the 'global state'
hidden inside the IO monad with semi-arbitrary data. Data is
required to be 'Typeable'. The library provides an essentially
unbounded number of key-value stores indexed by strings, with
each key within the stores also being a string.")
    (license license:bsd-3)))

haskell-8.10-io-storage

(define-public haskell-8.10-irc-ctcp
  (package
    (name "haskell-8.10-irc-ctcp")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-ctcp/irc-ctcp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ckdbxnjv96bpyhcpdi0vj6pjjq8wm4zyh75fps57wi1j61c4v2n"))))
    (properties `((upstream-name . "irc-ctcp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-irc-ctcp

(define-public haskell-8.10-iso3166-country-codes
  (package
    (name "haskell-8.10-iso3166-country-codes")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/iso3166-country-codes")
    (synopsis "A datatype for ISO 3166 country codes")
    (description "Defines datatype CountryCode that has a two
letter constructor corresponding to each of the two letter
ISO 3166 country codes, and mappings from that type to the
official name of the country.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-iso3166-country-codes

(define-public haskell-8.10-iso639
  (package
    (name "haskell-8.10-iso639")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/HugoDaniel/iso639")
    (synopsis "ISO-639-1 language codes ")
    (description
     "
ISO-639-1 language codes mapping to Haskell datatypes

The code is generated from the <http://www.loc.gov/standards/iso639-2/php/English_list.php official site> using haskell-src-exts in an extra file included in the .tar.gz.

Special thanks to Petter Bergman for the suggestions and bug fixing
")
    (license license:bsd-3)))

haskell-8.10-iso639

(define-public haskell-8.10-ix-shapable
  (package
    (name "haskell-8.10-ix-shapable")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-ix-shapable

(define-public haskell-8.10-jailbreak-cabal
  (package
    (name "haskell-8.10-jailbreak-cabal")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/peti/jailbreak-cabal")
    (synopsis "Strip version restrictions from Cabal files")
    (description
     "Strip version restrictions from build dependencies in Cabal files.")
    (license license:bsd-3)))

haskell-8.10-jailbreak-cabal

(define-public haskell-8.10-js-chart
  (package
    (name "haskell-8.10-js-chart")
    (version "2.9.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/js-chart/js-chart-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03mxr6xr9z20m2hy7hvl9cq3a67k0n9zaqwi7wlqy6xx6pfyy20a"))))
    (properties `((upstream-name . "js-chart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/jonascarpay/js-chart#readme")
    (synopsis "Obtain minified chart.js code")
    (description
     "This package bundles the minified <http://www.chartjs.org/ chart.js> code into a Haskell package, so it can be depended upon by Cabal packages.
The first three components of the version number match the upstream chart.js version.
The package is designed to meet the redistribution requirements of downstream users (e.g. Debian).
This package is a fork of <https://hackage.haskell.org/package/js-flot js-flot> using chart.js instead of flot.")
    (license license:expat)))

haskell-8.10-js-chart

(define-public haskell-8.10-js-dgtable
  (package
    (name "haskell-8.10-js-dgtable")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ndmitchell/js-dgtable#readme")
    (synopsis "Obtain minified jquery.dgtable code")
    (description
     "This package bundles the minified <https://github.com/danielgindi/jquery.dgtable jquery.dgtable> code into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream jquery.dgtable version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).")
    (license license:expat)))

haskell-8.10-js-dgtable

(define-public haskell-8.10-js-flot
  (package
    (name "haskell-8.10-js-flot")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ndmitchell/js-flot#readme")
    (synopsis "Obtain minified flot code")
    (description
     "This package bundles the minified <http://www.flotcharts.org/ Flot> code
(a jQuery plotting library) into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream flot version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).")
    (license license:expat)))

haskell-8.10-js-flot

(define-public haskell-8.10-js-jquery
  (package
    (name "haskell-8.10-js-jquery")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ndmitchell/js-jquery#readme")
    (synopsis "Obtain minified jQuery code")
    (description
     "This package bundles the minified <http://jquery.com/ jQuery> code into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream jQuery version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).")
    (license license:expat)))

haskell-8.10-js-jquery

(define-public haskell-8.10-keep-alive
  (package
    (name "haskell-8.10-keep-alive")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/keep-alive/keep-alive-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hkmm1933y6dlzr88p75kkl6qiw5jnb1f4klfbwbl2d3jx8fg92k"))))
    (properties `((upstream-name . "keep-alive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/3kyro/keep-alive#readme")
    (synopsis "TCP keep alive implementation")
    (description
     "This module allows you to set per-connection keep alive parameters on windows and linux enviroments.
For more information on keep alive signals see <https://en.wikipedia.org/wiki/Keepalive>.
See also <https://tldp.org/HOWTO/html_single/TCP-Keepalive-HOWTO/> for a linux specific implementation.")
    (license license:bsd-3)))

haskell-8.10-keep-alive

(define-public haskell-8.10-keycode
  (package
    (name "haskell-8.10-keycode")
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
       ("9" "17k52bhfyx2vpj6wpsmfjw9gbxwhc1zi1jq005lfa7hgc4ly5iw2")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/RyanGlScott/keycode")
    (synopsis "Maps web browser keycodes to their corresponding keyboard keys")
    (description
     "Keyboard events in web browsers are often represented as keycodes,
which (1) are difficult to remember, and (2) sometimes vary from
browser to browser. \"Web.KeyCode\" allows one to look up a key
press's keycode and get a plain English description of the key
that was pressed, to reduce confusion.")
    (license license:bsd-3)))

haskell-8.10-keycode

(define-public haskell-8.10-kind-apply
  (package
    (name "haskell-8.10-kind-apply")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-apply/kind-apply-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0si02ps0aivra87sc57fss088vimvs9j32r7xhbaqv8vh0wi0ng9"))))
    (properties `((upstream-name . "kind-apply") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/kind-apply")
    (synopsis "Utilities to work with lists of types")
    (description
     "This packages reifies the concept of list of types, and application of those to list constructors.")
    (license license:bsd-3)))

haskell-8.10-kind-apply

(define-public haskell-8.10-kmeans
  (package
    (name "haskell-8.10-kmeans")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/kmeans")
    (synopsis "K-means clustering algorithm")
    (description "A simple library for k-means clustering")
    (license license:bsd-3)))

haskell-8.10-kmeans

(define-public haskell-8.10-l10n
  (package
    (name "haskell-8.10-l10n")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/louispan/l10n#readme")
    (synopsis
     "Enables providing localization as typeclass instances in separate files.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-l10n

(define-public haskell-8.10-labels
  (package
    (name "haskell-8.10-labels")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/chrisdone/labels#readme")
    (synopsis "Anonymous records via named tuples")
    (description
     "Declare and access tuple fields with labels. An approach to anonymous records.")
    (license license:bsd-3)))

haskell-8.10-labels

(define-public haskell-8.10-largeword
  (package
    (name "haskell-8.10-largeword")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/idontgetoutmuch/largeword")
    (synopsis
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (description
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (license license:bsd-3)))

haskell-8.10-largeword

(define-public haskell-8.10-lawful
  (package
    (name "haskell-8.10-lawful")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/matt-noonan/lawful#readme")
    (synopsis "Assert the lawfulness of your typeclass instances.")
    (description "Assert the lawfulness of your typeclass instances.")
    (license license:bsd-3)))

haskell-8.10-lawful

(define-public haskell-8.10-lazy-csv
  (package
    (name "haskell-8.10-lazy-csv")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-lazy-csv

(define-public haskell-8.10-lazysmallcheck
  (package
    (name "haskell-8.10-lazysmallcheck")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lazysmallcheck/lazysmallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lqggm75m1qd34lzqj3ibvnjwhjqvq16cab8zxm4yzn7j2sxzm4x"))))
    (properties `((upstream-name . "lazysmallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://www.cs.york.ac.uk/~mfn/lazysmallcheck/")
    (synopsis "A library for demand-driven testing of Haskell programs")
    (description
     "Lazy SmallCheck is a library for exhaustive, demand-driven testing of
Haskell programs.  It is based on the idea that if a property holds
for a partially-defined input then it must also hold for all
fully-defined refinements of the that input.  Compared to ``eager''
input generation as in SmallCheck, Lazy SmallCheck may require
significantly fewer test-cases to verify a property for all inputs up
to a given depth.")
    (license license:bsd-3)))

haskell-8.10-lazysmallcheck

(define-public haskell-8.10-lca
  (package
    (name "haskell-8.10-lca")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lca/lca-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0miji532qc725vprhnc5p3k4i6515i1fn1g0f7hm0gmq0hvvh51f"))))
    (properties `((upstream-name . "lca") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/lca/")
    (synopsis
     "O(log n) persistent online lowest common ancestor search without preprocessing")
    (description
     "This package provides a reference implementation of my skew binary random access algorithm for performing an /online/ lowest common ancestor search (and online level ancestor search) in logarithmic time without preprocessing. This improves the previous known asymptotic bound for both of these problems from /O(h)/ to /O(log h)/, where /h/ is the height of the tree. Mostly importantly this bound is completely independent of the width or overall size of the tree, enabling you to calculate lowest common ancestors in a distributed fashion with good locality.

While /offline/ algorithms exist for both of these algorithms that that provide /O(1)/ query time, they all require at least /O(n)/ preprocessing, where /n/ is the size of the entire tree, and so are less suitable for LCA search in areas such as revision control where the tree is constantly updated, or distributed computing where the tree may be too large to fit in any one computer's memory.

Slides are available from

<http://www.slideshare.net/ekmett/skewbinary-online-lowest-common-ancestor-search>")
    (license license:bsd-3)))

haskell-8.10-lca

(define-public haskell-8.10-leancheck
  (package
    (name "haskell-8.10-leancheck")
    (version "0.9.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leancheck/leancheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d35w3y309fw3bkaj6fxyl67k4cp32mp003l44m3m2z2fvq08cdn"))))
    (properties `((upstream-name . "leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-leancheck

(define-public haskell-8.10-lens-family-core
  (package
    (name "haskell-8.10-lens-family-core")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-lens-family-core

(define-public haskell-8.10-libffi
  (package
    (name "haskell-8.10-libffi")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages libffi) libffi)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages libffi) libffi)))
    (home-page "https://hackage.haskell.org/package/libffi")
    (synopsis "A binding to libffi")
    (description
     "A binding to libffi, allowing C functions of types only known at runtime to be called from Haskell.")
    (license license:bsd-3)))

haskell-8.10-libffi

(define-public haskell-8.10-libgit
  (package
    (name "haskell-8.10-libgit")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/vincenthz/hs-libgit")
    (synopsis "Simple Git Wrapper")
    (description
     "Simple git wrapper to access common git functions in a simple haskell way.")
    (license license:bsd-3)))

haskell-8.10-libgit

(define-public haskell-8.10-lift-type
  (package
    (name "haskell-8.10-lift-type")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lift-type/lift-type-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1195iyf0s8zmibjmvd10bszyccp1a2g4wdysn7yk10d3j0q9xdxf"))))
    (properties `((upstream-name . "lift-type") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/parsonsmatt/lift-type#readme")
    (synopsis
     "Lift a type from a Typeable constraint to a Template Haskell type")
    (description
     "Lift your types from a Typeable constraint to a Template Haskell type")
    (license license:bsd-3)))

haskell-8.10-lift-type

(define-public haskell-8.10-linux-capabilities
  (package
    (name "haskell-8.10-linux-capabilities")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linux-capabilities/linux-capabilities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "033mnbxg9bzi3cc4js22gpi96g5yslv6sksxdsgab5k075gad85k"))))
    (properties `((upstream-name . "linux-capabilities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page
     "https://github.com/softwarefactory-project/linux-capabilities-haskell#readme")
    (synopsis "Linux capabilities Haskell data type")
    (description
     "linux-capabilities provides a data type and documentation for the Linux capabilities(7).
")
    (license license:asl2.0)))

haskell-8.10-linux-capabilities

(define-public haskell-8.10-list-singleton
  (package
    (name "haskell-8.10-list-singleton")
    (version "1.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/list-singleton/list-singleton-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vbhg04dral59b6f43xcykgi6war5mcflmczwcmqfhy7lgb86r3n"))))
    (properties `((upstream-name . "list-singleton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-list-singleton

(define-public haskell-8.10-loch-th
  (package
    (name "haskell-8.10-loch-th")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/liskin/loch-th")
    (synopsis
     "Support for precise error locations in source files (Template Haskell version)")
    (description "This module provides a Template Haskell based mechanism to
tag failures with the location of the failure call. The
location message includes the file name, line and column
numbers.")
    (license license:bsd-3)))

haskell-8.10-loch-th

(define-public haskell-8.10-logfloat
  (package
    (name "haskell-8.10-logfloat")
    (version "0.13.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logfloat/logfloat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kbx7p3lfbvqfcqpwfspm82x3z404sa85k586jwlkhyh7rxv1fh3"))))
    (properties `((upstream-name . "logfloat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuseffi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://wrengr.org")
    (synopsis "Log-domain floating point numbers")
    (description
     "This module presents a type for storing numbers in the log-domain.
The main reason for doing this is to prevent underflow when
multiplying many probabilities as is done in Hidden Markov
Models. It is also helpful for preventing overflow.")
    (license license:bsd-3)))

haskell-8.10-logfloat

(define-public haskell-8.10-lzma
  (package
    (name "haskell-8.10-lzma")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-lzma

(define-public haskell-8.10-magic
  (package
    (name "haskell-8.10-magic")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-magic

(define-public haskell-8.10-managed
  (package
    (name "haskell-8.10-managed")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/managed/managed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vx8aim8bcyyvxxnmi1xkbl3kwrvskjn99z3y8h458g7nsinsisd"))))
    (properties `((upstream-name . "managed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "017h9533j7rlxlsf65ynxpva59yr0qwrdmvhp7if141i98ld4664")))
    (outputs (list "out" "doc"))
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

haskell-8.10-managed

(define-public haskell-8.10-microlens
  (package
    (name "haskell-8.10-microlens")
    (version "0.4.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens/microlens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10q7gl9yavcln58sxdxzih7ff0ixxq5hpd87icvxw97yqf1p6hmm"))))
    (properties `((upstream-name . "microlens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-microlens

(define-public haskell-8.10-mime-types
  (package
    (name "haskell-8.10-mime-types")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Basic mime-type handling types and functions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/mime-types>.")
    (license license:expat)))

haskell-8.10-mime-types

(define-public haskell-8.10-minimal-configuration
  (package
    (name "haskell-8.10-minimal-configuration")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-minimal-configuration

(define-public haskell-8.10-minimorph
  (package
    (name "haskell-8.10-minimorph")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minimorph/minimorph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jq2yrvhknnbc4b44nk2k6ynivn6s2j43w8bq1vi8gix7k4sazf4"))))
    (properties `((upstream-name . "minimorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-minimorph

(define-public haskell-8.10-mintty
  (package
    (name "haskell-8.10-mintty")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mintty/mintty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07gy5w0zbx9q64kdr6rzkwdxrgxh2h188bkdvbbgxwk86m9q9i7x"))))
    (properties `((upstream-name . "mintty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-win32-2-13-1")))
    (outputs (list "out" "doc"))
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

haskell-8.10-mintty

(define-public haskell-8.10-missing-foreign
  (package
    (name "haskell-8.10-missing-foreign")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/missing-foreign")
    (synopsis "Convenience functions for FFI work")
    (description "Add several functions missing in the standard
Foreign modules:

* copy and move based on Storable

* calloc")
    (license license:bsd-3)))

haskell-8.10-missing-foreign

(define-public haskell-8.10-mmap
  (package
    (name "haskell-8.10-mmap")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/mmap")
    (synopsis "Memory mapped files for POSIX and Windows")
    (description "This library provides a wrapper to mmap(2) or MapViewOfFile,
allowing files or devices to be lazily loaded into memory as
strict or lazy ByteStrings, ForeignPtrs or plain Ptrs, using
the virtual memory subsystem to do on-demand loading.
Modifications are also supported.")
    (license license:bsd-3)))

haskell-8.10-mmap

(define-public haskell-8.10-monad-skeleton
  (package
    (name "haskell-8.10-monad-skeleton")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/fumieval/monad-skeleton")
    (synopsis "Monads of program skeleta")
    (description "Fast operational monad library")
    (license license:bsd-3)))

haskell-8.10-monad-skeleton

(define-public haskell-8.10-monad-st
  (package
    (name "haskell-8.10-monad-st")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/monad-st")
    (synopsis "Provides a MonadST class")
    (description "Provides a MonadST class")
    (license license:bsd-3)))

haskell-8.10-monad-st

(define-public haskell-8.10-monad-time
  (package
    (name "haskell-8.10-monad-time")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/scrive/monad-time")
    (synopsis "Type class for monads which carry
the notion of the current time.")
    (description "'MonadTime' type class for monads
which carry the notion of the current time.")
    (license license:bsd-3)))

haskell-8.10-monad-time

(define-public haskell-8.10-monadlist
  (package
    (name "haskell-8.10-monadlist")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monadlist/monadlist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zpxqp5zhcpk4358xqrapvkcfyazpdsdlrw3g14518y2kwnfifq6"))))
    (properties `((upstream-name . "monadlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/monadlist")
    (synopsis "Monadic versions of list functions")
    (description "Monadic versions of list functions seen in Data.List.")
    (license license:bsd-3)))

haskell-8.10-monadlist

(define-public haskell-8.10-monads-tf
  (package
    (name "haskell-8.10-monads-tf")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-monads-tf

(define-public haskell-8.10-mountpoints
  (package
    (name "haskell-8.10-mountpoints")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/mountpoints")
    (synopsis "list mount points")
    (description "Lists currently mounted filesystems.

Works on: Linux, BSD, Mac OS X, Android")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-mountpoints

(define-public haskell-8.10-mtl-compat
  (package
    (name "haskell-8.10-mtl-compat")
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

haskell-8.10-mtl-compat

(define-public haskell-8.10-mtl-prelude
  (package
    (name "haskell-8.10-mtl-prelude")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-mtl-prelude

(define-public haskell-8.10-multiarg
  (package
    (name "haskell-8.10-multiarg")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/massysett/multiarg")
    (synopsis "Command lines for options that take multiple arguments")
    (description "multiarg helps you build command-line parsers for
programs with options that take more than one argument.
See the documentation in the Multiarg module for details.")
    (license license:bsd-3)))

haskell-8.10-multiarg

(define-public haskell-8.10-multimap
  (package
    (name "haskell-8.10-multimap")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-multimap

(define-public haskell-8.10-multiset
  (package
    (name "haskell-8.10-multiset")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/multiset")
    (synopsis "The Data.MultiSet container type")
    (description
     "A variation of Data.Set.
Multisets, sometimes also called bags, can contain multiple copies of the same key.")
    (license license:bsd-3)))

haskell-8.10-multiset

(define-public haskell-8.10-murmur-hash
  (package
    (name "haskell-8.10-murmur-hash")
    (version "0.1.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/murmur-hash/murmur-hash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "145z91zkx8jdd3y181pi8z9imqjgpk99cl55pbda4fl201hasbz9"))))
    (properties `((upstream-name . "murmur-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/nominolo/murmur-hash")
    (synopsis "MurmurHash2 implementation for Haskell.")
    (description
     "Implements MurmurHash2, a good, fast, general-purpose,
non-cryptographic hashing function.  See
<http://murmurhash.googlepages.com/> for details.

This implementation is pure Haskell, so it might be a bit slower
than a C FFI binding.")
    (license license:bsd-3)))

haskell-8.10-murmur-hash

(define-public haskell-8.10-mysql
  (package
    (name "haskell-8.10-mysql")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mysql/mysql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "051w428arxbix06a52dacqjpnkfx42zbazxsd3l9d857dsd0kl3g"))))
    (properties `((upstream-name . "mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages databases) mysql)))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.10-mysql

(define-public haskell-8.10-names-th
  (package
    (name "haskell-8.10-names-th")
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
    (outputs (list "out" "doc"))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Manipulate name strings for TH")
    (description "This package includes functions to manipulate name string
and extra library functions for Template Haskell.")
    (license license:bsd-3)))

haskell-8.10-names-th

(define-public haskell-8.10-nano-erl
  (package
    (name "haskell-8.10-nano-erl")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/nano-erl")
    (synopsis "Small library for Erlang-style actor semantics")
    (description
     "A small, beginner-friendly library for Erlang-style actor semantics,
for coordinating concurrent processes and message passing

Processes are plain IO actions, so no monad transformers needed (no liftIO!)

For best performance, compile with:

> ghc -O2 -threaded -rtsopts -with-rtsopts=-N")
    (license license:expat)))

haskell-8.10-nano-erl

(define-public haskell-8.10-nanospec
  (package
    (name "haskell-8.10-nanospec")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/hspec/nanospec#readme")
    (synopsis "A lightweight implementation of a subset of Hspec's API")
    (description
     "A lightweight implementation of a subset of Hspec's API with minimal dependencies.")
    (license license:expat)))

haskell-8.10-nanospec

(define-public haskell-8.10-nats
  (package
    (name "haskell-8.10-nats")
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
    (home-page "http://github.com/ekmett/nats/")
    (synopsis "Natural numbers")
    (description "Natural numbers.")
    (license license:bsd-3)))

haskell-8.10-nats

(define-public haskell-8.10-natural-sort
  (package
    (name "haskell-8.10-natural-sort")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-natural-sort

(define-public haskell-8.10-network-info
  (package
    (name "haskell-8.10-network-info")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-info/network-info-"
                    version ".tar.gz"))
              (sha256
               (base32
                "015lm3b8n8sb16qsffjxz1jvijyy0z600ch0sm8h6a685wqqhbcv"))))
    (properties `((upstream-name . "network-info") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/jacobstanley/network-info")
    (synopsis "Access the local computer's basic network configuration")
    (description "This library provides simple read-only access to the
local computer's networking configuration. It is
currently capable of getting a list of all the network
interfaces and their respective IPv4, IPv6 and MAC
addresses.

network-info has been tested and is known to work on
Ubuntu, FreeBSD, NetBSD, Mac OS and Windows.")
    (license license:bsd-3)))

haskell-8.10-network-info

(define-public haskell-8.10-newtype
  (package
    (name "haskell-8.10-newtype")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/newtype")
    (synopsis "A typeclass and set of functions for working with newtypes.")
    (description
     "Per Conor McBride, the 'Newtype' typeclass represents the packing and unpacking of a @@newtype@@, and allows you to operate under that @@newtype@@ with functions such as 'ala'. See \"Control.Newtype\" for documentation and examples.")
    (license license:bsd-3)))

haskell-8.10-newtype

(define-public haskell-8.10-nicify-lib
  (package
    (name "haskell-8.10-nicify-lib")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/nicify-lib")
    (synopsis "Pretty print the standard output of default `Show` instances.")
    (description
     "Pretty print the standard output of `show` for algebraic datatypes")
    (license license:expat)))

haskell-8.10-nicify-lib

(define-public haskell-8.10-nix-paths
  (package
    (name "haskell-8.10-nix-paths")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/peti/nix-paths")
    (synopsis "Knowledge of Nix's installation directories.")
    (description "This module provides full paths to various Nix
utilities, like @@nix-store@@, @@nix-instantiate@@, and
@@nix-env@@.")
    (license license:bsd-3)))

haskell-8.10-nix-paths

(define-public haskell-8.10-no-value
  (package
    (name "haskell-8.10-no-value")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/cdornan/no-value#readme")
    (synopsis "A type class for choosing sentinel-like values")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/no-value#readme>")
    (license license:bsd-3)))

haskell-8.10-no-value

(define-public haskell-8.10-nowdoc
  (package
    (name "haskell-8.10-nowdoc")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/YoshikuniJujo/nowdoc#readme")
    (synopsis "Here document without variable expansion like PHP Nowdoc")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/nowdoc#readme>")
    (license license:bsd-3)))

haskell-8.10-nowdoc

(define-public haskell-8.10-numbers
  (package
    (name "haskell-8.10-numbers")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/jwiegley/numbers#readme")
    (synopsis "Various number types")
    (description "Instances of the numerical classes for a variety of
different numbers: (computable) real numbers,
arbitrary precision fixed numbers,
arbitrary precision floating point numbers,
differentiable numbers, symbolic numbers,
natural numbers, interval arithmetic.")
    (license license:bsd-3)))

haskell-8.10-numbers

(define-public haskell-8.10-numeric-extras
  (package
    (name "haskell-8.10-numeric-extras")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/numeric-extras")
    (synopsis "Useful tools from the C standard library")
    (description "Useful tools from the C standard library")
    (license license:bsd-3)))

haskell-8.10-numeric-extras

(define-public haskell-8.10-numeric-limits
  (package
    (name "haskell-8.10-numeric-limits")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-limits/numeric-limits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lsi0my45lpd30vjbwdbzhisz8r3lryvg1c80qcmwipnxklnr5cb"))))
    (properties `((upstream-name . "numeric-limits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/numeric-limits")
    (synopsis "Various floating point limit related constants.")
    (description "Various floating point limit related constants.")
    (license license:bsd-3)))

haskell-8.10-numeric-limits

(define-public haskell-8.10-numtype-dk
  (package
    (name "haskell-8.10-numtype-dk")
    (version "0.5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numtype-dk/numtype-dk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17mxqw82l3p0n18bjyyxbbnjvwqny4s3fkyj8vgj0ygw9ma534zl"))))
    (properties `((upstream-name . "numtype-dk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-numtype-dk

(define-public haskell-8.10-ofx
  (package
    (name "haskell-8.10-ofx")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-ofx

(define-public haskell-8.10-old-locale
  (package
    (name "haskell-8.10-old-locale")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/old-locale")
    (synopsis "locale library")
    (description "This package provides the ability to adapt to
locale conventions such as date and time formats.")
    (license license:bsd-3)))

haskell-8.10-old-locale

(define-public haskell-8.10-oo-prototypes
  (package
    (name "haskell-8.10-oo-prototypes")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/yi-editor/oo-prototypes")
    (synopsis "Support for OO-like prototypes")
    (description "Support for OO-like prototypes")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-oo-prototypes

(define-public haskell-8.10-open-browser
  (package
    (name "haskell-8.10-open-browser")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/rightfold/open-browser")
    (synopsis "Open a web browser from Haskell.")
    (description "Open a web browser from Haskell.
Currently BSD, Linux, OS X and Windows are supported.")
    (license license:bsd-3)))

haskell-8.10-open-browser

(define-public haskell-8.10-optional-args
  (package
    (name "haskell-8.10-optional-args")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/optional-args")
    (synopsis "Optional function arguments")
    (description
     "This library provides a type for specifying `Optional` function
arguments

Read the tutorial in \"Data.Optional\" to learn more")
    (license license:bsd-3)))

haskell-8.10-optional-args

(define-public haskell-8.10-ordered-containers
  (package
    (name "haskell-8.10-ordered-containers")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/ordered-containers")
    (synopsis
     "Set- and Map-like types that remember the order elements were inserted")
    (description "")
    (license license:bsd-3)))

haskell-8.10-ordered-containers

(define-public haskell-8.10-overhang
  (package
    (name "haskell-8.10-overhang")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/jship/overhang#readme")
    (synopsis "Hang loose with your lambdas!")
    (description "Combinators for clean, \"hanging\" lambdas.")
    (license license:expat)))

haskell-8.10-overhang

(define-public haskell-8.10-packcheck
  (package
    (name "haskell-8.10-packcheck")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-packcheck

(define-public haskell-8.10-parallel
  (package
    (name "haskell-8.10-parallel")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-parallel

(define-public haskell-8.10-parseargs
  (package
    (name "haskell-8.10-parseargs")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/BartMassey/parseargs")
    (synopsis "Parse command-line arguments")
    (description "Full-featured command-line argument parsing library.")
    (license license:bsd-3)))

haskell-8.10-parseargs

(define-public haskell-8.10-parsec-class
  (package
    (name "haskell-8.10-parsec-class")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/peti/parsec-class")
    (synopsis
     "Class of types that can be constructed from their text representation")
    (description
     "This library provides the type class 'HasParser' as a dual to 'Pretty'.
Instances of this class provide a parser than can be used to construct the
type from its text representation.")
    (license license:expat)))

haskell-8.10-parsec-class

(define-public haskell-8.10-parsec-numbers
  (package
    (name "haskell-8.10-parsec-numbers")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/parsec-numbers")
    (synopsis "Utilities for parsing numbers from strings")
    (description
     "parsec-numbers provides the number parsers without the need to
use a large (and unportable) token parser")
    (license license:bsd-3)))

haskell-8.10-parsec-numbers

(define-public haskell-8.10-parser-combinators
  (package
    (name "haskell-8.10-parser-combinators")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis
     "Lightweight package providing commonly useful parser combinators")
    (description
     "Lightweight package providing commonly useful parser combinators.")
    (license license:bsd-3)))

haskell-8.10-parser-combinators

(define-public haskell-8.10-partial-handler
  (package
    (name "haskell-8.10-partial-handler")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-partial-handler

(define-public haskell-8.10-partial-isomorphisms
  (package
    (name "haskell-8.10-partial-isomorphisms")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-partial-isomorphisms

(define-public haskell-8.10-pathwalk
  (package
    (name "haskell-8.10-pathwalk")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-pathwalk

(define-public haskell-8.10-pattern-arrows
  (package
    (name "haskell-8.10-pattern-arrows")
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
    (outputs (list "out" "doc"))
    (home-page
     "http://blog.functorial.com/posts/2013-10-27-Pretty-Printing-Arrows.html")
    (synopsis "Arrows for Pretty Printing")
    (description
     "A library for generating concise pretty printers based on precedence rules.")
    (license license:expat)))

haskell-8.10-pattern-arrows

(define-public haskell-8.10-peano
  (package
    (name "haskell-8.10-peano")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/peano")
    (synopsis "Peano numbers")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-peano

(define-public haskell-8.10-persistent-template
  (package
    (name "haskell-8.10-persistent-template")
    (version "2.12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-template/persistent-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c9cs27j43azimj74s2m2cdks87682ibpy1xbyzvygipgmb8nj6w"))))
    (properties `((upstream-name . "persistent-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, non-relational, multi-backend persistence.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent-template>.")
    (license license:expat)))

haskell-8.10-persistent-template

(define-public haskell-8.10-phantom-state
  (package
    (name "haskell-8.10-phantom-state")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-phantom-state

(define-public haskell-8.10-pid1
  (package
    (name "haskell-8.10-pid1")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pid1/pid1-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m2i03ncgn1y6h2352pnvhcqzif45505vlnxh11xngvjx47f85a1"))))
    (properties `((upstream-name . "pid1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/fpco/pid1#readme")
    (synopsis
     "Do signal handling and orphan reaping for Unix PID1 init processes")
    (description
     "Please see README.md or view Haddocks at <https://www.stackage.org/package/pid1>")
    (license license:expat)))

haskell-8.10-pid1

(define-public haskell-8.10-placeholders
  (package
    (name "haskell-8.10-placeholders")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-placeholders

(define-public haskell-8.10-pointedlist
  (package
    (name "haskell-8.10-pointedlist")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-pointedlist

(define-public haskell-8.10-pointless-fun
  (package
    (name "haskell-8.10-pointless-fun")
    (version "1.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pointless-fun/pointless-fun-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s8chhic15ywbd6k6rv9nkh3nb4sibgslnndd954rprz2nj7zn2h"))))
    (properties `((upstream-name . "pointless-fun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Some common point-free combinators.")
    (description "Some common point-free combinators.")
    (license license:bsd-3)))

haskell-8.10-pointless-fun

(define-public haskell-8.10-polyparse
  (package
    (name "haskell-8.10-polyparse")
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
       ("6" "0xrmzz7p2akgdyr7gm54yvq83lm9qixcrk72ia2w9xcs2r4b76vz")))
    (outputs (list "out" "doc"))
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

haskell-8.10-polyparse

(define-public haskell-8.10-possibly
  (package
    (name "haskell-8.10-possibly")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/cdornan/enum-text#readme")
    (synopsis "type Possibly a = Either String a")
    (description
     "A surprisingly useful type synonym for Either in which the Left diagnostic is a String, i.e, @@type Possibly a = Either String a@@")
    (license license:bsd-3)))

haskell-8.10-possibly

(define-public haskell-8.10-post-mess-age
  (package
    (name "haskell-8.10-post-mess-age")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-post-mess-age

(define-public haskell-8.10-prefix-units
  (package
    (name "haskell-8.10-prefix-units")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-prefix-units

(define-public haskell-8.10-prelude-compat
  (package
    (name "haskell-8.10-prelude-compat")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-prelude-compat

(define-public haskell-8.10-prelude-safeenum
  (package
    (name "haskell-8.10-prelude-safeenum")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prelude-safeenum/prelude-safeenum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p6q2kv8gbkhzam03sl2bkjp8xq7q77h88v6afvca3yrlg4mlw62"))))
    (properties `((upstream-name . "prelude-safeenum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://wrengr.org/software/hackage.html")
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

haskell-8.10-prelude-safeenum

(define-public haskell-8.10-pretty-class
  (package
    (name "haskell-8.10-pretty-class")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-pretty-class

(define-public haskell-8.10-pretty-hex
  (package
    (name "haskell-8.10-pretty-hex")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/pretty-hex")
    (synopsis "A library for hex dumps of ByteStrings")
    (description
     "This library generates pretty hex dumps of ByteStrings in the
style of other common *nix hex dump tools.")
    (license license:bsd-3)))

haskell-8.10-pretty-hex

(define-public haskell-8.10-pretty-terminal
  (package
    (name "haskell-8.10-pretty-terminal")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/loganmac/pretty-terminal#readme")
    (synopsis
     "Styling and coloring terminal output with ANSI escape sequences.")
    (description
     "Please see the README on Github at <https://github.com/loganmac/pretty-terminal#readme>")
    (license license:bsd-3)))

haskell-8.10-pretty-terminal

(define-public haskell-8.10-prettyclass
  (package
    (name "haskell-8.10-prettyclass")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/prettyclass")
    (synopsis "Pretty printing class similar to Show.")
    (description "Pretty printing class similar to Show, based on the HughesPJ
pretty printing library.  Provides the pretty printing class
and instances for the Prelude types.")
    (license license:bsd-3)))

haskell-8.10-prettyclass

(define-public haskell-8.10-primes
  (package
    (name "haskell-8.10-primes")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/sebfisch/primes")
    (synopsis "Efficient, purely functional generation of prime numbers")
    (description
     "This Haskell library provides an efficient lazy wheel sieve for
prime generation inspired by /Lazy wheel sieves and spirals of/
/primes/ by Colin Runciman and /The Genuine Sieve of Eratosthenes/
by Melissa O'Neil.")
    (license license:bsd-3)))

haskell-8.10-primes

(define-public haskell-8.10-primitive
  (package
    (name "haskell-8.10-primitive")
    (version "0.7.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive/primitive-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p01fmw8yi578rvwicrlpbfkbfsv7fbnzb88a7vggrhygykgs31w"))))
    (properties `((upstream-name . "primitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0xh1m8nybz760c71gm1w9fga25y2rys1211q77v6wagdsas634yf")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/haskell/primitive")
    (synopsis "Primitive memory-related operations")
    (description
     "This package provides various primitive memory-related operations.")
    (license license:bsd-3)))

haskell-8.10-primitive

(define-public haskell-8.10-proxied
  (package
    (name "haskell-8.10-proxied")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-proxied

(define-public haskell-8.10-pulse-simple
  (package
    (name "haskell-8.10-pulse-simple")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-pulse-simple

(define-public haskell-8.10-quiet
  (package
    (name "haskell-8.10-quiet")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/jacobstanley/quiet#readme")
    (synopsis "Generic deriving of Read/Show with no record labels.")
    (description
     "Please see the README on GitHub at <https://github.com/jacobstanley/quiet#readme>")
    (license license:bsd-3)))

haskell-8.10-quiet

(define-public haskell-8.10-rank1dynamic
  (package
    (name "haskell-8.10-rank1dynamic")
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
    (outputs (list "out" "doc"))
    (home-page "http://haskell-distributed.github.com")
    (synopsis
     "Like Data.Dynamic/Data.Typeable but with support for rank-1 polymorphic types")
    (description
     "\"Data.Typeable\" and \"Data.Dynamic\" only support monomorphic types.
In this package we provide similar functionality but with
support for rank-1 polymorphic types.")
    (license license:bsd-3)))

haskell-8.10-rank1dynamic

(define-public haskell-8.10-rawfilepath
  (package
    (name "haskell-8.10-rawfilepath")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/xtendo-org/rawfilepath#readme")
    (synopsis "Use RawFilePath instead of FilePath")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-rawfilepath

(define-public haskell-8.10-rawstring-qm
  (package
    (name "haskell-8.10-rawstring-qm")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/tolysz/rawstring-qm")
    (synopsis "Simple raw string quotation and dictionary interpolation")
    (description
     "Supply a couple of usefull QuasiQuotes so we can use functions to lookup values
It has quasiquotes for Strings, Text and Builders")
    (license license:bsd-3)))

haskell-8.10-rawstring-qm

(define-public haskell-8.10-rdtsc
  (package
    (name "haskell-8.10-rdtsc")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-rdtsc

(define-public haskell-8.10-read-editor
  (package
    (name "haskell-8.10-read-editor")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/yamadapc/haskell-read-editor")
    (synopsis
     "Opens a temporary file on the system's EDITOR and returns the resulting edits")
    (description
     "See <https://github.com/yamadapc/haskell-read-editor> for more information")
    (license license:expat)))

haskell-8.10-read-editor

(define-public haskell-8.10-readable
  (package
    (name "haskell-8.10-readable")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mightybyte/readable")
    (synopsis "Reading from Text and ByteString")
    (description
     "Provides a Readable type class for reading data types from ByteString and
Text.  Also includes efficient implementations for common data types.")
    (license license:bsd-3)))

haskell-8.10-readable

(define-public haskell-8.10-record-hasfield
  (package
    (name "haskell-8.10-record-hasfield")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ndmitchell/record-hasfield#readme")
    (synopsis "A version of GHC.Records as available in future GHCs.")
    (description
     "This package provides a version of \"GHC.Records\" as it will be after the implementation of
<https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0042-record-set-field.rst GHC proposal #42>,
plus some helper functions over it.")
    (license license:bsd-3)))

haskell-8.10-record-hasfield

(define-public haskell-8.10-record-wrangler
  (package
    (name "haskell-8.10-record-wrangler")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-wrangler/record-wrangler-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lxbmb73k2ah663na2r7rgj6gxa6z971f6k8gcjbkbf095di1xlc"))))
    (properties `((upstream-name . "record-wrangler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/lumihq/record-wrangler#readme")
    (synopsis "Alter your records with ease")
    (description
     "Please see the README on GitHub at <https://github.com/lumihq/record-wrangler#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-record-wrangler

(define-public haskell-8.10-ref-fd
  (package
    (name "haskell-8.10-ref-fd")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ref-fd/ref-fd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r34xyyx0fyl1fc64n1hhk0m2s1l808kjb18dmj8w0y91w4ms6qj"))))
    (properties `((upstream-name . "ref-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/ref-fd")
    (synopsis "A type class for monads with references using functional
dependencies.")
    (description
     "Contains a 'MonadRef' type class that abstracts over the
details of manipulating references, allowing one to write code
that can operate in either the ST monad or the IO monad.")
    (license license:bsd-3)))

haskell-8.10-ref-fd

(define-public haskell-8.10-ref-tf
  (package
    (name "haskell-8.10-ref-tf")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ref-tf/ref-tf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0isilgcbw12zyh8s2liaj5r9r5m3yg1xskyhag6f36qi60y29hx5"))))
    (properties `((upstream-name . "ref-tf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/ref-tf")
    (synopsis "A type class for monads with references using type families.")
    (description
     "Contains a 'MonadRef' type class that abstracts over the
details of manipulating references, allowing one to write code
that can operate in either the ST monad or the IO monad.")
    (license license:bsd-3)))

haskell-8.10-ref-tf

(define-public haskell-8.10-refact
  (package
    (name "haskell-8.10-refact")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/refact")
    (synopsis "Specify refactorings to perform with apply-refact")
    (description
     "This library provides a datatype which can be interpreted by apply-refact. It exists
as a seperate library so that applications can specify refactorings without depending on GHC.")
    (license license:bsd-3)))

haskell-8.10-refact

(define-public haskell-8.10-regex-base
  (package
    (name "haskell-8.10-regex-base")
    (version "0.94.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-base/regex-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w9fxad1dwi040r3db9i2cjhhrl86p3hngj13ixbcnqgb27l16bv"))))
    (properties `((upstream-name . "regex-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k2gzjm7xz69f7zr08wh2wzb5dhb659cvimsvx0g9p8cf5f45x2g")))
    (outputs (list "out" "doc"))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "Common \"Text.Regex.*\" API for Regex matching")
    (description
     "This package does not provide the ability to do regular expression matching.
Instead, it provides the type classes that constitute the abstract API
that is implemented by @@regex-*@@ backends such as:

* <https://hackage.haskell.org/package/regex-posix regex-posix>

* <https://hackage.haskell.org/package/regex-parsec regex-parsec>

* <https://hackage.haskell.org/package/regex-dfa regex-dfa>

* <https://hackage.haskell.org/package/regex-tdfa regex-tdfa>

* <https://hackage.haskell.org/package/regex-pcre regex-pcre>

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.10-regex-base

(define-public haskell-8.10-regex-posix-clib
  (package
    (name "haskell-8.10-regex-posix-clib")
    (version "2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-posix-clib/regex-posix-clib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y4vmiq1xksxxd84yvyark6axsz51ywb6slswbddlxbdpcpfday7"))))
    (properties `((upstream-name . "regex-posix-clib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/regex-posix-clib")
    (synopsis "\"Regex for Windows\" C library")
    (description
     "This CABAL package provides the <http://gnuwin32.sourceforge.net/packages/regex.htm Regex for Windows> C library for convenience on operating systems lacking a <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html POSIX.2 regex> implementation.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-regex-posix-clib

(define-public haskell-8.10-rev-state
  (package
    (name "haskell-8.10-rev-state")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/DanBurton/rev-state#readme")
    (synopsis "Reverse State monad transformer")
    (description "It's like the State monad transformer.
But Reversed! The state goes backwards.")
    (license license:bsd-3)))

haskell-8.10-rev-state

(define-public haskell-8.10-rfc5051
  (package
    (name "haskell-8.10-rfc5051")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rfc5051/rfc5051-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nri7js5ymywh2gi3li25wrkl1nf712qhbzw5hn46fib83qsq73k"))))
    (properties `((upstream-name . "rfc5051") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

Abe Oeb abe ab&#233; oeb &#193;be &#196;be &#212;eb &#225;be &#228;be &#244;eb.

Here is the same list sorted by @@sortBy compareUnicode@@:

Abe abe ab&#233; &#193;be &#225;be &#196;be &#228;be Oeb oeb &#212;eb &#244;eb")
    (license license:bsd-3)))

haskell-8.10-rfc5051

(define-public haskell-8.10-roles
  (package
    (name "haskell-8.10-roles")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roles/roles-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a8zkw4cs124v08xqwbny18107d260ypdy4g4xb7hd55nfw3wjyx"))))
    (properties `((upstream-name . "roles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/matt-noonan/roles/")
    (synopsis "Composable class-based roles")
    (description "Composable class-based roles")
    (license license:bsd-3)))

haskell-8.10-roles

(define-public haskell-8.10-rosezipper
  (package
    (name "haskell-8.10-rosezipper")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/rosezipper")
    (synopsis "Generic zipper implementation for Data.Tree")
    (description "A Haskell datastructure for working with locations in
trees or forests.")
    (license license:bsd-3)))

haskell-8.10-rosezipper

(define-public haskell-8.10-safe-foldable
  (package
    (name "haskell-8.10-safe-foldable")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/tejon/safe-foldable#readme")
    (synopsis "Safe wrappers for null-partial Foldable operations")
    (description "")
    (license license:expat)))

haskell-8.10-safe-foldable

(define-public haskell-8.10-scanf
  (package
    (name "haskell-8.10-scanf")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/Lysxia/scanf#readme")
    (synopsis "Easy and type-safe format strings for parsing and printing")
    (description "A lightweight library for one-off parsing and printing.

See README.")
    (license license:expat)))

haskell-8.10-scanf

(define-public haskell-8.10-selections
  (package
    (name "haskell-8.10-selections")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selections/selections-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vl7rqrz0p5m7iwymaw3b8l2kbaikwhmkhq82hq79581vj99fdpw"))))
    (properties `((upstream-name . "selections") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ChrisPenner/selections#readme")
    (synopsis
     "Combinators for operating with selections over an underlying functor")
    (description
     "See the [README on github](https://github.com/ChrisPenner/selections#readme) for tutorials!")
    (license license:bsd-3)))

haskell-8.10-selections

(define-public haskell-8.10-semigroups
  (package
    (name "haskell-8.10-semigroups")
    (version "0.19.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroups/semigroups-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0h1sl3i6k8csy5zkkpy65rxzds9wg577z83aaakybr3n1gcv4855"))))
    (properties `((upstream-name . "semigroups") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fhashable" "-fbinary" "-fbytestring" "-f-bytestring-builder" "-fcontainers" "-fdeepseq" "-ftagged" "-ftemplate-haskell" "-ftext" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("2" "0pprwlsipdsshr2h83bk0xjkhq2bw88m9fn44fiyas3habg25ajf")))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/semigroups/")
    (synopsis "Anything that associates")
    (description
     "In mathematics, a semigroup is an algebraic structure consisting of a set together with an associative binary operation. A semigroup generalizes a monoid in that there might not exist an identity element. It also (originally) generalized a group (a monoid with all inverses) to a type where every element did not have to have an inverse, thus the name semigroup.")
    (license license:bsd-3)))

haskell-8.10-semigroups

(define-public haskell-8.10-semiring-simple
  (package
    (name "haskell-8.10-semiring-simple")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/semiring-simple")
    (synopsis "A module for dealing with semirings.")
    (description
     "Semirings are like normal rings, except you can't subtract. This library
provides a type class for semirings.")
    (license license:bsd-3)))

haskell-8.10-semiring-simple

(define-public haskell-8.10-seqid
  (package
    (name "haskell-8.10-seqid")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/seqid/seqid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07xxpdrr3lqqnzcxbync46c0kz3d2i7k4day630a6x6zmzpyay0i"))))
    (properties `((upstream-name . "seqid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/bitnomial/seqid")
    (synopsis "Sequence ID production and consumption")
    (description "Uniquely identify elements in a sequence.")
    (license license:bsd-3)))

haskell-8.10-seqid

(define-public haskell-8.10-setenv
  (package
    (name "haskell-8.10-setenv")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/setenv")
    (synopsis "A cross-platform library for setting environment variables")
    (description
     "A cross-platform library for setting environment variables

Note: Since @@base-4.7.0.0@@ the functions @@setEnv@@ and
@@unsetEnv@@ are provided by @@System.Environment@@.
@@System.SetEnv@@ merily re-exports those functions when built
with @@base >= 4.7@@.")
    (license license:expat)))

haskell-8.10-setenv

(define-public haskell-8.10-shell-utility
  (package
    (name "haskell-8.10-shell-utility")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-shell-utility

(define-public haskell-8.10-shortcut-links
  (package
    (name "haskell-8.10-shortcut-links")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shortcut-links/shortcut-links-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0567igvyl43fa06h7dq2lww0ing00n24xgmd25vhgx6kvnawnb90"))))
    (properties `((upstream-name . "shortcut-links") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/kowainik/shortcut-links")
    (synopsis "Link shortcuts for use in text markup")
    (description
     "This package is a database of link shortcuts. A Markdown example:
@@\\[Google\\](\\@@w)@@ turns into <http://en.wikipedia.org/wiki/Google>.

See the \"ShortcutLinks.All\" module for a full list of shortcuts.")
    (license license:mpl2.0)))

haskell-8.10-shortcut-links

(define-public haskell-8.10-show-combinators
  (package
    (name "haskell-8.10-show-combinators")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/Lysxia/show-combinators#readme")
    (synopsis "Combinators to write Show instances")
    (description
     "A minimal pretty-printing library for Show instances in Haskell.")
    (license license:expat)))

haskell-8.10-show-combinators

(define-public haskell-8.10-siggy-chardust
  (package
    (name "haskell-8.10-siggy-chardust")
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
    (outputs (list "out" "doc"))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/siggy-chardust#readme")
    (synopsis "Rounding rationals to significant digits and decimal places.")
    (description
     "The round function from the prelude returns an integer. The standard librarys of C and C++ have round functions that return floating point numbers. Rounding in this library takes and returns rationals and can round to a number of significant digits or a number of decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-siggy-chardust

(define-public haskell-8.10-signal
  (package
    (name "haskell-8.10-signal")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/pmlodawski/signal")
    (synopsis "Multiplatform signal support for Haskell")
    (description
     "This simple library allows you to handle os signals on both Linux and Windows.")
    (license license:expat)))

haskell-8.10-signal

(define-public haskell-8.10-simple-affine-space
  (package
    (name "haskell-8.10-simple-affine-space")
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
    (outputs (list "out" "doc"))
    (home-page "http://www.haskell.org/haskellwiki/Yampa")
    (synopsis "A simple library for affine and vector spaces.")
    (description
     "Affine spaces and vector spaces with a few basic instances.

This library implements affine spaces and vector spaces. Two instances are
provided for affine spaces (points) and two more for vector spaces (vectors).
These definitions are strict, implement deepseq, and are designed to have
minimal memory overhead.")
    (license license:bsd-3)))

haskell-8.10-simple-affine-space

(define-public haskell-8.10-simple-cabal
  (package
    (name "haskell-8.10-simple-cabal")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/juhp/simple-cabal")
    (synopsis "Cabal file wrapper library")
    (description "Find and read .cabal files, and
a Cabal dependency compatibility layer.")
    (license license:bsd-3)))

haskell-8.10-simple-cabal

(define-public haskell-8.10-simple-reflect
  (package
    (name "haskell-8.10-simple-reflect")
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
    (outputs (list "out" "doc"))
    (home-page
     "http://twanvl.nl/blog/haskell/simple-reflection-of-expressions")
    (synopsis "Simple reflection of expressions containing variables")
    (description
     "This package allows simple reflection of expressions containing variables.
Reflection here means that a Haskell expression is turned into a string.
The primary aim of this package is teaching and understanding;
there are no options for manipulating the reflected expressions beyond showing them.")
    (license license:bsd-3)))

haskell-8.10-simple-reflect

(define-public haskell-8.10-since
  (package
    (name "haskell-8.10-since")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/athanclark/since#readme")
    (synopsis "Get the number of seconds since the last invocation")
    (description "")
    (license license:bsd-3)))

haskell-8.10-since

(define-public haskell-8.10-skip-var
  (package
    (name "haskell-8.10-skip-var")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/dtaskoff/skip-var#readme")
    (synopsis "Skip variables")
    (description
     "Please see the README on GitHub at <https://github.com/dtaskoff/skip-var#readme>")
    (license license:expat)))

haskell-8.10-skip-var

(define-public haskell-8.10-snowflake
  (package
    (name "haskell-8.10-snowflake")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/snowflake")
    (synopsis
     "A loose port of Twitter Snowflake to Haskell. Generates arbitrary precision, unique, time-sortable identifiers.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-snowflake

(define-public haskell-8.10-some
  (package
    (name "haskell-8.10-some")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-some

(define-public haskell-8.10-sop-core
  (package
    (name "haskell-8.10-sop-core")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sop-core/sop-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rbj56icbaqlcxx5xwvbx4n4vmyv6cfcv7s45n1fv3drahigvgw7"))))
    (properties `((upstream-name . "sop-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p6zyqja021gyndskn1qnj29glqr0hldyhxplnpxz06hz4xqwngz")))
    (outputs (list "out" "doc"))
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

haskell-8.10-sop-core

(define-public haskell-8.10-sort
  (package
    (name "haskell-8.10-sort")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/cdornan/sort")
    (synopsis "A Haskell sorting toolkit")
    (description "A library of general-purpose sorting utilities.")
    (license license:bsd-3)))

haskell-8.10-sort

(define-public haskell-8.10-sorted-list
  (package
    (name "haskell-8.10-sorted-list")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-sorted-list

(define-public haskell-8.10-split
  (package
    (name "haskell-8.10-split")
    (version "0.2.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/split/split-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ahzdjcxw5wywr3w4msspia99k6fkckddam1m5506h4z9h8fa7r7"))))
    (properties `((upstream-name . "split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0jwaw5plby8bmjmhshrr5813avqmq4zih2lqpi8cprvfh0z9rpx6")))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/split")
    (synopsis "Combinator library for splitting lists.")
    (description "A collection of various methods for splitting
lists into parts, akin to the \\\"split\\\" function
found in several mainstream languages. Here is
its tale:

Once upon a time the standard \"Data.List\" module
held no function for splitting a list into parts
according to a delimiter.  Many a brave
lambda-knight strove to add such a function, but
their striving was in vain, for Lo, the Supreme
Council fell to bickering amongst themselves what
was to be the essential nature of the One True
Function which could cleave a list in twain (or
thrain, or any required number of parts).

And thus came to pass the split package,
comprising divers functions for splitting a list
asunder, each according to its nature.  And the
Supreme Council had no longer any grounds for
argument, for the favored method of each was
contained therein.

To get started, see the \"Data.List.Split\" module.")
    (license license:bsd-3)))

haskell-8.10-split

(define-public haskell-8.10-splitmix
  (package
    (name "haskell-8.10-splitmix")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/splitmix/splitmix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1apck3nzzl58r0b9al7cwaqwjhhkl8q4bfrx14br2yjf741581kd"))))
    (properties `((upstream-name . "splitmix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-optimised-mixer")
       #:cabal-revision
       ("2" "13ixb8qfll9x26v0zdk2kajlqd1zpab1p2xb8rh6pak7g7hw49fv")))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/splitmix")
    (synopsis "Fast Splittable PRNG")
    (description
     "Pure Haskell implementation of SplitMix described in

Guy L. Steele, Jr., Doug Lea, and Christine H. Flood. 2014.
Fast splittable pseudorandom number generators. In Proceedings
of the 2014 ACM International Conference on Object Oriented
Programming Systems Languages & Applications (OOPSLA '14). ACM,
New York, NY, USA, 453-472. DOI:
<https://doi.org/10.1145/2660193.2660195>

The paper describes a new algorithm /SplitMix/ for /splittable/
pseudorandom number generator that is quite fast: 9 64 bit arithmetic/logical
operations per 64 bits generated.

/SplitMix/ is tested with two standard statistical test suites (DieHarder and
TestU01, this implementation only using the former) and it appears to be
adequate for \"everyday\" use, such as Monte Carlo algorithms and randomized
data structures where speed is important.

In particular, it __should not be used for cryptographic or security applications__,
because generated sequences of pseudorandom values are too predictable
(the mixing functions are easily inverted, and two successive outputs
suffice to reconstruct the internal state).")
    (license license:bsd-3)))

haskell-8.10-splitmix

(define-public haskell-8.10-spoon
  (package
    (name "haskell-8.10-spoon")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/spoon")
    (synopsis "Catch errors thrown from pure computations.")
    (description
     "Takes an error-throwing expression and puts it back in the Maybe it belongs in.

Note that this suffers from the <https://ghc.haskell.org/trac/ghc/ticket/5902 asynchronous exceptions re-thrown as synchronous> problem. Buyer beware.")
    (license license:bsd-3)))

haskell-8.10-spoon

(define-public haskell-8.10-srcloc
  (package
    (name "haskell-8.10-srcloc")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/srcloc/srcloc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vcp9vgfi5rscy09l4qaq0pp426b6qcdpzs6kpbzg0k5x81kcsbb"))))
    (properties `((upstream-name . "srcloc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mainland/srcloc")
    (synopsis "Data types for managing source code locations.")
    (description
     "Data types for tracking, combining, and printing source code locations.")
    (license license:bsd-3)))

haskell-8.10-srcloc

(define-public haskell-8.10-stack-templatizer
  (package
    (name "haskell-8.10-stack-templatizer")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-stack-templatizer

(define-public haskell-8.10-stateref
  (package
    (name "haskell-8.10-stateref")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-stateref

(define-public haskell-8.10-stm-chans
  (package
    (name "haskell-8.10-stm-chans")
    (version "3.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-chans/stm-chans-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04hafqjq8ngvhcavkfx88a0zky8yc7i18q2n9ajav03kns1kwvpa"))))
    (properties `((upstream-name . "stm-chans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Additional types of channels for STM.")
    (description "Additional types of channels for STM.")
    (license license:bsd-3)))

haskell-8.10-stm-chans

(define-public haskell-8.10-stm-delay
  (package
    (name "haskell-8.10-stm-delay")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-stm-delay

(define-public haskell-8.10-stm-extras
  (package
    (name "haskell-8.10-stm-extras")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/louispan/stm-extras#readme")
    (synopsis "Extra STM functions")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-stm-extras

(define-public haskell-8.10-stm-lifted
  (package
    (name "haskell-8.10-stm-lifted")
    (version "2.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-lifted/stm-lifted-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zsah3s288cgb2h4gdjqvby1c3xp95nvgd561sdhigxcwlxk2658"))))
    (properties `((upstream-name . "stm-lifted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/stm-lifted")
    (synopsis "Software Transactional Memory lifted to MonadIO")
    (description
     "A MonadIO version of <http://hackage.haskell.org/package/stm STM> library.")
    (license license:bsd-3)))

haskell-8.10-stm-lifted

(define-public haskell-8.10-stm-split
  (package
    (name "haskell-8.10-stm-split")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-stm-split

(define-public haskell-8.10-strict-concurrency
  (package
    (name "haskell-8.10-strict-concurrency")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-strict-concurrency

(define-public haskell-8.10-string-combinators
  (package
    (name "haskell-8.10-string-combinators")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/basvandijk/string-combinators")
    (synopsis "Polymorphic functions to build and combine stringlike values")
    (description "@@string-combinators@@ provides handy polymorphic functions
to build and combine string-like values.

All functions are polymorphic in their string-like type
but usually have a 'Monoid' or 'IsString' constraint.")
    (license license:bsd-3)))

haskell-8.10-string-combinators

(define-public haskell-8.10-string-conv
  (package
    (name "haskell-8.10-string-conv")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/Soostone/string-conv")
    (synopsis "Standardized conversion between string types")
    (description "Avoids the need to remember many different functions
for converting string types.  Just use one universal
function toS for all monomorphic string conversions.")
    (license license:bsd-3)))

haskell-8.10-string-conv

(define-public haskell-8.10-stringsearch
  (package
    (name "haskell-8.10-stringsearch")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-stringsearch

(define-public haskell-8.10-stripe-concepts
  (package
    (name "haskell-8.10-stripe-concepts")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-concepts/stripe-concepts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mi538f8nm90mygrcv6w90bxf0d0lc4qxkbrq19j35l9r1xlm5bk"))))
    (properties `((upstream-name . "stripe-concepts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Types for the Stripe API")
    (description
     "This is a minimal package that just defines a common set of types
for working with the <https://stripe.com/ Stripe> API.")
    (license license:expat)))

haskell-8.10-stripe-concepts

(define-public haskell-8.10-sundown
  (package
    (name "haskell-8.10-sundown")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/bitonic/sundown")
    (synopsis "Bindings to the sundown markdown library")
    (description
     "Bindings to GitHub's C markdown library: <https://github.com/vmg/sundown>.

The Haskell code is in the public domain. For sundown's license, refer to
its GitHub page.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-sundown

(define-public haskell-8.10-superbuffer
  (package
    (name "haskell-8.10-superbuffer")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/agrafix/superbuffer#readme")
    (synopsis "Efficiently build a bytestring from smaller chunks")
    (description
     "Efficiently (both fast and memory efficient) build a bytestring from smaller chunks")
    (license license:bsd-3)))

haskell-8.10-superbuffer

(define-public haskell-8.10-symbol
  (package
    (name "haskell-8.10-symbol")
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
    (outputs (list "out" "doc"))
    (home-page "http://www.cs.drexel.edu/~mainland/")
    (synopsis "A 'Symbol' type for fast symbol comparison.")
    (description
     "Provides a 'Symbol' data type allowing fast symbol comparisons
and functions for interning symbols and recovering their
'String' representation.")
    (license license:bsd-3)))

haskell-8.10-symbol

(define-public haskell-8.10-symengine
  (package
    (name "haskell-8.10-symengine")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/symengine/symengine.hs#readme")
    (synopsis "SymEngine symbolic mathematics engine for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-symengine

(define-public haskell-8.10-system-filepath
  (package
    (name "haskell-8.10-system-filepath")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "High-level, byte-based file and directory path manipulations (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-8.10-system-filepath

(define-public haskell-8.10-system-info
  (package
    (name "haskell-8.10-system-info")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/system-info/system-info-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1mc0axh3iwy3d7svxl31b629c9s482bq7mshhs6glh9pv6cg74"))))
    (properties `((upstream-name . "system-info") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ChaosGroup/system-info#readme")
    (synopsis "Get the name of the operating system")
    (description
     "Please see the README on Github at <https://github.com/ChaosGroup/system-info#readme>")
    (license license:expat)))

haskell-8.10-system-info

(define-public haskell-8.10-tagged
  (package
    (name "haskell-8.10-tagged")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/tagged")
    (synopsis
     "Haskell 98 phantom types to avoid unsafely passing dummy arguments")
    (description
     "Haskell 98 phantom types to avoid unsafely passing dummy arguments.")
    (license license:bsd-3)))

haskell-8.10-tagged

(define-public haskell-8.10-tagged-identity
  (package
    (name "haskell-8.10-tagged-identity")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mrkkrp/tagged-identity")
    (synopsis
     "Trivial monad transformer that allows identical monad stacks have different types")
    (description
     "Trivial monad transformer that allows identical monad stacks have different types.")
    (license license:bsd-3)))

haskell-8.10-tagged-identity

(define-public haskell-8.10-tagshare
  (package
    (name "haskell-8.10-tagshare")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/tagshare")
    (synopsis "TagShare - explicit sharing with tags")
    (description "TagShare supplies a monad for sharing values based on tags
and types. Each tag and type is bound to at most one value
in a dynamic map.

The principal use of this package is to ensure that
constant class members or other overloaded values are
shared.")
    (license license:bsd-3)))

haskell-8.10-tagshare

(define-public haskell-8.10-tao
  (package
    (name "haskell-8.10-tao")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Type-level assertion operators.")
    (description "Type-level unit testing via assertion operators/functions.")
    (license license:expat)))

haskell-8.10-tao

(define-public haskell-8.10-tar
  (package
    (name "haskell-8.10-tar")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-tar

(define-public haskell-8.10-template-haskell-compat-v0208
  (package
    (name "haskell-8.10-template-haskell-compat-v0208")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/template-haskell-compat-v0208/template-haskell-compat-v0208-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bqnshyf8n9xaybi5wjrj9akp9lxfyfd9zc8jv81m5bllbmxbp2z"))))
    (properties `((upstream-name . "template-haskell-compat-v0208")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page
     "https://github.com/nikita-volkov/template-haskell-compat-v0208")
    (synopsis
     "A backwards compatibility layer for Template Haskell newer than 2.8")
    (description "")
    (license license:expat)))

haskell-8.10-template-haskell-compat-v0208

(define-public haskell-8.10-termbox
  (package
    (name "haskell-8.10-termbox")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/termbox/termbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vi2ssylwvc6xqnhpnvc9q9c70glbf6s63rmyblc53g4qra2wkah"))))
    (properties `((upstream-name . "termbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-examples")
       #:cabal-revision
       ("1" "1d0sv2ycizpy0fsn0v4n2bbziyr56y2md8qnqmr0bx1rkriz67li")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/termbox/termbox-haskell")
    (synopsis "termbox bindings")
    (description
     "This package provides a thin wrapper around @@termbox v1.1.2@@, a simple C
library for writing text-based user interfaces: <https://github.com/termbox/termbox>

The full source of @@termbox v1.1.2@@ (1000 lines of C) is bundled; you do
not need to install any system packages to use this library.")
    (license license:bsd-3)))

haskell-8.10-termbox

(define-public haskell-8.10-testing-type-modifiers
  (package
    (name "haskell-8.10-testing-type-modifiers")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-testing-type-modifiers

(define-public haskell-8.10-text-ansi
  (package
    (name "haskell-8.10-text-ansi")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-ansi/text-ansi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vcrsg7v8n6znh1pd9kbm20bc6dg3zijd3xjdjljadf15vfkd5f6"))))
    (properties `((upstream-name . "text-ansi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0x7d9fgh2mvr0phb20s76k5wl6pl59r667jhkaqfbf88xz44j04k")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mitchellwrosen/text-ansi")
    (synopsis "Text styling for ANSI terminals.")
    (description
     "Text styling for ANSI terminals using SGR codes, as defined by the
<https://www.ecma-international.org/publications/files/ECMA-ST/Ecma-048.pdf ECMA-48>
standard.

Supports foreground\\/background color, bold\\/faint intensity, italic,
single\\/double underline, strikethrough, frame, encircle, and overline escape
sequences. Some styles may not work on your terminal.

Also features terminal detection, so redirecting styled output to a file will
automatically strip the ANSI escape sequences.")
    (license license:bsd-3)))

haskell-8.10-text-ansi

(define-public haskell-8.10-text-binary
  (package
    (name "haskell-8.10-text-binary")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/kawu/text-binary")
    (synopsis "Binary instances for text types")
    (description "A compatibility layer providing Binary instances for strict
and lazy text types for versions older than 1.2.1 of
<https://hackage.haskell.org/package/text>.")
    (license license:bsd-2)))

haskell-8.10-text-binary

(define-public haskell-8.10-text-icu
  (package
    (name "haskell-8.10-text-icu")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-icu/text-icu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s9gcd9lcrhk92ydhizyk0vbpf542ipc4hj60fa02b2g2x9q93ij"))))
    (properties `((upstream-name . "text-icu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0s0n9l682ffigfqbzb1adw63pj9iyvalv45kp9kxqwbj5yibblbc")))
    (outputs (list "out" "doc"))
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

* Regular expression search and replace.

* Security checks for visually confusable (spoofable) strings.")
    (license license:bsd-3)))

haskell-8.10-text-icu

(define-public haskell-8.10-th-abstraction
  (package
    (name "haskell-8.10-th-abstraction")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-abstraction/th-abstraction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01nyscmjriga4fh4362b4zjad48hdv33asjkd28sj8hx3pii7fy8"))))
    (properties `((upstream-name . "th-abstraction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/glguy/th-abstraction")
    (synopsis "Nicer interface for reified information about data types")
    (description "This package normalizes variations in the interface for
inspecting datatype information via Template Haskell
so that packages and support a single, easier to use
informational datatype while supporting many versions
of Template Haskell.")
    (license license:isc)))

haskell-8.10-th-abstraction

(define-public haskell-8.10-th-bang-compat
  (package
    (name "haskell-8.10-th-bang-compat")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/th-bang-compat")
    (synopsis "Compatibility for bang-type template")
    (description "This package provides compatible interfaces
for bang-type template")
    (license license:bsd-3)))

haskell-8.10-th-bang-compat

(define-public haskell-8.10-th-constraint-compat
  (package
    (name "haskell-8.10-th-constraint-compat")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/th-constraint-compat")
    (synopsis "Compatibility for type constraint template")
    (description "This package provides compatibe interfaces
for type constraint template")
    (license license:bsd-3)))

haskell-8.10-th-constraint-compat

(define-public haskell-8.10-th-data-compat
  (package
    (name "haskell-8.10-th-data-compat")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/th-data-compat")
    (synopsis "Compatibility for data definition template of TH")
    (description "This package contains wrapped name definitions of
data definition template")
    (license license:bsd-3)))

haskell-8.10-th-data-compat

(define-public haskell-8.10-th-reify-compat
  (package
    (name "haskell-8.10-th-reify-compat")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/khibino/haskell-th-reify-compat/")
    (synopsis "Compatibility for the result type of TH reify")
    (description "This package contains compatible interfaces against
the result type of TH reify function.")
    (license license:bsd-3)))

haskell-8.10-th-reify-compat

(define-public haskell-8.10-th-strict-compat
  (package
    (name "haskell-8.10-th-strict-compat")
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
    (outputs (list "out" "doc"))
    (home-page "https://gitlab.com/igrep/th-strict-compat")
    (synopsis "Compatibility shim for Bang and Strict in Template Haskell.")
    (description "See README")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-th-strict-compat

(define-public haskell-8.10-these-skinny
  (package
    (name "haskell-8.10-these-skinny")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/these-skinny/these-skinny-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nbcfkjs7cn3gnyypxdf1gxm52gzqc3lqygdl8qrfgdk7cck6sbj"))))
    (properties `((upstream-name . "these-skinny") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1paqqcdbqr91gvvs0anq30pkdd37g70ql4v11lszl6dzjl6yy3d5")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/chessai/these-skinny")
    (synopsis "A fork of the 'these' package without the dependency bloat")
    (description
     "This package provides a data type @@These a b@@ which can hold a value of either
type or values of each type. This is usually thought of as an \"inclusive or\"
type (contrasting @@Either a b@@ as \"exclusive or\") or as an \"outer join\" type
(contrasting @@(a, b)@@ as \"inner join\").")
    (license license:bsd-3)))

haskell-8.10-these-skinny

(define-public haskell-8.10-threads
  (package
    (name "haskell-8.10-threads")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-threads

(define-public haskell-8.10-time-locale-compat
  (package
    (name "haskell-8.10-time-locale-compat")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/khibino/haskell-time-locale-compat")
    (synopsis "Compatibile module for time-format locale")
    (description
     "This package contains wrapped name module for time-format locale between old-locale and time-1.5.")
    (license license:bsd-3)))

haskell-8.10-time-locale-compat

(define-public haskell-8.10-time-locale-vietnamese
  (package
    (name "haskell-8.10-time-locale-vietnamese")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/tungd/time-locale-vietnamese#readme")
    (synopsis "Vietnamese locale for date and time format")
    (description "Vietnamese locale for date and time format")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-time-locale-vietnamese

(define-public haskell-8.10-time-units
  (package
    (name "haskell-8.10-time-units")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-time-units

(define-public haskell-8.10-timeit
  (package
    (name "haskell-8.10-timeit")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/merijn/timeit")
    (synopsis "Time monadic computations with an IO base.")
    (description
     "A simple wrapper to show the used CPU time of monadic computation with an
IO base.")
    (license license:bsd-3)))

haskell-8.10-timeit

(define-public haskell-8.10-timezone-series
  (package
    (name "haskell-8.10-timezone-series")
    (version "0.1.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timezone-series/timezone-series-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18n6w7jxwlysq5mvb1sp1z57nyrsgn2ans642fy5rhmpwcavgvr8"))))
    (properties `((upstream-name . "timezone-series") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ak05p8z1q2nispv1xw32j7lhfmf3sfj2ibjrxpm347s37fmxnwc")))
    (outputs (list "out" "doc"))
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

haskell-8.10-timezone-series

(define-public haskell-8.10-torsor
  (package
    (name "haskell-8.10-torsor")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/andrewthad/torsor#readme")
    (synopsis "Torsor Typeclass")
    (description "Torsor Typeclass")
    (license license:bsd-3)))

haskell-8.10-torsor

(define-public haskell-8.10-transformers-compat
  (package
    (name "haskell-8.10-transformers-compat")
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
       (list "-f-two" "-f-three" "-f-four" "-f-five" "-ffive-three" "-fmtl" "-fgeneric-deriving")
       #:cabal-revision
       ("1" "06ba1aknlznv4vlxwnpkr13ylfc6wx3cn6ipb3q9z8r7vwqnqs72")))
    (outputs (list "out" "doc"))
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

haskell-8.10-transformers-compat

(define-public haskell-8.10-transformers-fix
  (package
    (name "haskell-8.10-transformers-fix")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/thumphries/transformers-fix")
    (synopsis "Monad transformer for evaluating to a fixpoint")
    (description "Monad transformer for evaluating to a fixpoint.")
    (license license:bsd-3)))

haskell-8.10-transformers-fix

(define-public haskell-8.10-tree-fun
  (package
    (name "haskell-8.10-tree-fun")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/tree-fun")
    (synopsis
     "Library for functions pertaining to tree exploration and manipulation")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-tree-fun

(define-public haskell-8.10-tree-view
  (package
    (name "haskell-8.10-tree-view")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-view/tree-view-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ya3m1qi83pn74wzffvbzj7wn6n5zny4yzzzf7wlfqszl96jhn2g"))))
    (properties `((upstream-name . "tree-view") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/tree-view")
    (synopsis "Render trees as foldable HTML and Unicode art")
    (description
     "Render trees as foldable HTML and Unicode art

Example:

> *Data.Tree.View> drawTree $ Node \"Add\" [Node \"Sub\" [Node \"3\" [], Node \"Mul\" [Node \"1\" [], Node \"2\" []]], Node \"4\" []]
> Add
>  ├╴Sub
>  │  ├╴3
>  │  └╴Mul
>  │     ├╴1
>  │     └╴2
>  └╴4")
    (license license:bsd-3)))

haskell-8.10-tree-view

(define-public haskell-8.10-trivial-constraint
  (package
    (name "haskell-8.10-trivial-constraint")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trivial-constraint/trivial-constraint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kyjifqfjf4lmrba4fb65m82s8qqv2nld9lj0qvh2qxc8bfw4hj7"))))
    (properties `((upstream-name . "trivial-constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
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

haskell-8.10-trivial-constraint

(define-public haskell-8.10-tuple-th
  (package
    (name "haskell-8.10-tuple-th")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/tuple-th")
    (synopsis
     "Generate (non-recursive) utility functions for tuples of statically known size")
    (description
     "Template Haskell functions for generating functions similar to those in Data.List for tuples of statically known size.")
    (license license:bsd-3)))

haskell-8.10-tuple-th

(define-public haskell-8.10-tuples-homogenous-h98
  (package
    (name "haskell-8.10-tuples-homogenous-h98")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ppetr/tuples-homogenous-h98")
    (synopsis
     "Wrappers for n-ary tuples with Traversable and Applicative/Monad instances.")
    (description
     "Provides @@newtype@@ wrappers for n-ary homogenous tuples of types @@(a,...,a)@@ and instances for @@Functor@@, @@Applicative@@ (zipping), @@Monad@@, @@Foldable@@ and @@Traversable@@. The package aims to be Haskell98 compliant.")
    (license license:bsd-3)))

haskell-8.10-tuples-homogenous-h98

(define-public haskell-8.10-type-equality
  (package
    (name "haskell-8.10-type-equality")
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
       ("5" "0mhvj82l6nvxz3majr7kza4j7nxi0rqjx0ci8m1s9abkcirhcq2m")))
    (outputs (list "out" "doc"))
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

haskell-8.10-type-equality

(define-public haskell-8.10-type-hint
  (package
    (name "haskell-8.10-type-hint")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mvv/type-hint")
    (synopsis "Guide type inference with proxy values")
    (description
     "This package provides 'Proxy' values for various types from the @@base@@
library and functions to use these values as hints for type inference.")
    (license license:bsd-3)))

haskell-8.10-type-hint

(define-public haskell-8.10-type-level-integers
  (package
    (name "haskell-8.10-type-level-integers")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/mtesseract/type-level-integers")
    (synopsis "Provides integers lifted to the type level")
    (description "This packages provides type level integers together with
type families for basic arithmetic.")
    (license license:bsd-3)))

haskell-8.10-type-level-integers

(define-public haskell-8.10-type-level-natural-number
  (package
    (name "haskell-8.10-type-level-natural-number")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-level-natural-number/type-level-natural-number-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17zgm5ys1z61kxxczz3bzi9m3c48py6pvyx3cqk3xlh1w7n58ryk"))))
    (properties `((upstream-name . "type-level-natural-number")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/type-level-natural-number")
    (synopsis "Simple type level natural numbers")
    (description "This is a simple implementation of type-level natural
numbers that only requires DeriveDataTypeable.  Operations
requiring more language extensions have been split into a
separate package.

The difference between this package and the many
others on Hackage implementing type-level
naturals is its emphasis on simplicity.  It only
supports non-negative natural numbers, and only
the successor and predicessor operations.  It
represents natural numbers using a type-level
linked list, so it is not intended to be used for
representing large numbers.  Pre-defined aliases
for natural numbers up to 15 are provided.

The code for this package was largely taken from
the excellent Vec package; I created this package
with the intent of making this functionality more
widely available.

Difference from 1.0:  Added instances for Typeable, and
word synonyms for N0...N15.

Difference from 1.1:  Performance enhancements for
naturalNumberAsInt.  Simplified Show implementation.

Difference from 1.1.1:  Gave up on Haskell 2010
compatibility since as of GHC 7.8 manually deriving from
Typeable is no longer allowed; now I use
DeriveDataTypeable to construct the instances.")
    (license license:bsd-3)))

haskell-8.10-type-level-natural-number

(define-public haskell-8.10-type-level-numbers
  (package
    (name "haskell-8.10-type-level-numbers")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-type-level-numbers

(define-public haskell-8.10-type-operators
  (package
    (name "haskell-8.10-type-operators")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ws1bj412r79r3pak7nz2bzhl5r8rxhp9l0kdh2mnbnj286vfwdn")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/Shou/type-operators#readme")
    (synopsis "Various type-level operators")
    (description
     "A set of type-level operators meant to be helpful, e.g. ($), a
tightly binding (->), and the multi-constraint operator (Show <+> [a, b]).")
    (license license:bsd-3)))

haskell-8.10-type-operators

(define-public haskell-8.10-type-spec
  (package
    (name "haskell-8.10-type-spec")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/sheyll/type-spec#readme")
    (synopsis "Type Level Specification by Example")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-type-spec

(define-public haskell-8.10-typecheck-plugin-nat-simple
  (package
    (name "haskell-8.10-typecheck-plugin-nat-simple")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typecheck-plugin-nat-simple/typecheck-plugin-nat-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hdp2n8n75lr1rjn99nwrqgzh3xay18lkjm8sjv36bwavvbw9p90"))))
    (properties `((upstream-name . "typecheck-plugin-nat-simple")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page
     "https://github.com/YoshikuniJujo/typecheck-plugin-nat-simple#readme")
    (synopsis
     "Simple type check plugin which calculate addition, subtraction and less-or-equal-than")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/typecheck-plugin-nat-simple#readme>")
    (license license:bsd-3)))

haskell-8.10-typecheck-plugin-nat-simple

(define-public haskell-8.10-uglymemo
  (package
    (name "haskell-8.10-uglymemo")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/uglymemo")
    (synopsis "A simple (but internally ugly) memoization function.")
    (description "A simple (but internally ugly) memoization function.

* New in 0.1.0.1: Make it exception safe.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-uglymemo

(define-public haskell-8.10-unbounded-delays
  (package
    (name "haskell-8.10-unbounded-delays")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/basvandijk/unbounded-delays")
    (synopsis "Unbounded thread delays and timeouts")
    (description
     "The @@threadDelay@@ and @@timeout@@ functions from the @@base@@ library
use the bounded @@Int@@ type for specifying the delay or timeout
period. This packages provides alternatives which use the
unbounded @@Integer@@ type.")
    (license license:bsd-3)))

haskell-8.10-unbounded-delays

(define-public haskell-8.10-uncaught-exception
  (package
    (name "haskell-8.10-uncaught-exception")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uncaught-exception/uncaught-exception-"
                    version ".tar.gz"))
              (sha256
               (base32
                "176xnsfbj9xwha1s03ly7fpirgjkrp74smgrgx16v4wb0r4ifgxn"))))
    (properties `((upstream-name . "uncaught-exception") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/serokell/uncaught-exception")
    (synopsis "Customize uncaught exception handling.")
    (description "See README.md for details.")
    (license license:mpl2.0)))

haskell-8.10-uncaught-exception

(define-public haskell-8.10-unconstrained
  (package
    (name "haskell-8.10-unconstrained")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/unconstrained")
    (synopsis "Null constraint")
    (description "")
    (license license:bsd-3)))

haskell-8.10-unconstrained

(define-public haskell-8.10-unicode-show
  (package
    (name "haskell-8.10-unicode-show")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-show/unicode-show-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g945vkj75vrm4c3v79c61hlhx3s6q5v0lm92bjzf29r45clnzsi"))))
    (properties `((upstream-name . "unicode-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/haskell-jp/unicode-show#readme")
    (synopsis "print and show in unicode")
    (description
     "This package provides variants of 'show' and 'print' functions that does not escape non-ascii characters.

See <http://github.com/haskell-jp/unicode-show#readme README> for usage.

Run ghci with  @@-interactive-print@@ flag to print unicode characters. See <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/interactive-evaluation.html#ghci-interactive-print Using a custom interactive printing function> section in the GHC manual.")
    (license license:bsd-3)))

haskell-8.10-unicode-show

(define-public haskell-8.10-unicode-transforms
  (package
    (name "haskell-8.10-unicode-transforms")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/composewell/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 13.0.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-8.10-unicode-transforms

(define-public haskell-8.10-union-angle
  (package
    (name "haskell-8.10-union-angle")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/union-angle/union-angle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0scvzln05l2y4pb96cy7908aw433v8ln4nc17fp5x2vlz579w9cl"))))
    (properties `((upstream-name . "union-angle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/githubuser/union-angle#readme")
    (synopsis "Union type that include radian angle and degree angle")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/union-angle#readme>")
    (license license:bsd-3)))

haskell-8.10-union-angle

(define-public haskell-8.10-union-find
  (package
    (name "haskell-8.10-union-find")
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
       ("2" "0izwkqzf8dc0v6djz5dxgc3xwvn6pl006x10j27sv21i0xsz9f0z")))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/nominolo/union-find")
    (synopsis "Efficient union and equivalence testing of sets.")
    (description
     "The Union\\/Find algorithm implements these operations in
(effectively) constant-time:

1. Check whether two elements are in the same equivalence class.

2. Create a union of two equivalence classes.

3. Look up the descriptor of the equivalence class.")
    (license license:bsd-3)))

haskell-8.10-union-find

(define-public haskell-8.10-unipatterns
  (package
    (name "haskell-8.10-unipatterns")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unipatterns/unipatterns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07jl3an9y4gbpmsq2gcbp3xwyvrnvkjcxcpq1702cc320c8zq542"))))
    (properties `((upstream-name . "unipatterns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/ChrisPenner/unipatterns#readme")
    (synopsis "Helpers which allow safe partial pattern matching in lambdas")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/unipatterns#readme>")
    (license license:bsd-3)))

haskell-8.10-unipatterns

(define-public haskell-8.10-unix-bytestring
  (package
    (name "haskell-8.10-unix-bytestring")
    (version "0.3.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-bytestring/unix-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f9hf7blxy8ckakd0klrs16q0hfvxfarbjgyrc7azgbb86m1skb3"))))
    (properties `((upstream-name . "unix-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://wrengr.org/software/hackage.html")
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

haskell-8.10-unix-bytestring

(define-public haskell-8.10-unix-compat
  (package
    (name "haskell-8.10-unix-compat")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-compat/unix-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cd4lh2c16h7y5hzrcn5l9vir8aq2wcizwksppnagklsdsfmf942"))))
    (properties `((upstream-name . "unix-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-time")
       #:cabal-revision
       ("2" "0mik6xb1jdmb2jlxlmzf0517mxfj0c1j2i4r6h5212m4q6znqqcm")))
    (outputs (list "out" "doc"))
    (home-page "http://github.com/jacobstanley/unix-compat")
    (synopsis "Portable POSIX-compatibility layer.")
    (description "This package provides portable implementations of parts
of the unix package. This package re-exports the unix
package when available. When it isn't available,
portable implementations are used.")
    (license license:bsd-3)))

haskell-8.10-unix-compat

(define-public haskell-8.10-unliftio-core
  (package
    (name "haskell-8.10-unliftio-core")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-core/unliftio-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16i97jax8rys57l0g0qswfwxh1cl5bgw2lw525rm6bzajw90v7wi"))))
    (properties `((upstream-name . "unliftio-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1xx9nmxxg87nhwxgbmmw0xbrppnjc23ppyryar04i3njyg9wvazr")))
    (outputs (list "out" "doc"))
    (home-page
     "https://github.com/fpco/unliftio/tree/master/unliftio-core#readme")
    (synopsis "The MonadUnliftIO typeclass for unlifting monads to IO")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio-core>")
    (license license:expat)))

haskell-8.10-unliftio-core

(define-public haskell-8.10-unlit
  (package
    (name "haskell-8.10-unlit")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-unlit

(define-public haskell-8.10-unsafe
  (package
    (name "haskell-8.10-unsafe")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-unsafe

(define-public haskell-8.10-utf8-light
  (package
    (name "haskell-8.10-utf8-light")
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
       ("3" "02pgak2rr7hmz0l58rhqwg2krj7llm34n5c6x5fa7afb7fx7lnj4")))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/utf8-light")
    (synopsis "Unicode")
    (description "Lightweight UTF8 handling.")
    (license license:bsd-3)))

haskell-8.10-utf8-light

(define-public haskell-8.10-util
  (package
    (name "haskell-8.10-util")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/util")
    (synopsis "Utilities")
    (description "")
    (license license:bsd-3)))

haskell-8.10-util

(define-public haskell-8.10-vinyl
  (package
    (name "haskell-8.10-vinyl")
    (version "0.13.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vinyl/vinyl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mlk94n3s4ah8y9w9vcrk1n7gnsm19d1iijk9da4219dwrkaax2l"))))
    (properties `((upstream-name . "vinyl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/vinyl")
    (synopsis "Extensible Records")
    (description "Extensible records for Haskell with lenses.")
    (license license:expat)))

haskell-8.10-vinyl

(define-public haskell-8.10-void
  (package
    (name "haskell-8.10-void")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/ekmett/void")
    (synopsis "A Haskell 98 logically uninhabited data type")
    (description
     "A Haskell 98 logically uninhabited data type, used to indicate that a given term should not exist.")
    (license license:bsd-3)))

haskell-8.10-void

(define-public haskell-8.10-word24
  (package
    (name "haskell-8.10-word24")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/winterland1989/word24")
    (synopsis "24-bit word and int types for GHC")
    (description "24-bit Word and Int data types.")
    (license license:bsd-3)))

haskell-8.10-word24

(define-public haskell-8.10-wrap
  (package
    (name "haskell-8.10-wrap")
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
    (outputs (list "out" "doc"))
    (home-page "https://hackage.haskell.org/package/wrap")
    (synopsis "Wrap a function's return value with another function")
    (description "Wrap a function's return value with another function")
    (license license:bsd-3)))

haskell-8.10-wrap

(define-public haskell-8.10-writer-cps-transformers
  (package
    (name "haskell-8.10-writer-cps-transformers")
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
    (home-page "https://github.com/minad/writer-cps-transformers#readme")
    (synopsis "WriteT and RWST monad transformers")
    (description
     "NOTE: From version 0.5.6.0 on the modules provided by this package went upstream to transformers. This package acts as a compatibility package for GHC versions older than 8.6. The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. The corresponding MTL class instances are in the package writer-cps-mtl (<http://hackage.haskell.org/package/writer-cps-mtl>).")
    (license license:bsd-3)))

haskell-8.10-writer-cps-transformers

(define-public haskell-8.10-xdg-basedir
  (package
    (name "haskell-8.10-xdg-basedir")
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
    (outputs (list "out" "doc"))
    (home-page "http://github.com/willdonnelly/xdg-basedir")
    (synopsis
     "A basic implementation of the XDG Base Directory specification.")
    (description "On Unix platforms, this should be a very straightforward
implementation of the XDG Base Directory spec. On Windows,
it will attempt to do the right thing with regards to
choosing appropriate directories.")
    (license license:bsd-3)))

haskell-8.10-xdg-basedir

(define-public haskell-8.10-xml
  (package
    (name "haskell-8.10-xml")
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
    (outputs (list "out" "doc"))
    (home-page "https://github.com/GaloisInc/xml")
    (synopsis "A simple XML library.")
    (description "A simple XML library.")
    (license license:bsd-3)))

haskell-8.10-xml

(define-public haskell-8.10-xml-types
  (package
    (name "haskell-8.10-xml-types")
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
    (outputs (list "out" "doc"))
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

haskell-8.10-xml-types

(define-public haskell-8.10-yjtools
  (package
    (name "haskell-8.10-yjtools")
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
    (outputs (list "out" "doc"))
    (home-page
     "http://homepage3.nifty.com/salamander/second/projects/yjtools/index.xhtml")
    (synopsis "some tools for Monad, List, Tuple and so on.")
    (description "ifM, whenM, unlessM, doWhile, doWhile_ and so on.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-yjtools

(define-public haskell-8.10-zlib
  (package
    (name "haskell-8.10-zlib")
    (version "0.6.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zlib/zlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "125wbayk8ifp0gp8cb52afck2ziwvqfrjzbmwmy52g6bz7fnnzw0"))))
    (properties `((upstream-name . "zlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-non-blocking-ffi" "-f-pkg-config" "-f-bundled-c-zlib")
       #:cabal-revision
       ("1" "1r6sc6p648jgq4vslzbr171w52rk3fjv3wspxvs5kgkhygdr6ai6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.10-zlib

(define-public haskell-8.10-zstd
  (package
    (name "haskell-8.10-zstd")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zstd/zstd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vghl48cxcqy72sqk2gpi7rvy5ya36j13vndaxi6kck6bqivbhm0"))))
    (properties `((upstream-name . "zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fstandalone")))
    (outputs (list "out" "doc"))
    (home-page "https://github.com/luispedro/hs-zstd")
    (synopsis "Haskell bindings to the Zstandard compression algorithm")
    (description
     "A fast lossless compression algorithm, targeting real-time
compression scenarios at zlib-level and better compression ratios.")
    (license license:bsd-3)))

haskell-8.10-zstd

