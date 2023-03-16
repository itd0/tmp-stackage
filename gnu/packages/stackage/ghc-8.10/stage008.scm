;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage008)
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
(define-public haskell-8.10-HaskellNet
  (package
    (name "haskell-8.10-HaskellNet")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HaskellNet/HaskellNet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jsnq5sqflw9qjbhcvgxsb0mlac6yl1427xp7nm6fbaa2mmv8jd2"))))
    (properties `((upstream-name . "HaskellNet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-base64)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-mime-mail)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)))
    (home-page "https://github.com/qnikst/HaskellNet")
    (synopsis "Client support for POP3, SMTP, and IMAP")
    (description
     "This package provides client support for the POP3,
SMTP, and IMAP protocols.

Full examples can be found in the <https://github.com/qnikst/HaskellNet/tree/master/example repository>.
Additional documentation on the major updates can be found in the
<https://github.com/qnikst/HaskellNet/blob/master/Updating.md Updating.md> file")
    (license license:bsd-3)))

haskell-8.10-HaskellNet

(define-public haskell-8.10-HsOpenSSL-x509-system
  (package
    (name "haskell-8.10-HsOpenSSL-x509-system")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL-x509-system/HsOpenSSL-x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15mp70bqg1lzp971bzp6wym3bwzvxb76hzbgckygbfa722xyymhr"))))
    (properties `((upstream-name . "HsOpenSSL-x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/redneb/HsOpenSSL-x509-system")
    (synopsis "Use the system's native CA certificate store with HsOpenSSL")
    (description
     "A cross-platform library that tries to find a (reasonable) CA certificate
bundle that can be used with @@HsOpenSSL@@ to verify the certificates of
remote peers.

This package is for @@HsOpenSSL@@ what @@x509-system@@ is for the @@tls@@ package.
Additionally, it borrows some ideas from @@x509-system@@.")
    (license license:bsd-3)))

haskell-8.10-HsOpenSSL-x509-system

(define-public haskell-8.10-MemoTrie
  (package
    (name "haskell-8.10-MemoTrie")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-newtype-generics)))
    (home-page "https://github.com/conal/MemoTrie")
    (synopsis "Trie-based memo functions")
    (description
     "MemoTrie provides a basis for memoized functions over some domains,
using tries.  It's based on ideas from Ralf Hinze and code from
Spencer Janssen. Generic support thanks to Sam Boosalis.

Project wiki page: <http://haskell.org/haskellwiki/MemoTrie>

&#199; 2008-2019 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.10-MemoTrie

(define-public haskell-8.10-OpenGL
  (package
    (name "haskell-8.10-OpenGL")
    (version "3.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenGL/OpenGL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "069fg8jcxqq2z9iikynd8vi3jxm2b5y3qywdh4bdviyzab3zy1as"))))
    (properties `((upstream-name . "OpenGL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1nhlswxgxn8l1ysjq3fp3w5pvx6651d33036i8dlbqygzrn6iwmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-GLURaw)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ObjectName)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-StateVar)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://wiki.haskell.org/OpenGL")
    (synopsis "A binding for the OpenGL graphics system")
    (description
     "A Haskell binding for the OpenGL graphics system (GL, version 4.6) and its
accompanying utility library (GLU, version 1.3).

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-8.10-OpenGL

(define-public haskell-8.10-alsa-seq
  (package
    (name "haskell-8.10-alsa-seq")
    (version "0.6.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-seq/alsa-seq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00f7873484nifbimdav0b25sipgx3rn6xx1il6qgvz0p70pzzljv"))))
    (properties `((upstream-name . "alsa-seq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fmodifyfilter")
       #:cabal-revision
       ("1" "1mzdlqgxrgjmr3ljf4xg8rcks1fdq0s0zpb4lkipcm1lyq0kk32j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-alsa-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-enumset)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-poll)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (MIDI sequencer).")
    (description
     "This package provides access to ALSA sequencer (MIDI support).
For audio support see alsa-pcm.
Included are some simple example programs.
For more example programs including a GUI, see the alsa-gui programs.")
    (license license:bsd-3)))

haskell-8.10-alsa-seq

(define-public haskell-8.10-ascii-progress
  (package
    (name "haskell-8.10-ascii-progress")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-progress/ascii-progress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0glixkmqk7zz4g88sfrqfrdxd4na0krlwr50m2dkra091jwacgvy"))))
    (properties `((upstream-name . "ascii-progress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-concurrent-output)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-ascii-progress")
    (synopsis "A simple progress bar for the console.")
    (description
     "A simple Haskell progress bar for the console. Heavily borrows from TJ
Holowaychuk's Node.JS project
<https://github.com/tj/node-progress progress>

<https://github.com/yamadapc/haskell-ascii-progress github>")
    (license license:expat)))

haskell-8.10-ascii-progress

(define-public haskell-8.10-attoparsec-base64
  (package
    (name "haskell-8.10-attoparsec-base64")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (home-page "https://github.com/athanclark/attoparsec-base64#readme")
    (synopsis
     "Fetch only base64 characters, erroring in the attoparsec monad on failure")
    (description "")
    (license license:bsd-3)))

haskell-8.10-attoparsec-base64

(define-public haskell-8.10-attoparsec-iso8601
  (package
    (name "haskell-8.10-attoparsec-iso8601")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-iso8601/attoparsec-iso8601-"
                    version ".tar.gz"))
              (sha256
               (base32
                "162gc101mwhmjbfhhv1wm3yvk2h4ra34wpw5x87735cfqxvjv582"))))
    (properties `((upstream-name . "attoparsec-iso8601") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-f-fast")
       #:cabal-revision
       ("3" "1kjwc15lwn9axsx4nkl0ar1afimvhz0wsfir2wrxq17jsj9k0cjj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Parsing of ISO 8601 dates, originally from aeson.")
    (description "Parsing of ISO 8601 dates, originally from aeson.")
    (license license:bsd-3)))

haskell-8.10-attoparsec-iso8601

(define-public haskell-8.10-backprop
  (package
    (name "haskell-8.10-backprop")
    (version "0.2.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/backprop/backprop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wc71r6l5qgkspl5v76f1d75xwir9jp5kzdl83rq5sviggd458v9"))))
    (properties `((upstream-name . "backprop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-vinyl)))
    (home-page "https://backprop.jle.im")
    (synopsis "Heterogeneous automatic differentation")
    (description
     "Write your functions to compute your result, and the library will
automatically generate functions to compute your gradient.

Implements heterogeneous reverse-mode automatic differentiation, commonly
known as \"backpropagation\".

See <https://backprop.jle.im> for official introduction and documentation.")
    (license license:bsd-3)))

haskell-8.10-backprop

(define-public haskell-8.10-blas-comfort-array
  (package
    (name "haskell-8.10-blas-comfort-array")
    (version "0.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-comfort-array/blas-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g0bvag205ag520vlxv24cv63idjg6j8nwnadq9gbcibn4gvsisz"))))
    (properties `((upstream-name . "blas-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jdl8x0vs6p0h3qcwal7zr281cxqlxppq43yg2jkidhddqf9sgpd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-blas-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)))
    (home-page "https://hub.darcs.net/thielema/blas-comfort-array/")
    (synopsis "Auto-generated interface to Fortran BLAS via comfort-array")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

See also package @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-8.10-blas-comfort-array

(define-public haskell-8.10-bson
  (package
    (name "haskell-8.10-bson")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bson/bson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xmxhq1f8v00mbq2l1sb7akzhy0gd9wcylkanpizn68wczqkdi3b"))))
    (properties `((upstream-name . "bson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "http://github.com/mongodb-haskell/bson")
    (synopsis "BSON documents are JSON-like objects with a standard binary
encoding.")
    (description
     "A BSON Document is an untyped (dynamically type-checked) record.
I.e. it is a list of name-value pairs, where a Value is a single
sum type with constructors for basic types (Bool, Int, Float,
String, and Time), compound types (List, and (embedded) Document),
and special types (Binary, Javascript, ObjectId, RegEx, and a few
others).
A BSON Document is serialized to a standard binary encoding
defined at <http://bsonspec.org>. This implements version 1 of
that spec.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-bson

(define-public haskell-8.10-conferer-hspec
  (package
    (name "haskell-8.10-conferer-hspec")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer-hspec/conferer-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q9v26df3c2rxll6rk2zmmd9yrpqz1j1wdp59qlw2s6c2w7dxq35"))))
    (properties `((upstream-name . "conferer-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-conferer)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's FromConfig instances for hspec Config")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-conferer-hspec

(define-public haskell-8.10-connection-pool
  (package
    (name "haskell-8.10-connection-pool")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-between)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
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

haskell-8.10-connection-pool

(define-public haskell-8.10-cue-sheet
  (package
    (name "haskell-8.10-cue-sheet")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cue-sheet/cue-sheet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0papll3xcq2ipmya61jr71gf3zx2swmys829x5sbz7lv6abj9r3i"))))
    (properties `((upstream-name . "cue-sheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("4" "0990qf5qbzf54is8wp06bccbl19qbbk849lmq0pdy94rrg1kn07a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)))
    (home-page "https://github.com/mrkkrp/cue-sheet")
    (synopsis "Support for construction, rendering, and parsing of CUE sheets")
    (description
     "Support for construction, rendering, and parsing of CUE sheets.")
    (license license:bsd-3)))

haskell-8.10-cue-sheet

(define-public haskell-8.10-data-compat
  (package
    (name "haskell-8.10-data-compat")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-compat/data-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wfm561ird8hv0d52gfyx684xmvps90s4cly8knwwv31cz9r9vpg"))))
    (properties `((upstream-name . "data-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)))
    (home-page "https://github.com/TravisWhitaker/data-compat")
    (synopsis "Define Backwards Compatibility Schemes for Arbitrary Data")
    (description "Define Backwards Compatibility Schemes for Arbitrary Data")
    (license license:expat)))

haskell-8.10-data-compat

(define-public haskell-8.10-fmt
  (package
    (name "haskell-8.10-fmt")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fmt/fmt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "01mh0k69dv5x30hlmxi36dp1ylk0a6affr4jb3pvy8vjm4ypzvml"))))
    (properties `((upstream-name . "fmt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-formatting)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://github.com/cdornan/fmt")
    (synopsis "A new formatting library")
    (description
     "A new formatting library that tries to be simple to understand while still
being powerful and providing more convenience features than other libraries
(like functions for pretty-printing maps and lists, or a function for
printing arbitrary datatypes using generics).

A comparison with other libraries:

* @@printf@@ (from @@Text.Printf@@) takes a formatting string and uses some
type tricks to accept the rest of the arguments polyvariadically. It's
very concise, but there are some drawbacks – it can't produce @@Text@@
(you'd have to @@T.pack@@ it every time) and it doesn't warn you at
compile-time if you pass wrong arguments or not enough of them.

* <https://hackage.haskell.org/package/text-format text-format> takes a
formatting string with curly braces denoting places where arguments
would be substituted (the arguments themselves are provided via a
tuple). If you want to apply formatting to some of the arguments, you
have to use one of the provided formatters. Like @@printf@@, it can fail at
runtime, but at least the formatters are first-class (and you can add new
ones).

* <https://hackage.haskell.org/package/formatting formatting> takes a
formatting template consisting of pieces of strings interleaved with
formatters; this ensures that arguments always match their placeholders.
@@formatting@@ provides lots of formatters and generally seems to be the
most popular formatting library here. Unfortunately, at least in my
experience writing new formatters can be awkward and people sometimes
have troubles understanding how @@formatting@@ works.

* <https://hackage.haskell.org/package/fmt fmt> (i.e. this library)
provides formatters that are ordinary functions, and a bunch of operators
for concatenating formatted strings; those operators also do automatic
conversion. There are some convenience formatters which aren't present in
@@formatting@@ (like ones for formatting maps, lists, converting to base64,
etc). Some find the operator syntax annoying, while others like it.")
    (license license:bsd-3)))

haskell-8.10-fmt

(define-public haskell-8.10-genvalidity
  (package
    (name "haskell-8.10-genvalidity")
    (version "0.11.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity/genvalidity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16bd5dx0ngc8z7mij23i2l3a8v3c112x8ksd623alik18zx7pi8j"))))
    (properties `((upstream-name . "genvalidity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
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

haskell-8.10-genvalidity

(define-public haskell-8.10-ghc-check
  (package
    (name "haskell-8.10-ghc-check")
    (version "0.5.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-check/ghc-check-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14cdfbjk8l3j97v46clpb806zlkckbfhgpzip67byhw9kzv5r14s"))))
    (properties `((upstream-name . "ghc-check") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fghc-check-use-package-abis")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)))
    (home-page "https://hackage.haskell.org/package/ghc-check")
    (synopsis
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (description
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (license license:bsd-3)))

haskell-8.10-ghc-check

(define-public haskell-8.10-githash
  (package
    (name "haskell-8.10-githash")
    (version "0.1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/githash/githash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vkwc7j71vdrxy01vlm6xfp16kam7m9bnj9y3h217fzhq5mjywhz"))))
    (properties `((upstream-name . "githash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)))
    (home-page "https://github.com/snoyberg/githash#readme")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/githash>")
    (license license:bsd-3)))

haskell-8.10-githash

(define-public haskell-8.10-hjsmin
  (package
    (name "haskell-8.10-hjsmin")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-language-javascript)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (home-page "http://github.com/erikd/hjsmin")
    (synopsis "Haskell implementation of a javascript minifier")
    (description
     "Reduces size of javascript files by stripping out extraneous whitespace and
other syntactic elements, without changing the semantics.")
    (license license:bsd-3)))

haskell-8.10-hjsmin

(define-public haskell-8.10-hsinstall
  (package
    (name "haskell-8.10-hsinstall")
    (version "2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsinstall/hsinstall-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0763jzyl8ysani30alc6ii3i68i5ls1cd288b6iza4lfz1knval5"))))
    (properties `((upstream-name . "hsinstall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-heredoc)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)))
    (home-page "https://github.com/dino-/hsinstall#readme")
    (synopsis "Install Haskell software")
    (description
     "This is a tool for deploying software projects into directory structures suitable for installation on a system. It builds upon the `stack install` command and adds more features. It's also a tool for easier AppImage creation.")
    (license license:isc)))

haskell-8.10-hsinstall

(define-public haskell-8.10-hslogger
  (package
    (name "haskell-8.10-hslogger")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslogger/hslogger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nyar9xcblx5jwks85y8f4jfy9k1h4ss6rvj4mdbiidrq3v688vz"))))
    (properties `((upstream-name . "hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--gt-3_0_0")
       #:cabal-revision
       ("6" "0xiqjl646kxynsccc2q1q91sch7pfx3274yl2745fsqhpb115df1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)))
    (home-page "https://github.com/haskell-hvr/hslogger/wiki")
    (synopsis "Versatile logging framework")
    (description
     "@@hslogger@@ is a logging framework for Haskell, roughly similar
to [Python's logging module](https://docs.python.org/2/library/logging.html).

@@hslogger@@ lets each log message have a priority and source be associated
with it.  The programmer can then define global handlers that route
or filter messages based on the priority and source.  @@hslogger@@ also
has a [Syslog](https://tools.ietf.org/html/rfc5424) handler built in.")
    (license license:bsd-3)))

haskell-8.10-hslogger

(define-public haskell-8.10-hunit-dejafu
  (package
    (name "haskell-8.10-hunit-dejafu")
    (version "2.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hunit-dejafu/hunit-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pbsbj70a2m7zvk25wa8mi0ymxv4c49g2vgg8819wpjcrxw8sy64"))))
    (properties `((upstream-name . "hunit-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-dejafu)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the HUnit test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/HUnit HUnit>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-8.10-hunit-dejafu

(define-public haskell-8.10-infer-license
  (package
    (name "haskell-8.10-infer-license")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-metrics)))
    (home-page "https://hackage.haskell.org/package/infer-license")
    (synopsis "Infer software license from a given license file")
    (description "")
    (license license:expat)))

haskell-8.10-infer-license

(define-public haskell-8.10-io-streams
  (package
    (name "haskell-8.10-io-streams")
    (version "1.5.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams/io-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y3sqmxrwiksz7pl4hf3vzvg8p8n00qnv98nj5xbpcadlh468rny"))))
    (properties `((upstream-name . "io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-nointeractivetests" "-fzlib" "-fnetwork")
       #:cabal-revision
       ("3" "14zy4y6xnrfal02w0m8smjpb202axmq88cm40722rzxfpy5s1cjq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-zlib-bindings)))
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

haskell-8.10-io-streams

(define-public haskell-8.10-jack
  (package
    (name "haskell-8.10-jack")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jack/jack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0aa7nz8ybsw7s0nmf12kxnjm5z1afj88c97b1w17b7lvdwvfs3cx"))))
    (properties `((upstream-name . "jack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fpkgconfig" "-fjackfree" "-f-buildexamples")
       #:cabal-revision
       ("1" "16g5xc67811jvckfn0xfvcwbxi0kcx1qh87pyhrqvrp4k8m68g2v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-enumset)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-event-list)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-midi)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-negative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages audio) jack-1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/JACK")
    (synopsis "Bindings for the JACK Audio Connection Kit")
    (description
     "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.
It has support both for PCM audio and MIDI handling.

In order to adapt to your system,
you may have to disable pkgConfig or jackFree cabal flags.

You must compile your clients with @@-threaded@@
otherwise you will encounter segfaults.")
    (license license:gpl2)))

haskell-8.10-jack

(define-public haskell-8.10-justified-containers
  (package
    (name "haskell-8.10-justified-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-roles)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-should-not-typecheck)))
    (home-page "https://github.com/matt-noonan/justified-containers")
    (synopsis
     "Keyed container types with type-checked proofs of key presence.")
    (description
     "This package contains wrappers around standard container types,
that provide guarantees about the presence of keys within the
container.")
    (license license:bsd-2)))

haskell-8.10-justified-containers

(define-public haskell-8.10-ki
  (package
    (name "haskell-8.10-ki")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ki/ki-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1nxmgv4kxh2whdsmj659iypf8gfjrqzyxzyzghapg1fmpffjpcyr"))))
    (properties `((upstream-name . "ki") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dejafu-tests")
       #:cabal-revision
       ("1" "0prk6bq1rw52dc7ydapqklcapl1z6yqz0vnx0fl4cm600pd9salm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-concurrency)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-dejafu)))
    (home-page "https://github.com/mitchellwrosen/ki")
    (synopsis "A lightweight, structured-concurrency library")
    (description
     "A lightweight, structured-concurrency library.

This package comes in two variants:

* \"Ki\" exposes the most stripped-down variant; start here.

* \"Ki.Implicit\" extends \"Ki\" with an implicit context that's used to
propagate soft cancellation signals.

Using this variant comes at a cost:

* You must manually add constraints to propagate the implicit context to
where it's needed.

* To remain warning-free, you must delete the implicit context constraints
where they are no longer needed.

If you don't need soft-cancellation, there is no benefit to using this
variant, and you should stick with \"Ki\".

Because you'll only ever need one variant at a time, I recommend using a
<https://cabal.readthedocs.io/en/latest/cabal-package.html#pkg-field-mixins mixin stanza>
to rename one module to @@Ki@@ while hiding the others. This also simplifies the
process of upgrading from \"Ki.Implicit\" to \"Ki\" if necessary.

@@
mixins: ki (Ki.Implicit as Ki)
@@")
    (license license:bsd-3)))

haskell-8.10-ki

(define-public haskell-8.10-lapack-comfort-array
  (package
    (name "haskell-8.10-lapack-comfort-array")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-comfort-array/lapack-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p4vfw95qnd48cbizncb7b7fgzkxbv7r3rp3ffw6r11wymhm67q0"))))
    (properties `((upstream-name . "lapack-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0z80pnn3fpbfbrxmv2n3gwwwlny4a9hgnivd0b8i25q1agyprzcs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)))
    (home-page "https://hub.darcs.net/thielema/lapack-comfort-array/")
    (synopsis "Auto-generated interface to Fortran LAPACK via comfort-array")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

The functions are all in IO monad because they are auto-generated and
we cannot make sure automatically that unsafePerformIO is always safe.
Instead of raw pointers we use Arrays and Mutable.Arrays
and assign and check array bounds to LAPACK function parameters,
as far we can retrieve this information from the FORTRAN comments.
We check consistency of dimensions where consistent dimensions are required,
but we cannot do all kind of bound checks.
We use immutable Array for input and output parameters
and mutable Mutable.Array for input/output parameters.
LAPACK plays some nasty tricks of in-place array updates
on input/output arrays
even if the dimensions of input and output array differ (see e.g. GELS).
The wrappers also manage allocation of memory for function parameters.
This is necessary since FORTRAN passes all parameters by reference.
Further on, the wrappers convert from Haskell values like @@Int@@
to low-level values like @@CInt@@.

We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS, but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-8.10-lapack-comfort-array

(define-public haskell-8.10-libmpd
  (package
    (name "haskell-8.10-libmpd")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libmpd/libmpd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "088vlir0n3wps2p5ydgyx51p41nfjcm2v02sszpyjj3c8z7f4qkh"))))
    (properties `((upstream-name . "libmpd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "http://github.com/vimus/libmpd-haskell#readme")
    (synopsis "An MPD client library.")
    (description "A client library for MPD, the Music Player Daemon.")
    (license license:expat)))

haskell-8.10-libmpd

(define-public haskell-8.10-lift-generics
  (package
    (name "haskell-8.10-lift-generics")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lift-generics/lift-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qkzq8hcb6j15cslv577bmhjcxmljzsrryysdgd7r99kr3q445b4"))))
    (properties `((upstream-name . "lift-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "07nf6d1fb0vc3fyldrgysmbc67hd94npp5f2hclrr3rhklfm7k91")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)))
    (home-page "https://github.com/RyanGlScott/lift-generics")
    (synopsis
     "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation")
    (description
     "This package provides a \"GHC.Generics\"-based @@genericLift@@
function (only available on GHC 7.4 and later), as well as
a @@genericLiftWithPkgFallback@@ function (for code that
must support GHC 7.2 and earlier) and a
@@genericLiftWithPkg@@ function (for use when neither of the
above will work), all of which can be used for providing a
@@Language.Haskell.TH.Syntax.lift@@ implementation. See the
documentation in the \"Language.Haskell.TH.Lift.Generics\"
module to get started.

Credit goes to Matthew Pickering for
<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.

Note that due to API limitations, \"GHC.Generics\" wasn't
powerful enough to come up with the entirety of a `lift`
implementation prior to GHC 8.0. For GHC 7.4 and later, we
can pluck this information out of `Typeable`. For earlier
versions, and where `Typeable` isn't available,
@@genericLiftWithPkg@@ requires you to produce the package
name yourself, which proves to be no small feat (see the
documentation for more info).

Luckily, you don't have to jump through as many hoops on GHC 7.4 and
later: simply use the @@genericLift@@ function, and life is good.")
    (license license:bsd-3)))

haskell-8.10-lift-generics

(define-public haskell-8.10-little-rio
  (package
    (name "haskell-8.10-little-rio")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/little-rio/little-rio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cbadsbhhgls6p46gga4l32b0fhmvp6r9mycaj2srsfdcnwkydr9"))))
    (properties `((upstream-name . "little-rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "https://github.com/ejconlon/little-rio#readme")
    (synopsis "When you need just the RIO monad")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/little-rio#readme>")
    (license license:bsd-3)))

haskell-8.10-little-rio

(define-public haskell-8.10-logging-facade-syslog
  (package
    (name "haskell-8.10-logging-facade-syslog")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hsyslog)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-logging-facade)))
    (home-page "https://github.com/peti/logging-facade-syslog#readme")
    (synopsis "A logging back-end to syslog(3) for the logging-facade library")
    (description
     "A simple \"System.Logging.Facade\" back-end for @@syslog(3)@@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.")
    (license license:bsd-3)))

haskell-8.10-logging-facade-syslog

(define-public haskell-8.10-mbox-utility
  (package
    (name "haskell-8.10-mbox-utility")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mbox-utility/mbox-utility-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vh9ibh4g3fssq9jfzrmaa56sk4k35r27lmz2xq4fhc62fmkia92"))))
    (properties `((upstream-name . "mbox-utility") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1q2kplw6pkakls161hzpjwrd34k0xsv2flcdjmsrd0py45cdavhz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hsemail)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-empty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-spreadsheet)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "https://hackage.haskell.org/package/mbox-utility")
    (synopsis "List contents of an mbox file containing e-mails")
    (description
     "List contents of an mbox file containing e-mails.
This is intended for post-processing by the @@cutter@@ command.
See <http://hackage.haskell.org/package/cutter>.")
    (license license:bsd-3)))

haskell-8.10-mbox-utility

(define-public haskell-8.10-megaparsec-tests
  (package
    (name "haskell-8.10-megaparsec-tests")
    (version "9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec-tests/megaparsec-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0synm14x1k9r5q7xmv21z0y95b42g7lvwn78mcnc3cx62x6393ng"))))
    (properties `((upstream-name . "megaparsec-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1iz18gmhqvxwiw6r35nd6p2m3zjpzsy0bzhwgbfxpjbvvcgy8736")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Test utilities and the test suite of Megaparsec")
    (description "Test utilities and the test suite of Megaparsec.")
    (license license:bsd-2)))

haskell-8.10-megaparsec-tests

(define-public haskell-8.10-modern-uri
  (package
    (name "haskell-8.10-modern-uri")
    (version "0.3.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/modern-uri/modern-uri-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0904ff8pzcbk1swp0s1v5js468qnf3ccyzfcvaa62nsaj4qb7shq"))))
    (properties `((upstream-name . "modern-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "05y666pg4wsv7qpszjpa8d2zqzcmp1gyfkzvgi4nw9n9kmcij8hv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/mrkkrp/modern-uri")
    (synopsis "Modern library for working with URIs")
    (description "Modern library for working with URIs.")
    (license license:bsd-3)))

haskell-8.10-modern-uri

(define-public haskell-8.10-monad-unlift
  (package
    (name "haskell-8.10-monad-unlift")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-unlift/monad-unlift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03zf2nd00ds12rrbp3qn7pr9vaw1npzswrzcnhc1k0p436366pjb"))))
    (properties `((upstream-name . "monad-unlift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/fpco/monad-unlift")
    (synopsis "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license license:expat)))

haskell-8.10-monad-unlift

(define-public haskell-8.10-network-simple
  (package
    (name "haskell-8.10-network-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-socks)))
    (home-page "https://github.com/k0001/network-simple")
    (synopsis "Simple network sockets usage patterns.")
    (description
     "This module exports functions that abstract simple network socket
usage patterns.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between versions.")
    (license license:bsd-3)))

haskell-8.10-network-simple

(define-public haskell-8.10-network-uri
  (package
    (name "haskell-8.10-network-uri")
    (version "2.6.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-uri/network-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "111m485rx2kyqdymi1x6sl08hi6lp34q3f41yqcx99086swnv1ap"))))
    (properties `((upstream-name . "network-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)))
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

haskell-8.10-network-uri

(define-public haskell-8.10-nonce
  (package
    (name "haskell-8.10-nonce")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
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

haskell-8.10-nonce

(define-public haskell-8.10-odbc
  (package
    (name "haskell-8.10-odbc")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/odbc/odbc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yyyjnnlnd3zpvnh55l5gsvakrciml91jaqy5hdgnlpqfslz330r"))))
    (properties `((upstream-name . "odbc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-formatting)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages databases) unixodbc)))
    (home-page "https://github.com/fpco/odbc")
    (synopsis "Haskell binding to the ODBC API, aimed at SQL Server driver")
    (description "Haskell binding to the ODBC API. This has been tested
against the Microsoft SQL Server ODBC drivers. Its test
suite runs on OS X, Windows and Linux.")
    (license license:bsd-3)))

haskell-8.10-odbc

(define-public haskell-8.10-parameterized
  (package
    (name "haskell-8.10-parameterized")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parameterized/parameterized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iik6wx6i52sqgiah9xb70cv4p29yi2fr0q6ri4c9wviqrrw8syp"))))
    (properties `((upstream-name . "parameterized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-data-diverse)))
    (home-page "https://github.com/louispan/parameterized#readme")
    (synopsis
     "Parameterized/indexed monoids and monads using only a single parameter type variable.")
    (description
     "Parameterized/indexed monoids and monads using only a single parameter type variable.")
    (license license:bsd-3)))

haskell-8.10-parameterized

(define-public haskell-8.10-persistable-types-HDBC-pg
  (package
    (name "haskell-8.10-persistable-types-HDBC-pg")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-HDBC)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-convertible)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-persistable-record)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-relational-query)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-relational-query-HDBC)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-text-postgresql)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis
     "HDBC and Relational-Record instances of PostgreSQL extended types")
    (description
     "This package contains HDBC Convertible instances and
Relational-Record persistable instances of PostgreSQL extended types
Supported extended types: inet, cidr")
    (license license:bsd-3)))

haskell-8.10-persistable-types-HDBC-pg

(define-public haskell-8.10-polling-cache
  (package
    (name "haskell-8.10-polling-cache")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polling-cache/polling-cache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16hz5s5flz96j3l3b827hdymz75qqs66a05rwmz4b8332db3y5dm"))))
    (properties `((upstream-name . "polling-cache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://github.com/jkaye2012/polling-cache#readme")
    (synopsis
     "Cache infrequently updated data for simpler distributed systems.")
    (description
     "Cache infrequently updated data for simpler distributed systems. See <https://github.com/jkaye2012/polling-cache> for more details.")
    (license license:bsd-3)))

haskell-8.10-polling-cache

(define-public haskell-8.10-poly-arity
  (package
    (name "haskell-8.10-poly-arity")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)))
    (home-page "https://hackage.haskell.org/package/poly-arity")
    (synopsis "Tools for working with functions of undetermined arity")
    (description "")
    (license license:bsd-3)))

haskell-8.10-poly-arity

(define-public haskell-8.10-process-extras
  (package
    (name "haskell-8.10-process-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-ListLike)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)))
    (home-page "https://github.com/seereason/process-extras")
    (synopsis "Process extras")
    (description "Extends <http://hackage.haskell.org/package/process>.
Read process input and output as ByteStrings or
Text, or write your own ProcessOutput instance.
Lazy process input and output.  ProcessMaker class
for more flexibility in the process creation API.")
    (license license:expat)))

haskell-8.10-process-extras

(define-public haskell-8.10-reinterpret-cast
  (package
    (name "haskell-8.10-reinterpret-cast")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-loop)))
    (home-page "https://github.com/nh2/reinterpret-cast")
    (synopsis
     "Memory reinterpretation casts for Float/Double and Word32/Word64")
    (description
     "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.

The implementations in the @@.Internal@@ package are different ways to tackle
the problem; the @@array@@ method (current default) is about 5 times faster
than the @@FFI@@ method.")
    (license license:expat)))

haskell-8.10-reinterpret-cast

(define-public haskell-8.10-say
  (package
    (name "haskell-8.10-say")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://github.com/fpco/say#readme")
    (synopsis "Send textual messages to a Handle in a thread-friendly way")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/say>")
    (license license:expat)))

haskell-8.10-say

(define-public haskell-8.10-step-function
  (package
    (name "haskell-8.10-step-function")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)))
    (home-page "https://github.com/jonpetterbergman/step-function")
    (synopsis "Staircase functions or piecewise constant functions")
    (description
     "Step functions, staircase functions or piecewise constant functions.
Implemented as a default value and a series of transitions.
Supports merging two step functions using a supplied merging function.
")
    (license license:bsd-3)))

haskell-8.10-step-function

(define-public haskell-8.10-tasty
  (package
    (name "haskell-8.10-tasty")
    (version "1.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ki3gdzfsqvk9mwzzvgj18ck1sbkwac06gcc128wpwh9g8c4bzqr"))))
    (properties `((upstream-name . "tasty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock" "-funix")
       #:cabal-revision
       ("2" "134sp1sjyx5hh1vwraxdfs98yx9gf19zp9kpfzqvvajfgy9i37jv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-wcwidth)))
    (home-page "https://github.com/UnkindPartition/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.10-tasty

(define-public haskell-8.10-temporary-resourcet
  (package
    (name "haskell-8.10-temporary-resourcet")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
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

haskell-8.10-temporary-resourcet

(define-public haskell-8.10-tensors
  (package
    (name "haskell-8.10-tensors")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tensors/tensors-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "181jiffwp3varv9xzb8if22lwwi1vhhgqf7hai373vn2yavk5wal"))))
    (properties `((upstream-name . "tensors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mq51vajlj15356f3hjqxwq0q4lk9dpv0xpsk26wfzf7y55l4d3p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/leptonyu/tensors#readme")
    (synopsis "Tensor in Haskell")
    (description "Tensor use type level programming in haskell.")
    (license license:bsd-3)))

haskell-8.10-tensors

(define-public haskell-8.10-thread-supervisor
  (package
    (name "haskell-8.10-thread-supervisor")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-supervisor/thread-supervisor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k42k6c2h0xs7h4gcfsjghr5jp1q2w7ay1drlfw2ghl8zmfh2pnv"))))
    (properties `((upstream-name . "thread-supervisor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://github.com/nshimaza/thread-supervisor#readme")
    (synopsis
     "A simplified implementation of Erlang/OTP like supervisor over thread")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/thread-supervisor#readme>")
    (license license:expat)))

haskell-8.10-thread-supervisor

(define-public haskell-8.10-throwable-exceptions
  (package
    (name "haskell-8.10-throwable-exceptions")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/throwable-exceptions/throwable-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ab9qx87r0wxrvx9fk77cpimj0pm1qa2pvcv4b8sadj0s8fkrcis"))))
    (properties `((upstream-name . "throwable-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)))
    (home-page "https://github.com/aiya000/hs-throwable-exceptions#README.md")
    (synopsis "throwable-exceptions gives the easy way to throw exceptions")
    (description "throwable-exceptions gives the easy way to throw exceptions")
    (license license:expat)))

haskell-8.10-throwable-exceptions

(define-public haskell-8.10-type-of-html-static
  (package
    (name "haskell-8.10-type-of-html-static")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-type-of-html)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html-static")
    (synopsis "Optimize static parts of type-of-html.")
    (description
     "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.
It converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.")
    (license license:bsd-3)))

haskell-8.10-type-of-html-static

(define-public haskell-8.10-unit-constraint
  (package
    (name "haskell-8.10-unit-constraint")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)))
    (home-page "https://hackage.haskell.org/package/unit-constraint")
    (synopsis "Extremely simple typeclass")
    (description "")
    (license license:bsd-3)))

haskell-8.10-unit-constraint

(define-public haskell-8.10-validity-bytestring
  (package
    (name "haskell-8.10-validity-bytestring")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for bytestring")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-validity-bytestring

(define-public haskell-8.10-validity-containers
  (package
    (name "haskell-8.10-validity-containers")
    (version "0.5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-containers/validity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qw5p60dr54d2wh49y6x33hbks4d74m8pr5zygblzk0y70warqld"))))
    (properties `((upstream-name . "validity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for containers")
    (description "")
    (license license:expat)))

haskell-8.10-validity-containers

(define-public haskell-8.10-validity-primitive
  (package
    (name "haskell-8.10-validity-primitive")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-primitive/validity-primitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r9wy91qr2c8lf6llv9qyirb1vjkq4nb41zqph5ip9gjjj7fzk9y"))))
    (properties `((upstream-name . "validity-primitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for primitive")
    (description "")
    (license license:expat)))

haskell-8.10-validity-primitive

(define-public haskell-8.10-validity-scientific
  (package
    (name "haskell-8.10-validity-scientific")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for scientific")
    (description "")
    (license license:expat)))

haskell-8.10-validity-scientific

(define-public haskell-8.10-validity-text
  (package
    (name "haskell-8.10-validity-text")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-text/validity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00sfiykazz2iwwr43lxl0q6dn03jpf515k0s8hymqpychmflyqhi"))))
    (properties `((upstream-name . "validity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d0gkp9wjbhq2p6zfnc2jx5ifh6xi84psiqrrxczdgi1kwl0af3j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for text")
    (description "")
    (license license:expat)))

haskell-8.10-validity-text

(define-public haskell-8.10-validity-time
  (package
    (name "haskell-8.10-validity-time")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-time/validity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02lwa2w84m4mm2lpg5dhg5p0ndba5r152bjm4iy76y2qsfkva0ap"))))
    (properties `((upstream-name . "validity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for time")
    (description "")
    (license license:expat)))

haskell-8.10-validity-time

(define-public haskell-8.10-validity-uuid
  (package
    (name "haskell-8.10-validity-uuid")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-uuid/validity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4z9q8m07ssrg6a4lj7501kjnbp9hazg3gyfwrbdbrw7p7jjd9l"))))
    (properties `((upstream-name . "validity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for uuid")
    (description "")
    (license license:expat)))

haskell-8.10-validity-uuid

(define-public haskell-8.10-validity-vector
  (package
    (name "haskell-8.10-validity-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for vector")
    (description "")
    (license license:expat)))

haskell-8.10-validity-vector

(define-public haskell-8.10-vformat-time
  (package
    (name "haskell-8.10-vformat-time")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vformat-time/vformat-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s3b9ryyzmvy1fpxdnxdgrpi5faz67r8immm30pv6njy741k1l36"))))
    (properties `((upstream-name . "vformat-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0i11kkr8xwrffqz6jb68xfgvsbdkfxzxmw9k1bjc42x9hidgxv47")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-vformat)))
    (home-page "https://github.com/versioncloud/vformat-time#readme")
    (synopsis "Extend vformat to time datatypes")
    (description "Please see http://hackage.haskell.org/package/vformat-time")
    (license license:bsd-3)))

haskell-8.10-vformat-time

(define-public haskell-8.10-websockets
  (package
    (name "haskell-8.10-websockets")
    (version "0.12.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets/websockets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g3z0n4irf3gvbdf9p97jq05ybdg0gwjy5bj4nfc7ivsvyhaic6k"))))
    (properties `((upstream-name . "websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("2" "045dsjhhwv73wrs6f91az9hvxygznmx14g6f3fv69yhz9s6lbkry")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-SHA)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)))
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

haskell-8.10-websockets

(define-public haskell-8.10-wild-bind-x11
  (package
    (name "haskell-8.10-wild-bind-x11")
    (version "0.2.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wild-bind-x11/wild-bind-x11-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qxzv4xvqqm7xcz17a3h1pgc3g84dp3676vb40yi9dfxdwag3xxs"))))
    (properties `((upstream-name . "wild-bind-x11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-interactive")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-X11)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-fold-debounce)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-wild-bind)))
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

haskell-8.10-wild-bind-x11

(define-public haskell-8.10-xmonad-contrib
  (package
    (name "haskell-8.10-xmonad-contrib")
    (version "0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-contrib/xmonad-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pddgkvnbww28wykncc7j0yb0lv15bk7xnnhdcbrwkxzw66w6wmd"))))
    (properties `((upstream-name . "xmonad-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse_xft" "-f-testing")
       #:cabal-revision
       ("2" "0ki4q2fq1ydq5yn74k2vfnjcks03rqq2l9nfqmizb10qyndv8cfq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-X11)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-X11-xft)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-xmonad)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "http://xmonad.org/")
    (synopsis "Third party extensions for xmonad")
    (description
     "Third party tiling algorithms, configurations and scripts to xmonad,
a tiling window manager for X.

For an introduction to building, configuring and using xmonad
extensions, see \"XMonad.Doc\". In particular:

\"XMonad.Doc.Configuring\", a guide to configuring xmonad

\"XMonad.Doc.Extending\", using the contributed extensions library

\"XMonad.Doc.Developing\", introduction to xmonad internals and writing
your own extensions.
")
    (license license:bsd-3)))

haskell-8.10-xmonad-contrib

(define-public haskell-8.10-zenacy-html
  (package
    (name "haskell-8.10-zenacy-html")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zenacy-html/zenacy-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05jy3w7a94ns52w4a1p6xhcph09p2zzqmvncf47db9wwq6xl5ad2"))))
    (properties `((upstream-name . "zenacy-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (home-page "https://github.com/mlcfp/zenacy-html")
    (synopsis "A standard compliant HTML parsing library")
    (description
     "Zenacy HTML is an HTML parsing and processing library that implements the
WHATWG HTML parsing standard.  The standard is described as a state machine
that this library implements exactly as spelled out including all the error
handling, recovery, and conformance checks that makes it robust in handling
any HTML pulled from the web.  In addition to parsing, the library provides
many processing features to help extract information from web pages or
rewrite them and render the modified results.")
    (license license:expat)))

haskell-8.10-zenacy-html

(define-public haskell-8.10-zenacy-unicode
  (package
    (name "haskell-8.10-zenacy-unicode")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zenacy-unicode/zenacy-unicode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l03zr1j6h1h15rnz6mk731g5ib1h3x59b3aqm30i0kd2h28g0vw"))))
    (properties `((upstream-name . "zenacy-unicode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (home-page "https://github.com/mlcfp/zenacy-unicode")
    (synopsis "Unicode utilities for Haskell")
    (description
     "Zenacy Unicode includes tools for checking byte order marks (BOM) and
cleaning data to remove invalid bytes.  These tools can help ensure that
data pulled from the web can be parsed and converted to text.")
    (license license:expat)))

haskell-8.10-zenacy-unicode

