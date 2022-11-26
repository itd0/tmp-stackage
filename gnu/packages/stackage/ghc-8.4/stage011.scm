;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage011)
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
(define-public haskell-8.4-Earley
  (package
    (name "haskell-8.4-Earley")
    (version "0.12.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Earley/Earley-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07dxsl2cvb40z2z41a263xpg5mhplaqj9p2qjhaw6q5rkjz9653k"))))
    (properties `((upstream-name . "Earley") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-ListLike)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-8.4-Earley

(define-public haskell-8.4-IPv6Addr
  (package
    (name "haskell-8.4-IPv6Addr")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IPv6Addr/IPv6Addr-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l2yfn46xyv0ib30k0kmhw3vl4vfmziqinhbynpi4yrmy6lmj29v"))))
    (properties `((upstream-name . "IPv6Addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network-info)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/MichelBoucey/IPv6Addr")
    (synopsis "Library to deal with IPv6 address text representations.")
    (description
     "Library to deal with IPv6 address text representations, canonization and manipulations.")
    (license license:bsd-3)))

haskell-8.4-IPv6Addr

(define-public haskell-8.4-MemoTrie
  (package
    (name "haskell-8.4-MemoTrie")
    (version "0.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MemoTrie/MemoTrie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "157p0pi6rrq74a35mq6zkkycv4ah7xhkbrcmnkb9xf7pznw4aq0x"))))
    (properties `((upstream-name . "MemoTrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-newtype-generics)))
    (home-page "https://github.com/conal/MemoTrie")
    (synopsis "Trie-based memo functions")
    (description
     "MemoTrie provides a basis for memoized functions over some domains,
using tries.  It's based on ideas from Ralf Hinze and code from
Spencer Janssen. Generic support thanks to Sam Boosalis.

Project wiki page: <http://haskell.org/haskellwiki/MemoTrie>

&#169; 2008-2016 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.4-MemoTrie

(define-public haskell-8.4-OpenGLRaw
  (package
    (name "haskell-8.4-OpenGLRaw")
    (version "3.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OpenGLRaw/OpenGLRaw-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x8w3x308jldj2c1xqcq3a3sc2jc06pdpgqkgjsmixi1skv4a1vb"))))
    (properties `((upstream-name . "OpenGLRaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-fuseglxgetprocaddress" "-fusegles2" "-f-osandroid")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-fixed)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-half)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A raw binding for the OpenGL graphics system")
    (description
     "OpenGLRaw is a raw Haskell binding for the OpenGL 4.6 graphics system and
lots of OpenGL extensions. It is basically a 1:1 mapping of OpenGL's C API,
intended as a basis for a nicer interface. OpenGLRaw offers access to all
necessary functions, tokens and types plus a general facility for loading
extension entries. The module hierarchy closely mirrors the naming structure
of the OpenGL extensions, making it easy to find the right module to import.
All API entries are loaded dynamically, so no special C header files are
needed for building this package. If an API entry is not found at runtime, a
userError is thrown.

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-8.4-OpenGLRaw

(define-public haskell-8.4-SCalendar
  (package
    (name "haskell-8.4-SCalendar")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SCalendar/SCalendar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "139lggc8f7sw703asdyxqbja0jfcgphx0l5si1046lsryinvywa9"))))
    (properties `((upstream-name . "SCalendar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-scalendar)))
    (home-page
     "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System")
    (synopsis
     "This is a library for handling calendars and resource availability
based on the \"top-nodes algorithm\" and set operations.")
    (description "")
    (license license:expat)))

haskell-8.4-SCalendar

(define-public haskell-8.4-TypeCompose
  (package
    (name "haskell-8.4-TypeCompose")
    (version "0.9.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/TypeCompose/TypeCompose-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0msss17lrya6y5xfvxl41xsqs6yr09iw6m1px4xlwin72xwly0sn"))))
    (properties `((upstream-name . "TypeCompose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pxg6az5vkl0zvs3zdvvvnhxqawd9fkkd44jmzzzyyibppgni6x4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)))
    (home-page "https://github.com/conal/TypeCompose")
    (synopsis "Type composition classes & instances")
    (description
     "TypeCompose provides some classes & instances for forms of type
composition, as well as some modules who haven't yet found a home.

Please see the project wiki page: <http://haskell.org/haskellwiki/TypeCompose>

Copyright 2007-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.4-TypeCompose

(define-public haskell-8.4-aeson-iproute
  (package
    (name "haskell-8.4-aeson-iproute")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-iproute/aeson-iproute-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13r6vyyw1pbk5sz32ari5kig23vsg57a5pir037adi7xicrm6kgf"))))
    (properties `((upstream-name . "aeson-iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/greydot/aeson-iproute")
    (synopsis "Aeson instances for iproute types")
    (description "Aeson instances for iproute types.")
    (license license:bsd-3)))

haskell-8.4-aeson-iproute

(define-public haskell-8.4-arithmoi
  (package
    (name "haskell-8.4-arithmoi")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arithmoi/arithmoi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0303bqlbf8abixcq3x3px2ijj01c9hlqadkv8rhls6f64a8h8cwb"))))
    (properties `((upstream-name . "arithmoi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-check-bounds")
       #:cabal-revision
       ("4" "0la3ng06rsf0yaj3gvwgn82d7817v5c1wdsn8f86xx62lswizmvb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-exact-pi)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/cartazio/arithmoi")
    (synopsis "Efficient basic number-theoretic functions.")
    (description "A library of basic functionality needed for
number-theoretic calculations. The aim of this library
is to provide efficient implementations of the functions.
Primes and related things (totients, factorisation),
powers (integer roots and tests, modular exponentiation).")
    (license license:expat)))

haskell-8.4-arithmoi

(define-public haskell-8.4-async-timer
  (package
    (name "haskell-8.4-async-timer")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-timer/async-timer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q6f0ig8m1ij1yz07b36799gavppb7dkwyvlc724gaj1q72bych6"))))
    (properties `((upstream-name . "async-timer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (home-page "https://github.com/mtesseract/async-timer#readme")
    (synopsis "Provides API for timer based execution of IO actions")
    (description
     "This is a lightweight package built on top of the async package
providing easy to use periodic timers. This can be used for executing
IO actions periodically.")
    (license license:bsd-3)))

haskell-8.4-async-timer

(define-public haskell-8.4-attoparsec-base64
  (package
    (name "haskell-8.4-attoparsec-base64")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-base64/attoparsec-base64-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rvkc7kaya42a8djkyj642r5dq952gwkhinif9r22ijaic656cq8"))))
    (properties `((upstream-name . "attoparsec-base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (home-page "https://github.com/athanclark/attoparsec-base64#readme")
    (synopsis
     "Fetch only base64 characters, erroring in the attoparsec monad on failure")
    (description "")
    (license license:bsd-3)))

haskell-8.4-attoparsec-base64

(define-public haskell-8.4-attoparsec-uri
  (package
    (name "haskell-8.4-attoparsec-uri")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-uri/attoparsec-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wzisb9xnykaxnp1jp0a3lvh1m2swynk2r2mg6nfv5jzlv52q0sf"))))
    (properties `((upstream-name . "attoparsec-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-attoparsec-ip)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytedump)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-ip)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/athanclark/attoparsec-uri#readme")
    (synopsis "URI parser / printer using attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-8.4-attoparsec-uri

(define-public haskell-8.4-bit-stream
  (package
    (name "haskell-8.4-bit-stream")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bit-stream/bit-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4vcg2y2il540syqdzk2wdixs8g672lhzjm46y40x4299yjw7w1"))))
    (properties `((upstream-name . "bit-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/Bodigrim/bit-stream#readme")
    (synopsis "Lazy, infinite, compact stream of Bool with O(1) indexing.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-bit-stream

(define-public haskell-8.4-bitcoin-types
  (package
    (name "haskell-8.4-bitcoin-types")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-types/bitcoin-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02y4svhcsml37p78g4cm97kyigcakgf4hds4bxnp0r4ba1498bxp"))))
    (properties `((upstream-name . "bitcoin-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base58string)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hexstring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis
     "Provides consistent low-level types used commonly among Bitcoin implementations")
    (description
     "Instead of having each Bitcoin library re-define the low level types it is using,
this library provides a ready-to-use collection of low-level types and aliases.")
    (license license:expat)))

haskell-8.4-bitcoin-types

(define-public haskell-8.4-bower-json
  (package
    (name "haskell-8.4-bower-json")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bower-json/bower-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wvygg3rdbxzrmr61a9w6ddv9pfric85ih8hnxyk0ydzn7i59abs"))))
    (properties `((upstream-name . "bower-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-better-errors)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/hdgarrood/bower-json")
    (synopsis "Read bower.json from Haskell")
    (description
     "Bower is a package manager for the web (see <http://bower.io>).
This package provides a data type and ToJSON/FromJSON instances for Bower's
package manifest file, bower.json.")
    (license license:expat)))

haskell-8.4-bower-json

(define-public haskell-8.4-bytestring-conversion
  (package
    (name "haskell-8.4-bytestring-conversion")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-conversion/bytestring-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y2fhwz632sp7n0iw87lz2g8vks4jgxz2kw99kysgivxfd4fmdqk"))))
    (properties `((upstream-name . "bytestring-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x8c42cfzb6fdvgkxxdxcpdf16csimlzsgahb1axnplmr6b3ba63")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-double-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/twittner/bytestring-conversion/")
    (synopsis "Type-classes to convert values to and from ByteString.")
    (description "Defines the type-classes 'ToByteString' and 'FromByteString'
to convert values to and from ByteString.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-bytestring-conversion

(define-public haskell-8.4-casing
  (package
    (name "haskell-8.4-casing")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/casing/casing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mznhlbg8qd2yrjg23rq7s77bijn92nrfx7bvx9sw8sqxwqkd2lf"))))
    (properties `((upstream-name . "casing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/casing")
    (synopsis "Convert between various source code casing conventions")
    (description
     "Converts between camelCase, PascalCase, kebab-case, and three
flavors of snake_case.")
    (license license:expat)))

haskell-8.4-casing

(define-public haskell-8.4-cborg
  (package
    (name "haskell-8.4-cborg")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cborg/cborg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10vlv5mwg9625rmir7mi0zj5ygs3j3vlhm2h8lilkbj5frgp764i"))))
    (properties `((upstream-name . "cborg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize-gmp")
       #:cabal-revision
       ("1" "0v3z332gfi3mf0ilw94qwa0afkz7w1n5rnjjj0g170dmqrjphvrg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-half)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://hackage.haskell.org/package/cborg")
    (synopsis "Concise Binary Object Representation")
    (description
     "This package (formerly @@binary-serialise-cbor@@) provides an efficient
implementation of the Concise Binary Object Representation (CBOR), as
specified by [RFC 7049](https://tools.ietf.org/html/rfc7049).

If you are looking for a library for serialisation of Haskell values,
have a look at the [serialise](/package/serialise) package, which is
built upon this library.

An implementation of the standard bijection between CBOR and JSON is provided
by the [cborg-json](/package/cborg-json) package. Also see [cbor-tool](/package/cbor-tool)
for a convenient command-line utility for working with CBOR data.")
    (license license:bsd-3)))

haskell-8.4-cborg

(define-public haskell-8.4-cheapskate
  (package
    (name "haskell-8.4-cheapskate")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate/cheapskate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qnyd8bni2rby6b02ff4bvfdhm1hwc8vzpmnms84jgrlg1lly3fm"))))
    (properties `((upstream-name . "cheapskate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dingus")
       #:cabal-revision
       ("2" "1h83fbfrlr417xyj01wf52h5h9zwjmq9711cx7qcwfax8pgszv1n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-xss-sanitize)))
    (home-page "http://github.com/jgm/cheapskate")
    (synopsis "Experimental markdown processor.")
    (description "This is an experimental Markdown processor in pure
Haskell.  It aims to process Markdown efficiently and in
the most forgiving possible way.  It is designed to deal
with any input, including garbage, with linear
performance.  Output is sanitized by default for
protection against XSS attacks.

Several markdown extensions are implemented, including
fenced code blocks, significant list start numbers, and
autolinked URLs.  See README.markdown for details.")
    (license license:bsd-3)))

haskell-8.4-cheapskate

(define-public haskell-8.4-check-email
  (package
    (name "haskell-8.4-check-email")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/check-email/check-email-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wkz853ikr4yns2z12rnzprb98q4b8li1n6lmx5v6m0vgx1a9hw"))))
    (properties `((upstream-name . "check-email") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-email-validate)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages base) glibc)))
    (home-page "https://github.com/qoelet/check-email#readme")
    (synopsis "Confirm whether an email is valid and probably existant.")
    (description
     "See README at <https://github.com/qoelet/check-email#readme>")
    (license license:bsd-3)))

haskell-8.4-check-email

(define-public haskell-8.4-cookie
  (package
    (name "haskell-8.4-cookie")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cookie/cookie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qy09i0jh2z9i9avy2khf8a8afq4fqgnv0fyrszgfg4kmq2fsi9j"))))
    (properties `((upstream-name . "cookie") (hidden? . #f)))
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
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-8.4-cookie

(define-public haskell-8.4-cql
  (package
    (name "haskell-8.4-cql")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cql/cql-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "021qaz6qvbdp76gdyfcs07wnnq6k6r1cmqky0g3giinjdrm4qac9"))))
    (properties `((upstream-name . "cql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-incompatible-varint")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-Decimal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://gitlab.com/twittner/cql/")
    (synopsis "Cassandra CQL binary protocol.")
    (description
     "Implementation of Cassandra's CQL Binary Protocol
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v3.spec Version 3>
and
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v4.spec Version 4>.

It provides encoding and decoding functionality as well as representations
of the various protocol related types.

Thus it can serve as a building block for writing Cassandra drivers, such
as <http://hackage.haskell.org/package/cql-io cql-io>.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-cql

(define-public haskell-8.4-crypt-sha512
  (package
    (name "haskell-8.4-crypt-sha512")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypt-sha512/crypt-sha512-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wsma9frdrn39i506zydlzlk1ir6jh1pidqfjms8rwqjpx965gn2"))))
    (properties `((upstream-name . "crypt-sha512") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09fj4nghk80l8pqxjiddw0v8frwg46v5izkjsx2jvk1ksh6cif2b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cryptohash-sha512)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages crypto) libxcrypt)))
    (home-page "https://github.com/phadej/crypt-sha512")
    (synopsis "Pure Haskell implelementation for GNU SHA512 crypt algorithm")
    (description
     "crypt() is the password encryption function.  It is based on the Data
Encryption Standard algorithm with variations intended (among other things) to
discourage use of hardware implementations of a key search.

This package provides a pure Haskell implementation of SHA512 crypt scheme.")
    (license license:bsd-3)))

haskell-8.4-crypt-sha512

(define-public haskell-8.4-cue-sheet
  (package
    (name "haskell-8.4-cue-sheet")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cue-sheet/cue-sheet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13vzay3i385k8i2k56bl9rr9sy7mnhas4b35xc8q7744gbl5hji1"))))
    (properties `((upstream-name . "cue-sheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "14kgk1digf1vbsr7v5jvj8gajkx0rkn3zjl4m8csqhxalkaxa2zl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)))
    (home-page "https://github.com/mrkkrp/cue-sheet")
    (synopsis "Support for construction, rendering, and parsing of CUE sheets")
    (description
     "Support for construction, rendering, and parsing of CUE sheets.")
    (license license:bsd-3)))

haskell-8.4-cue-sheet

(define-public haskell-8.4-data-bword
  (package
    (name "haskell-8.4-data-bword")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-bword/data-bword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zfvk7b7qi6inra0kc03rhsic2rj0818n4i03lfwzvb5g22izw3h"))))
    (properties `((upstream-name . "data-bword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-8.4-data-bword

(define-public haskell-8.4-dawg-ord
  (package
    (name "haskell-8.4-dawg-ord")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dawg-ord/dawg-ord-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s92i5z63maq74ni49l282pqbz0r0c22miyjjilipr0wnz7rl4nr"))))
    (properties `((upstream-name . "dawg-ord") (hidden? . #f)))
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
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/kawu/dawg-ord")
    (synopsis "Directed acyclic word graphs")
    (description
     "The library implements /directed acyclic word graphs/ (DAWGs) internally
represented as /minimal acyclic deterministic finite-state automata/.
The implemented version of DAWG can be seen as a map from
sequences of alphabet symbols (keys) to values.

The library allows to build DAWGs over any symbols and values
provided that they both have `Ord` instances (see the
\"Data.DAWG.Ord\" module).
It also provides a fast insert operation which can be used to
construct DAWGs on-the-fly.")
    (license license:bsd-3)))

haskell-8.4-dawg-ord

(define-public haskell-8.4-deriving-compat
  (package
    (name "haskell-8.4-deriving-compat")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-compat/deriving-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h5jfpwawp7xn9vi82zqskaypa3vypm97lz2farmmfqvnkw60mj9"))))
    (properties `((upstream-name . "deriving-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")
       #:cabal-revision
       ("1" "1s672vc7w96fmvr1p3fkqi9q80sn860j14545sskpxb8iz9f7sxg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/haskell-compat/deriving-compat")
    (synopsis "Backports of GHC deriving extensions")
    (description
     "Provides Template Haskell functions that mimic deriving
extensions that were introduced or modified in recent versions
of GHC. Currently, the following typeclasses/extensions are covered:

* Deriving @@Bounded@@

* Deriving @@Enum@@

* Deriving @@Ix@@

* Deriving @@Eq@@, @@Eq1@@, and @@Eq2@@

* Deriving @@Ord@@, @@Ord1@@, and @@Ord2@@

* Deriving @@Read@@, @@Read1@@, and @@Read2@@

* Deriving @@Show@@, @@Show1@@, and @@Show2@@

* @@DeriveFoldable@@

* @@DeriveFunctor@@

* @@DeriveTraversable@@

* @@GeneralizedNewtypeDeriving@@ (with GHC 8.2 or later)

* @@DerivingVia@@ (with GHC 8.2 or later)

See the \"Data.Deriving\" module for a full list of backported changes.

Note that some recent GHC typeclasses/extensions are not covered by this package:

* @@DeriveDataTypeable@@

* @@DeriveGeneric@@, which was introducted in GHC 7.2 for deriving
@@Generic@@ instances, and modified in GHC 7.6 to allow derivation
of @@Generic1@@ instances. Use @@Generics.Deriving.TH@@ from
@@<http://hackage.haskell.org/package/generic-deriving generic-deriving>@@
to derive @@Generic(1)@@ using Template Haskell.

* @@DeriveLift@@, which was introduced in GHC 8.0 for deriving
@@Lift@@ instances. Use @@Language.Haskell.TH.Lift@@ from
@@<http://hackage.haskell.org/package/th-lift th-lift>@@
to derive @@Lift@@ using Template Haskell.

* The @@Bifunctor@@ typeclass, which was introduced in GHC 7.10,
as well as the @@Bifoldable@@ and @@Bitraversable@@ typeclasses, which
were introduced in GHC 8.2. Use @@Data.Bifunctor.TH@@ from
@@<http://hackage.haskell.org/package/bifunctors bifunctors>@@
to derive these typeclasses using Template Haskell.")
    (license license:bsd-3)))

haskell-8.4-deriving-compat

(define-public haskell-8.4-df1
  (package
    (name "haskell-8.4-df1")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/df1/df1-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1qrgf823bf33g6vvilg9q4v1avdwh0iprf26qypzjsbzykbhj91n"))))
    (properties `((upstream-name . "df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "Type, render and parse the df1 hierarchical structured log format")
    (description
     "Type, render and parse logs in /df1/ format, a hierarchical structured
log format that is easy for humans and fast for computers.")
    (license license:bsd-3)))

haskell-8.4-df1

(define-public haskell-8.4-di-core
  (package
    (name "haskell-8.4-di-core")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-core/di-core-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rfza96ljcf754mj44m2ffm51k9v6c0ii2sqqnddjkva3h3hx47h"))))
    (properties `((upstream-name . "di-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging without monad towers.")
    (description
     "Typeful hierarchical structured logging without monad towers.")
    (license license:bsd-3)))

haskell-8.4-di-core

(define-public haskell-8.4-diagrams-solve
  (package
    (name "haskell-8.4-diagrams-solve")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-solve/diagrams-solve-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17agchqkmj14b17sw50kzxq4hm056g5d8yy0wnqn5w8h1d0my7x4"))))
    (properties `((upstream-name . "diagrams-solve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1yl8cs05fzqcz49p601am1ij66m9pa70yamhfxgcvya2pf8nimlf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-8.4-diagrams-solve

(define-public haskell-8.4-distributed-closure
  (package
    (name "haskell-8.4-distributed-closure")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributed-closure/distributed-closure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rkw5r5r3jlrkckjkqv290qx890a8sipx1c7n2syk1f6bshgwkny"))))
    (properties `((upstream-name . "distributed-closure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://github.com/tweag/distributed-closure")
    (synopsis "Serializable closures for distributed programming.")
    (description "See README.")
    (license license:bsd-3)))

haskell-8.4-distributed-closure

(define-public haskell-8.4-distributive
  (package
    (name "haskell-8.4-distributive")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributive/distributive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y566r97sfyvhsmd4yxiz4ns2mqgwf5bdbp56wgxl6wlkidq0wwi"))))
    (properties `((upstream-name . "distributive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")
       #:cabal-revision
       ("6" "06bd38rf31yrvvy989r44pm0id3dsxwcp6nxg7wk6ccj3n2b8rzk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/distributive/")
    (synopsis "Distributive functors -- Dual to Traversable")
    (description "Distributive functors -- Dual to Traversable")
    (license license:bsd-3)))

haskell-8.4-distributive

(define-public haskell-8.4-drifter
  (package
    (name "haskell-8.4-drifter")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/drifter/drifter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f16v4v0ff27qk71a6fsrcwy02nc53g9q1qrfscn8q3swi3rslyz"))))
    (properties `((upstream-name . "drifter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/AndrewRademacher/drifter")
    (synopsis "Simple schema management for arbitrary databases.")
    (description
     "Simple support for migrating database schemas, which allows
haskell functions to be run as a part of the migration. Note
that this library isn't meant to be used directly, but rather
as a base library for a specific driver. For an example of a
functioning driver, you shold check out <https://hackage.haskell.org/package/drifter-postgresql drifter-postgresql>.")
    (license license:expat)))

haskell-8.4-drifter

(define-public haskell-8.4-elm-export
  (package
    (name "haskell-8.4-elm-export")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-export/elm-export-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mgrcd1hrg6rjb5x18zh9vcxqsc9hnfwvvr1nia2piqqb40n565z"))))
    (properties `((upstream-name . "elm-export") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-wl-pprint-text)))
    (home-page "http://github.com/krisajenkins/elm-export")
    (synopsis "A library to generate Elm types from Haskell source.")
    (description
     "Generate Elm source code automatically from Haskell types. Using GHC.Generics, we can automatically derive Elm type declarations, and Aeson-compatible JSON decoders & encoders.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-elm-export

(define-public haskell-8.4-fast-digits
  (package
    (name "haskell-8.4-fast-digits")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-digits/fast-digits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fyqdlb5wmsbsxsk8s7p8j2g3g4idsv9ki67ay1dw0lj8xp5g17c"))))
    (properties `((upstream-name . "fast-digits") (hidden? . #f)))
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
                     haskell-8.4-digits)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)))
    (home-page "https://github.com/Bodigrim/fast-digits")
    (synopsis "The fast library for integer-to-digits conversion.")
    (description
     "Convert an integer to digits and back.
Usually this library is twice as fast as \"Data.Digits\".
For small bases and long numbers it may be up to 40 times faster.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-fast-digits

(define-public haskell-8.4-fast-logger
  (package
    (name "haskell-8.4-fast-logger")
    (version "2.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-logger/fast-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ad2vq4nifdxshqk9yrmghqizhkgybfz134kpr6padglb2mxxrdv"))))
    (properties `((upstream-name . "fast-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nrxf1gn7r5niyw173n9b57kysbybgbf1qpzg7ph2hsa52iir1dd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-auto-update)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-easy-file)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unix-time)))
    (home-page "https://github.com/kazu-yamamoto/logger")
    (synopsis "A fast logging system")
    (description "A fast logging system")
    (license license:bsd-3)))

haskell-8.4-fast-logger

(define-public haskell-8.4-flat-mcmc
  (package
    (name "haskell-8.4-flat-mcmc")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flat-mcmc/flat-mcmc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zgi69vgwss7hhv893n5z3av0byb5hiblha7k3ck4bbfmkgakkl7"))))
    (properties `((upstream-name . "flat-mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pjkyvs4c6yx6jva08zw2b1qfhhv9q71sy806f5lddjsknnym2fn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mcmc-types)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-monad-par)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-mwc-probability)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/jtobin/flat-mcmc")
    (synopsis "Painless general-purpose sampling.")
    (description
     "flat-mcmc is a Haskell library for painless, efficient, general-purpose
sampling from continuous distributions.

flat-mcmc uses an ensemble sampler that is invariant to affine
transformations of space.  It wanders a target probability distribution's
parameter space as if it had been \"flattened\" or \"unstretched\" in some sense,
allowing many particles to explore it locally and in parallel.

In general this sampler is useful when you want decent performance without
dealing with any tuning parameters or local proposal distributions.

flat-mcmc exports an 'mcmc' function that prints a trace to stdout, as well
as a 'flat' transition operator that can be used more generally.

> import Numeric.MCMC.Flat
> import qualified Data.Vector.Unboxed as U (unsafeIndex)
>
> rosenbrock :: Particle -> Double
> rosenbrock xs = negate (5  * (x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2) where
>   x0 = U.unsafeIndex xs 0
>   x1 = U.unsafeIndex xs 1
>
> origin :: Ensemble
> origin = ensemble [
>     particle [negate 1.0, negate 1.0]
>   , particle [negate 1.0, 1.0]
>   , particle [1.0, negate 1.0]
>   , particle [1.0, 1.0]
>   ]
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 12500 origin rosenbrock")
    (license license:expat)))

haskell-8.4-flat-mcmc

(define-public haskell-8.4-flay
  (package
    (name "haskell-8.4-flay")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flay/flay-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vqkjjf2bzmi489wsx23ryyplbg26q9qrzb98dz80j5b5rj3xzq1"))))
    (properties `((upstream-name . "flay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/flay")
    (synopsis
     "Work generically on your datatype without knowing its shape nor its contents.")
    (description
     "Work generically on your datatype without knowing its shape nor its contents using
a principlied approach.")
    (license license:bsd-3)))

haskell-8.4-flay

(define-public haskell-8.4-free-vl
  (package
    (name "haskell-8.4-free-vl")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free-vl/free-vl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gq2lqzrv77w02x1sdym5156q3aycp887h9wzgz59z22bg9kxxjp"))))
    (properties `((upstream-name . "free-vl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1711k76b6w7gfqvc8z9jnylj4hhk3rvx7ap31y1mmq4g2a4s82qm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://github.com/aaronlevin/free-vl")
    (synopsis "van Laarhoven encoded Free Monad with Extensible Effects")
    (description
     "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.

For more information on the van Laarhoven Free Monads, including examples,
please see the following blog posts:

Initial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>

Adding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>")
    (license license:bsd-3)))

haskell-8.4-free-vl

(define-public haskell-8.4-generic-aeson
  (package
    (name "haskell-8.4-generic-aeson")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-aeson/generic-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jw4rmfsky8r8551ddjy0i3va3dj37flzf23gxniyam7zy8kzh9l"))))
    (properties `((upstream-name . "generic-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0m2m2wfv9nhq8m7xl1nrmj4wy3yip3s31b4448za58ryrwkdgjzd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/generic-aeson")
    (synopsis "Derivation of Aeson instances using GHC generics.")
    (description "Derivation of Aeson instances using GHC generics.")
    (license license:bsd-3)))

haskell-8.4-generic-aeson

(define-public haskell-8.4-genvalidity
  (package
    (name "haskell-8.4-genvalidity")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity/genvalidity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17ykq38j9a2lzir6dqz5jgy6ndaafrpkhqhcg96c5ppg7wcxaaj0"))))
    (properties `((upstream-name . "genvalidity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Testing utilities for the validity library")
    (description
     "Note: There are companion instance packages for this library:

* <https://hackage.haskell.org/package/genvalidity-aeson genvalidity-aeson>

* <https://hackage.haskell.org/package/genvalidity-bytestring genvalidity-bytestring>

* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>

* <https://hackage.haskell.org/package/genvalidity-path genvalidity-path>

* <https://hackage.haskell.org/package/genvalidity-scientific genvalidity-scientific>

* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>

* <https://hackage.haskell.org/package/genvalidity-time genvalidity-time>

* <https://hackage.haskell.org/package/genvalidity-unordered-containers genvalidity-unordered-containers>

* <https://hackage.haskell.org/package/genvalidity-uuid genvalidity-uuid>

* <https://hackage.haskell.org/package/genvalidity-vector genvalidity-vector>")
    (license license:expat)))

haskell-8.4-genvalidity

(define-public haskell-8.4-ghc-typelits-natnormalise
  (package
    (name "haskell-8.4-ghc-typelits-natnormalise")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-natnormalise/ghc-typelits-natnormalise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04a338yfcl6jm1daax08zsy03myii4llzih4mlprkyid8i0yn740"))))
    (properties `((upstream-name . "ghc-typelits-natnormalise")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "GHC typechecker plugin for types of kind GHC.TypeLits.Nat")
    (description
     "A type checker plugin for GHC that can solve /equalities/ of types of kind
@@Nat@@, where these types are either:

* Type-level naturals

* Type variables

* Applications of the arithmetic expressions @@(+,-,*,^)@@.

It solves these equalities by normalising them to /sort-of/ @@SOP@@
(Sum-of-Products) form, and then perform a simple syntactic equality.

For example, this solver can prove the equality between:

@@
(x + 2)^(y + 2)
@@

and

@@
4*x*(2 + x)^y + 4*(2 + x)^y + (2 + x)^y*x^2
@@

Because the latter is actually the @@SOP@@ normal form of the former.

To use the plugin, add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.Normalise
@@

Pragma to the header of your file.")
    (license license:bsd-2)))

haskell-8.4-ghc-typelits-natnormalise

(define-public haskell-8.4-gl
  (package
    (name "haskell-8.4-gl")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gl/gl-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0f8l1ra05asqjnk97sliqb3wqvr6lic18rfs1f9dm1kw2lw2hkda"))))
    (properties `((upstream-name . "gl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-fuseglxgetprocaddress")
       #:cabal-revision
       ("3" "0q8d4237ds78y4p35xl2arlmmpgs2ag7krw9chby6q9dcs00zxrl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-fixed)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-half)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gl")
    (synopsis "Complete OpenGL raw bindings")
    (description "Complete OpenGL raw bindings")
    (license license:bsd-3)))

haskell-8.4-gl

(define-public haskell-8.4-h2c
  (package
    (name "haskell-8.4-h2c")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/h2c/h2c-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16aljqvzf8n1js0drqii99z3v8xba0468w27c9vmf5w483awkqjb"))))
    (properties `((upstream-name . "h2c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (home-page "https://bitbucket.org/fmapE/h2c")
    (synopsis
     "Bindings to Linux I2C with support for repeated-start transactions.")
    (description
     "H2C is a high-level binding to the Linux I2C subsystem with support for repeated-start transactions, not just individual reads and writes.")
    (license license:expat)))

haskell-8.4-h2c

(define-public haskell-8.4-heterocephalus
  (package
    (name "haskell-8.4-heterocephalus")
    (version "1.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heterocephalus/heterocephalus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kvrv15xm6igd6nkyfij1h982jqpbf61pzinv8jdb4fcjqwf08s7"))))
    (properties `((upstream-name . "heterocephalus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)))
    (home-page "https://github.com/arowM/heterocephalus#readme")
    (synopsis
     "A type-safe template engine for working with popular front end development tools")
    (description
     "Recent front end development tools and languages are growing fast and have
quite a complicated ecosystem. Few front end developers want to be forced
use Shakespeare templates. Instead, they would rather use @@node@@-friendly
engines such that @@pug@@, @@slim@@, and @@haml@@. However, in using these
template engines, we lose the compile-time variable interpolation and type
checking from Shakespeare.

Heterocephalus is intended for use with another feature rich template
engine and provides a way to interpolate server side variables into a
precompiled template file with @@forall@@, @@if@@, and @@case@@ statements.")
    (license license:expat)))

haskell-8.4-heterocephalus

(define-public haskell-8.4-hjsmin
  (package
    (name "haskell-8.4-hjsmin")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hjsmin/hjsmin-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "112lj2jgbcfdnr0hxc2cfxpxzxy9qyid04pbk0wwcqk977957hdy"))))
    (properties `((upstream-name . "hjsmin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-language-javascript)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (home-page "http://github.com/erikd/hjsmin")
    (synopsis "Haskell implementation of a javascript minifier")
    (description
     "Reduces size of javascript files by stripping out extraneous whitespace and
other syntactic elements, without changing the semantics.")
    (license license:bsd-3)))

haskell-8.4-hjsmin

(define-public haskell-8.4-hledger-lib
  (package
    (name "haskell-8.4-hledger-lib")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-lib/hledger-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kj3376gaaq39rwfyhfg7npdsy7z561184wia4rc8ijzf0isz2p1"))))
    (properties `((upstream-name . "hledger-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "071bnfgdv665llvggpqbg44kc141jz4ni0j6a1miyyw7wd2dvkix")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-Decimal)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-csv)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-easytest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parser-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tabular)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-uglymemo)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://hledger.org")
    (synopsis
     "Core data types, parsers and functionality for the hledger accounting tools")
    (description
     "This is a reusable library containing hledger's core functionality.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hledger-lib

(define-public haskell-8.4-hourglass
  (package
    (name "haskell-8.4-hourglass")
    (version "0.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hourglass/hourglass-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jnay5j13vpz6i1rkaj3j0d9v8jfpri499xn3l7wd01f81f5ncs4"))))
    (properties `((upstream-name . "hourglass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/vincenthz/hs-hourglass")
    (synopsis "simple performant time related library")
    (description
     "Simple time library focusing on simple but powerful and performant API

The backbone of the library are the Timeable and Time type classes.

Each Timeable instances can be converted to type that has a Time instances,
and thus are different representations of current time.")
    (license license:bsd-3)))

haskell-8.4-hourglass

(define-public haskell-8.4-hslua
  (package
    (name "haskell-8.4-hslua")
    (version "0.9.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hslua/hslua-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rdvv01p214zfjh6fcqjjgqwi8y42wad6cqzhlcv5gvclzw2ck8f"))))
    (properties `((upstream-name . "hslua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-lua" "-f-apicheck" "-f-lua_32bits" "-fallow-unsafe-gc" "-fexport-dynamic" "-f-luajit" "-f-lua501" "-f-lua502" "-f-use-pkgconfig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fail)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://hackage.haskell.org/package/hslua")
    (synopsis "A Lua language interpreter embedding in Haskell")
    (description "The Foreign.Lua module is a wrapper of Lua language
interpreter as described on
<https://www.lua.org/ lua.org>.

This package contains a full Lua interpreter version
5.3.4. If you want to link it with a system-wide Lua
installation, use the @@system-lua@@ flag.

<https://github.com/hslua/hslua-examples Example programs>
are available in a separate repository.")
    (license license:expat)))

haskell-8.4-hslua

(define-public haskell-8.4-hspec-smallcheck
  (package
    (name "haskell-8.4-hspec-smallcheck")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-smallcheck/hspec-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06c1ym793zkdwi4bxk5f4l7m1n1bg5jmnm0p68q2pa9rlhk1lc4s"))))
    (properties `((upstream-name . "hspec-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bih2r7pdfca8jw9jii84nsx3q6xfwjylsilgwxx02xl35dv0nkp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)))
    (home-page "http://hspec.github.io/")
    (synopsis "SmallCheck support for the Hspec testing framework")
    (description "SmallCheck support for the Hspec testing framework")
    (license license:expat)))

haskell-8.4-hspec-smallcheck

(define-public haskell-8.4-http-api-data
  (package
    (name "haskell-8.4-http-api-data")
    (version "0.3.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data/http-api-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cq6459b8wz6nvkvpi89dg189n5q2xdq4rdq435hf150555vmskf"))))
    (properties `((upstream-name . "http-api-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-text-show")
       #:cabal-revision
       ("1" "1843bapm2rdkl4941rycryircpqpp7mbal7vgmlikf11f8ws7y7x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)))
    (home-page "http://github.com/fizruk/http-api-data")
    (synopsis
     "Converting to/from HTTP API data like URL pieces, headers and query parameters.")
    (description
     "This package defines typeclasses used for converting Haskell data types to and from HTTP API data.

Please see README.md")
    (license license:bsd-3)))

haskell-8.4-http-api-data

(define-public haskell-8.4-http2
  (package
    (name "haskell-8.4-http2")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/http2/http2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rhy7z67bmbb15kxq9fmpgvqmc3npsbf1ym04cg07ymq9ihxvjig"))))
    (properties `((upstream-name . "http2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")
       #:cabal-revision
       ("1" "1ldv9i3px1nybqnxj0lrxj269jknz05bf4752cgx74x87c4h8ycg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-hex)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-network-byte-order)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (home-page "https://github.com/kazu-yamamoto/http2")
    (synopsis "HTTP/2 library including frames, priority queues and HPACK")
    (description "HTTP/2 library including frames, priority queues and HPACK.")
    (license license:bsd-3)))

haskell-8.4-http2

(define-public haskell-8.4-hw-bits
  (package
    (name "haskell-8.4-hw-bits")
    (version "0.7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-bits/hw-bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p3bqkzsmmz66chrwykj8pawgg7m5dvzsqmr9lrsdxldgqq62i8s"))))
    (properties `((upstream-name . "hw-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsse42")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hw-int)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hw-string-parse)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/haskell-works/hw-bits#readme")
    (synopsis "Bit manipulation")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-bits

(define-public haskell-8.4-immortal
  (package
    (name "haskell-8.4-immortal")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/immortal/immortal-" version
                    ".tar.gz"))
              (sha256
               (base32
                "120znjn7jrmcnzgka8zbiih4g8imh732iivjdzzbpj1kgywrvj0i"))))
    (properties `((upstream-name . "immortal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (home-page "https://github.com/feuerbach/immortal")
    (synopsis "Spawn threads that never die (unless told to do so)")
    (description "A small library to create threads that never die.
This is useful e.g. for writing servers.")
    (license license:expat)))

haskell-8.4-immortal

(define-public haskell-8.4-indentation-parsec
  (package
    (name "haskell-8.4-indentation-parsec")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indentation-parsec/indentation-parsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m7jr1s7h4vrx0lbl88gjrpd6zgzalmqzqsv6rn5s17ay5p88dqf"))))
    (properties `((upstream-name . "indentation-parsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-indentation-core)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://bitbucket.org/adamsmd/indentation")
    (synopsis "Indentation sensitive parsing combinators for Parsec")
    (description
     "Indentation sensitive parsing combinators for Parsec

See

__Michael D. Adams and Ömer S. Ağacan__.
Indentation-sensitive parsing for Parsec.
In /Proceedings of the 2014 ACM SIGPLAN Symposium on Haskell/,
Haskell ’14, pages 121–132.
ACM, New York, NY, USA, September 2014. ISBN 978-1-4503-3041-1.
<http://dx.doi.org/10.1145/2633357.2633369 doi:10.1145/2633357.2633369>.

This package provides indentation combinators for
Parsec.  For Trifecta, install
indentation-trifecta.  For backward compatability
or to install both, install indentation.")
    (license license:bsd-3)))

haskell-8.4-indentation-parsec

(define-public haskell-8.4-io-streams
  (package
    (name "haskell-8.4-io-streams")
    (version "1.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams/io-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12rcdg2d70644bvn838fxcjkssqj8pssnx5y657si5rijcbkgjsx"))))
    (properties `((upstream-name . "io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-nointeractivetests")
       #:cabal-revision
       ("2" "1mcab95d6hm098myh9gp7sh10srigjphgvm8s9pfs7jg5hzghy14")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-zlib-bindings)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/io-streams")
    (synopsis "Simple, composable, and easy-to-use stream I/O")
    (description
     "/Overview/

The io-streams library contains simple and easy-to-use primitives for I/O
using streams. Most users will want to import the top-level convenience
module \"System.IO.Streams\", which re-exports most of the library:

@@
import           System.IO.Streams (InputStream, OutputStream)
import qualified System.IO.Streams as Streams
@@

For first-time users, @@io-streams@@ comes with an included tutorial, which can
be found in the \"System.IO.Streams.Tutorial\" module.

/Features/

The @@io-streams@@ user API has two basic types: @@InputStream a@@ and
@@OutputStream a@@, and three fundamental I/O primitives:

@@
\\-\\- read an item from an input stream
Streams.read :: InputStream a -> IO (Maybe a)

\\-\\- push an item back to an input stream
Streams.unRead :: a -> InputStream a -> IO ()

\\-\\- write to an output stream
Streams.write :: Maybe a -> OutputStream a -> IO ()
@@

Streams can be transformed by composition and hooked together with provided combinators:

@@
ghci> Streams.fromList [1,2,3::Int] >>= Streams.map (*10) >>= Streams.toList
[10,20,30]
@@

Stream composition leaves the original stream accessible:

@@
ghci> input \\<- Streams.fromByteString \\\"long string\\\"
ghci> wrapped \\<- Streams.takeBytes 4 input
ghci> Streams.read wrapped
Just \\\"long\\\"
ghci> Streams.read wrapped
Nothing
ghci> Streams.read input
Just \\\" string\\\"
@@

Simple types and operations in the IO monad mean straightforward and simple
exception handling and resource cleanup using Haskell standard library
facilities like 'Control.Exception.bracket'.

@@io-streams@@ comes with:

* functions to use files, handles, concurrent channels, sockets, lists,
vectors, and more as streams.

* a variety of combinators for wrapping and transforming streams, including
compression and decompression using zlib, controlling precisely how many
bytes are read from or written to a stream, buffering output using
bytestring builders, folds, maps, filters, zips, etc.

* support for parsing from streams using @@attoparsec@@.

* support for spawning processes and communicating with them using streams.")
    (license license:bsd-3)))

haskell-8.4-io-streams

(define-public haskell-8.4-justified-containers
  (package
    (name "haskell-8.4-justified-containers")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/justified-containers/justified-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ryff281gbn46zz7vax97h0qn5xn1mk7gdjpb38xs9ns36c0c6q"))))
    (properties `((upstream-name . "justified-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-roles)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-should-not-typecheck)))
    (home-page "https://github.com/matt-noonan/justified-containers")
    (synopsis
     "Keyed container types with type-checked proofs of key presence.")
    (description
     "This package contains wrappers around standard container types,
that provide guarantees about the presence of keys within the
container.")
    (license license:bsd-2)))

haskell-8.4-justified-containers

(define-public haskell-8.4-language-java
  (package
    (name "haskell-8.4-language-java")
    (version "0.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-java/language-java-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03hrj8hgyjmw2fvvk4ik30fdmbi3hndpkvf1bqcnpzqy5anwh58x"))))
    (properties `((upstream-name . "language-java") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fnbg9b8isyk8dpmggh736mms7a2m65956y1z15wds63imzhs2ik")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-8.4-language-java

(define-public haskell-8.4-lens-simple
  (package
    (name "haskell-8.4-lens-simple")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-simple/lens-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0al3bfhrq6lq43s6k0c03vcf126i1naajhd64shgi5s10yw9jgb1"))))
    (properties `((upstream-name . "lens-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-lens-family)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lens-family-core)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-lens-family-th)))
    (home-page "https://github.com/michaelt/lens-simple")
    (synopsis "simplified import of elementary lens-family combinators")
    (description
     "This module, <http://hackage.haskell.org/package/lens-simple/docs/Lens-Simple.html Lens.Simple>,
just re-exports the main modules from Russell O\\'Connor's
<http://hackage.haskell.org/package/lens-family lens-family> package, the
original van Laarhoven-O'Connor lens library.
@@lens-family@@ is particularly remarkable for its minute number of dependencies:
(apart from <http://hackage.haskell.org/package/mtl mtl>
they are all ghc \\'boot\\' libraries); but more importantly for its
extreme conceptual simplicity and theoretical soundness. Much of
the material it contains is well-explained, from a tutorial point of view, by
<http://hackage.haskell.org/package/lens-tutorial lens-tutorial> It is independent,
self-standing and readily intelligible apart from any darker
more general system of combinators that might attempt to extend it. Much
of it ought to be in the Prelude.

Convenient import of the elementary combinators from @@lens-family@@,
however, a little complicated. The idea of this trivial module, then, is just to make a sort of
low-powered, minimal-dependency, @@lens-family@@ equivalent of
the 800 lb gorilla of lens library imports:

> import Control.Lens

namely, the light-weight and elegant:

> import Lens.Simple

Check it out, it's even one character shorter!

The material in <http://hackage.haskell.org/package/lens-tutorial lens-tutorial>
will work fine if you make this substitution in the underlying
<http://hackage.haskell.org/package/lens-tutorial-1.0.0/docs/src/Control-Lens-Tutorial.html source>
and follow along as prompted.

As another illustration of the simplicity of the
fundamental van Laarhoven-O'Connor lens combinators - and their homogeneity with
@@Control.Lens@@ - note that the gloss
<https://github.com/michaelt/lens-family-simple/blob/master/examples/Pong.hs pong example>
from the @@lens@@ library examples directory - which continues to be
among the best introductory lens tutorials precisely by saying nothing -
requires only this abbreviating change of imports.

If you make that program more complicated,
you might of course end up needing
the more sophisticated material in @@Control.Lens@@ and
its immense mass of dependencies. On the other hand,
you might just need some of the additional material
present in the similarly demystifying
<http://hackage.haskell.org/package/microlens microlens>
or <http://hackage.haskell.org/package/microlens-th microlens-th> and
the associated modules.

This module was originally intended to simplify the use of packages that
follow the original promise of the van Laarhoven-O'Connor lenses.
/Correct practice is to export lenses without depending on a lens-library, where possible./
In basic cases these just use familiar @@Prelude@@ types, after all.
Examples of best practices in this respect are e.g. <http://hackage.haskell.org/package/lens-family-th lens-family-th> which
doesn't depend on @@lens-family@@ despite its name and pipes-related packages like
<http://hackage.haskell.org/package/pipes-bytestring pipes-bytestring>
and <http://hackage.haskell.org/package/pipes-group pipes-group>.

@@Lens.Simple@@ also re-exports convenient TH incantations like
@@makeLenses@@ from Dan Burton's associated
<http://hackage.haskell.org/package/lens-family-th lens-family-th>.
")
    (license license:bsd-3)))

haskell-8.4-lens-simple

(define-public haskell-8.4-lift-generics
  (package
    (name "haskell-8.4-lift-generics")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lift-generics/lift-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kk05dp6n93jgxq4x1lrckjrca6lrwa7qklr3vpzc6iyrlbvv7qf"))))
    (properties `((upstream-name . "lift-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ackkmjfqxyxhy9w03zlqvmi68la9yv4jf0sc8qdhyr5y30ac68s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/RyanGlScott/lift-generics")
    (synopsis
     "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation")
    (description
     "This package provides a \"GHC.Generics\"-based @@genericLiftWithPkg@@
function (intended for GHC 7.10 and earlier), as well as a
@@genericLift@@ function (only available on GHC 8.0 and later),
both of which can be used for providing a
@@Language.Haskell.TH.Syntax.lift@@ implementation. See the
documentation in the \"Language.Haskell.TH.Lift.Generics\" module
to get started.

Credit goes to Matthew Pickering for
<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.

Note that due to API limitations, \"GHC.Generics\" wasn't powerful
enough to come up with the entirety of a `lift` implementation prior
to GHC 8.0. For this reason, @@genericLiftWithPkg@@ requires you to
produce the package name yourself, which proves to be no small feat
(see the documentation for more info).

Luckily, you don't have to jump through as many hoops on GHC 8.0 and
later: simply use the @@genericLift@@ function, and life is good.")
    (license license:bsd-3)))

haskell-8.4-lift-generics

(define-public haskell-8.4-llvm-hs-pure
  (package
    (name "haskell-8.4-llvm-hs-pure")
    (version "6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/llvm-hs-pure/llvm-hs-pure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a9xzg6q4gd6j7dkvpkqpnrmh8y1fabllpjbh0m181v1c52aj23r"))))
    (properties `((upstream-name . "llvm-hs-pure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fail)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "Pure Haskell LLVM functionality (no FFI).")
    (description
     "llvm-hs-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.
It includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-hs package
builds on this one with FFI bindings to LLVM, but llvm-hs-pure does not require LLVM to be available.")
    (license license:bsd-3)))

haskell-8.4-llvm-hs-pure

(define-public haskell-8.4-logging-facade-syslog
  (package
    (name "haskell-8.4-logging-facade-syslog")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-facade-syslog/logging-facade-syslog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1acfkmr3cgprij9sfa0hfqyni6s8py22s3n0xa8qhy3syz1j72zb"))))
    (properties `((upstream-name . "logging-facade-syslog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hsyslog)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-logging-facade)))
    (home-page "https://github.com/peti/logging-facade-syslog#readme")
    (synopsis "A logging back-end to syslog(3) for the logging-facade library")
    (description
     "A simple \"System.Logging.Facade\" back-end for @@syslog(3)@@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.")
    (license license:bsd-3)))

haskell-8.4-logging-facade-syslog

(define-public haskell-8.4-massiv
  (package
    (name "haskell-8.4-massiv")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r7556mxsqzxg1kp4hrbv3c07xzkf08sycaqbfyy2xrzzczgiy9z"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-8.4-massiv

(define-public haskell-8.4-matrices
  (package
    (name "haskell-8.4-matrices")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrices/matrices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15vkkd3jwfdp648lfhskzhnisb1bzqia3asw8fmanpk71l9nyf9d"))))
    (properties `((upstream-name . "matrices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-8.4-matrices

(define-public haskell-8.4-matrix
  (package
    (name "haskell-8.4-matrix")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/matrix/matrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b1v17rc9q7ni44gkzp124kmc5d6xmlpiqvskgjrq54qpjinr5zs"))))
    (properties `((upstream-name . "matrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0iy0gdgg68ldhgm4lzvzl5pmzflx0r4brdbdkq75rkarm7cigawn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-loop)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/matrix")
    (synopsis "A native implementation of matrix operations.")
    (description
     "Matrix library. Basic operations and some algorithms.

To get the library update your cabal package list (if needed) with @@cabal update@@ and
then use @@cabal install matrix@@, assuming that you already have Cabal installed.
Usage examples are included in the API reference generated by Haddock.

If you want to use GSL, BLAS and LAPACK, @@hmatrix@@ (<http://hackage.haskell.org/package/hmatrix>)
is the way to go.")
    (license license:bsd-3)))

haskell-8.4-matrix

(define-public haskell-8.4-mbox-utility
  (package
    (name "haskell-8.4-mbox-utility")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mbox-utility/mbox-utility-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y792np4i24jlyxfsm4dw3m1bvij5wxj77dkqj2hvclm7kw0kq75"))))
    (properties `((upstream-name . "mbox-utility") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lhka293xbgsjs7sb3yrck6q7vw4dfdhpmpalc7s9az1mj4l4mjz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hsemail)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-empty)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-spreadsheet)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "https://hackage.haskell.org/package/mbox-utility")
    (synopsis "List contents of an mbox file containing e-mails")
    (description
     "List contents of an mbox file containing e-mails.
This is intended for post-processing by the @@cutter@@ command.
See <http://hackage.haskell.org/package/cutter>.")
    (license license:bsd-3)))

haskell-8.4-mbox-utility

(define-public haskell-8.4-mfsolve
  (package
    (name "haskell-8.4-mfsolve")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mfsolve/mfsolve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wa2m8q49lv0a335ahgx2svkff8vaba65cqlfmmk43ww5x26f893"))))
    (properties `((upstream-name . "mfsolve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hjklj9cqcqjvsmav4n5biqh3cbalhd22rvw381glkzbmpv7ccdn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-8.4-mfsolve

(define-public haskell-8.4-microlens-aeson
  (package
    (name "haskell-8.4-microlens-aeson")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-aeson/microlens-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iahlh505jrlpd9ndkr5asfnzdpp6m6m2lm44ds15461py485wpj"))))
    (properties `((upstream-name . "microlens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ri98vr3bbx0l9b4vpmcwhf8fm5lgj92kw4g0v3jx6xajwwc5dc8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/fosskers/microlens-aeson/")
    (synopsis "Law-abiding lenses for Aeson, using microlens.")
    (description "Law-abiding lenses for Aeson, using microlens.")
    (license license:expat)))

haskell-8.4-microlens-aeson

(define-public haskell-8.4-monad-loops
  (package
    (name "haskell-8.4-monad-loops")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-loops/monad-loops-"
                    version ".tar.gz"))
              (sha256
               (base32
                "062c2sn3hc8h50p1mhqkpyv6x8dydz2zh3ridvlfjq9nqimszaky"))))
    (properties `((upstream-name . "monad-loops") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/mokus0/monad-loops")
    (synopsis "Monadic loops")
    (description "Some useful control operators for looping.

New in 0.4: STM loop operators have been split into a
new package instead of being conditionally-built.

New in 0.3.2.0: various functions for traversing lists and
computing minima/maxima using arbitrary procedures to compare
or score the elements.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-monad-loops

(define-public haskell-8.4-natural-transformation
  (package
    (name "haskell-8.4-natural-transformation")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-transformation/natural-transformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1by8xwjc23l6pa9l4iv7zp82dykpll3vc3hgxk0pgva724n8xhma"))))
    (properties `((upstream-name . "natural-transformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("10" "18d14fasp1l5xdfgp8swgcyyjd3irqj19cn298ksx9wiw43j818p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/ku-fpg/natural-transformation")
    (synopsis "A natural transformation package.")
    (description
     "A natural transformation transforms a container @@f a@@ into another
container @@g a@@. Natural transformations act as functor morphisms
in category theory.

The naming of '~>', ':~>' and '$$' were taken,
with permission, from Edward Kmett's @@indexed@@ package.")
    (license license:bsd-3)))

haskell-8.4-natural-transformation

(define-public haskell-8.4-network-simple
  (package
    (name "haskell-8.4-network-simple")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple/network-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a4hag26ry6lg90q4ppchvrm5xaij50jd4633mhfkfq8scgczm8d"))))
    (properties `((upstream-name . "network-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "13w83fjhjwigw6wj651pv0ipn4sx8jizy37g3nc3aifax0ab3z2l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-socks)))
    (home-page "https://github.com/k0001/network-simple")
    (synopsis "Simple network sockets usage patterns.")
    (description
     "This module exports functions that abstract simple network socket
usage patterns.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between versions.")
    (license license:bsd-3)))

haskell-8.4-network-simple

(define-public haskell-8.4-nonce
  (package
    (name "haskell-8.4-nonce")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nonce/nonce-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q9ph0aq51mvdvydnriqd12sfin36pfb8f588zgac1ybn8r64ksb"))))
    (properties `((upstream-name . "nonce") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "09xvg4lpmb1hw153afhbjrdg9v3npfwpdfhpv5y8b0qvb4zi3n9q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (home-page "https://github.com/prowdsponsor/nonce")
    (synopsis "Generate cryptographic nonces.")
    (description
     "According to the Wikipedia, a nonce is an arbitrary number used
only once in a cryptographic communication.  This package
contain helper functions for generating nonces.

There are many kinds of nonces used in different situations.
It's not guaranteed that by using the nonces from this package
you won't have any security issues.  Please make sure that the
nonces generated via this package are usable on your design.")
    (license license:bsd-3)))

haskell-8.4-nonce

(define-public haskell-8.4-nondeterminism
  (package
    (name "haskell-8.4-nondeterminism")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nondeterminism/nondeterminism-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ibxnkbr1lqjpr00cmw1p94cypcplxr0yr6q3aspl0vp08xwjdrh"))))
    (properties `((upstream-name . "nondeterminism") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/nondeterminism")
    (synopsis
     "A monad and monad transformer for nondeterministic computations.")
    (description "Nondeterministic computations")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-nondeterminism

(define-public haskell-8.4-numhask-test
  (package
    (name "haskell-8.4-numhask-test")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numhask-test/numhask-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1czcgnqxxm835q9m2iw3xyd8qwjpgdpjs1n9zzpd5sk6rklcjx6y"))))
    (properties `((upstream-name . "numhask-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-numhask-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/tonyday567/numhask#readme")
    (synopsis "Laws and tests for numhask")
    (description "Laws and tests for numhask.")
    (license license:bsd-3)))

haskell-8.4-numhask-test

(define-public haskell-8.4-odbc
  (package
    (name "haskell-8.4-odbc")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/odbc/odbc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dkkkrv43kl3643i0j4hgj1mcsk1jhrl086dygd6hqb9hd4156k5"))))
    (properties `((upstream-name . "odbc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "https://github.com/fpco/odbc")
    (synopsis "Haskell binding to the ODBC API, aimed at SQL Server driver")
    (description "Haskell binding to the ODBC API. This has been tested
against the Microsoft SQL Server ODBC drivers. Its test
suite runs on OS X, Windows and Linux.")
    (license license:bsd-3)))

haskell-8.4-odbc

(define-public haskell-8.4-openpgp-asciiarmor
  (package
    (name "haskell-8.4-openpgp-asciiarmor")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openpgp-asciiarmor/openpgp-asciiarmor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01zna9zifixnzgalr3k21g9dv143cn49imawm4q9x37i2r9kybxr"))))
    (properties `((upstream-name . "openpgp-asciiarmor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0j4qra3i7g607axj07d7f0ycj07d889nyw2s04m5wc98blbm5k4j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://floss.scru.org/openpgp-asciiarmor")
    (synopsis "OpenPGP (RFC4880) ASCII Armor codec")
    (description "OpenPGP (RFC4880) ASCII Armor codec")
    (license license:isc)))

haskell-8.4-openpgp-asciiarmor

(define-public haskell-8.4-parsers
  (package
    (name "haskell-8.4-parsers")
    (version "0.12.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/parsers/parsers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r05sc1mcglk8w596kq9a1brfn9c2vll8lq16j07ln0vsz4jzrc1"))))
    (properties `((upstream-name . "parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbinary")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-charset)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/parsers/")
    (synopsis "Parsing combinators")
    (description
     "This library provides convenient combinators for working with and building parsing combinator libraries.

Given a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you
get access to a large number of canned definitions. Instances exist for the parsers provided by @@parsec@@,
@@attoparsec@@ and base’s \"Text.Read\".")
    (license license:bsd-3)))

haskell-8.4-parsers

(define-public haskell-8.4-path-extra
  (package
    (name "haskell-8.4-path-extra")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extra/path-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fh4m3vidf75j43rk1n46y3bsn0j4247bz71s35651vi9s8vw27b"))))
    (properties `((upstream-name . "path-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/athanclark/path-extra#readme")
    (synopsis "URLs without host information")
    (description
     "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>")
    (license license:bsd-3)))

haskell-8.4-path-extra

(define-public haskell-8.4-pcre-heavy
  (package
    (name "haskell-8.4-pcre-heavy")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-heavy/pcre-heavy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lfbjgvl55jh226n307c2w8mrb3l1myzbkjh4j0jfcb8nybzcp4a"))))
    (properties `((upstream-name . "pcre-heavy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "053b667iqj5riz4mabhapcbn44saas5flklhxy09246y1prkddqy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-pcre-light)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-string-conversions)))
    (home-page "https://codeberg.org/valpackett/pcre-heavy")
    (synopsis
     "A regexp (regex) library on top of pcre-light you can actually use.")
    (description
     "A regular expressions library that does not suck.
Based on <https://hackage.haskell.org/package/pcre-light pcre-light>.
Takes and returns <https://hackage.haskell.org/package/stringable Stringables> everywhere.
Includes a QuasiQuoter for regexps that does compile time checking.
SEARCHES FOR MULTIPLE MATCHES! DOES REPLACEMENT!")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-pcre-heavy

(define-public haskell-8.4-pgp-wordlist
  (package
    (name "haskell-8.4-pgp-wordlist")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pgp-wordlist/pgp-wordlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ri4m4a18kmnpw2a3vcw7zgjagccqr3snw2qgljg3b92abl6z2z2"))))
    (properties `((upstream-name . "pgp-wordlist") (hidden? . #f)))
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
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/quchen/pgp-wordlist")
    (synopsis "Translate between binary data and a human-readable
collection of words.")
    (description "Translate between binary data and a human-readable
collection of words.

The PGP Word List consists of two phonetic alphabets, each
with one word per possible byte value. A string of bytes
is translated with these alphabets, alternating between
them at each byte.

The PGP words corresponding to the bytes @@5B 1D CA 6E@@
are \"erase breakaway spellbind headwaters\", for example.

For further information, see
<http://en.wikipedia.org/wiki/PGP_word_list Wikipedia>.")
    (license license:bsd-3)))

haskell-8.4-pgp-wordlist

(define-public haskell-8.4-pipes-attoparsec
  (package
    (name "haskell-8.4-pipes-attoparsec")
    (version "0.5.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-attoparsec/pipes-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zfaj6jxmld95xi4yxyrj1wl31dqfw464ffyrm54rg4x513b97py"))))
    (properties `((upstream-name . "pipes-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-parse)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/k0001/pipes-attoparsec")
    (synopsis "Attoparsec and Pipes integration.")
    (description
     "Utilities to run Attoparsec parsers on Pipes input streams.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.4-pipes-attoparsec

(define-public haskell-8.4-poly-arity
  (package
    (name "haskell-8.4-poly-arity")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/poly-arity/poly-arity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0afxrwq5is4l954kmlqm76g0zpy4jw6vvx2275q8xph4zr2ac46b"))))
    (properties `((upstream-name . "poly-arity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)))
    (home-page "https://hackage.haskell.org/package/poly-arity")
    (synopsis "Tools for working with functions of undetermined arity")
    (description "")
    (license license:bsd-3)))

haskell-8.4-poly-arity

(define-public haskell-8.4-process-extras
  (package
    (name "haskell-8.4-process-extras")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/process-extras/process-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klqgr37f1z2z6i0a9b0giapmq0p35l5k9kz1p7f0k1597w7agi9"))))
    (properties `((upstream-name . "process-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-ListLike)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)))
    (home-page "https://github.com/seereason/process-extras")
    (synopsis "Process extras")
    (description "Extends <http://hackage.haskell.org/package/process>.
Read process input and output as ByteStrings or
Text, or write your own ProcessOutput instance.
Lazy process input and output.  ProcessMaker class
for more flexibility in the process creation API.")
    (license license:expat)))

haskell-8.4-process-extras

(define-public haskell-8.4-protobuf
  (package
    (name "haskell-8.4-protobuf")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf/protobuf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1php9pydbh2jyr5x6h1i218w8kqwys5aniz2zm1hapv6ia8p3j5k"))))
    (properties `((upstream-name . "protobuf") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-hex)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/alphaHeavy/protobuf")
    (synopsis "Google Protocol Buffers via GHC.Generics")
    (description
     "Google Protocol Buffers via GHC.Generics.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
Google uses Protocol Buffers for almost all of its internal RPC protocols and file formats.

This library supports a useful subset of Google Protocol Buffers message specifications
in a Haskell. No preprocessor or additional build steps are required for message encoding and decoding.

Record specifications are built by defining records with specially defined fields that
capture most of the Protocol Buffers specification language.
")
    (license license:bsd-3)))

haskell-8.4-protobuf

(define-public haskell-8.4-regex-applicative
  (package
    (name "haskell-8.4-regex-applicative")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative/regex-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1riv7jqf26lbv4rm54sd6mrx8xdh4dvh4xbzymzdfdw13k6a4nb6"))))
    (properties `((upstream-name . "regex-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-8.4-regex-applicative

(define-public haskell-8.4-reinterpret-cast
  (package
    (name "haskell-8.4-reinterpret-cast")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reinterpret-cast/reinterpret-cast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r2k2fyfm5lknfdfs282l274bgaxf4j4dikk4hpwchjbj0n64m2n"))))
    (properties `((upstream-name . "reinterpret-cast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-loop)))
    (home-page "https://github.com/nh2/reinterpret-cast")
    (synopsis
     "Memory reinterpretation casts for Float/Double and Word32/Word64")
    (description
     "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.

The implementations in the @@.Internal@@ package are different ways to tackle
the problem; the @@array@@ method (current default) is about 5 times faster
than the @@FFI@@ method.")
    (license license:expat)))

haskell-8.4-reinterpret-cast

(define-public haskell-8.4-resolv
  (package
    (name "haskell-8.4-resolv")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/resolv/resolv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wczdy3vmpfcfwjn1m95bygc5d83m97xxmavhdvy5ayn8c402fp4"))))
    (properties `((upstream-name . "resolv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/resolv")
    (synopsis
     "Domain Name Service (DNS) lookup via the libresolv standard library routines")
    (description
     "This package implements an API for accessing
the [Domain Name Service (DNS)](https://tools.ietf.org/html/rfc1035)
resolver service via the standard @@libresolv@@ system library (whose
API is often available directly via the standard @@libc@@ C library) on
Unix systems.

This package also includes support for decoding message record types
as defined in the following RFCs:

- [RFC 1035](https://tools.ietf.org/html/rfc1035): Domain Names - Implementation And Specification
- [RFC 1183](https://tools.ietf.org/html/rfc1183): New DNS RR Definitions
- [RFC 2782](https://tools.ietf.org/html/rfc2782): A DNS RR for specifying the location of services (DNS SRV)
- [RFC 2915](https://tools.ietf.org/html/rfc2915): The Naming Authority Pointer (NAPTR) DNS Resource Record
- [RFC 3596](https://tools.ietf.org/html/rfc3596): DNS Extensions to Support IP Version 6
- [RFC 4034](https://tools.ietf.org/html/rfc4034): Resource Records for the DNS Security Extensions
- [RFC 4255](https://tools.ietf.org/html/rfc4255): Using DNS to Securely Publish Secure Shell (SSH) Key Fingerprints
- [RFC 4408](https://tools.ietf.org/html/rfc4408): Sender Policy Framework (SPF) for Authorizing Use of Domains in E-Mail, Version 1
- [RFC 5155](https://tools.ietf.org/html/rfc5155): DNS Security (DNSSEC) Hashed Authenticated Denial of Existence
- [RFC 6844](https://tools.ietf.org/html/rfc6844): DNS Certification Authority Authorization (CAA) Resource Record
- [RFC 6891](https://tools.ietf.org/html/rfc6891): Extension Mechanisms for DNS (EDNS(0))
- [RFC 7553](https://tools.ietf.org/html/rfc7553): The Uniform Resource Identifier (URI) DNS Resource Record

For Windows, the package [windns](https://hackage.haskell.org/package/windns)
provides a compatible subset of this package's API.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-resolv

(define-public haskell-8.4-safe-exceptions-checked
  (package
    (name "haskell-8.4-safe-exceptions-checked")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-exceptions-checked/safe-exceptions-checked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gyaq2pf87dqn0l6n3mi0qamf99y3zj5xxh513c0iqwdh8mma1yq"))))
    (properties `((upstream-name . "safe-exceptions-checked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "004id0k46j545zvkldfcv5qjgxzl35brm9h6fq72y43b9hl2y55f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)))
    (home-page
     "https://github.com/mitchellwrosen/safe-exceptions-checked#readme")
    (synopsis "Safe, checked exceptions")
    (description
     "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.")
    (license license:bsd-3)))

haskell-8.4-safe-exceptions-checked

(define-public haskell-8.4-say
  (package
    (name "haskell-8.4-say")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/say/say-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1r5kffjfwpas45g74sip8glrj1m9nygrnxjm7xgw898rq9pnafgn"))))
    (properties `((upstream-name . "say") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)))
    (home-page "https://github.com/fpco/say#readme")
    (synopsis "Send textual messages to a Handle in a thread-friendly way")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/say>")
    (license license:expat)))

haskell-8.4-say

(define-public haskell-8.4-semver
  (package
    (name "haskell-8.4-semver")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/semver/semver-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cf8dcxq4s479f826drncqc4hd07hv330zsipkrn0vc30sbkdlrn"))))
    (properties `((upstream-name . "semver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/brendanhay/semver")
    (synopsis
     "Representation, manipulation, and de/serialisation of Semantic Versions.")
    (description
     "Representation, manipulation, and de/serialisation of a Version type
following the Semantic Versioning specification.

For more information see: <http://semver.org>")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-semver

(define-public haskell-8.4-sparse-linear-algebra
  (package
    (name "haskell-8.4-sparse-linear-algebra")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sparse-linear-algebra/sparse-linear-algebra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfwydr0pzph932h7jvnmp1d8qqrhxsq7rbb6cjbmga55s5pfqn7"))))
    (properties `((upstream-name . "sparse-linear-algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-matrix-market-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "https://github.com/ocramz/sparse-linear-algebra")
    (synopsis "Numerical computing in native Haskell")
    (description
     "/Overview/

The @@sparse-linear-algebra@@ library provides iterative linear solvers, matrix decompositions, eigenvalue algorithms and related utilities. The user interface is provided by the top-level module \"Numeric.LinearAlgebra.Sparse\":

@@
import           Numeric.LinearAlgebra.Sparse
@@

Please refer to the README file for usage examples.
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-sparse-linear-algebra

(define-public haskell-8.4-state-codes
  (package
    (name "haskell-8.4-state-codes")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/state-codes/state-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gls0gyk3iz9i03zw31x3xhi5m1y2r98qkkrah8kz07fsbxqrqn"))))
    (properties `((upstream-name . "state-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)))
    (home-page "https://github.com/acamino/state-codes#README")
    (synopsis "ISO 3166-2:US state codes and i18n names")
    (description
     "This package provides the ISO 3166-2:US state codes and i18n names")
    (license license:expat)))

haskell-8.4-state-codes

(define-public haskell-8.4-statistics
  (package
    (name "haskell-8.4-statistics")
    (version "0.14.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statistics/statistics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y27gafkib0x0fn39qfn2rkgsfrm09ng35sbb5dwr7rclhnxz59l"))))
    (properties `((upstream-name . "statistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1bx70yqkn62ii17fjv3pig4hklrzkqd09zj67zzjiyjzmn04fir3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-erf)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-math-functions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-monad-par)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vector-th-unbox)))
    (home-page "https://github.com/bos/statistics")
    (synopsis "A library of statistical types, data, and functions")
    (description
     "This library provides a number of common functions and types useful
in statistics.  We focus on high performance, numerical robustness,
and use of good algorithms.  Where possible, we provide
references to the statistical literature.

The library's facilities can be divided into four broad categories:

* Working with widely used discrete and continuous probability
distributions.  (There are dozens of exotic distributions in use;
we focus on the most common.)

* Computing with sample data: quantile estimation, kernel density
estimation, histograms, bootstrap methods, significance testing,
and regression and autocorrelation analysis.

* Random variate generation under several different distributions.

* Common statistical tests for significant differences between
samples.")
    (license license:bsd-2)))

haskell-8.4-statistics

(define-public haskell-8.4-step-function
  (package
    (name "haskell-8.4-step-function")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/step-function/step-function-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mg7zqqs32zdh1x1738kk0yydyksbhx3y3x8n31f7byk5fvzqq6j"))))
    (properties `((upstream-name . "step-function") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0gailvq05bd7ycmhrqr99p653s5nhfhp4ppj0zg7qsvygwcqg2jf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)))
    (home-page "https://github.com/jonpetterbergman/step-function")
    (synopsis "Staircase functions or piecewise constant functions")
    (description
     "Step functions, staircase functions or piecewise constant functions.
Implemented as a default value and a series of transitions.
Supports merging two step functions using a supplied merging function.
")
    (license license:bsd-3)))

haskell-8.4-step-function

(define-public haskell-8.4-storable-complex
  (package
    (name "haskell-8.4-storable-complex")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-complex/storable-complex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fnwbfmd5vsaaqvf9182qdcjrzcfjd1zhdyvjwzifbwvn6r9kx4s"))))
    (properties `((upstream-name . "storable-complex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)))
    (home-page "https://github.com/cartazio/storable-complex")
    (synopsis "Storable instance for Complex")
    (description "Provides a Storable instance for Complex which is binary
compatible with C99, C++ and Fortran complex data types.

The only purpose of this package is to provide a standard
location for this instance so that other packages needing
this instance can play nicely together.")
    (license license:bsd-3)))

haskell-8.4-storable-complex

(define-public haskell-8.4-storable-tuple
  (package
    (name "haskell-8.4-storable-tuple")
    (version "0.0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-tuple/storable-tuple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dfzhxgkn1l6ls7zh6iifhyvhm8l47n40z0ar23c6ibsa94w1ynw"))))
    (properties `((upstream-name . "storable-tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-storable-record)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/storable-tuple/")
    (synopsis "Storable instance for pairs and triples")
    (description
     "Provides a Storable instance for pair and triple
which should be binary compatible with C99 and C++.
The only purpose of this package is to provide a standard location
for this instance so that other packages needing this instance
can play nicely together.")
    (license license:bsd-3)))

haskell-8.4-storable-tuple

(define-public haskell-8.4-string-transform
  (package
    (name "haskell-8.4-string-transform")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-transform/string-transform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f76aiimm2knc68g08dc9j495mjkas87jw8w27silrsq3pzayzad"))))
    (properties `((upstream-name . "string-transform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-8.4-string-transform

(define-public haskell-8.4-swagger
  (package
    (name "haskell-8.4-swagger")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swagger/swagger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l2liyiycbix23yayf8zq1fndavfjc06529s8sr3w8hd5ar4y567"))))
    (properties `((upstream-name . "swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/swagger")
    (synopsis "Implementation of swagger data model")
    (description
     "Implementation of Swagger specification version 1.2 as defined in
<https://github.com/wordnik/swagger-spec/blob/master/versions/1.2.md>")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-swagger

(define-public haskell-8.4-tasty-ant-xml
  (package
    (name "haskell-8.4-tasty-ant-xml")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-ant-xml/tasty-ant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1px562a9c3vn0qxy8zs8mkp73nfqca17hdwhv5p7qgawpjafxk32"))))
    (properties `((upstream-name . "tasty-ant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (home-page "http://github.com/ocharles/tasty-ant-xml")
    (synopsis "Render tasty output to XML for Jenkins")
    (description
     "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.")
    (license license:bsd-3)))

haskell-8.4-tasty-ant-xml

(define-public haskell-8.4-tasty-hspec
  (package
    (name "haskell-8.4-tasty-hspec")
    (version "1.1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i9kdzjpk750sa078jj3iyhp72k0177zk7vxl131r6dkyz09x27y"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0xa7h0p5r41m2a3l5r9ggmm4bc2a6wzgb4qvcqfl0dd2yb922bkz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-8.4-tasty-hspec

(define-public haskell-8.4-tasty-kat
  (package
    (name "haskell-8.4-tasty-kat")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-kat/tasty-kat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14yvlpli6cv6bn3kh8mlfp4x1l6ns4fvmfv6hmj75cvxyzq029d7"))))
    (properties `((upstream-name . "tasty-kat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-8.4-tasty-kat

(define-public haskell-8.4-tasty-quickcheck
  (package
    (name "haskell-8.4-tasty-quickcheck")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vr6szbbz3s5461i0zr8zpq347zfvidfzv5gf3xwxhm0yk731z8h"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ndkkywcqgb2wj339vgckjv5915da5kd4ixlkaww9fsba3qsrnwx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-pcre-light)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.4-tasty-quickcheck

(define-public haskell-8.4-temporary
  (package
    (name "haskell-8.4-temporary")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/temporary/temporary-" version
                    ".tar.gz"))
              (sha256
               (base32
                "144qhwfwg37l3k313raf4ssiz16jbgwlm1nf4flgqpsbd69jji4c"))))
    (properties `((upstream-name . "temporary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/feuerbach/temporary")
    (synopsis "Portable temporary file and directory support")
    (description "Functions for creating temporary files and directories.")
    (license license:bsd-3)))

haskell-8.4-temporary

(define-public haskell-8.4-text-manipulate
  (package
    (name "haskell-8.4-text-manipulate")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-manipulate/text-manipulate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bwxyjj3ll45srxhsp2ihikgqglvjc6m02ixr8xpvyqwkcfwgsg0"))))
    (properties `((upstream-name . "text-manipulate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dc81r4j0q18xy0nw1kimlf08gk8s9dhcshkcfx1c9hgd7a2gj75")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/brendanhay/text-manipulate")
    (synopsis
     "Case conversion, word boundary manipulation, and textual subjugation.")
    (description
     "Manipulate identifiers and structurally non-complex pieces
of text by delimiting word boundaries via a combination of whitespace,
control-characters, and case-sensitivity.

Has support for common idioms like casing of programmatic variable names,
taking, dropping, and splitting by word, and modifying the first character
of a piece of text.

/Caution:/ this library makes heavy use of the <http://hackage.haskell.org/package/text text>
library's internal loop optimisation framework. Since internal modules are not
guaranteed to have a stable API there is potential for build breakage when
the text dependency is upgraded. Consider yourself warned!")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-text-manipulate

(define-public haskell-8.4-th-desugar
  (package
    (name "haskell-8.4-th-desugar")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-desugar/th-desugar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nbsgf3lxmjj43f1xdjb1z486h8av47mym6v1y5pzdv39wgiykdv"))))
    (properties `((upstream-name . "th-desugar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "18jwg5i8i51pjq1ij8aqqbv4bm03djk7aca1s8jwh2dgsjmmn1is")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-expand-syns)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-th-orphans)))
    (home-page "https://github.com/goldfirere/th-desugar")
    (synopsis "Functions to desugar Template Haskell")
    (description
     "This package provides the Language.Haskell.TH.Desugar module, which desugars
Template Haskell's rich encoding of Haskell syntax into a simpler encoding.
This desugaring discards surface syntax information (such as the use of infix
operators) but retains the original meaning of the TH code. The intended use
of this package is as a preprocessor for more advanced code manipulation
tools. Note that the input to any of the ds... functions should be produced
from a TH quote, using the syntax [| ... |]. If the input to these functions
is a hand-coded TH syntax tree, the results may be unpredictable. In
particular, it is likely that promoted datatypes will not work as expected.")
    (license license:bsd-3)))

haskell-8.4-th-desugar

(define-public haskell-8.4-th-utilities
  (package
    (name "haskell-8.4-th-utilities")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-utilities/th-utilities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mki2s821b1zpdn5463qz5vl3kvxxam90iax1n6vznf0d7p4rik5"))))
    (properties `((upstream-name . "th-utilities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-th-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/fpco/th-utilities#readme")
    (synopsis "Collection of useful functions for use with Template Haskell")
    (description "")
    (license license:expat)))

haskell-8.4-th-utilities

(define-public haskell-8.4-timerep
  (package
    (name "haskell-8.4-timerep")
    (version "2.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/timerep/timerep-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fakjs6fgva6i035jiyr8hcgnrivw601cy8n3ja232d07izl2khx"))))
    (properties `((upstream-name . "timerep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/HugoDaniel/timerep")
    (synopsis
     "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)")
    (description
     "Parse and display time according to some RFC's.

Supported:

* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>

* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>

* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>

Special thanks to Koral for all the suggestions and help in solving some bugs.")
    (license license:bsd-3)))

haskell-8.4-timerep

(define-public haskell-8.4-titlecase
  (package
    (name "haskell-8.4-titlecase")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/titlecase/titlecase-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k29br4ck9hpjq0w8md7i5kbh47svx74i2abv6ql2awxa0liqwz7"))))
    (properties `((upstream-name . "titlecase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-8.4-titlecase

(define-public haskell-8.4-tmapmvar
  (package
    (name "haskell-8.4-tmapmvar")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapmvar/tmapmvar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qxl48wcbqvg6fymb8kpr4wz25ixkfvnvli2c7ncjxzdigyqrrd6"))))
    (properties `((upstream-name . "tmapmvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/tmapmvar")
    (synopsis "A single-entity stateful Map in STM, similar to tmapchan")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/tmapmvar#readme>")
    (license license:bsd-3)))

haskell-8.4-tmapmvar

(define-public haskell-8.4-transformers-base
  (package
    (name "haskell-8.4-transformers-base")
    (version "0.4.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-base/transformers-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s256bi0yh0x2hp2gwd30f3mg1cv53zz397dv1yhfsnfzmihrj6h"))))
    (properties `((upstream-name . "transformers-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-forphaninstances")
       #:cabal-revision
       ("1" "18j122ypx12rbl9bbf622fvj8nif4rsci8z4qw2llmznbvfl09s0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/mvv/transformers-base")
    (synopsis "Lift computations from the bottom of a transformer stack")
    (description
     "This package provides a straightforward port of @@monadLib@@'s BaseM
typeclass to @@transformers@@.")
    (license license:bsd-3)))

haskell-8.4-transformers-base

(define-public haskell-8.4-traverse-with-class
  (package
    (name "haskell-8.4-traverse-with-class")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/traverse-with-class/traverse-with-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fqz35kaffq79qs7kgdx2bml2a99x6k87hlczsfjcs1bcpqj18k5"))))
    (properties `((upstream-name . "traverse-with-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/traverse-with-class")
    (synopsis "Generic applicative traversals")
    (description "This is a generic programming library in the spirit of
\\\"Scrap your boilerplate with class\\\", but with several
improvements — most notably, it's based on the @@gtraverse@@
function instead of @@gfoldl@@.
@@gtraverse@@ is equivalent in power to @@gfoldl@@, but lets
you more easily write non-standard views of the data type.")
    (license license:expat)))

haskell-8.4-traverse-with-class

(define-public haskell-8.4-type-of-html-static
  (package
    (name "haskell-8.4-type-of-html-static")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-of-html-static/type-of-html-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00329zkxlbsjlwnw2pz2w6ahiam5c1k9j9fv2608wjfmxr8xkcr9"))))
    (properties `((upstream-name . "type-of-html-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-type-of-html)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html-static")
    (synopsis "Optimize static parts of type-of-html.")
    (description
     "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.
It converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.")
    (license license:bsd-3)))

haskell-8.4-type-of-html-static

(define-public haskell-8.4-typelits-witnesses
  (package
    (name "haskell-8.4-typelits-witnesses")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typelits-witnesses/typelits-witnesses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "078r9pbkzwzm1q821zqisj0wrx1rdk9w8c3ip0g1m5j97zzlmpaf"))))
    (properties `((upstream-name . "typelits-witnesses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1xpcz9y4f240gjb77ds5yvm9fb1kd550wfv5cixfsslwjmxsgqic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)))
    (home-page "https://github.com/mstksg/typelits-witnesses")
    (synopsis
     "Existential witnesses, singletons, and classes for operations on GHC TypeLits")
    (description "Provides witnesses for 'KnownNat' and 'KnownSymbol'
instances for various operations on GHC TypeLits - in
particular, the arithmetic operations defined in
\"GHC.TypeLits\", and also for type-level lists of
'KnownNat' and 'KnownSymbol' instances.

This is useful for situations where you have
@@'KnownNat' n@@, and you want to prove to GHC
@@'KnownNat' (n + 3)@@, or @@'KnownNat' (2*n + 4)@@, or when
constraints on the lower or upper limits of @@n@@ are
needed.

It's also useful for when you want to work with type
level lists of 'KnownNat' or 'KnownSymbol' instances and
singletons for traversing them, and be able to apply
analogies of 'natVal' and 'symbolVal' to lists with
analogies for 'SomeNat' and 'SomeSymbol'.

Note that most of the functionality in this library can
be reproduced in a more generic way using the great
<https://hackage.haskell.org/package/singletons singletons>
library.  The versions here are provided as a \"plumbing
included\" alternative that makes some commonly found
design patterns involving GHC's TypeLits functionality a
little smoother, especially when working with external
libraries or GHC TypeLit's Nat comparison API.

See README for more information.")
    (license license:expat)))

haskell-8.4-typelits-witnesses

(define-public haskell-8.4-unit-constraint
  (package
    (name "haskell-8.4-unit-constraint")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unit-constraint/unit-constraint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nayhjyprph6bg2hhrvd91nmrzz1bixlfib4cxsxpj8n014fhva4"))))
    (properties `((upstream-name . "unit-constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)))
    (home-page "https://hackage.haskell.org/package/unit-constraint")
    (synopsis "Extremely simple typeclass")
    (description "")
    (license license:bsd-3)))

haskell-8.4-unit-constraint

(define-public haskell-8.4-universum
  (package
    (name "haskell-8.4-universum")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universum/universum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0645gvj1p33d0fnlk09i74l11sv11bidyv44hyb2m0dls22hr89p"))))
    (properties `((upstream-name . "universum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-type-operators)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/serokell/universum")
    (synopsis "Custom prelude used in Serokell")
    (description "See README.md file for more details.")
    (license license:expat)))

haskell-8.4-universum

(define-public haskell-8.4-users
  (package
    (name "haskell-8.4-users")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/users/users-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m2k3vq938whv9577k3jrgx99hwr272s0fc22p2i6k0dgf9sqqb7"))))
    (properties `((upstream-name . "users") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1x26g7k6kmq2vng9y5qkz82z06rs322s2y8bs9y6r4vayvg07q9v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-bcrypt)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "A library simplifying user management for web applications")
    (description
     "Scrap the boilerplate for managing user accounts in web applications

Features:

* Easy to understand API

* CRUD for Users

* Session Management

* Password reset functionality

* Activation functionality

Current Backends:

* <http://hackage.haskell.org/package/users-postgresql-simple PostgreSQL-Simple Backend>

* <http://hackage.haskell.org/package/users-persistent Persistent Backend>
")
    (license license:expat)))

haskell-8.4-users

(define-public haskell-8.4-validity-bytestring
  (package
    (name "haskell-8.4-validity-bytestring")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-bytestring/validity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bwixp9fcblqy6b8kxvzg9l2i9lksn9g71243m2zcan1kh7a1qb2"))))
    (properties `((upstream-name . "validity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for bytestring")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-bytestring

(define-public haskell-8.4-validity-containers
  (package
    (name "haskell-8.4-validity-containers")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-containers/validity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ci07x5k9hjpn23pbp4bc0zvml5xbpppsmcxr1qfcg0g4036q29r"))))
    (properties `((upstream-name . "validity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for containers")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-containers

(define-public haskell-8.4-validity-scientific
  (package
    (name "haskell-8.4-validity-scientific")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-scientific/validity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hcdv8s7qfcrgc8hn335dzxx3q5qqbviwp4bf4lwnzbw611slcl1"))))
    (properties `((upstream-name . "validity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for scientific")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-scientific

(define-public haskell-8.4-validity-text
  (package
    (name "haskell-8.4-validity-text")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-text/validity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r22pipimzlznkv164n3pw3063v7yxz2l04m74y5j1zajxpg5lzd"))))
    (properties `((upstream-name . "validity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for text")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-text

(define-public haskell-8.4-validity-time
  (package
    (name "haskell-8.4-validity-time")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-time/validity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rg28pgicn8ycdswszbc070587pblbxdzl6mc082l9rgz3g4mcji"))))
    (properties `((upstream-name . "validity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-time

(define-public haskell-8.4-validity-unordered-containers
  (package
    (name "haskell-8.4-validity-unordered-containers")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-unordered-containers/validity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06qq6rdzcb0l145653fdrbyf18fci49v85mq8c0sjhhfr22pwm2h"))))
    (properties `((upstream-name . "validity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for unordered-containers")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-unordered-containers

(define-public haskell-8.4-validity-uuid
  (package
    (name "haskell-8.4-validity-uuid")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-uuid/validity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k2nkkc69m2j4aj3fjfd1i0cg4nli1g44nxdf5liv59hhvk33p4m"))))
    (properties `((upstream-name . "validity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for uuid")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-uuid

(define-public haskell-8.4-validity-vector
  (package
    (name "haskell-8.4-validity-vector")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-vector/validity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y6fhcdyd42nynf2lavdx9pnhy8ylqfkq1yickx2ap4w5hc61k57"))))
    (properties `((upstream-name . "validity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for vector")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-vector

(define-public haskell-8.4-vector-bytes-instances
  (package
    (name "haskell-8.4-vector-bytes-instances")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-bytes-instances/vector-bytes-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i4cxgm984qs5ldp1x7m9blxh8wd5y8acy2ic8kpgaak8pzycrkn"))))
    (properties `((upstream-name . "vector-bytes-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-8.4-vector-bytes-instances

(define-public haskell-8.4-vector-split
  (package
    (name "haskell-8.4-vector-split")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-split/vector-split-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05mxkgcg5v2w0vnqq8z5s6aj0aqi7b55mh6knaafalpc1yjyxbml"))))
    (properties `((upstream-name . "vector-split") (hidden? . #f)))
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
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-8.4-vector-split

(define-public haskell-8.4-vectortiles
  (package
    (name "haskell-8.4-vectortiles")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vectortiles/vectortiles-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h0mx5sl379486panyxpanld8qrlhak9knhz7jzqqv7is3rw8g1r"))))
    (properties `((upstream-name . "vectortiles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nlkhmfcvlzi96nzq8cpbqw5akrjahnrhl460q07vq6iyhibvf87")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-hex)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-protocol-buffers)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-protocol-buffers-descriptor)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/fosskers/vectortiles")
    (synopsis "GIS Vector Tiles, as defined by Mapbox.")
    (description
     "GIS Vector Tiles, as defined by Mapbox.
This library implements version 2.1 of the official Mapbox spec, as defined
here: <https://github.com/mapbox/vector-tile-spec/tree/master/2.1>

Note that currently this library ignores top-level protobuf extensions,
/Value/ extensions, and /UNKNOWN/ geometries.")
    (license license:bsd-3)))

haskell-8.4-vectortiles

(define-public haskell-8.4-vty
  (package
    (name "haskell-8.4-vty")
    (version "5.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vty/vty-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0nvsjc5awr6kwrsv02sz64vgza6g8phk9g6g07dx1sm2yfsvhyas"))))
    (properties `((upstream-name . "vty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18dyham92ksdvglmn8h955h6rq3pkyxi6bcgxg7jp3iwryz4zkja")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-string-qq)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/jtdaugherty/vty")
    (synopsis "A simple terminal UI library")
    (description
     "vty is terminal GUI library in the niche of ncurses. It is intended to
be easy to use, have no confusing corner cases, and good support for
common terminal types.

See the @@vty-examples@@ package as well as the program
@@test/interactive_terminal_test.hs@@ included in the @@vty@@ package for
examples on how to use the library.

Import the \"Graphics.Vty\" convenience module to get access to the core
parts of the library.

&#169; 2006-2007 Stefan O'Rear; BSD3 license.

&#169; Corey O'Connor; BSD3 license.

&#169; Jonathan Daugherty; BSD3 license.")
    (license license:bsd-3)))

haskell-8.4-vty

(define-public haskell-8.4-wai
  (package
    (name "haskell-8.4-wai")
    (version "3.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai/wai-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0jr3b2789wa4m6mxkz12ynz4lfsqmgbrcy0am8karyqr3x3528r8"))))
    (properties `((upstream-name . "wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Web Application Interface.")
    (description
     "Provides a common protocol for communication between web applications and web servers.

API docs and the README are available at <http://www.stackage.org/package/wai>.")
    (license license:expat)))

haskell-8.4-wai

(define-public haskell-8.4-web-routes
  (package
    (name "haskell-8.4-web-routes")
    (version "0.27.14.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes/web-routes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jpps7ay2hw41595hlfrx5k4lh9p2nib02n3rhd1vphpbnf392xg"))))
    (properties `((upstream-name . "web-routes") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page
     "http://www.happstack.com/docs/crashcourse/index.html#web-routes")
    (synopsis "portable, type-safe URL routing")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-8.4-web-routes

(define-public haskell-8.4-websockets
  (package
    (name "haskell-8.4-websockets")
    (version "0.12.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets/websockets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wacifjbskkfv6xq1sbmc8p60wn767xcjhz8hn8hyijxrrmjabci"))))
    (properties `((upstream-name . "websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-SHA)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://jaspervdj.be/websockets")
    (synopsis
     "A sensible and clean way to write WebSocket-capable servers in Haskell.")
    (description
     "This library allows you to write WebSocket-capable servers.

An example server:
<https://github.com/jaspervdj/websockets/blob/master/example/server.lhs>

An example client:
<https://github.com/jaspervdj/websockets/blob/master/example/client.hs>

See also:

* The specification of the WebSocket protocol:
<http://www.whatwg.org/specs/web-socket-protocol/>

* The JavaScript API for dealing with WebSockets:
<http://www.w3.org/TR/websockets/>")
    (license license:bsd-3)))

haskell-8.4-websockets

(define-public haskell-8.4-wild-bind-x11
  (package
    (name "haskell-8.4-wild-bind-x11")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wild-bind-x11/wild-bind-x11-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dqxcmdx3dinqkpwdnkb5nlc0cvn1gnwril5qmzixzshh03c8va9"))))
    (properties `((upstream-name . "wild-bind-x11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-interactive")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-X11)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-fold-debounce)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-wild-bind)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/debug-ito/wild-bind")
    (synopsis "X11-specific implementation for WildBind")
    (description
     "X11-specific implementation for WildBind. See <https://github.com/debug-ito/wild-bind>")
    (license license:bsd-3)))

haskell-8.4-wild-bind-x11

(define-public haskell-8.4-witherable
  (package
    (name "haskell-8.4-witherable")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/witherable/witherable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bga2vx3bkg1m6pwdvnxbqjbljpwr6mxyq94fi87j3zy08mmmnwx"))))
    (properties `((upstream-name . "witherable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w7slzr38i3669lf73bv0k0bjkijs9wyqpin3pdyvwaw4mvrm4np")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/fumieval/witherable")
    (synopsis "filterable traversable")
    (description
     "A stronger variant of `traverse` which can remove elements and generalised mapMaybe, catMaybes, filter")
    (license license:bsd-3)))

haskell-8.4-witherable

(define-public haskell-8.4-wl-pprint-annotated
  (package
    (name "haskell-8.4-wl-pprint-annotated")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-annotated/wl-pprint-annotated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1br7qyf27iza213inwhf9bm2k6in0zbmfw6w4clqlc9f9cj2nrkb"))))
    (properties `((upstream-name . "wl-pprint-annotated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qizgsiqsraj8w0qndcyw7grcmiylx63vp3lgw2dplchva8p3hp7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/minad/wl-pprint-annotated#readme")
    (synopsis "Pretty printer with annotation support")
    (description
     "Wadler/Leijen pretty printer with support for annotations and modernized API. Annotations are useful for coloring. See wl-pprint-console.")
    (license license:bsd-3)))

haskell-8.4-wl-pprint-annotated

(define-public haskell-8.4-xmlbf
  (package
    (name "haskell-8.4-xmlbf")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlbf/xmlbf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xfw9z1l3ja4qq0lj9i2n81fdh43ggprsy8rm71pcdacnpl056hq"))))
    (properties `((upstream-name . "xmlbf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0j5yvsz0ib5w80wp1gc0li376adw8l861xvf5paa2hdq55jkxvi6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (description
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-xmlbf

