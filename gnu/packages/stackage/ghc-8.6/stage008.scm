;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage008)
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
(define-public haskell-8.6-Glob
  (package
    (name "haskell-8.6-Glob")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Glob/Glob-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0953f91f62ncna402vsrfzdcyxhdpjna3bgdw017kad0dfymacs7"))))
    (properties `((upstream-name . "Glob") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zfd4wimwgnmgqkz9g9jqj2dq2r50wdcqmcz6v7is1zrpwhszk5v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://iki.fi/matti.niemenmaa/glob/")
    (synopsis "Globbing library")
    (description
     "A library for globbing: matching patterns against file paths.")
    (license license:bsd-3)))

haskell-8.6-Glob

(define-public haskell-8.6-HsOpenSSL-x509-system
  (package
    (name "haskell-8.6-HsOpenSSL-x509-system")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL-x509-system/HsOpenSSL-x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14hzjdpv8ld3nw5fcx451w49vq0s8fhs1zh984vpm85b5ypbgp2v"))))
    (properties `((upstream-name . "HsOpenSSL-x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/redneb/HsOpenSSL-x509-system")
    (synopsis "Use the system's native CA certificate store with HsOpenSSL")
    (description
     "A cross-platform library that tries to find a (reasonable) CA certificate
bundle that can be used with @@HsOpenSSL@@ to verify the certificates of
remote peers.

This package is for @@HsOpenSSL@@ what @@x509-system@@ is for the @@tls@@ package.
Additionally, it borrows some ideas from @@x509-system@@.")
    (license license:bsd-3)))

haskell-8.6-HsOpenSSL-x509-system

(define-public haskell-8.6-ListLike
  (package
    (name "haskell-8.6-ListLike")
    (version "4.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListLike/ListLike-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10vn7gslx4zzjq547cwpzdfb4c5w3nsfis6qr03dr9c4fdzj61lx"))))
    (properties `((upstream-name . "ListLike") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "10369q2z4a0qc8dryvsacz038k8jqkj1dnffahllp9m19bqzcbl8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-fmlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-ListLike

(define-public haskell-8.6-MemoTrie
  (package
    (name "haskell-8.6-MemoTrie")
    (version "0.6.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MemoTrie/MemoTrie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lxsarhyhhkp58wpbp7b08scmjxq7s46jfl9vhp2yfq973hz0kaq"))))
    (properties `((upstream-name . "MemoTrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-f-examples")))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-newtype-generics)))
    (home-page "https://github.com/conal/MemoTrie")
    (synopsis "Trie-based memo functions")
    (description
     "MemoTrie provides a basis for memoized functions over some domains,
using tries.  It's based on ideas from Ralf Hinze and code from
Spencer Janssen. Generic support thanks to Sam Boosalis.

Project wiki page: <http://haskell.org/haskellwiki/MemoTrie>

&#199; 2008-2019 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.6-MemoTrie

(define-public haskell-8.6-OpenGLRaw
  (package
    (name "haskell-8.6-OpenGLRaw")
    (version "3.3.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OpenGLRaw/OpenGLRaw-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gmsmysqzpm13qnyq4vvqxm4dzw25nayfd9wi5x645pympm6jqbm"))))
    (properties `((upstream-name . "OpenGLRaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-fuseglxgetprocaddress" "-fusegles2" "-f-osandroid")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-fixed)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-half)
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

haskell-8.6-OpenGLRaw

(define-public haskell-8.6-TCache
  (package
    (name "haskell-8.6-TCache")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-RefSerialize)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)))
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

haskell-8.6-TCache

(define-public haskell-8.6-TypeCompose
  (package
    (name "haskell-8.6-TypeCompose")
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
       ("2" "1ghzj47mfjs1vqai93gh1mmsk92jz1bx0azfzxm0jmnwkgr3vlnh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)))
    (home-page "https://github.com/conal/TypeCompose")
    (synopsis "Type composition classes & instances")
    (description
     "TypeCompose provides some classes & instances for forms of type
composition, as well as some modules who haven't yet found a home.

Please see the project wiki page: <http://haskell.org/haskellwiki/TypeCompose>

Copyright 2007-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.6-TypeCompose

(define-public haskell-8.6-alerts
  (package
    (name "haskell-8.6-alerts")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alerts/alerts-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14fyckdwwhp786z2gg6m92xmz0rbvqwalj0bylqagi9n295ni74f"))))
    (properties `((upstream-name . "alerts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)))
    (home-page "https://github.com/alx741/alerts#readme")
    (synopsis "Alert messages for web applications")
    (description "Alert messages for web applications:

* Bootstrap 3

* Bootstrap 4

* Foundation 5

* Bulma")
    (license license:bsd-3)))

haskell-8.6-alerts

(define-public haskell-8.6-async-timer
  (package
    (name "haskell-8.6-async-timer")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (home-page "https://github.com/mtesseract/async-timer#readme")
    (synopsis "Provides API for timer based execution of IO actions")
    (description
     "This is a lightweight package built on top of the async package
providing easy to use periodic timers. This can be used for executing
IO actions periodically.")
    (license license:bsd-3)))

haskell-8.6-async-timer

(define-public haskell-8.6-attoparsec-base64
  (package
    (name "haskell-8.6-attoparsec-base64")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (home-page "https://github.com/athanclark/attoparsec-base64#readme")
    (synopsis
     "Fetch only base64 characters, erroring in the attoparsec monad on failure")
    (description "")
    (license license:bsd-3)))

haskell-8.6-attoparsec-base64

(define-public haskell-8.6-attoparsec-binary
  (package
    (name "haskell-8.6-attoparsec-binary")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-binary")
    (synopsis "Binary processing extensions to Attoparsec.")
    (description
     "This package adds a collection of helper functions to make
the task dealing with binary data of varying endianness from within an
Attoparsec parser easier.")
    (license license:bsd-3)))

haskell-8.6-attoparsec-binary

(define-public haskell-8.6-attoparsec-expr
  (package
    (name "haskell-8.6-attoparsec-expr")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-expr")
    (synopsis "Port of parsec's expression parser to attoparsec.")
    (description "Port of parsec's expression parser to attoparsec.")
    (license license:bsd-3)))

haskell-8.6-attoparsec-expr

(define-public haskell-8.6-attoparsec-iso8601
  (package
    (name "haskell-8.6-attoparsec-iso8601")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)))
    (home-page "https://github.com/bos/aeson")
    (synopsis "Parsing of ISO 8601 dates, originally from aeson.")
    (description "Parsing of ISO 8601 dates, originally from aeson.")
    (license license:bsd-3)))

haskell-8.6-attoparsec-iso8601

(define-public haskell-8.6-backprop
  (package
    (name "haskell-8.6-backprop")
    (version "0.2.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/backprop/backprop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zk3k20c100iwqcvg1xw2vdysn01w4h9jypz08xs849n1a3bp7di"))))
    (properties `((upstream-name . "backprop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-vinyl)))
    (home-page "https://backprop.jle.im")
    (synopsis "Heterogeneous automatic differentation")
    (description
     "Write your functions to compute your result, and the library will
automatically generate functions to compute your gradient.

Implements heterogeneous reverse-mode automatic differentiation, commonly
known as \"backpropagation\".

See <https://backprop.jle.im> for official introduction and documentation.")
    (license license:bsd-3)))

haskell-8.6-backprop

(define-public haskell-8.6-barrier
  (package
    (name "haskell-8.6-barrier")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-svg)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/philopon/barrier")
    (synopsis "Shields.io style badge generator")
    (description
     "see example: <https://github.com/philopon/barrier/blob/master/examples/example.hs>")
    (license license:expat)))

haskell-8.6-barrier

(define-public haskell-8.6-bencoding
  (package
    (name "haskell-8.6-bencoding")
    (version "0.4.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bencoding/bencoding-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q0v56jj5vdhd5qgs8kwnbnb4wz84bn7ghnki8c36k6hsm1f56kq"))))
    (properties `((upstream-name . "bencoding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-benchmark-atto-bencode")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/sergv/bencoding")
    (synopsis "A library for encoding and decoding of BEncode data.")
    (description
     "A library for fast and easy encoding and decoding of BEncode data.")
    (license license:bsd-3)))

haskell-8.6-bencoding

(define-public haskell-8.6-blaze-bootstrap
  (package
    (name "haskell-8.6-blaze-bootstrap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)))
    (home-page "http://github.com/agrafix/blaze-bootstrap")
    (synopsis "Blaze helper functions for bootstrap pages")
    (description "Simplify building blaze and bootstrap powered pages")
    (license license:expat)))

haskell-8.6-blaze-bootstrap

(define-public haskell-8.6-boolean-like
  (package
    (name "haskell-8.6-boolean-like")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/Shou/boolean-like")
    (synopsis "Logical combinatory operations dealing with datatypes
representing booleans by their constructors.")
    (description
     "Boolean-like logical combinatory operations under typeclasses
Andlike, Orlike, and Xorlike and a typeclass Falsifier for datatypes with
unary false-like values (e.g. Nothing, []).")
    (license license:bsd-3)))

haskell-8.6-boolean-like

(define-public haskell-8.6-c2hs-notests
  (package
    (name "haskell-8.6-c2hs-notests")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-language-c)))
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

haskell-8.6-c2hs-notests

(define-public haskell-8.6-cases
  (package
    (name "haskell-8.6-cases")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-loch-th)))
    (home-page "https://github.com/nikita-volkov/cases ")
    (synopsis "A converter for spinal, snake and camel cases")
    (description
     "A parser-based converter library for spinal, snake and camel cases.")
    (license license:expat)))

haskell-8.6-cases

(define-public haskell-8.6-cassava
  (package
    (name "haskell-8.6-cassava")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cassava/cassava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01h1zrdqb313cjd4rqm1107azzx4czqi018c2djf66a5i7ajl3dk"))))
    (properties `((upstream-name . "cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring--lt-0_10_4")
       #:cabal-revision
       ("9" "087489f6wx9gcr107xnw7pbmnwh9rkdqqk2sky3g43k87j2aqhbj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Only)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-text-short)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/haskell-hvr/cassava")
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

haskell-8.6-cassava

(define-public haskell-8.6-cborg
  (package
    (name "haskell-8.6-cborg")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cborg/cborg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10v1dip11zlpbj69k95n1zm1msp41hkw8snd93h19zlji0v0v4ms"))))
    (properties `((upstream-name . "cborg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize-gmp")
       #:cabal-revision
       ("1" "02rcmlck62859yvv9l1pwy3qkcsbfxazznr2ag1j5b2ixnasyizj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-half)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://hackage.haskell.org/package/cborg")
    (synopsis "Concise Binary Object Representation (CBOR)")
    (description
     "This package provides an efficient implementation of the Concise
Binary Object Representation (CBOR), as specified by
[RFC 7049](https://tools.ietf.org/html/rfc7049).

If you are looking for a library for serialisation of Haskell values,
have a look at the [serialise](/package/serialise) package, which is
built upon this library.

An implementation of the standard bijection between CBOR and JSON is
provided by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility
for working with CBOR data.

This package was formerly known as @@binary-serialise-cbor@@.")
    (license license:bsd-3)))

haskell-8.6-cborg

(define-public haskell-8.6-config-ini
  (package
    (name "haskell-8.6-config-ini")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/config-ini/config-ini-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dfm4xb1sd713rcqzplzdgw68fyhj24i6lj8j3q8kldpmkl98lbf"))))
    (properties `((upstream-name . "config-ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-doctests")
       #:cabal-revision
       ("2" "0iwraaa0y1b3xdsg760j1wpylkqshky0k2djcg0k4s97lrwqpbcz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
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

haskell-8.6-config-ini

(define-public haskell-8.6-configurator
  (package
    (name "haskell-8.6-configurator")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
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

haskell-8.6-configurator

(define-public haskell-8.6-configurator-pg
  (package
    (name "haskell-8.6-configurator-pg")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-pg/configurator-pg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fc77ihnablff8v0kgr88pcc3rn41ca14bvfxr21jx807fn8g63p"))))
    (properties `((upstream-name . "configurator-pg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
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

haskell-8.6-configurator-pg

(define-public haskell-8.6-cpuinfo
  (package
    (name "haskell-8.6-cpuinfo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)))
    (home-page "https://github.com/TravisWhitaker/cpuinfo")
    (synopsis "Haskell Library for Checking CPU Information")
    (description "Haskell Library for Checking CPU Information")
    (license license:expat)))

haskell-8.6-cpuinfo

(define-public haskell-8.6-cron
  (package
    (name "haskell-8.6-cron")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cron/cron-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14g4vndj5i1gjg6nbd6h04rzajijflwxzkgnjalsjjfd6fmrny5h"))))
    (properties `((upstream-name . "cron") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mtl-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-cron

(define-public haskell-8.6-crypto-api
  (package
    (name "haskell-8.6-crypto-api")
    (version "0.13.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-api/crypto-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19bsmkqkpnvh01b77pmyarx00fic15j4hvg4pzscrj4prskrx2i9"))))
    (properties `((upstream-name . "crypto-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-all_cpolys")
       #:cabal-revision
       ("1" "1z6n1sa5pn3iqvqjrd8hv4bc2pxzsrhm5sh0l8z7g9lbqp6w0wp5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/TomMD/crypto-api")
    (synopsis "A generic interface for cryptographic operations")
    (description
     "A generic interface for cryptographic operations (hashes, ciphers, randomness).
Maintainers of hash and cipher implementations are
encouraged to add instances for the classes defined
in Crypto.Classes.  Crypto users are similarly
encouraged to use the interfaces defined in the Classes
module.
Any concepts or functions of general use to more than
one cryptographic algorithm (ex: padding) is within
scope of this package.")
    (license license:bsd-3)))

haskell-8.6-crypto-api

(define-public haskell-8.6-crypto-random-api
  (package
    (name "haskell-8.6-crypto-random-api")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-random-api/crypto-random-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z49kwgjj7rz235642q64hbkgp0zl6ipn29xd19yb75xc5q7gsan"))))
    (properties `((upstream-name . "crypto-random-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)))
    (home-page "http://github.com/vincenthz/hs-crypto-random-api")
    (synopsis "Simple random generators API for cryptography related code")
    (description "Simple random generators API for cryptography related code")
    (license license:bsd-3)))

haskell-8.6-crypto-random-api

(define-public haskell-8.6-css-text
  (package
    (name "haskell-8.6-css-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)))
    (home-page "https://github.com/yesodweb/css-text.git#readme")
    (synopsis "CSS parser and renderer.")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/css-text>")
    (license license:expat)))

haskell-8.6-css-text

(define-public haskell-8.6-data-default-instances-dlist
  (package
    (name "haskell-8.6-data-default-instances-dlist")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-dlist")
    (synopsis "Default instances for types in dlist")
    (description "")
    (license license:bsd-3)))

haskell-8.6-data-default-instances-dlist

(define-public haskell-8.6-dataurl
  (package
    (name "haskell-8.6-dataurl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)))
    (home-page "http://github.com/agrafix/dataurl#readme")
    (synopsis "Handle data-urls")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-dataurl

(define-public haskell-8.6-deriving-compat
  (package
    (name "haskell-8.6-deriving-compat")
    (version "0.5.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-compat/deriving-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dznwypw0w935z30zi9pf9k4mr5yfl6jfp43nv9vx3f6zy5gip9r"))))
    (properties `((upstream-name . "deriving-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
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

haskell-8.6-deriving-compat

(define-public haskell-8.6-distributed-closure
  (package
    (name "haskell-8.6-distributed-closure")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributed-closure/distributed-closure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pm3b3g539p0ll30x5csyzx51q7ydmdl9m94yx988sx9dv7l0n"))))
    (properties `((upstream-name . "distributed-closure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://github.com/tweag/distributed-closure")
    (synopsis "Serializable closures for distributed programming.")
    (description "See README.")
    (license license:bsd-3)))

haskell-8.6-distributed-closure

(define-public haskell-8.6-dlist-instances
  (package
    (name "haskell-8.6-dlist-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "https://github.com/gregwebs/dlist-instances")
    (synopsis "Difference lists instances")
    (description
     "See the dlist packages.
This package is the canonical source for some orphan instances.
Orphan instances are placed here to avoid dependencies elsewhere.")
    (license license:bsd-3)))

haskell-8.6-dlist-instances

(define-public haskell-8.6-doctest
  (package
    (name "haskell-8.6-doctest")
    (version "0.16.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doctest/doctest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lk4cjfzi5bx2snfzw1zi06li0gvgz3ckfh2kwa98l7nxfdl39ag"))))
    (properties `((upstream-name . "doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-code-page)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-paths)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<http://docs.python.org/library/doctest.html>).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-8.6-doctest

(define-public haskell-8.6-dyre
  (package
    (name "haskell-8.6-dyre")
    (version "0.8.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dyre/dyre-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10hnlysy4bjvvznk8v902mlk4jx95qf972clyi1l32xkqrf30972"))))
    (properties `((upstream-name . "dyre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-executable-path)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-paths)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-io-storage)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xdg-basedir)))
    (home-page "http://github.com/willdonnelly/dyre")
    (synopsis "Dynamic reconfiguration in Haskell")
    (description
     "Dyre implements dynamic reconfiguration facilities after the
style of Xmonad. Dyre aims to be as simple as possible without
sacrificing features, and places an emphasis on simplicity of
integration with an application.
A full introduction with a complete example project can be found
in the documentation for 'Config.Dyre'")
    (license license:bsd-3)))

haskell-8.6-dyre

(define-public haskell-8.6-ekg-statsd
  (package
    (name "haskell-8.6-ekg-statsd")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ekg-core)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-statsd")
    (synopsis "Push metrics to statsd")
    (description
     "This library lets you push system metrics to a statsd server.")
    (license license:bsd-3)))

haskell-8.6-ekg-statsd

(define-public haskell-8.6-fclabels
  (package
    (name "haskell-8.6-fclabels")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fclabels/fclabels-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ks59vcliy2x9i01qxpd4k455m7wpcfhcldgmhkym9wmwfxy0sf2"))))
    (properties `((upstream-name . "fclabels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/sebastiaanvisser/fclabels")
    (synopsis "First class accessor labels implemented as lenses.")
    (description
     "This package provides first class labels that can act as
bidirectional record fields. The labels can be derived
automatically using Template Haskell which means you don't have
to write any boilerplate yourself. The labels are implemented as
/lenses/ and are fully composable. Lenses can be used to /get/,
/set/ and /modify/ parts of a data type in a consistent way.

See \"Data.Label\" for an introductory explanation or see the
introductory blog post at
<http://fvisser.nl/post/2013/okt/1/fclabels-2.0.html>

* /Total and partial lenses/

Internally lenses do not used Haskell functions directly, but
are implemented as categories. Categories allow the lenses to be
run in custom computational contexts. This approach allows us to
make partial lenses that point to fields of multi-constructor
datatypes in an elegant way.

See \"Data.Label.Partial\" for the use of partial labels.

* /Monomorphic and polymorphic lenses/

We have both polymorphic and monomorphic lenses. Polymorphic
lenses allow updates that change the type. The types of
polymorphic lenses are slightly more verbose than their
monomorphic counterparts, but their usage is similar. Because
monomorphic lenses are built by restricting the types of
polymorphic lenses they are essentially the same and can be
freely composed with eachother.

See \"Data.Label.Mono\" and \"Data.Label.Poly\" for the difference
between polymorphic and monomorphic lenses.

* /Using fclabels/

To simplify working with labels we supply both a set of labels
for Haskell's base types, like lists, tuples, Maybe and Either,
and we supply a set of combinators for working with labels for
values in the Reader and State monad.

See \"Data.Label.Base\" and \"Data.Label.Monadic\" for more
information.

* /Changelog from 2.0.3.2 to 2.0.4/

>   - Import Functor, Applicative, and Monad instances for
>     Kleisli from the base-orphans package for future GHC 8.10
>     support.")
    (license license:bsd-3)))

haskell-8.6-fclabels

(define-public haskell-8.6-fib
  (package
    (name "haskell-8.6-fib")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fib/fib-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "19ppp760993wz4d1w3i5s60k4yqcx40il7l0ak0ylcqqym619zlk"))))
    (properties `((upstream-name . "fib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pi7hhil698v9yk17ncw7raw0sf20yj679jvs2d0p7q8ypl9b1lh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-noprelude)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-semirings)))
    (home-page "https://github.com/chessai/fib")
    (synopsis "fibonacci algebra")
    (description "fibonacci algebra over a commutative ring")
    (license license:bsd-3)))

haskell-8.6-fib

(define-public haskell-8.6-genvalidity
  (package
    (name "haskell-8.6-genvalidity")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity/genvalidity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w38aq9hfyymidncgkrs6yvja7j573d9sap5qfg5rz910fhsij9a"))))
    (properties `((upstream-name . "genvalidity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
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

haskell-8.6-genvalidity

(define-public haskell-8.6-ghc-prof
  (package
    (name "haskell-8.6-ghc-prof")
    (version "1.4.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-prof/ghc-prof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rypk644xpgvawymn8ib992n4qkc2fc796arf574hhikdffr5a14"))))
    (properties `((upstream-name . "ghc-prof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (home-page "https://github.com/maoe/ghc-prof")
    (synopsis "Library for parsing GHC time and allocation profiling reports")
    (description
     "ghc-prof is a library for parsing GHC time and allocation profiling reports.")
    (license license:bsd-3)))

haskell-8.6-ghc-prof

(define-public haskell-8.6-gl
  (package
    (name "haskell-8.6-gl")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gl/gl-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kb1igc9cyjavf3f3ccv9xhhsfn46pcrsw47qd9m5793nnmg13ii"))))
    (properties `((upstream-name . "gl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-fuseglxgetprocaddress")
       #:cabal-revision
       ("1" "19qyb9m2fy9qyirmhhayg51scas42n3i2rx7jcw6v3ra8c8r9rwr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-fixed)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-half)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gl")
    (synopsis "Complete OpenGL raw bindings")
    (description "Complete OpenGL raw bindings")
    (license license:bsd-3)))

haskell-8.6-gl

(define-public haskell-8.6-hbeanstalk
  (package
    (name "haskell-8.6-hbeanstalk")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "http://github.com/scsibug/hbeanstalk/")
    (synopsis "Client for the beanstalkd workqueue service.")
    (description "This is the hbeanstalk library.  It provides a client
interface to a beanstalkd server, allowing Haskell to be
a producer and/or a consumer of work items.  Let Haskell
do your heavy lifting!")
    (license license:bsd-3)))

haskell-8.6-hbeanstalk

(define-public haskell-8.6-highlighting-kate
  (package
    (name "haskell-8.6-highlighting-kate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
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

haskell-8.6-highlighting-kate

(define-public haskell-8.6-hjsmin
  (package
    (name "haskell-8.6-hjsmin")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hjsmin/hjsmin-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r2p5rjdjr25j3w4s57q5hxw2c3ymw12x7ms18yvglnq2ivr9fc1"))))
    (properties `((upstream-name . "hjsmin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "184g49wsj2sfm8d75kgr7ylfw29gbyrqbqp4syyz30ch047jd0af")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-language-javascript)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (home-page "http://github.com/erikd/hjsmin")
    (synopsis "Haskell implementation of a javascript minifier")
    (description
     "Reduces size of javascript files by stripping out extraneous whitespace and
other syntactic elements, without changing the semantics.")
    (license license:bsd-3)))

haskell-8.6-hjsmin

(define-public haskell-8.6-hkgr
  (package
    (name "haskell-8.6-hkgr")
    (version "0.2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hkgr/hkgr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r6w5n4y5h23ry8cxxl97ibrxn6jr0f2a7iginqbpyd5dzbn9qyn"))))
    (properties `((upstream-name . "hkgr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-simple-cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-cmd)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-simple-cmd-args)))
    (home-page "https://github.com/juhp/hkgr")
    (synopsis "Simple Hackage release workflow for package maintainers")
    (description
     "Hkgr (pronounced \"Hackager\") is a tool to help make new releases of
Haskell packages, with commands for git tagging, pristine sdist,
and uploading to Hackage.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-hkgr

(define-public haskell-8.6-hostname-validate
  (package
    (name "haskell-8.6-hostname-validate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)))
    (home-page "https://hackage.haskell.org/package/hostname-validate")
    (synopsis "Validate hostnames e.g. localhost or foo.co.uk.")
    (description
     "Validate hostnames e.g. localhost or foo.co.uk. See also RFC 1123, RFC 952, and RFC 1035.")
    (license license:bsd-3)))

haskell-8.6-hostname-validate

(define-public haskell-8.6-hp2pretty
  (package
    (name "haskell-8.6-hp2pretty")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-floatshow)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-hp2pretty

(define-public haskell-8.6-hsinstall
  (package
    (name "haskell-8.6-hsinstall")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsinstall/hsinstall-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14c98wysvsq4k581s3f5zw44grm6f0wvbmgdda8sshhg7v2059r3"))))
    (properties `((upstream-name . "hsinstall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-heredoc)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (home-page "https://github.com/dino-/hsinstall#readme")
    (synopsis "Install Haskell software")
    (description
     "This is a tool for deploying software projects into directory structures suitable for installation on a system. It builds upon the `stack install` command and adds more features. It's also a tool for easier AppImage creation.")
    (license license:isc)))

haskell-8.6-hsinstall

(define-public haskell-8.6-hspec-attoparsec
  (package
    (name "haskell-8.6-hspec-attoparsec")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-attoparsec/hspec-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r7v6x0k5r8jxl0rnsq8h3gqhbiimsic3kiphn6dxaw954zqnypa"))))
    (properties `((upstream-name . "hspec-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)))
    (home-page "http://github.com/alpmestan/hspec-attoparsec")
    (synopsis
     "Utility functions for testing your attoparsec parsers with hspec")
    (description
     "This package provides some helper functions for testing attoparsec parsers with hspec.

See the documentation in @@Test.Hspec.Attoparsec@@ for examples, or this package's own test suite.")
    (license license:bsd-3)))

haskell-8.6-hspec-attoparsec

(define-public haskell-8.6-hspec-megaparsec
  (package
    (name "haskell-8.6-hspec-megaparsec")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-megaparsec/hspec-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w8nn2rh01lkiwsiyqh3gviklhfmy0245rakj94dmliyljw8skfg"))))
    (properties `((upstream-name . "hspec-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)))
    (home-page "https://github.com/mrkkrp/hspec-megaparsec")
    (synopsis "Utility functions for testing Megaparsec parsers with Hspec")
    (description
     "Utility functions for testing Megaparsec parsers with Hspec.")
    (license license:bsd-3)))

haskell-8.6-hspec-megaparsec

(define-public haskell-8.6-html-email-validate
  (package
    (name "haskell-8.6-html-email-validate")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-email-validate/html-email-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bvdmaamxbldb8nndi5f330msj1d0mrj8lapvxqyr333bg3kwaix"))))
    (properties `((upstream-name . "html-email-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)))
    (home-page "https://hackage.haskell.org/package/html-email-validate")
    (synopsis "Validating an email address against HTML standard")
    (description
     "The library allows to validate and parse an email address
as it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.
Note that HTML specification of a valid email address is a
'willful violation' of RFC 5322. If you want to validate
an address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.")
    (license license:bsd-3)))

haskell-8.6-html-email-validate

(define-public haskell-8.6-html-entities
  (package
    (name "haskell-8.6-html-entities")
    (version "1.1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entities/html-entities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mjmmnh3mfi0ccl5wi5b65afi66wj5xdvva13qw22naa31ibbsnf"))))
    (properties `((upstream-name . "html-entities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-8.6-html-entities

(define-public haskell-8.6-hweblib
  (package
    (name "haskell-8.6-hweblib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://github.com/aycanirican/hweblib")
    (synopsis "Haskell Web Library")
    (description
     "The library includes attoparsec based incremental parsers for
rfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package
name will subject to change due to broad range of rfc coverage.")
    (license license:bsd-3)))

haskell-8.6-hweblib

(define-public haskell-8.6-hyper
  (package
    (name "haskell-8.6-hyper")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hyper/hyper-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bc2mvxaggdyikdx51qc1li8idmnlw3ha2n3qli6jf1zz8mlqx0s"))))
    (properties `((upstream-name . "hyper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qfavgvdlmsip57grhxs0mawh82nxrq4m0mv9z3vam1b9j6nw2cc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)))
    (home-page "https://github.com/HeinrichApfelmus/hyper-haskell")
    (synopsis
     "Display class for the HyperHaskell graphical Haskell interpreter")
    (description
     "This package is part of the /HyperHaskell/ project and provides
the @@Display@@ class for visualizing and pretty printing Haskell values.
")
    (license license:bsd-3)))

haskell-8.6-hyper

(define-public haskell-8.6-infer-license
  (package
    (name "haskell-8.6-infer-license")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/infer-license/infer-license-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wlfm6bf55kfvm74xar9lmjg5v1103rs9m3grw1rq5bmcmhzxrhj"))))
    (properties `((upstream-name . "infer-license") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-metrics)))
    (home-page "https://hackage.haskell.org/package/infer-license")
    (synopsis "Infer software license from a given license file")
    (description "")
    (license license:expat)))

haskell-8.6-infer-license

(define-public haskell-8.6-inflections
  (package
    (name "haskell-8.6-inflections")
    (version "0.4.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inflections/inflections-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fdq3iwa2vgb5k19ck6jxzh7f1xsf1kpwx4p3agpdpsrylrcanvb"))))
    (properties `((upstream-name . "inflections") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/stackbuilders/inflections-hs")
    (synopsis "Inflections library for Haskell")
    (description
     "Inflections provides methods for singularization, pluralization,
dasherizing, etc. The library is based on Rails' inflections library.")
    (license license:expat)))

haskell-8.6-inflections

(define-public haskell-8.6-ini
  (package
    (name "haskell-8.6-ini")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ini/ini-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0mvwii8jbh2ll54qb9dij5m66c6324s2y4vrwz1qr4wz40m3qa8l"))))
    (properties `((upstream-name . "ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://github.com/chrisdone/ini")
    (synopsis "Quick and easy configuration files in the INI format.")
    (description "Quick and easy configuration files in the INI format.")
    (license license:bsd-3)))

haskell-8.6-ini

(define-public haskell-8.6-io-streams
  (package
    (name "haskell-8.6-io-streams")
    (version "1.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams/io-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c7byr943x41nxpc3bnz152fvfbmakafq2958wyf9qiyp2pz18la"))))
    (properties `((upstream-name . "io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-nointeractivetests")
       #:cabal-revision
       ("2" "1snsaqwjffky0pjqab0cndryaakllk5vlibb7rcsqj8qgp89f97x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-zlib-bindings)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-io-streams

(define-public haskell-8.6-irc
  (package
    (name "haskell-8.6-irc")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/irc")
    (synopsis "A small library for parsing IRC messages.")
    (description "A set of combinators and types for parsing IRC messages.")
    (license license:bsd-3)))

haskell-8.6-irc

(define-public haskell-8.6-justified-containers
  (package
    (name "haskell-8.6-justified-containers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-roles)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-should-not-typecheck)))
    (home-page "https://github.com/matt-noonan/justified-containers")
    (synopsis
     "Keyed container types with type-checked proofs of key presence.")
    (description
     "This package contains wrappers around standard container types,
that provide guarantees about the presence of keys within the
container.")
    (license license:bsd-2)))

haskell-8.6-justified-containers

(define-public haskell-8.6-language-ecmascript
  (package
    (name "haskell-8.6-language-ecmascript")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-charset)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "http://github.com/jswebtools/language-ecmascript")
    (synopsis "JavaScript parser and pretty-printer library")
    (description
     "Tools for working with ECMAScript 3 (popularly known as JavaScript).
Includes a parser, pretty-printer, tools for working with source tree
annotations and an arbitrary instance. See CHANGELOG for a summary of
changes. The package follows the Haskell Package Versioning Policy since version 0.17.0.1.")
    (license license:bsd-3)))

haskell-8.6-language-ecmascript

(define-public haskell-8.6-lens-simple
  (package
    (name "haskell-8.6-lens-simple")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-lens-family)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-lens-family-core)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-lens-family-th)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-lens-simple

(define-public haskell-8.6-libmpd
  (package
    (name "haskell-8.6-libmpd")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libmpd/libmpd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f1svf4dxpbqmxkq1nc11nyfm68wrh00v2wf68yzfwc6win2jhfr"))))
    (properties `((upstream-name . "libmpd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://github.com/vimus/libmpd-haskell#readme")
    (synopsis "An MPD client library.")
    (description "A client library for MPD, the Music Player Daemon.")
    (license license:expat)))

haskell-8.6-libmpd

(define-public haskell-8.6-lift-generics
  (package
    (name "haskell-8.6-lift-generics")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lift-generics/lift-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r2rbik5lh5x8psy5cblzd1ly1ybizdcyjdg8n79m7k3rqp2w6v7"))))
    (properties `((upstream-name . "lift-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
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

haskell-8.6-lift-generics

(define-public haskell-8.6-logging-facade-syslog
  (package
    (name "haskell-8.6-logging-facade-syslog")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-hsyslog)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-logging-facade)))
    (home-page "https://github.com/peti/logging-facade-syslog#readme")
    (synopsis "A logging back-end to syslog(3) for the logging-facade library")
    (description
     "A simple \"System.Logging.Facade\" back-end for @@syslog(3)@@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.")
    (license license:bsd-3)))

haskell-8.6-logging-facade-syslog

(define-public haskell-8.6-makefile
  (package
    (name "haskell-8.6-makefile")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)))
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

haskell-8.6-makefile

(define-public haskell-8.6-matrix-market-attoparsec
  (package
    (name "haskell-8.6-matrix-market-attoparsec")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrix-market-attoparsec/matrix-market-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kcjiv7qqlkqqpdv0cyrhfa81m2zxs8w06x51sj22nygr1srmdrj"))))
    (properties `((upstream-name . "matrix-market-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (home-page "https://github.com/ocramz/matrix-market-attoparsec")
    (synopsis
     "Parsing and serialization functions for the NIST Matrix Market format")
    (description
     "Parsing and serialization functions for the NIST Matrix Market format.")
    (license license:bsd-2)))

haskell-8.6-matrix-market-attoparsec

(define-public haskell-8.6-monad-metrics
  (package
    (name "haskell-8.6-monad-metrics")
    (version "0.2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-metrics/monad-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h83kh1qc3wf9i0l8k998zib6fvf8fpwzn3qiz0d6z7az0i947cf"))))
    (properties `((upstream-name . "monad-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ekg-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/parsonsmatt/monad-metrics#readme")
    (synopsis "A convenient wrapper around EKG metrics")
    (description
     "A convenient wrapper for collecting application metrics. Please see the README.md for more information.")
    (license license:expat)))

haskell-8.6-monad-metrics

(define-public haskell-8.6-mysql-simple
  (package
    (name "haskell-8.6-mysql-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-textual)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-mysql)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcre-light)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-mysql-simple

(define-public haskell-8.6-neat-interpolation
  (package
    (name "haskell-8.6-neat-interpolation")
    (version "0.3.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/neat-interpolation/neat-interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10k5x47i84nycl54p61l8v1bpvi7mw663vnj8nn1qjpn03anz8z2"))))
    (properties `((upstream-name . "neat-interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)))
    (home-page "https://github.com/nikita-volkov/neat-interpolation")
    (synopsis "A quasiquoter for neat and simple multiline text interpolation")
    (description
     "A quasiquoter for producing Text values with support for
a simple interpolation of input values.
It removes the excessive indentation from the input and
accurately manages the indentation of all lines of the interpolated variables.")
    (license license:expat)))

haskell-8.6-neat-interpolation

(define-public haskell-8.6-network-simple
  (package
    (name "haskell-8.6-network-simple")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple/network-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17hpgcwrsx2h8lrb2wwzy0anp33mn80dnwcgnqmb8prajwjvz807"))))
    (properties `((upstream-name . "network-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-network-bsd)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-socks)))
    (home-page "https://github.com/k0001/network-simple")
    (synopsis "Simple network sockets usage patterns.")
    (description
     "This module exports functions that abstract simple network socket
usage patterns.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between versions.")
    (license license:bsd-3)))

haskell-8.6-network-simple

(define-public haskell-8.6-nonce
  (package
    (name "haskell-8.6-nonce")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
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

haskell-8.6-nonce

(define-public haskell-8.6-nsis
  (package
    (name "haskell-8.6-nsis")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "https://github.com/ndmitchell/nsis#readme")
    (synopsis "DSL for producing Windows Installer using NSIS.")
    (description
     "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers
to create installers for Windows.
This library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much
of the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should
be significantly more maintainable.")
    (license license:bsd-3)))

haskell-8.6-nsis

(define-public haskell-8.6-odbc
  (package
    (name "haskell-8.6-odbc")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-formatting)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "https://github.com/fpco/odbc")
    (synopsis "Haskell binding to the ODBC API, aimed at SQL Server driver")
    (description "Haskell binding to the ODBC API. This has been tested
against the Microsoft SQL Server ODBC drivers. Its test
suite runs on OS X, Windows and Linux.")
    (license license:bsd-3)))

haskell-8.6-odbc

(define-public haskell-8.6-optparse-generic
  (package
    (name "haskell-8.6-optparse-generic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Only)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-system-filepath)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://hackage.haskell.org/package/optparse-generic")
    (synopsis "Auto-generate a command-line parser for your datatype")
    (description
     "This library auto-generates an @@optparse-applicative@@-compatible
@@Parser@@ from any data type that derives the @@Generic@@ interface.

See the documentation in \"Options.Generic\" for an example of how to use
this library")
    (license license:bsd-3)))

haskell-8.6-optparse-generic

(define-public haskell-8.6-pcg-random
  (package
    (name "haskell-8.6-pcg-random")
    (version "0.1.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcg-random/pcg-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m8xnic207ajbpz0q81h7xr9xmp1dzm6474vyvack6iidbzi4l08"))))
    (properties `((upstream-name . "pcg-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "http://github.com/cchalmers/pcg-random")
    (synopsis "Haskell bindings to the PCG random number generator.")
    (description
     "PCG is a family of simple fast space-efficient statistically good
algorithms for random number generation. Unlike many general-purpose
RNGs, they are also hard to predict.

This library implements bindings to the standard C implementation.
This includes the standard, unique, fast and single variants in the
pcg family. There is a pure implementation that can be used as a
generator with the random package as well as a faster primitive api
that includes functions for generating common types.

The generators in this module are suitable for use in parallel but
make sure threads don't share the same generator or things will go
horribly wrong.")
    (license license:bsd-3)))

haskell-8.6-pcg-random

(define-public haskell-8.6-pcre-utils
  (package
    (name "haskell-8.6-pcre-utils")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/bartavelle/pcre-utils")
    (synopsis "Perl-like substitute and split for PCRE regexps.")
    (description
     "This package introduces split and replace like functions using PCRE regexps.")
    (license license:bsd-3)))

haskell-8.6-pcre-utils

(define-public haskell-8.6-persistable-record
  (package
    (name "haskell-8.6-persistable-record")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-names-th)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-data-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Binding between SQL database values and haskell records.")
    (description
     "This package contiains types to represent table constraints and
interfaces to bind between SQL database values and Haskell records.")
    (license license:bsd-3)))

haskell-8.6-persistable-record

(define-public haskell-8.6-poly-arity
  (package
    (name "haskell-8.6-poly-arity")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)))
    (home-page "https://hackage.haskell.org/package/poly-arity")
    (synopsis "Tools for working with functions of undetermined arity")
    (description "")
    (license license:bsd-3)))

haskell-8.6-poly-arity

(define-public haskell-8.6-qrcode-core
  (package
    (name "haskell-8.6-qrcode-core")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-core/qrcode-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17a21a65n3hm739q7kgvpd4wvqz3i5y9bdkl6072ch87j0baqmpy"))))
    (properties `((upstream-name . "qrcode-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "QR code library in pure Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-core#readme>")
    (license license:expat)))

haskell-8.6-qrcode-core

(define-public haskell-8.6-quickcheck-special
  (package
    (name "haskell-8.6-quickcheck-special")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-special-values)))
    (home-page "https://github.com/minad/quickcheck-special#readme")
    (synopsis
     "Edge cases and special values for QuickCheck Arbitrary instances")
    (description
     "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.")
    (license license:expat)))

haskell-8.6-quickcheck-special

(define-public haskell-8.6-rattle
  (package
    (name "haskell-8.6-rattle")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rattle/rattle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10ra58lqhi9pn92rgyv6lkz7036kbq9gr6ly5w1lqdayla10fqhr"))))
    (properties `((upstream-name . "rattle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0h37mx0iv53jdmsqla40fsnnmkzld6a2r0468ylbhgi2arrda0w9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-shake)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/ndmitchell/rattle#readme")
    (synopsis "Forward build system, with caching and speculation")
    (description
     "A forward build system like Fabrciate but with speculation and remote caching.")
    (license license:bsd-3)))

haskell-8.6-rattle

(define-public haskell-8.6-rcu
  (package
    (name "haskell-8.6-rcu")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-unstable" "-f-measure-synchronize")
       #:cabal-revision
       ("2" "1lblpsgprk26nplfzxkclvj6gsaim1b97njvrq564crryn6hn2wz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "http://github.com/ekmett/rcu/")
    (synopsis "Read-Copy-Update for Haskell")
    (description "Read-Copy-Update for Haskell.")
    (license license:bsd-3)))

haskell-8.6-rcu

(define-public haskell-8.6-rdf
  (package
    (name "haskell-8.6-rdf")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rdf/rdf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0bypvzr4xj3nvq839slhjcl6lzs4zp34yg6q3hdkwa5vgall6x2s"))))
    (properties `((upstream-name . "rdf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x5zdjbyrpap5qs40yl0m96fcgy11f6s5r3v0n8n5904cxa5sqy3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fgl)))
    (home-page "https://github.com/traviswhitaker/rdf")
    (synopsis "Representation and Incremental Processing of RDF Data")
    (description
     "Data structures, parsers, and encoders for RDF data sets based on the
RDF 1.1 abstract syntax and RFC 3987. The interface is intended to support
incremental graph processing in constant space.")
    (license license:expat)))

haskell-8.6-rdf

(define-public haskell-8.6-record-dot-preprocessor
  (package
    (name "haskell-8.6-record-dot-preprocessor")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-dot-preprocessor/record-dot-preprocessor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rxa8dzh0ga9xrlwrwzf5lm9miql9lkmcyiy0nrc3s5lkxdsppww"))))
    (properties `((upstream-name . "record-dot-preprocessor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qxd6gv1p1nhm2g9g347i9xfyfc2cd3fp9r5d2dyh9sddkdd3pb2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "https://github.com/ndmitchell/record-dot-preprocessor#readme")
    (synopsis "Preprocessor to allow record.field syntax")
    (description
     "In almost every programming language @@a.b@@ will get the @@b@@ field from the @@a@@ data type, and many different data types can have a @@b@@ field.
The reason this feature is ubiquitous is because it's /useful/.
The @@record-dot-preprocessor@@ brings this feature to Haskell - see the README for full details.")
    (license license:bsd-3)))

haskell-8.6-record-dot-preprocessor

(define-public haskell-8.6-regex
  (package
    (name "haskell-8.6-regex")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f2z025hif1fr24b5khq3qxxyvpxrnhyx8xmbms332arw28rpkda"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1476dxzj482j6zkvbvyszsjw1bm7jn2nwk40rq99ylvzm2sj0asn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-regex-tdfa-text)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
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

haskell-8.6-regex

(define-public haskell-8.6-regex-pcre-text
  (package
    (name "haskell-8.6-regex-pcre-text")
    (version "0.94.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre-text/regex-pcre-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gg9v3q05j2wdp93iragg7y5414ydz0zmkm0xyrcz98dn3bix68p"))))
    (properties `((upstream-name . "regex-pcre-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-regex-tdfa-text)))
    (home-page "https://github.com/cdornan/regex-pcre-text")
    (synopsis "Text-based PCRE API for regex-base")
    (description "The PCRE/Text backend to accompany regex-base;
needs regex-pcre and regex-tdfa-text")
    (license license:bsd-3)))

haskell-8.6-regex-pcre-text

(define-public haskell-8.6-reinterpret-cast
  (package
    (name "haskell-8.6-reinterpret-cast")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-loop)))
    (home-page "https://github.com/nh2/reinterpret-cast")
    (synopsis
     "Memory reinterpretation casts for Float/Double and Word32/Word64")
    (description
     "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.

The implementations in the @@.Internal@@ package are different ways to tackle
the problem; the @@array@@ method (current default) is about 5 times faster
than the @@FFI@@ method.")
    (license license:expat)))

haskell-8.6-reinterpret-cast

(define-public haskell-8.6-replace-megaparsec
  (package
    (name "haskell-8.6-replace-megaparsec")
    (version "1.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-megaparsec/replace-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07y21p6a65gm3zgi3g9rfgr8ali548jcq8qcg5fyzl2bl1bj8pyd"))))
    (properties `((upstream-name . "replace-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)))
    (home-page "https://github.com/jamesdbrock/replace-megaparsec")
    (synopsis "Find, replace, and edit text patterns with Megaparsec parsers")
    (description
     "Find text patterns, and also edit or replace the found patterns. Use
Megaparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-8.6-replace-megaparsec

(define-public haskell-8.6-safe-exceptions-checked
  (package
    (name "haskell-8.6-safe-exceptions-checked")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (home-page
     "https://github.com/mitchellwrosen/safe-exceptions-checked#readme")
    (synopsis "Safe, checked exceptions")
    (description
     "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.")
    (license license:bsd-3)))

haskell-8.6-safe-exceptions-checked

(define-public haskell-8.6-say
  (package
    (name "haskell-8.6-say")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (home-page "https://github.com/fpco/say#readme")
    (synopsis "Send textual messages to a Handle in a thread-friendly way")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/say>")
    (license license:expat)))

haskell-8.6-say

(define-public haskell-8.6-scrypt
  (package
    (name "haskell-8.6-scrypt")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scrypt/scrypt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cnrjdq1ncv224dlk236a7w29na8r019d2acrsxlsaiy74iadh1y"))))
    (properties `((upstream-name . "scrypt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/informatikr/scrypt")
    (synopsis
     "Stronger password hashing via sequential memory-hard functions.")
    (description
     "This package provides bindings to Colin Percival's `scrypt`
implementation (<http://www.tarsnap.com/scrypt.html>). Scrypt is a key
derivation function designed to be far more secure against hardware
brute-force attacks than alternative functions such as PBKDF2 or bcrypt.

Details of the scrypt key derivation function are given in a paper by
Colin Percival, Stronger Key Derivation via Sequential Memory-Hard
Functions: <http://www.tarsnap.com/scrypt/scrypt.pdf>.")
    (license license:bsd-3)))

haskell-8.6-scrypt

(define-public haskell-8.6-sexpr-parser
  (package
    (name "haskell-8.6-sexpr-parser")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sexpr-parser/sexpr-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "183l1d8kjzv2is7kdaa83jbr46w61fn2g7yrvc3wjmwsnrylfj29"))))
    (properties `((upstream-name . "sexpr-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0sv07n6s023z2dl6n89kx26nnc3nrkpmbbfj4sqcrj6i3q4k06g4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)))
    (home-page "https://github.com/rcook/sexpr-parser#readme")
    (synopsis "Simple s-expression parser")
    (description
     "This package provides a simple Megaparsec-based s-expression parser.")
    (license license:expat)))

haskell-8.6-sexpr-parser

(define-public haskell-8.6-step-function
  (package
    (name "haskell-8.6-step-function")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)))
    (home-page "https://github.com/jonpetterbergman/step-function")
    (synopsis "Staircase functions or piecewise constant functions")
    (description
     "Step functions, staircase functions or piecewise constant functions.
Implemented as a default value and a series of transitions.
Supports merging two step functions using a supplied merging function.
")
    (license license:bsd-3)))

haskell-8.6-step-function

(define-public haskell-8.6-storable-complex
  (package
    (name "haskell-8.6-storable-complex")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)))
    (home-page "https://github.com/cartazio/storable-complex")
    (synopsis "Storable instance for Complex")
    (description "Provides a Storable instance for Complex which is binary
compatible with C99, C++ and Fortran complex data types.

The only purpose of this package is to provide a standard
location for this instance so that other packages needing
this instance can play nicely together.")
    (license license:bsd-3)))

haskell-8.6-storable-complex

(define-public haskell-8.6-storable-tuple
  (package
    (name "haskell-8.6-storable-tuple")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/storable-tuple/")
    (synopsis "Storable instance for pairs and triples")
    (description
     "Provides a Storable instance for pair and triple
which should be binary compatible with C99 and C++.
The only purpose of this package is to provide a standard location
for this instance so that other packages needing this instance
can play nicely together.")
    (license license:bsd-3)))

haskell-8.6-storable-tuple

(define-public haskell-8.6-structs
  (package
    (name "haskell-8.6-structs")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/structs/structs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y8w44lsybzrkhnv2nrk4zpsp01hny66syibh3xwqpi06k18h2lr"))))
    (properties `((upstream-name . "structs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-8.6-structs

(define-public haskell-8.6-system-argv0
  (package
    (name "haskell-8.6-system-argv0")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/system-argv0/system-argv0-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ijfry2r3cypp3zmws6dczk21m4n86fkxjld7yl19gjp46fxllbd"))))
    (properties `((upstream-name . "system-argv0") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-system-filepath)))
    (home-page "https://john-millikin.com/software/haskell-filesystem/")
    (synopsis "Get argv[0] as a FilePath.")
    (description
     "Get @@argv[0]@@ as a FilePath. This is how the program was invoked, and might
not correspond to any actual file.

Use this instead of @@System.Environment.getProgName@@ if you want the full
path, and not just the last component.")
    (license license:expat)))

haskell-8.6-system-argv0

(define-public haskell-8.6-system-fileio
  (package
    (name "haskell-8.6-system-fileio")
    (version "0.3.16.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/system-fileio/system-fileio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iy6g1f35gzyj12g9mdiw4zf75mmxpv1l8cyaldgyscsl648pr9l"))))
    (properties `((upstream-name . "system-fileio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-system-filepath)))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "Consistent filesystem interaction across GHC versions (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-8.6-system-fileio

(define-public haskell-8.6-temporary-resourcet
  (package
    (name "haskell-8.6-temporary-resourcet")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/temporary-resourcet/temporary-resourcet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wgfra7lkb5abnhk295l3vfcna79b8m309wp1cxgl3v96il6yh70"))))
    (properties `((upstream-name . "temporary-resourcet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (home-page "http://www.github.com/ttuegel/temporary-resourcet")
    (synopsis
     "Portable temporary files and directories with automatic deletion")
    (description
     "The functions for creating temporary files and directories in the base
library are quite limited. The @@unixutils@@ package contains some good ones,
but they aren't portable to Windows.

This library repackages the Cabal implementations of its own temporary file
and folder functions so that you can use them without linking against Cabal
or depending on it being installed.

This library provides the same functionality as the @@temporary@@ package, but
uses @@resourcet@@ to provide automatic deletion without nesting @@withTempFile@@.")
    (license license:bsd-3)))

haskell-8.6-temporary-resourcet

(define-public haskell-8.6-tensors
  (package
    (name "haskell-8.6-tensors")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tensors/tensors-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wiq38px85ypnfpvbr3hcawrag457z0jvd4jr1bh7jf6qw6jqpfn"))))
    (properties `((upstream-name . "tensors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a96iw75ylygbjdlab5dj3dkkqamd2k1g2nfy6w7ly6j7rq6f84p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/leptonyu/tensors#readme")
    (synopsis "Tensor in Haskell")
    (description "Tensor use type level programming in haskell.")
    (license license:bsd-3)))

haskell-8.6-tensors

(define-public haskell-8.6-text-ldap
  (package
    (name "haskell-8.6-text-ldap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)))
    (home-page "https://hackage.haskell.org/package/text-ldap")
    (synopsis "Parser and Printer for LDAP text data stream")
    (description "This package contains Parser and Printer for
LDAP text data stream like OpenLDAP backup LDIF.")
    (license license:bsd-3)))

haskell-8.6-text-ldap

(define-public haskell-8.6-text-postgresql
  (package
    (name "haskell-8.6-text-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Parser and Printer of PostgreSQL extended types")
    (description "This package involves parser and printer for
text expressions of PostgreSQL extended types.
- inet type, cidr type")
    (license license:bsd-3)))

haskell-8.6-text-postgresql

(define-public haskell-8.6-text-printer
  (package
    (name "haskell-8.6-text-printer")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-printer/text-printer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "065m64f5l4yyccb04c7bwax09wk6aafm2v9sl3w8w1asqw7ni9sq"))))
    (properties `((upstream-name . "text-printer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-latin1)))
    (home-page "https://github.com/mvv/text-printer")
    (synopsis "Abstract interface for text builders/printers.")
    (description
     "This package provides an interface for injecting text into monoids such as
builders and printers.")
    (license license:bsd-3)))

haskell-8.6-text-printer

(define-public haskell-8.6-th-desugar
  (package
    (name "haskell-8.6-th-desugar")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-desugar/th-desugar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vxg0jvc239ngmv53yx564b7wkgd0b10xvx5phxvnnpm9n2pljpi"))))
    (properties `((upstream-name . "th-desugar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00608zmijp6cgs4d44grgrjqq6v79xampkn580zazqz3h1vrw5sq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-expand-syns)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-th-orphans)))
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

haskell-8.6-th-desugar

(define-public haskell-8.6-th-printf
  (package
    (name "haskell-8.6-th-printf")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-printf/th-printf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mqfbzx85c49q24yppkxgcd0h4s557b468qlnz2adbyba9wfsn62"))))
    (properties `((upstream-name . "th-printf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "0hsmqvjw65zrmyycrsjky5fbx87zsj8x4wpjvpmab4qm7i37s3v1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-charset)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-microlens-platform)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)))
    (home-page "https://github.com/pikajude/th-printf#readme")
    (synopsis "Quasiquoters for printf")
    (description "Quasiquoters for printf: string, bytestring, text.")
    (license license:expat)))

haskell-8.6-th-printf

(define-public haskell-8.6-th-utilities
  (package
    (name "haskell-8.6-th-utilities")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-utilities/th-utilities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sy3bgwc85zw999cya92xsp9jllclwbzw9fmjmhqi4r5kj2gyk96"))))
    (properties `((upstream-name . "th-utilities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12y71zv6ayxyla6pwr7mf5dsqngff25qanjziya3m64nh3hfvdl9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-th-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/fpco/th-utilities#readme")
    (synopsis "Collection of useful functions for use with Template Haskell")
    (description "")
    (license license:expat)))

haskell-8.6-th-utilities

(define-public haskell-8.6-transformers-base
  (package
    (name "haskell-8.6-transformers-base")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://github.com/mvv/transformers-base")
    (synopsis "Lift computations from the bottom of a transformer stack")
    (description
     "This package provides a straightforward port of @@monadLib@@'s BaseM
typeclass to @@transformers@@.")
    (license license:bsd-3)))

haskell-8.6-transformers-base

(define-public haskell-8.6-type-of-html-static
  (package
    (name "haskell-8.6-type-of-html-static")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-type-of-html)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html-static")
    (synopsis "Optimize static parts of type-of-html.")
    (description
     "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.
It converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.")
    (license license:bsd-3)))

haskell-8.6-type-of-html-static

(define-public haskell-8.6-unit-constraint
  (package
    (name "haskell-8.6-unit-constraint")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)))
    (home-page "https://hackage.haskell.org/package/unit-constraint")
    (synopsis "Extremely simple typeclass")
    (description "")
    (license license:bsd-3)))

haskell-8.6-unit-constraint

(define-public haskell-8.6-universum
  (package
    (name "haskell-8.6-universum")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universum/universum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17rzi17k2wj3p6dzd0dggzgyhh0c2mma4znkci1hqcihwr6rrljk"))))
    (properties `((upstream-name . "universum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/serokell/universum")
    (synopsis "Custom prelude used in Serokell")
    (description "See README.md file for more details.")
    (license license:expat)))

haskell-8.6-universum

(define-public haskell-8.6-uri-bytestring
  (package
    (name "haskell-8.6-uri-bytestring")
    (version "0.3.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring/uri-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0spzv3mwlpxiamd7347sxwcy2xri16ak1y7p1v4fisnvq4jprm67"))))
    (properties `((upstream-name . "uri-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-lift-instances)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-8.6-uri-bytestring

(define-public haskell-8.6-uuid
  (package
    (name "haskell-8.6-uuid")
    (version "1.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/uuid/uuid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09xhk42yhxvqmka0iqrv3338asncz8cap3j0ic0ps896f2581b6z"))))
    (properties `((upstream-name . "uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "06w8i9hi9ha84nmj6fcj44apzv61m3ryc0a1yxxqq5n8vznk2iya")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network-info)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)))
    (home-page "https://github.com/hvr/uuid")
    (synopsis
     "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
     "This library is useful for creating, comparing, parsing and
printing Universally Unique Identifiers.

See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-8.6-uuid

(define-public haskell-8.6-validity-bytestring
  (package
    (name "haskell-8.6-validity-bytestring")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-bytestring/validity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ck7pn8c8srwdwpcx6x4ihixff07kigq8q9sjkc3zzyf54n93f3x"))))
    (properties `((upstream-name . "validity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for bytestring")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-validity-bytestring

(define-public haskell-8.6-validity-containers
  (package
    (name "haskell-8.6-validity-containers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for containers")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-validity-containers

(define-public haskell-8.6-validity-scientific
  (package
    (name "haskell-8.6-validity-scientific")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-scientific/validity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vqqwlhamykz1vb5gc6krkcq3ixdmkld17c5vsxd0drnjcsllfkp"))))
    (properties `((upstream-name . "validity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for scientific")
    (description "")
    (license license:expat)))

haskell-8.6-validity-scientific

(define-public haskell-8.6-validity-text
  (package
    (name "haskell-8.6-validity-text")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-text/validity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdcivm7mbvi71zkm36g95wrb0y8fzhrnryp01m2wpmhffk1z5cf"))))
    (properties `((upstream-name . "validity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for text")
    (description "")
    (license license:expat)))

haskell-8.6-validity-text

(define-public haskell-8.6-validity-time
  (package
    (name "haskell-8.6-validity-time")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-time/validity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k09ni92gyxy82hkbrx7ss29nvdvkrf3r23x6gg5356ciqq78869"))))
    (properties `((upstream-name . "validity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for time")
    (description "")
    (license license:expat)))

haskell-8.6-validity-time

(define-public haskell-8.6-validity-unordered-containers
  (package
    (name "haskell-8.6-validity-unordered-containers")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-unordered-containers/validity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ra6d7a711bcl6fndj3xwk3g34nq3bpqdcb8zrpjlv9p4h6n3gj"))))
    (properties `((upstream-name . "validity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for unordered-containers")
    (description "")
    (license license:expat)))

haskell-8.6-validity-unordered-containers

(define-public haskell-8.6-validity-vector
  (package
    (name "haskell-8.6-validity-vector")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-vector/validity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jbfd3h9k0b4ifaaqqar54r86hm1jiixyxrgs2ln7ni00b0ncv1y"))))
    (properties `((upstream-name . "validity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for vector")
    (description "")
    (license license:expat)))

haskell-8.6-validity-vector

(define-public haskell-8.6-vivid
  (package
    (name "haskell-8.6-vivid")
    (version "0.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vivid/vivid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0awm9cnjgfqx1qf6jsnwmf0kxqxwny82q1ddqna8ilqcdrbsxh0i"))))
    (properties `((upstream-name . "vivid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0pp51zl360qasgw7dkh9f8mwpl2r0dz4bv0dxakm9dbqq36w965g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-vivid-osc)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vivid-supercollider)))
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
> playSong :: VividAction m => m ()
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
> theSound :: SynthDef '[\"note\"]
> theSound = sd (0 ::I \"note\") $ do
>    wobble <- sinOsc (freq_ 5) ? KR ~* 10 ~+ 10
>    s <- 0.1 ~* sinOsc (freq_ $ midiCPS (V::V \"note\") ~+ wobble)
>    out 0 [s,s]
>
> main :: IO ()
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
>    writeNRT \"song.wav\" playSong")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-vivid

(define-public haskell-8.6-wcwidth
  (package
    (name "haskell-8.6-wcwidth")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-setlocale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://github.com/solidsnack/wcwidth/")
    (synopsis "Native wcwidth.")
    (description
     "Bindings for your system's native wcwidth and a command line tool to examine
the widths assigned by it. The command line tool can compile a width table
to Haskell code that assigns widths to the Char type.")
    (license license:bsd-3)))

haskell-8.6-wcwidth

(define-public haskell-8.6-websockets
  (package
    (name "haskell-8.6-websockets")
    (version "0.12.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets/websockets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11jz0d7hgbl449dvz789gyf85gdwm6h0klq05vilmplpdx61h4az"))))
    (properties `((upstream-name . "websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-SHA)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-websockets

(define-public haskell-8.6-yeshql
  (package
    (name "haskell-8.6-yeshql")
    (version "4.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yeshql/yeshql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dlxq8vp18fagfymlzqa4j0ns174s31d7p1vi54wz0b55ml91if4"))))
    (properties `((upstream-name . "yeshql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-yeshql-core)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-yeshql-hdbc)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis
     "YesQL-style SQL database abstraction (legacy compatibility wrapper)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-8.6-yeshql

(define-public haskell-8.6-ztail
  (package
    (name "haskell-8.6-ztail")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hinotify)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/ztail")
    (synopsis "Multi-file, colored, filtered log tailer.")
    (description
     "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.")
    (license license:bsd-3)))

haskell-8.6-ztail

