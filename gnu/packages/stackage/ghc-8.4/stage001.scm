;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage001)
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
(define-public haskell-8.4-HUnit
  (package
    (name "haskell-8.4-HUnit")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HUnit/HUnit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pnhwqq5v8h48gbp3ibv3skfj25mf4zs5svxcavq93p9cswycj3l"))))
    (properties `((upstream-name . "HUnit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18wkmlyq50wjprg9apjj3b679lqk8rzqskxir0ghsb6aim97l8jh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)))
    (home-page "https://github.com/hspec/HUnit#readme")
    (synopsis "A unit testing framework for Haskell")
    (description
     "HUnit is a unit testing framework for Haskell, inspired by the
JUnit tool for Java, see: <http://www.junit.org>.")
    (license license:bsd-3)))

haskell-8.4-HUnit

(define-public haskell-8.4-HsOpenSSL
  (package
    (name "haskell-8.4-HsOpenSSL")
    (version "0.11.4.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL/HsOpenSSL-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0idmak6d8mpbxphyq9hkxkmby2wnzhc1phywlgm0zw6q47pwxgff"))))
    (properties `((upstream-name . "HsOpenSSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast-bignum" "-f-homebrew-openssl" "-f-macports-openssl")
       #:cabal-revision
       ("1" "0bkcw2pjfgv1bhgkrpncvwq9czfr7cr4ak14n0v8c2y33i33wk5z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/vshabanov/HsOpenSSL")
    (synopsis "Partial OpenSSL binding for Haskell")
    (description
     "
HsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA
and DSA keys, read and write PEM files, generate message digests,
sign and verify messages, encrypt and decrypt messages. It has
also some capabilities of creating SSL clients and servers.

This package is in production use by a number of Haskell based
systems and stable. You may also be interested in the @@tls@@ package,
<http://hackage.haskell.org/package/tls>, which is a pure Haskell
implementation of SSL.
")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-HsOpenSSL

(define-public haskell-8.4-MonadRandom
  (package
    (name "haskell-8.4-MonadRandom")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MonadRandom/MonadRandom-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w44jl1n3kqvqaflh82l1wj3xxbhzfs3kf4m8rk7w6fgg8llmnmb"))))
    (properties `((upstream-name . "MonadRandom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0fiblwmwk48d1g9j99qrcg1ak904csgfb86y80d1nl2vr782cq6w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/MonadRandom")
    (synopsis "Random-number generation monad.")
    (description "Support for computations which consume random values.")
    (license license:bsd-3)))

haskell-8.4-MonadRandom

(define-public haskell-8.4-abstract-deque
  (package
    (name "haskell-8.4-abstract-deque")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/abstract-deque/abstract-deque-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18jwswjxwzc9bjiy4ds6hw2a74ki797jmfcifxd2ga4kh7ri1ah9"))))
    (properties `((upstream-name . "abstract-deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-usecas")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis "Abstract, parameterized interface to mutable Deques.")
    (description
     "An abstract interface to highly-parameterizable queues/deques.

Background: There exists a feature space for queues that extends between:

* simple, single-ended, non-concurrent, bounded queues

* double-ended, threadsafe, growable queues

... with important points inbetween (such as
the queues used for work-stealing).

This package includes an interface for Deques that allows the
programmer to use a single API for all of the above, while using the
type-system to select an efficient implementation given the
requirements (using type families).

This package also includes a simple reference implementation based
on 'IORef' and \"Data.Sequence\".")
    (license license:bsd-3)))

haskell-8.4-abstract-deque

(define-public haskell-8.4-alg
  (package
    (name "haskell-8.4-alg")
    (version "0.2.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alg/alg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0w5lxmz52nskh8ms3nliya78v1pb77f7nyn19klqf8yskaalywlq"))))
    (properties `((upstream-name . "alg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-util)))
    (home-page "https://hackage.haskell.org/package/alg")
    (synopsis "Algebraic structures")
    (description "")
    (license license:bsd-3)))

haskell-8.4-alg

(define-public haskell-8.4-algebraic-graphs
  (package
    (name "haskell-8.4-algebraic-graphs")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/algebraic-graphs/algebraic-graphs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rfs58z60nn041ymi7lilc7dyijka30l4hhdznfaz9sfzx4f8yl8"))))
    (properties `((upstream-name . "algebraic-graphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)))
    (home-page "https://github.com/snowleopard/alga")
    (synopsis "A library for algebraic graph construction and transformation")
    (description
     "<https://github.com/snowleopard/alga Alga> is a library for algebraic construction and
manipulation of graphs in Haskell. See <https://github.com/snowleopard/alga-paper this paper>
for the motivation behind the library, the underlying theory and implementation details.

The top-level module
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html Algebra.Graph>
defines the core data type
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph.html#t:Graph Graph>,
which is a deep embedding of four graph construction primitives /empty/,
/vertex/, /overlay/ and /connect/. To represent non-empty graphs, see
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-NonEmpty.html Algebra.Graph.NonEmpty>.
More conventional graph representations can be found in
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-AdjacencyMap.html Algebra.Graph.AdjacencyMap>
and
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Relation.html Algebra.Graph.Relation>.

The type classes defined in
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Class.html Algebra.Graph.Class>
and
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-HigherKinded-Class.html Algebra.Graph.HigherKinded.Class>
can be used for polymorphic graph construction and manipulation. Also see
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Fold.html Algebra.Graph.Fold>
that defines the Boehm-Berarducci encoding of algebraic graphs and provides additional
flexibility for polymorphic graph manipulation.

This is an experimental library and the API is expected to remain unstable until version 1.0.0.
Please consider contributing to the on-going
<https://github.com/snowleopard/alga/issues discussions on the library API>.")
    (license license:expat)))

haskell-8.4-algebraic-graphs

(define-public haskell-8.4-alsa-core
  (package
    (name "haskell-8.4-alsa-core")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-core/alsa-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1avh4a419h9d2zsslg6j8hm87ppgsgqafz8ll037rk2yy1g4jl7b"))))
    (properties `((upstream-name . "alsa-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fpkgconfig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (Exceptions).")
    (description "This package provides access to ALSA infrastructure,
that is needed by both alsa-seq and alsa-pcm.")
    (license license:bsd-3)))

haskell-8.4-alsa-core

(define-public haskell-8.4-ansi-terminal
  (package
    (name "haskell-8.4-ansi-terminal")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal/ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "147ss9wz03ww6ypbv6yh5vi1wfrfcaqm8r6nxh50vnp7254359wh"))))
    (properties `((upstream-name . "ansi-terminal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)))
    (home-page "https://github.com/feuerbach/ansi-terminal")
    (synopsis "Simple ANSI terminal support, with Windows compatibility")
    (description "ANSI terminal support for Haskell: allows cursor movement,
screen clearing, color output, showing or hiding the
cursor, and changing the title. Works on UNIX and Windows.")
    (license license:bsd-3)))

haskell-8.4-ansi-terminal

(define-public haskell-8.4-atomic-primops
  (package
    (name "haskell-8.4-atomic-primops")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-primops/atomic-primops-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cyr2x6xqz6s233znrz9rnrfj56m9bmnawwnka0lsqqy1hp8gy37"))))
    (properties `((upstream-name . "atomic-primops") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("1" "0gdcd84x2s4jiry0was74rzv9l53an1q6ad8jiaj37fr4fim0wcc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis "A safe approach to CAS and other atomic ops in Haskell.")
    (description
     "After GHC 7.4 a new `casMutVar#` primop became available, but it's
difficult to use safely, because pointer equality is a highly
unstable property in Haskell.  This library provides a safer method
based on the concept of \"Tickets\".

Also, this library uses the \"foreign primop\" capability of GHC to
add access to other variants that may be of
interest, specifically, compare and swap inside an array.

Note that as of GHC 7.8, the relevant primops have been included in GHC itself.
This library is engineered to work pre- and post-GHC-7.8, while exposing the
same interface.")
    (license license:bsd-3)))

haskell-8.4-atomic-primops

(define-public haskell-8.4-binary-list
  (package
    (name "haskell-8.4-binary-list")
    (version "1.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-list/binary-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y0qvlqb9c9ym0q2s9yjhbmgq56w3pxjva94rdr9a6q9lj7fa8bb"))))
    (properties `((upstream-name . "binary-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-phantom-state)))
    (home-page "https://hackage.haskell.org/package/binary-list")
    (synopsis "Lists of length a power of two.")
    (description
     "Implementation of lists whose number of elements is a
power of two. Binary lists have this property by definition,
so it is impossible to build a value with other kind of length.
The implementation take advantage of this property to get
additional performance.

Some algorithms are designed to work only when the input list
has length a power of two. Use binary lists to ensure this
property in the input. In addition, this library exports
some useful functions for this kind of algorithms. An example
implementing the Fast Fourier Transform is provided in the
\"Data.BinaryList\" module.

The package contains an additional module with utilities for
the (de)serialization of binary lists.")
    (license license:bsd-3)))

haskell-8.4-binary-list

(define-public haskell-8.4-binary-parser
  (package
    (name "haskell-8.4-binary-parser")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parser/binary-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cs3zrhgnng2h84xnnvqcy6yrdm0xay1494dsa612y590s773aqx"))))
    (properties `((upstream-name . "binary-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "14n41yazmks2qw0v4krxcqw3ac0wdy2z53d0qz0rdjcd94fpghjf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)))
    (home-page "https://github.com/nikita-volkov/binary-parser")
    (synopsis
     "A highly-efficient but limited parser API specialised for bytestrings")
    (description "")
    (license license:expat)))

haskell-8.4-binary-parser

(define-public haskell-8.4-bindings-GLFW
  (package
    (name "haskell-8.4-bindings-GLFW")
    (version "3.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bindings-GLFW/bindings-GLFW-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03hn12bdqypwd6x9hxa7685bm6w86nsf6cmcwkr8zzgb41mwc93b"))))
    (properties `((upstream-name . "bindings-GLFW") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-glfw" "-fmacosxusechdir" "-fmacosxusemenubar" "-fmacosxuseretina" "-fx" "-f-wayland" "-f-mir" "-f-exposenative")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://hackage.haskell.org/package/bindings-GLFW")
    (synopsis "Low-level bindings to GLFW OpenGL library")
    (description
     "Low-level bindings to GLFW (<http://www.glfw.org/>), an open source,
multi-platform library for creating windows with OpenGL contexts and managing
input and events.

The binding is to GLFW 3.2, released 2016-08-18
(<http://www.glfw.org/Version-3.2-released.html>
<http://www.glfw.org/changelog.html>).

/These bindings are too low-level for normal use./ For higher-level bindings,
see GLFW-b (<http://hackage.haskell.org/package/GLFW-b>).

If you've used GLFW before, you were probably using 2.7.x. There are some
significant differences in 3.x.x. Please see the transition guide
(<http://www.glfw.org/docs/3.2/moving.html>).")
    (license license:bsd-3)))

haskell-8.4-bindings-GLFW

(define-public haskell-8.4-bindings-libzip
  (package
    (name "haskell-8.4-bindings-libzip")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bindings-libzip/bindings-libzip-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v52rms8xghj7ip3mmzmpa45mqywl4lfl3a0v6qp8sfnc01hd3ch"))))
    (properties `((upstream-name . "bindings-libzip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-nopkgconfig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bindings-DSL)
                  (@ (gnu packages compression) libzip)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Low level bindings to libzip.")
    (description
     "This package provides low-level bindings to libzip (v1.0.1) library.
For higher-level interface please use LibZip package:
<http://hackage.haskell.org/package/LibZip>")
    (license license:bsd-3)))

haskell-8.4-bindings-libzip

(define-public haskell-8.4-btrfs
  (package
    (name "haskell-8.4-btrfs")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/btrfs/btrfs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13dq5xdzny1c0yih67r3yhnsr9vxxim8kbqbj5hcygb2cmf0pz3y"))))
    (properties `((upstream-name . "btrfs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")
       #:cabal-revision
       ("1" "1py88k9sjmx9x41l0wmp19a52ng9fdf66rmd0n9404gxxbqd5jxv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://github.com/redneb/hs-btrfs")
    (synopsis "Bindings to the btrfs API")
    (description
     "This package provides bindings to the low-level btrfs API (i.e. the
@@BTRFS_IOC_@@* @@ioctl@@s). Currently, only a subset of the API is
supported, including all functions needed to work with subvolumes/snapshots
as well as file cloning.

In order to build this package, @@linux-headers@@ needs to be installed.

Warning: btrfs is still considered experimental. This module is also
experimental and may contain serious bugs that may result in data loss.
Do not use it on data that has not been backed up yet.")
    (license license:bsd-3)))

haskell-8.4-btrfs

(define-public haskell-8.4-bytestring-strict-builder
  (package
    (name "haskell-8.4-bytestring-strict-builder")
    (version "0.4.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-strict-builder/bytestring-strict-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17n6ll8k26312fgxbhws1yrswvy5dbsgyf57qksnj0akdssysy8q"))))
    (properties `((upstream-name . "bytestring-strict-builder")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1snn8qb17maa76zji75i4yfz9x8ci16xp6zwg6kgwb33lf06imnd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/nikita-volkov/bytestring-strict-builder ")
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

haskell-8.4-bytestring-strict-builder

(define-public haskell-8.4-bytestring-tree-builder
  (package
    (name "haskell-8.4-bytestring-tree-builder")
    (version "0.2.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-tree-builder/bytestring-tree-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03h2nmhyrr63gw4xmflsrmwf80gvayhs32wnpg3k9aqfjzpz4bd1"))))
    (properties `((upstream-name . "bytestring-tree-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/nikita-volkov/bytestring-tree-builder ")
    (synopsis
     "A very efficient ByteString builder implementation based on the binary tree")
    (description
     "According to
<https://github.com/nikita-volkov/bytestring-builders-benchmark the benchmarks>
this builder implementation beats all the alternatives.
It is especially well-suited for generating strict bytestrings,
beating the standard builder by at least the factor of 4.")
    (license license:expat)))

haskell-8.4-bytestring-tree-builder

(define-public haskell-8.4-clr-host
  (package
    (name "haskell-8.4-clr-host")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clr-host/clr-host-" version
                    ".tar.gz"))
              (sha256
               (base32
                "192yzi7xx2hrk2q0i4qzq0plam2b0xgg9r5s3kjzcvf9hq1vyapy"))))
    (properties `((upstream-name . "clr-host") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable_dotnet" "-f-enable_mono")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clr-marshal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages busybox) busybox)
                             (@ (gnu packages glib) glib-with-documentation)))
    (home-page
     "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-host")
    (synopsis "Hosting the Common Language Runtime")
    (description
     "clr-host is a library that provides the ability to host (also known as embed) the
common language runtime within the current Haskell process. Generally you'll only
interface directly to this library to start the CLR, and the other code here is
for higher level abstractions to use.")
    (license license:bsd-3)))

haskell-8.4-clr-host

(define-public haskell-8.4-clumpiness
  (package
    (name "haskell-8.4-clumpiness")
    (version "0.17.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clumpiness/clumpiness-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15f4js9rnn2rpkrvr9lphh624hkf4m15rdlvfwn29bvf40yk0jzx"))))
    (properties `((upstream-name . "clumpiness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-tree-fun)))
    (home-page "https://hackage.haskell.org/package/clumpiness")
    (synopsis "Calculate the clumpiness of leaf properties in a tree")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-clumpiness

(define-public haskell-8.4-code-page
  (package
    (name "haskell-8.4-code-page")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/code-page/code-page-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1491frk4jx6dlhifky9dvcxbsbcfssrz979a5hp5zn061rh8cp76"))))
    (properties `((upstream-name . "code-page") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cdvh2xa61cikd9162lk1zyph5w34xdiaq04409bjci1910bm27v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://github.com/RyanGlScott/code-page")
    (synopsis "Windows code page library for Haskell")
    (description
     "This library provides two modules:

* \"System.IO.CodePage\": a cross-platform module that exports
functions which adjust code pages on Windows, and do nothing
on other operating systems.

* \"System.Win32.CodePage\": On Windows, this exports functions
for getting, setting, and analyzing code pages. On other
operating systems, this module exports nothing.")
    (license license:bsd-3)))

haskell-8.4-code-page

(define-public haskell-8.4-codec-beam
  (package
    (name "haskell-8.4-codec-beam")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/codec-beam/codec-beam-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rg398vh36fb5bkb0anq0iv7g5z55avchswpkwjcjzilbx765sv1"))))
    (properties `((upstream-name . "codec-beam") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-8.4-codec-beam

(define-public haskell-8.4-concurrent-extra
  (package
    (name "haskell-8.4-concurrent-extra")
    (version "0.7.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-extra/concurrent-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y8xk460fvnw0idzdiylmm874sjny4q9jxb1js9fjz8lw2wns3h4"))))
    (properties `((upstream-name . "concurrent-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unbounded-delays)))
    (home-page "https://github.com/basvandijk/concurrent-extra")
    (synopsis "Extra concurrency primitives")
    (description
     "The @@concurrent-extra@@ package offers among other things the
following selection of synchronisation primitives:

* @@Broadcast@@: Wake multiple threads by broadcasting a value.

* @@Event@@: Wake multiple threads by signalling an event.

* @@Lock@@: Enforce exclusive access to a resource. Also known as a
binary semaphore or mutex. The package additionally provides an
alternative that works in the @@STM@@ monad.

* @@RLock@@: A lock which can be acquired multiple times by the same
thread. Also known as a reentrant mutex.

* @@ReadWriteLock@@: Multiple-reader, single-writer locks. Used to
protect shared resources which may be concurrently read, but only
sequentially written.

* @@ReadWriteVar@@: Concurrent read, sequential write variables.

Please consult the API documentation of the individual modules for
more detailed information.

This package was inspired by the concurrency libraries of Java and
Python.")
    (license license:bsd-3)))

haskell-8.4-concurrent-extra

(define-public haskell-8.4-containers-unicode-symbols
  (package
    (name "haskell-8.4-containers-unicode-symbols")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/containers-unicode-symbols/containers-unicode-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ccv7rqkykfk5wmr73mc0kwrnwyzakgp5x495dgwn5nila3g4ma6"))))
    (properties `((upstream-name . "containers-unicode-symbols")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-containers-old")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-unicode-symbols)))
    (home-page "http://haskell.org/haskellwiki/Unicode-symbols")
    (synopsis "Unicode alternatives for common functions and operators")
    (description
     "This package defines new symbols for a number of functions and
operators in the containers package.

All symbols are documented with their actual definition and
information regarding their Unicode code point. They should be
completely interchangeable with their definitions.")
    (license license:bsd-3)))

haskell-8.4-containers-unicode-symbols

(define-public haskell-8.4-contravariant
  (package
    (name "haskell-8.4-contravariant")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant/contravariant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vfhk8c5cxmmakx7rflap1ipkx5q0j5vnlrcz7yz6y53kxhksgf9"))))
    (properties `((upstream-name . "contravariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftagged" "-fsemigroups" "-f-safe" "-fstatevar")
       #:cabal-revision
       ("1" "0qj5nymccrb9p0cd6hffsy90jidjng14g9yv95z8v6h4q84sbzvx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/contravariant/")
    (synopsis "Contravariant functors")
    (description "Contravariant functors.")
    (license license:bsd-3)))

haskell-8.4-contravariant

(define-public haskell-8.4-crackNum
  (package
    (name "haskell-8.4-crackNum")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crackNum/crackNum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wrqq2g6hvqa8w0c4nad35d1favcjqi93ywnxqkc3i7pl37jb3s2"))))
    (properties `((upstream-name . "crackNum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-FloatingHex)))
    (home-page "http://github.com/LeventErkok/CrackNum")
    (synopsis "Crack various integer, floating-point data formats")
    (description
     "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.

For details, please see: <http://github.com/LeventErkok/crackNum/>")
    (license license:bsd-3)))

haskell-8.4-crackNum

(define-public haskell-8.4-crypto-random-api
  (package
    (name "haskell-8.4-crypto-random-api")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)))
    (home-page "http://github.com/vincenthz/hs-crypto-random-api")
    (synopsis "Simple random generators API for cryptography related code")
    (description "Simple random generators API for cryptography related code")
    (license license:bsd-3)))

haskell-8.4-crypto-random-api

(define-public haskell-8.4-data-accessor-mtl
  (package
    (name "haskell-8.4-data-accessor-mtl")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-accessor-mtl/data-accessor-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i8lk0vy04giixng5addgj740cbvwlc7g62qgrmhfip0w9k93kqh"))))
    (properties `((upstream-name . "data-accessor-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in mtl State monad class")
    (description "Use Accessor to access state in mtl State monad class")
    (license license:bsd-3)))

haskell-8.4-data-accessor-mtl

(define-public haskell-8.4-data-accessor-transformers
  (package
    (name "haskell-8.4-data-accessor-transformers")
    (version "0.2.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-accessor-transformers/data-accessor-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yp030vafbpddl27m606aibbbr5ar5j5bsv4bksscz3cq4yq5j10"))))
    (properties `((upstream-name . "data-accessor-transformers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in transformers State monad")
    (description "Use Accessor to access state in transformers State monad")
    (license license:bsd-3)))

haskell-8.4-data-accessor-transformers

(define-public haskell-8.4-data-default-instances-containers
  (package
    (name "haskell-8.4-data-default-instances-containers")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-containers/data-default-instances-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06h8xka031w752a7cjlzghvr8adqbl95xj9z5zc1b62w02phfpm5"))))
    (properties `((upstream-name . "data-default-instances-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-containers")
    (synopsis "Default instances for types in containers")
    (description "")
    (license license:bsd-3)))

haskell-8.4-data-default-instances-containers

(define-public haskell-8.4-data-default-instances-old-locale
  (package
    (name "haskell-8.4-data-default-instances-old-locale")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-old-locale/data-default-instances-old-locale-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00h81i5phib741yj517p8mbnc48myvfj8axzsw44k34m48lv1lv0"))))
    (properties `((upstream-name . "data-default-instances-old-locale")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-old-locale")
    (synopsis "Default instances for types in old-locale")
    (description "")
    (license license:bsd-3)))

haskell-8.4-data-default-instances-old-locale

(define-public haskell-8.4-data-memocombinators
  (package
    (name "haskell-8.4-data-memocombinators")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-memocombinators/data-memocombinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mvfc1xri3kgkx5q7za01bqg1x3bfvbgcffw5vwl6jmq4hh1sd5l"))))
    (properties `((upstream-name . "data-memocombinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-inttrie)))
    (home-page "http://github.com/luqui/data-memocombinators")
    (synopsis "Combinators for building memo tables.")
    (description "Combinators for building memo tables.")
    (license license:bsd-3)))

haskell-8.4-data-memocombinators

(define-public haskell-8.4-debug-trace-var
  (package
    (name "haskell-8.4-debug-trace-var")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/debug-trace-var/debug-trace-var-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12dlnvzvnjk6z37pnajmghd5wcrzkf4pkpc0r2nrjp4h3p9pjkqp"))))
    (properties `((upstream-name . "debug-trace-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unicode-show)))
    (home-page "https://github.com/ncaq/debug-trace-var#readme")
    (synopsis "You do not have to write variable names twice in Debug.Trace")
    (description
     "Please see the README on GitHub at <https://github.com/ncaq/debug-trace-var#readme>")
    (license license:expat)))

haskell-8.4-debug-trace-var

(define-public haskell-8.4-dependent-map
  (package
    (name "haskell-8.4-dependent-map")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-map/dependent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0il2naf6gdkvkhscvqd8kg9v911vdhqp9h10z5546mninnyrdcsx"))))
    (properties `((upstream-name . "dependent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a5f35d1sgfq1cl1r5bgb5pwfjniiycxiif4ycxglaizp8g5rlr1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-dependent-sum)))
    (home-page "https://github.com/mokus0/dependent-map")
    (synopsis "Dependent finite maps (partial dependent products)")
    (description "Provides a type called @@DMap@@ which generalizes
@@Data.Map.Map@@, allowing keys to specify the type
of value that can be associated with them.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-dependent-map

(define-public haskell-8.4-disk-free-space
  (package
    (name "haskell-8.4-disk-free-space")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/disk-free-space/disk-free-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07rqj8k1vh3cykq9yidpjxhgh1f7vgmjs6y1nv5kq2217ff4yypi"))))
    (properties `((upstream-name . "disk-free-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0x0wjycr3rhw9vcq51b4sz8cf7mcvx7whhywv72y25r9385lxb3i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://github.com/redneb/disk-free-space")
    (synopsis "Retrieve information about disk space usage")
    (description
     "A cross-platform library for retrieving information about disk space usage.")
    (license license:bsd-3)))

haskell-8.4-disk-free-space

(define-public haskell-8.4-distributed-static
  (package
    (name "haskell-8.4-distributed-static")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributed-static/distributed-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hpzsjwmmaj3cj4i54mg6g9dkk6vgwda66y8j14pjqmn49bzcjwm"))))
    (properties `((upstream-name . "distributed-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-rank1dynamic)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis
     "Compositional, type-safe, polymorphic static values and closures")
    (description "/Towards Haskell in the Cloud/ (Epstein et al, Haskell
Symposium 2011) introduces the concept of /static/ values:
values that are known at compile time. In a distributed
setting where all nodes are running the same executable,
static values can be serialized simply by transmitting a
code pointer to the value. This however requires special
compiler support, which is not yet available in ghc. We
can mimick the behaviour by keeping an explicit mapping
('RemoteTable') from labels to values (and making sure
that all distributed nodes are using the same
'RemoteTable'). In this module we implement this mimickry
and various extensions: type safety (including for
polymorphic static values) and compositionality.")
    (license license:bsd-3)))

haskell-8.4-distributed-static

(define-public haskell-8.4-dyre
  (package
    (name "haskell-8.4-dyre")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-executable-path)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-io-storage)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xdg-basedir)))
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

haskell-8.4-dyre

(define-public haskell-8.4-edit-distance
  (package
    (name "haskell-8.4-edit-distance")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/edit-distance/edit-distance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jkca97zyv23yyilp3jydcrzxqhyk27swhzh82llvban5zp8b21y"))))
    (properties `((upstream-name . "edit-distance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vjn4ryzdilz7l1ad7czh11nw48h5mj8if7ij3q0mmc3sffa8csd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://github.com/phadej/edit-distance")
    (synopsis "Levenshtein and restricted Damerau-Levenshtein edit distances")
    (description
     "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.")
    (license license:bsd-3)))

haskell-8.4-edit-distance

(define-public haskell-8.4-elm-core-sources
  (package
    (name "haskell-8.4-elm-core-sources")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-core-sources/elm-core-sources-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yr0csgz0hv25cz3jslap0adwvfcvv35bns32b9g0vyda1fm00x4"))))
    (properties `((upstream-name . "elm-core-sources") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)))
    (home-page "http://github.com/JoeyEremondi/elm-build-lib")
    (synopsis "Source files for the Elm runtime and standard libraries")
    (description
     "Embeds the  standard libraries and runtime files of the Elm language as Haskell strings,
so that they can be used for compilation and served in a Haskell web server.
For more information on the Elm language, see http://elm-lang.org.")
    (license license:bsd-3)))

haskell-8.4-elm-core-sources

(define-public haskell-8.4-enum-subset-generate
  (package
    (name "haskell-8.4-enum-subset-generate")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enum-subset-generate/enum-subset-generate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10a5n6bvg5pfc947sa5wijsysha3008bqwdkpl3mpvlmjh4c41yx"))))
    (properties `((upstream-name . "enum-subset-generate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)))
    (home-page "https://github.com/0xd34df00d/enum-subset-generate#readme")
    (synopsis
     "Generate an ADT being a subset of another ADT, and the corresponding mappings.")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/enum-subset-generate#readme>")
    (license license:bsd-3)))

haskell-8.4-enum-subset-generate

(define-public haskell-8.4-enummapset
  (package
    (name "haskell-8.4-enummapset")
    (version "0.5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enummapset/enummapset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x6fihrgvb2y6m0z2gi8n97b54aidydd8fnbmj02bq3x73gxnbvr"))))
    (properties `((upstream-name . "enummapset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/michalt/enummapset")
    (synopsis "IntMap and IntSet with Enum keys/elements.")
    (description
     "This package contains simple wrappers around 'Data.IntMap' and
'Data.IntSet' with 'Enum' keys and elements respectively.
Especially useful for 'Int's wrapped with newtype.")
    (license license:bsd-3)))

haskell-8.4-enummapset

(define-public haskell-8.4-event
  (package
    (name "haskell-8.4-event")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/event/event-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jl2s74zqnkpblf7b68bm32n1vk1rdjjyndb0waa2xsd5d0d34b7"))))
    (properties `((upstream-name . "event") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://hackage.haskell.org/package/event")
    (synopsis "Monoidal, monadic and first-class events")
    (description "This package can be used to represent events as
first-class objects instead of deepening callbacks and
nesting callbacks. Useful to wrap over __C__ callback-based
libraries.")
    (license license:bsd-3)))

haskell-8.4-event

(define-public haskell-8.4-exact-pi
  (package
    (name "haskell-8.4-exact-pi")
    (version "0.4.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exact-pi/exact-pi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15v10wn5zgg7y66jzfg0l8lx2qpj91dh7rp05aa3c6c3dss9dx3v"))))
    (properties `((upstream-name . "exact-pi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-numtype-dk)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-8.4-exact-pi

(define-public haskell-8.4-explicit-exception
  (package
    (name "haskell-8.4-explicit-exception")
    (version "0.1.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/explicit-exception/explicit-exception-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xj9fqh28br5xyzzc28zl23jj913ayhikvwcw9ccj3pqfybh5xk0"))))
    (properties `((upstream-name . "explicit-exception") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildtests" "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://www.haskell.org/haskellwiki/Exception")
    (synopsis "Exceptions which are explicit in the type signature.")
    (description
     "Synchronous and Asynchronous exceptions which are explicit in the type signature.
The first ones are very similar to 'Either' and 'Control.Monad.Error.ErrorT'.
The second ones are used for 'System.IO.readFile' and 'System.IO.hGetContents'.
This package is a proposal for improved exception handling in Haskell.
It strictly separates between handling of
exceptional situations (file not found, invalid user input,
see <http://www.haskell.org/haskellwiki/Exception>) and
(programming) errors (division by zero, index out of range,
see <http://www.haskell.org/haskellwiki/Error>).
Handling of the first one is called \\\"exception handling\\\",
whereas handling of errors is better known as \\\"debugging\\\".

For applications see the packages @@midi@@, @@spreadsheet@@, @@http-monad@@.

Although I'm not happy with the identifier style of the Monad Transformer Library
(partially intended for unqualified use)
I have tried to adopt it for this library,
in order to let Haskell programmers get accustomed easily to it.

See also: @@unexceptionalio@@")
    (license license:bsd-3)))

haskell-8.4-explicit-exception

(define-public haskell-8.4-filemanip
  (package
    (name "haskell-8.4-filemanip")
    (version "0.3.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filemanip/filemanip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ilqr8jv41zxcj5qyicg29m8s30b9v70x6f9h2h2rw5ap8bxldl8"))))
    (properties `((upstream-name . "filemanip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://github.com/bos/filemanip")
    (synopsis "Expressive file and directory manipulation for Haskell.")
    (description "A Haskell library for working with files and directories.
Includes code for pattern matching, finding files,
modifying file contents, and more.")
    (license license:bsd-3)))

haskell-8.4-filemanip

(define-public haskell-8.4-foldable1
  (package
    (name "haskell-8.4-foldable1")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/foldable1/foldable1-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02p9wg0rcp7qvjp588y6r2szz7ja5x1idl04vn3hr7mbrbjq9ml5"))))
    (properties `((upstream-name . "foldable1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-util)))
    (home-page "https://hackage.haskell.org/package/foldable1")
    (synopsis "Foldable types with at least 1 element")
    (description "")
    (license license:bsd-3)))

haskell-8.4-foldable1

(define-public haskell-8.4-foundation
  (package
    (name "haskell-8.4-foundation")
    (version "0.0.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/foundation/foundation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q43y8wfj0wf9gdq2kzphwjwq6m5pvryy1lqgk954aq5z3ks1lsf"))))
    (properties `((upstream-name . "foundation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-experimental" "-f-bench-all" "-f-minimal-deps" "-f-bounds-check" "-f-doctest" "-f-linktest")
       #:cabal-revision
       ("2" "0klfw300jz6hc64mp1bcflipiaq7njy7md9s1pbscriamrwk3mg2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-basement)))
    (home-page "https://github.com/haskell-foundation/foundation")
    (synopsis "Alternative prelude with batteries and no dependencies")
    (description
     "A custom prelude with no dependencies apart from base.

This package has the following goals:

* provide a base like sets of modules that provide a consistent set of features and bugfixes across multiple versions of GHC (unlike base).

* provide a better and more efficient prelude than base's prelude.

* be self-sufficient: no external dependencies apart from base.

* provide better data-types: packed unicode string by default, arrays.

* Better numerical classes that better represent mathematical thing (No more all-in-one Num).

* Better I/O system with less Lazy IO

* Usual partial functions distinguished through type system")
    (license license:bsd-3)))

haskell-8.4-foundation

(define-public haskell-8.4-freetype2
  (package
    (name "haskell-8.4-freetype2")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freetype2/freetype2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00p3zb5iip9ggkapw4jkmpypnl8s7l6q9mrl66q07schi0lq0zji"))))
    (properties `((upstream-name . "freetype2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://hackage.haskell.org/package/freetype2")
    (synopsis "Haskell binding for FreeType 2 library")
    (description "Wrapper around FreeType 2 library.  Relevant
exerpts from the FreeType 2 website:

What is FreeType 2?

FreeType 2 is a software font engine that is
designed to be small, efficient, highly
customizable, and portable while capable of
producing high-quality output (glyph images). It
can be used in graphics libraries, display
servers, font conversion tools, text image
generation tools, and many other products as
well.

The following is a non-exhaustive list of
features provided by FreeType 2.

* FreeType 2 provides a simple and easy-to-use
API to access font content in a uniform way,
independently of the file format. Additionally,
some format-specific APIs can be used to access
special data in the font file.

* Unlike most comparable libraries, FreeType 2
supports scalable font formats like TrueType or
Type 1 natively and can return the outline data
(and control instructions/hints) to client
applications.

By default, FreeType 2 supports the following
font formats.

* TrueType fonts (and collections)

* Type 1 fonts

* CID-keyed Type 1 fonts

* CFF fonts

* OpenType fonts (both TrueType and CFF variants)

* SFNT-based bitmap fonts

* X11 PCF fonts

* Windows FNT fonts

* BDF fonts (including anti-aliased ones)

* PFR fonts

* Type 42 fonts (limited support)

From a given glyph outline, FreeType 2 is capable
of producing a high-quality monochrome bitmap, or
anti-aliased pixmap, using 256 levels of
'gray'. This is much better than the 5 levels
used by Windows 9x\\/98\\/NT\\/2000 or FreeType 1.

FreeType 2 supports all the character mappings
defined by the TrueType and OpenType
specification. It is also capable of
automatically synthetizing a Unicode charmap from
Type 1 fonts, which puts an end to the painful
'encoding translation' headache common with this
format (of course, original encodings are also
available in the case where you need them).

The FreeType 2 core API provides simple functions
to access advanced information like glyph names
or kerning data.

FreeType 2 provides information that is often not
available from other similar font engines, like
kerning distances, glyph names, vertical metrics,
etc.

FreeType 2 provides its own caching subsystem
since release 2.0.1. It can be used to cache
either face instances or glyph images
efficiently.")
    (license license:bsd-3)))

haskell-8.4-freetype2

(define-public haskell-8.4-frisby
  (package
    (name "haskell-8.4-frisby")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/frisby/frisby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mdncc38qwakadr8q4ncz9vzvx9scfhlgk2m540y2mjdypdiicy1"))))
    (properties `((upstream-name . "frisby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://repetae.net/computer/frisby/")
    (synopsis "Linear time composable parser for PEG grammars")
    (description
     "frisby is a parser library that can parse arbitrary PEG
grammars in linear time. Unlike other parsers of PEG grammars,
frisby need not be supplied with all possible rules up front,
allowing composition of smaller parsers.

PEG parsers are never ambiguous and allow infinite lookahead
with no backtracking penalty. Since PEG parsers can look ahead
arbitrarily, they can easily express rules such as the maximal
munch rule used in lexers, meaning no separate lexer is needed.

In addition to many standard combinators, frisby provides
routines to translate standard regex syntax into frisby parsers.")
    (license license:bsd-3)))

haskell-8.4-frisby

(define-public haskell-8.4-gc
  (package
    (name "haskell-8.4-gc")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gc/gc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "03637njk3pqbqvng7zf370ykykm3nnsxvmp09qcfp6iihz45mk1r"))))
    (properties `((upstream-name . "gc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-ftest-hlint")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)))
    (home-page "http://github.com/ekmett/gc/")
    (synopsis "Poor Richard's Memory Manager")
    (description
     "This package implements a form of <http://www.cs.canisius.edu/~hertzm/prmm-ismm-2011.pdf Poor Richard's Memory Manager>
by Hertz, Kane, Keudel, Bai, Ding, Gu and Bard in user-space in GHC.

Usage:

> import System.Mem.Manager
> main = do
>   _ <- selfishManager
>   ...

Now, the background thread that was spawned by @@selfishManager@@ will watch for signs that the host operating system
is starting to cause the current process to page out to disk and respond with more aggressive garbage collection.

This empowers your code to try to avoid the inevitable death spiral that follows when GC has to happen with paged out data.")
    (license license:bsd-3)))

haskell-8.4-gc

(define-public haskell-8.4-gdp
  (package
    (name "haskell-8.4-gdp")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gdp/gdp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1gqs19wjyng0nacwvi7sjxnhnxjy2az0jwjyy6w2r5g4w9dgykr1"))))
    (properties `((upstream-name . "gdp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lawful)))
    (home-page "https://github.com/githubuser/gdp#readme")
    (synopsis
     "Reason about invariants and preconditions with ghosts of departed proofs.")
    (description
     "Reason about invariants and preconditions with ghosts of departed proofs.
The GDP library implements building blocks for creating and working with
APIs that may carry intricate preconditions for proper use. As a library
author, you can use `gdp` to encode your API's preconditions and invariants,
so that they will be statically checked at compile-time.
As a library user, you can use the `gdp` deduction rules to codify your
proofs that you are using the library correctly.")
    (license license:bsd-3)))

haskell-8.4-gdp

(define-public haskell-8.4-gitrev
  (package
    (name "haskell-8.4-gitrev")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gitrev/gitrev-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cl3lfm6k1h8fxp2vxa6ihfp4v8igkz9h35iwyq2frzm4kdn96d8"))))
    (properties `((upstream-name . "gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)))
    (home-page "https://github.com/acfoltzer/gitrev")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Some handy Template Haskell splices for including the current git hash and branch in the code of your project. Useful for including in panic messages, @@--version@@ output, or diagnostic info for more informative bug reports.")
    (license license:bsd-3)))

haskell-8.4-gitrev

(define-public haskell-8.4-graphs
  (package
    (name "haskell-8.4-graphs")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/graphs/graphs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02g21jpz8jm8j1kpszk8vglw1733z2jp32dc650z40nxlmxpmlxc"))))
    (properties `((upstream-name . "graphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cjyxswlkachki6l4mcaffwpjajyx86jzipzlqjg7c080vwvb19g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/graphs")
    (synopsis "A simple monadic graph library")
    (description
     "A \\\"not-very-Haskelly\\\" API for calculating traversals of graphs that may be too large to fit into memory.
The algorithms included are inspired by the visitor concept of the
<http://www.boost.org/doc/libs/1_57_0/libs/graph/doc/visitor_concepts.html Boost Graph Library>.

Here is a very simple example of how we might execute a depth-first-search. In this case the visitor simply collects the edges and vertices in the order that the corresponding functions get called. After the necessary imports,

> import Data.Array
> import Data.Monoid
> import Data.Graph.AdjacencyList
> import Data.Graph.Algorithm
> import Data.Graph.Algorithm.DepthFirstSearch

create an adjacency list where the vertices are labeled with integers.

> graph :: Array Int [Int]
> graph = array (0, 3) [(0, [1,2]), (1, [3]), (2, [3]), (3, [])]

<<http://i.imgur.com/Pod1SH0.png>>

We need a data structure that instantiates `Monoid` to combine the results of
our visitor functions.

@@
data Orderings = Orderings
&#32;&#32;&#123;&#32;&#32;enterV :: [Int]
&#32;&#32;,  enterE :: [(Int, Int)]
&#32;&#32;,  gray   :: [(Int, Int)]
&#32;&#32;,  exitV  :: [Int]
&#32;&#32;,  black  :: [(Int, Int)]
&#32;&#32;&#125;&#32;deriving Show

instance Monoid Orderings where
&#32;mempty = Orderings [] [] [] [] []
&#32;mappend (Orderings a1 a2 a3 a4 a5)(Orderings b1 b2 b3 b4 b5) =
&#32;&#32;Orderings (a1 ++ b1) (a2 ++ b2) (a3 ++ b3) (a4 ++ b4) (a5 ++ b5)
@@

The `dfs` function's first argument is of type `GraphSearch` which is
a visitor containing the functions to be run at various times during the search.
The second argument is the starting vertex for the search.

@@
orderings :: GraphSearch (AdjacencyList Int) Orderings
orderings = GraphSearch
&#32;&#32;(\\\\v -> return $ mempty &#123;enterV = [v]&#125;)
&#32;&#32;(\\\\e -> return $ mempty &#123;enterE = [e]&#125;)
&#32;&#32;(\\\\e -> return $ mempty &#123;gray   = [e]&#125;)
&#32;&#32;(\\\\v -> return $ mempty &#123;exitV  = [v]&#125;)
&#32;&#32;(\\\\e -> return $ mempty &#123;black  = [e]&#125;)
@@

Finally `runAdjacencylist` unwraps the function in the `Adjacencylist` newtype and runs
it on `graph`.

> dfsTest :: Orderings
> dfsTest = runAdjacencyList (dfs orderings 0) graph

Running `dfsTest` in ghci will yield:

@@
Orderings &#123;enterV = [0,2,3,1], enterE = [(0,2),(2,3),(0,1)], gray = [], exitV = [3,2,1,0], black = [(1,3)]&#125;
@@")
    (license license:bsd-3)))

haskell-8.4-graphs

(define-public haskell-8.4-haskell-gi-base
  (package
    (name "haskell-8.4-haskell-gi-base")
    (version "0.21.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi-base/haskell-gi-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vrl0cqws1l0ba7avf16c9zyfsvq7gd8wv4sjzd7rjk6jmg38vds"))))
    (properties `((upstream-name . "haskell-gi-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/haskell-gi/haskell-gi-base")
    (synopsis "Foundation for libraries generated by haskell-gi")
    (description "Foundation for libraries generated by haskell-gi")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-haskell-gi-base

(define-public haskell-8.4-hexpat
  (package
    (name "haskell-8.4-hexpat")
    (version "0.20.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hexpat/hexpat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l9zfp69r3xaxi2znjwpcrx7xckcqvaahv2c0qgkqq61a7ka1qa6"))))
    (properties `((upstream-name . "hexpat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bundle")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-List)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xml) expat)))
    (home-page "http://haskell.org/haskellwiki/Hexpat/")
    (synopsis "XML parser/formatter based on expat")
    (description
     "This package provides a general purpose Haskell XML library using Expat to
do its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML
parser written in C).  It is extensible to any string type, with @@String@@,
@@ByteString@@ and @@Text@@ provided out of the box.

Basic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).
Other features: Helpers for processing XML trees (/Proc/), trees annotated with
XML source location (/Annotated/), extended XML trees with comments,
processing instructions, etc (/Extended/), XML cursors (/Cursor/),
SAX-style parse (/SAX/), and access to the low-level interface in case speed
is paramount (/Internal.IO/).

The design goals are speed, speed, speed, interface simplicity and modularity.

For introduction and examples, see the /Text.XML.Expat.Tree/ module. For benchmarks,
<http://haskell.org/haskellwiki/Hexpat/>

If you want to do interactive I\\/O, an obvious option is to use lazy parsing
with one of the lazy I\\/O functions such as hGetContents.  However, this can be
problematic in some applications because it doesn't handle I\\/O errors properly
and can give no guarantee of timely resource cleanup. Because of the generalized
list, Hexpat is designed to allow for chunked I/O, but as of this writing I haven't
done a nice integration with enumerator and friends.

/IO/ is filed under /Internal/ because it's low-level and most users won't want
it.  The other /Internal/ modules are re-exported by /Annotated/, /Tree/ and /Extended/,
so you won't need to import them directly.

If you have trouble building on Windows, you can try the bundle flag. This will
make it build from the source of libexpat bundled inside the hexpat package:
cabal install -f bundle hexpat

Credits to Iavor Diatchki and the @@xml@@ (XML.Light) package for /Proc/ and /Cursor/.
Thanks to the many contributors.

ChangeLog: 0.15 changes intended to fix a (rare) \\\"error: a C finalizer called back into Haskell.\\\"
that seemed only to happen only on ghc6.12.X; 0.15.1 Fix broken Annotated parse;
0.16 switch from mtl to transformers; 0.17 fix mapNodeContainer & rename some things.;
0.18 rename defaultEncoding to overrideEncoding. 0.18.3 formatG and indent were demanding list
items more than once (inefficient in chunked processing); 0.19 add Extended.hs;
0.19.1 fix a memory leak introduced in 0.19, delegate parsing to bound thread
if unbound (see note above); 0.19.2 include expat source code so \\'cabal install\\' just works
on Linux, Mac and Windows (thanks Jacob Stanley); 0.19.3 fix misconfiguration of expat
which broke entity parsing; 0.19.4 bump version constraint for text; 0.19.5 bump text
to < 0.12 and fix text-0.10.0.1 breakage; 0.19.6 dependency breakage with List;
0.19.7 ghc-7.2.1 compatibility; 0.19.8 fix space leak on lazy parse under ghc-7.2.1;
0.19.9 fix formatting of > character + improve performance; 0.19.10 ghc-7.4.x compatibility;
0.20.1 fix an unfortunate crash when used in parallel processing and greatly improve
performance; 0.20.2 make parseSaxG lazier; 0.20.3 minor build issues; 0.20.4 remove
dependency on extensible-exceptions; 0.20.5 bump text upper bound; 0.20.6 bump text again
to include 1.1.x.x; 0.20.7 bump text again for 1.2.x.x; 0.20.8 bump utf8-string dep;
0.20.9 bump deepseq dep/ghc-7.10 compatibility.; 0.20.10 increase dependency upper bounds;
0.20.11 update to libexpat-2.2.1 which includes several security fixes;
0.20.12 use the system libexpat by default, but provide a bundle flag to allow a bundled
copy of expat to be used, which might make life easier on Windows: cabal install -f bundle
hexpat; 0.20.13 Fix some mistakes made in 0.20.12 cabal file.")
    (license license:bsd-3)))

haskell-8.4-hexpat

(define-public haskell-8.4-hlibgit2
  (package
    (name "haskell-8.4-hlibgit2")
    (version "0.18.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hlibgit2/hlibgit2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0plfzxzgph7iilwp434ndcw7pia47n96hcfa32fs7q5gz8kl17hr"))))
    (properties `((upstream-name . "hlibgit2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages version-control) git)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-8.4-hlibgit2

(define-public haskell-8.4-hs-GeoIP
  (package
    (name "haskell-8.4-hs-GeoIP")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-GeoIP/hs-GeoIP-" version
                    ".tar.gz"))
              (sha256
               (base32
                "135bl4cjijq6mr485waz7aaxgkaji2fsdjhdy4v4756q6ahzcpwf"))))
    (properties `((upstream-name . "hs-GeoIP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages geo) libmaxminddb)))
    (home-page "http://github.com/ozataman/hs-GeoIP")
    (synopsis
     "Haskell bindings to the MaxMind GeoIPCity database via the C library")
    (description
     "This library provides fast, idiomatic Haskell bindings to MaxMind's
GeoIPCity IP-based geolocation C API.

Make sure you have the MaxMind C API installed before installing
this library, as it depends on the C API.

MaxMind GeoIP City database allows geo-location lookups from IP addresses.

To get started, you can download the latest binary database
distribution from: <http://www.maxmind.com/app/geolitecity>")
    (license license:bsd-3)))

haskell-8.4-hs-GeoIP

(define-public haskell-8.4-hsdns
  (package
    (name "haskell-8.4-hsdns")
    (version "1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsdns/hsdns-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0i50p31zxsrkx9hv3mqcl2042lf922b1fsswmd99d66ybkl01kag"))))
    (properties `((upstream-name . "hsdns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "0w4hrmj7ph5dgarl82xpa0g77ncjdqk0wc9wp771pry98xxihzl8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages adns) adns)))
    (home-page "http://github.com/peti/hsdns")
    (synopsis "Asynchronous DNS Resolver")
    (description "This library provides an asynchronous DNS resolver on top
of GNU ADNS <http://www.chiark.greenend.org.uk/~ian/adns/>.
Not all options are supported, but A, MX, and PTR lookups
work nicely. There is also support for retrieving generic
RR types, CNAMEs, and for NSEC zone walking. The library
can be expected to work with fine ADNS 1.4 or later. It
might also work with version ADNS 1.3, but that hasn't
been tested.

The example program adns-reverse-lookup.hs demonstrates
how the resolver is used. Given a list of host names on
the command line, it performs an A/PTR double-lookup and
checks whether the records are consistent. The
output is printed in the order in which the DNS responses
arrive:

> $ ./adns-reverse-lookup cryp.to localhost www.example.com
> OK: localhost <-> 127.0.0.1
> FAIL: cryp.to -> 217.19.183.102 -> [\"zuse.cryp.to\"]
> OK: www.example.com <-> 192.0.32.10")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-hsdns

(define-public haskell-8.4-hstatsd
  (package
    (name "haskell-8.4-hstatsd")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hstatsd/hstatsd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "092q52yyb1xdji1y72bdcgvp8by2w1z9j717sl1gmh2p89cpjrs4"))))
    (properties `((upstream-name . "hstatsd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "https://github.com/mokus0/hstatsd")
    (synopsis "Quick and dirty statsd interface")
    (description "Quick and dirty statsd interface")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-hstatsd

(define-public haskell-8.4-hxt-unicode
  (package
    (name "haskell-8.4-hxt-unicode")
    (version "9.0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-unicode/hxt-unicode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rj48cy8z4fl3zpg5bpa458kqr83adav6jnqv4i71dclpprj6n3v"))))
    (properties `((upstream-name . "hxt-unicode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hxt-charproperties)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis
     "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings")
    (description
     "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,
used in the Haskell XML Toolbox.
ISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding
is done with lazy functions, errors may be detected or ignored.")
    (license license:expat)))

haskell-8.4-hxt-unicode

(define-public haskell-8.4-include-file
  (package
    (name "haskell-8.4-include-file")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/include-file/include-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a9xwd5ihrw5z8i8mvfmghdjk9nnhif97jdp7jamyzvivhxiz3r0"))))
    (properties `((upstream-name . "include-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://hackage.haskell.org/package/include-file")
    (synopsis "Inclusion of files in executables at compile-time.")
    (description "Inclusion of files in source code via Template Haskell.

When distributing executables, sometimes it is required
to attach some other resources in files. Using this library
(together with the TemplateHaskell extension) you avoid this
problem by including those files inside the executable at
compile time.")
    (license license:bsd-3)))

haskell-8.4-include-file

(define-public haskell-8.4-integration
  (package
    (name "haskell-8.4-integration")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integration/integration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bsqad6q4kc0wykswwqykcn6nd4wj6yd9dzpg075h2n1mmg3h9qc"))))
    (properties `((upstream-name . "integration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)))
    (home-page "https://github.com/ekmett/integration")
    (synopsis "Fast robust numeric integration via tanh-sinh quadrature")
    (description "Fast robust numeric integration via tanh-sinh quadrature")
    (license license:bsd-3)))

haskell-8.4-integration

(define-public haskell-8.4-lazyio
  (package
    (name "haskell-8.4-lazyio")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lazyio/lazyio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v6g2r4x9m1ksvx62bkn0hndasfh387ylrz67hwkdj61rnyg0m4b"))))
    (properties `((upstream-name . "lazyio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unsafe)))
    (home-page "http://www.haskell.org/haskellwiki/Lazy_IO")
    (synopsis "Run IO actions lazily while respecting their order")
    (description
     "Run IO actions lazily while respecting their order.
Running a value of the LazyIO monad in the IO monad is like starting a thread
which is however driven by its output.
That is, the LazyIO action is only executed as far as necessary
in order to provide the required data.

The package may help you to avoid stack overflows in @@mapM@@.
Say you have

> mapM f xs

where @@xs@@ is a long list. When run, you may encounter a stack overflow.
To prevent it, write instead:

> import qualified System.IO.Lazy as LazyIO
>
> LazyIO.run $ mapM (LazyIO.interleave . f) xs

The stack overflow is gone.")
    (license license:bsd-3)))

haskell-8.4-lazyio

(define-public haskell-8.4-lens-family
  (package
    (name "haskell-8.4-lens-family")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-family/lens-family-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a8fvvc3fsi5fzk5bnqvbgdz22xvvw55nyfac6411q0pm6vy4nc0"))))
    (properties `((upstream-name . "lens-family") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09wkj6pq4l7asyxz836vxsyc4mk32s2pbpa3a88x53f7hjaadnw4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lens-family-core)))
    (home-page "https://hackage.haskell.org/package/lens-family")
    (synopsis "Lens Families")
    (description
     "This package provides first class functional references.
In addition to the usual operations of getting, setting and composition, plus integration with monad state, lens families provide some unique features:

* Polymorphic updating

* Traversals

* Cast projection functions to read-only lenses

* Cast \\\"toList\\\" functions to read-only traversals

* Cast semantic editor combinators to modify-only traversals.")
    (license license:bsd-3)))

haskell-8.4-lens-family

(define-public haskell-8.4-lenz
  (package
    (name "haskell-8.4-lenz")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lenz/lenz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17a3d91az0qv138q7x8wbka797z9pfxl3mbyydcr7i7p87dk48k3"))))
    (properties `((upstream-name . "lenz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hs-functors)))
    (home-page "https://hackage.haskell.org/package/lenz")
    (synopsis "Van Laarhoven lenses")
    (description "")
    (license license:bsd-3)))

haskell-8.4-lenz

(define-public haskell-8.4-libgraph
  (package
    (name "haskell-8.4-libgraph")
    (version "1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/libgraph/libgraph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0grzimgy946mnwggmlc3sja567v2s21ymcwzlwf110k11pjqp5xp"))))
    (properties `((upstream-name . "libgraph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12xyrvvyh73b93k74lj55zwaygsvd93p4bm51kcd54m0pv0lclbq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monads-tf)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-union-find)))
    (home-page "http://maartenfaddegon.nl")
    (synopsis "Store and manipulate data in a graph.")
    (description
     "A graph type, analysis of graphs and manipulation of graphs.")
    (license license:bsd-3)))

haskell-8.4-libgraph

(define-public haskell-8.4-libxml-sax
  (package
    (name "haskell-8.4-libxml-sax")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/libxml-sax/libxml-sax-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lbdq6lmiyrnzk6gkx09vvp928wj8qnqnqfzy14mfv0drj21f54r"))))
    (properties `((upstream-name . "libxml-sax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)
                  (@ (gnu packages xml) libxml2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xml) libxml2)))
    (home-page "https://john-millikin.com/software/haskell-libxml/")
    (synopsis "Bindings for the libXML2 SAX interface")
    (description "")
    (license license:expat)))

haskell-8.4-libxml-sax

(define-public haskell-8.4-linux-file-extents
  (package
    (name "haskell-8.4-linux-file-extents")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linux-file-extents/linux-file-extents-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4vznam1a8vf3nixhbmw38rpzkvmbka0cbdfdsgfrpn03kxjz3c"))))
    (properties `((upstream-name . "linux-file-extents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://github.com/redneb/linux-file-extents")
    (synopsis "Retrieve file fragmentation information under Linux")
    (description
     "This package provides a simple wrapper around the Linux FIEMAP ioctl.
It can be used to retrieve the list of all the extents of any given
file, i.e. the area of the disk where the file is actually stored. This is
similar to the @@filefrag@@ command line tool provided by the @@e2fsprogs@@
package.")
    (license license:bsd-3)))

haskell-8.4-linux-file-extents

(define-public haskell-8.4-linux-namespaces
  (package
    (name "haskell-8.4-linux-namespaces")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linux-namespaces/linux-namespaces-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rvkzfmd07sz46k059ly80cjgwx67igfw8zsw8c6ljsp3hsdn4hl"))))
    (properties `((upstream-name . "linux-namespaces") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://github.com/redneb/hs-linux-namespaces")
    (synopsis "Work with linux namespaces: create new or enter existing ones")
    (description
     "This library provides bindings to the @@unshare(2)@@ and @@setns(2)@@ linux
system calls.")
    (license license:bsd-3)))

haskell-8.4-linux-namespaces

(define-public haskell-8.4-lmdb
  (package
    (name "haskell-8.4-lmdb")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lmdb/lmdb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z8wj06b5ii0w6pls2jlqmd3mhyrplhxd1c6h1my1p0w45b2hmc0"))))
    (properties `((upstream-name . "lmdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) lmdb)))
    (home-page "http://github.com/dmbarbour/haskell-lmdb")
    (synopsis "Lightning MDB bindings ")
    (description
     "LMDB is a read-optimized Berkeley DB replacement developed by Symas
for the OpenLDAP project. LMDB has impressive performance characteristics
and a friendly BSD-style OpenLDAP license. See <http://symas.com/mdb/>.

This library has Haskell bindings to the LMDB library. You must install
the lmdb development files before installing this library,
e.g. `sudo apt-get install liblmdb-dev` works for Ubuntu 14.04.

For now, only a low level interface is provided, and the author is moving
on to use LMDB rather than further develop its bindings. If a higher level
API is desired, please consider contributing, or develop a separate package.")
    (license license:bsd-2)))

haskell-8.4-lmdb

(define-public haskell-8.4-mainland-pretty
  (package
    (name "haskell-8.4-mainland-pretty")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mainland-pretty/mainland-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xzavchbp345a63i24hs8632l3xk0c1pxqd32b2i6615cp9pnxqi"))))
    (properties `((upstream-name . "mainland-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1apyqnbcsbjfkqc1d6mk74pxl12130r6ijwhj555gddls9g0qdf3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-srcloc)))
    (home-page "https://github.com/mainland/mainland-pretty")
    (synopsis "Pretty printing designed for printing source code.")
    (description
     "Pretty printing designed for printing source code based on
Wadler's paper /A Prettier Printer/. The main advantage of this
library is its ability to automatically track the source
locations associated with pretty printed values and output
appropriate #line pragmas and its ability to produce output
in the form of lazy text using a builder.")
    (license license:bsd-3)))

haskell-8.4-mainland-pretty

(define-public haskell-8.4-markov-chain
  (package
    (name "haskell-8.4-markov-chain")
    (version "0.0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markov-chain/markov-chain-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kcjgfdwca4arngbj7w2g8bpmk5p44dyzrwcw8xmja0s200bhlbf"))))
    (properties `((upstream-name . "markov-chain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://code.haskell.org/~thielema/markov-chain/")
    (synopsis
     "Markov Chains for generating random sequences with a user definable behaviour.")
    (description
     "This library can be used to generate random sequences of anything
with a behaviour that is adapted to some training data.
Input a marketing text or a speech and
recompose it to another arbitrary text of this sort.
Input a dictionary of person names and create new names.
Input a sequence of notes and get out a new melody.
Input a set of Haskell modules and generate ...
nice idea but the result will certainly have neither correct syntax nor types.
I think, it's a good thing about Haskell, that you cannot fool it so easily.
The idea is very simple:
The algorithm analyses your input\\/training data
with respect to how likely an @@a@@ or @@e@@ follows the letters @@r@@ and @@e@@.
Then on recomposition it chooses subsequent letters randomly
according to the frequencies found in the training data.
This library is well suited for /bull-shit generators/.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-markov-chain

(define-public haskell-8.4-mathexpr
  (package
    (name "haskell-8.4-mathexpr")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mathexpr/mathexpr-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1bbi9368zg50xvhn0lkrza1fpfi1cjz21lxyay6qb9v2r7h0mhr3"))))
    (properties `((upstream-name . "mathexpr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)))
    (home-page "https://github.com/mdibaiee/mathexpr")
    (synopsis
     "Parse and evaluate math expressions with variables and functions")
    (description
     "A simple tool to evaluate math expressions as strings with support for custom functions and operators")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-mathexpr

(define-public haskell-8.4-mersenne-random-pure64
  (package
    (name "haskell-8.4-mersenne-random-pure64")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mersenne-random-pure64/mersenne-random-pure64-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lbmdnlk21qqbzw1g7jph6d21dg3vf5saca3inwv1byxq7fh057g"))))
    (properties `((upstream-name . "mersenne-random-pure64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-small_base")
       #:cabal-revision
       ("1" "0pxq0xz42x60993rl4pr4pia80jv1xcqh6njvjzfvn75018j4gw5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://code.haskell.org/~dons/code/mersenne-random-pure64/")
    (synopsis
     "Generate high quality pseudorandom numbers purely using a Mersenne Twister")
    (description
     "The Mersenne twister is a pseudorandom number generator developed by
Makoto Matsumoto and Takuji Nishimura that is based on a matrix linear
recurrence over a finite binary field. It provides for fast generation
of very high quality pseudorandom numbers. The source for the C code
can be found here:

<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt64.html>

This library provides a purely functional binding to the 64 bit
classic mersenne twister, along with instances of RandomGen, so the
generator can be used with System.Random. The generator should
typically be a few times faster than the default StdGen (but a tad
slower than the impure 'mersenne-random' library based on SIMD
instructions and destructive state updates.
")
    (license license:bsd-3)))

haskell-8.4-mersenne-random-pure64

(define-public haskell-8.4-microlens-ghc
  (package
    (name "haskell-8.4-microlens-ghc")
    (version "0.4.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-ghc/microlens-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03iwgg8zww9irv59l70c8yy7vzxir1zf66y12210xk91k5hq6jrj"))))
    (properties `((upstream-name . "microlens-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis "microlens + array, bytestring, containers, transformers")
    (description
     "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @@Lens.Micro.GHC@@ reexports everything from @@Lens.Micro@@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>, <http://hackage.haskell.org/package/transfromers transformers>).

The minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.4-microlens-ghc

(define-public haskell-8.4-microlens-mtl
  (package
    (name "haskell-8.4-microlens-mtl")
    (version "0.1.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-mtl/microlens-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l6z1gkzwcpv89bxf5vgfrjb6gq2pj7sjjc53nvi5b9alx34zryk"))))
    (properties `((upstream-name . "microlens-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis "microlens support for Reader/Writer/State from mtl")
    (description
     "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.4-microlens-mtl

(define-public haskell-8.4-microlens-th
  (package
    (name "haskell-8.4-microlens-th")
    (version "0.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-th/microlens-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13qw0pwcgd6f6i39rwgqwcwk1d4da5x7wv3gna7gdlxaq331h41j"))))
    (properties `((upstream-name . "microlens-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-finlining")
       #:cabal-revision
       ("1" "167in7b1qhgrspx81bdm2jyg9qji66sk7id282c0s99kmp0d01n6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis "Automatic generation of record lenses for microlens")
    (description
     "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens).

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.4-microlens-th

(define-public haskell-8.4-mmorph
  (package
    (name "haskell-8.4-mmorph")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmorph/mmorph-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gjz1ib968lqybma7my1n19qq6cdj6a7nskrlnwy4jy9jrwzs2n9"))))
    (properties `((upstream-name . "mmorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "172gdvhslazq4dj63jpw8h5kpanmpwg8n4qwms8aavcnjvl9wdyn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/mmorph")
    (synopsis "Monad morphisms")
    (description
     "This library provides monad morphism utilities, most commonly used
for manipulating monad transformer stacks.")
    (license license:bsd-3)))

haskell-8.4-mmorph

(define-public haskell-8.4-monad-parallel
  (package
    (name "haskell-8.4-monad-parallel")
    (version "0.7.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-parallel/monad-parallel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12ahni860pfkdj70f9d0dg2h93gl0d9qav8llcmgh5z7dg1vi3qj"))))
    (properties `((upstream-name . "monad-parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://trac.haskell.org/SCC/wiki/monad-parallel")
    (synopsis "Parallel execution of monadic computations")
    (description
     "This package defines classes of monads that can perform multiple executions in parallel and combine their results. For
any monad that's an instance of the class, the package re-implements a subset of the Control.Monad interface, but with
parallel execution.")
    (license license:bsd-3)))

haskell-8.4-monad-parallel

(define-public haskell-8.4-monadic-arrays
  (package
    (name "haskell-8.4-monadic-arrays")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monadic-arrays/monadic-arrays-"
                    version ".tar.gz"))
              (sha256
               (base32
                "183nwb3ji4ak6yf2wahsa92l8ymnhhljxkvp8f6b8wh223318xv6"))))
    (properties `((upstream-name . "monadic-arrays") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/monadic-arrays/")
    (synopsis "Boxed and unboxed arrays for monad transformers")
    (description "Boxed and unboxed arrays for monad transformers")
    (license license:bsd-3)))

haskell-8.4-monadic-arrays

(define-public haskell-8.4-monoid-transformer
  (package
    (name "haskell-8.4-monoid-transformer")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-transformer/monoid-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1243r77m5ywphwyhw7kn9vb2ha5m5zj375bd61fprdfiwi3z3as3"))))
    (properties `((upstream-name . "monoid-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-transformer")
    (synopsis "Monoid counterparts to some ubiquitous monad transformers")
    (description
     "Monoid transformers: State, Reader

There is no Writer transformer.
It's vice versa: The Writer monad transforms a monoid to a monad.")
    (license license:bsd-3)))

haskell-8.4-monoid-transformer

(define-public haskell-8.4-multipart
  (package
    (name "haskell-8.4-multipart")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multipart/multipart-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4n4yyva22dhfr1pg5ki112qvvzb4hyd7bwpm189iq4gcp52q4z"))))
    (properties `((upstream-name . "multipart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "037ngpayaisc1jgcxyixy7lx42p2mz950k6wb0pl6dkc951hl88c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stringsearch)))
    (home-page "http://www.github.com/silkapp/multipart")
    (synopsis "HTTP multipart split out of the cgi package")
    (description "HTTP multipart split out of the cgi package")
    (license license:bsd-3)))

haskell-8.4-multipart

(define-public haskell-8.4-natural-induction
  (package
    (name "haskell-8.4-natural-induction")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-induction/natural-induction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brkmvkwpgqsxra210h8fkb9bpvawmbdwwvvhsd58kzmkd599alr"))))
    (properties `((upstream-name . "natural-induction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "012kjygd54rxinmaplqnbw0hkfm4wp829j0afjxr6h40x22gwzn5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-peano)))
    (home-page "https://hackage.haskell.org/package/natural-induction")
    (synopsis "Induction over natural numbers")
    (description "")
    (license license:bsd-3)))

haskell-8.4-natural-induction

(define-public haskell-8.4-network-multicast
  (package
    (name "haskell-8.4-network-multicast")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-multicast/network-multicast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wkmx5gic0zqghxxdyyrcysfaj1aknj53v50qq6c40d4qfmm0fqg"))))
    (properties `((upstream-name . "network-multicast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hha4vvyrx29d2lwwjl0bfpbaj00k85bd4w83s4hvawqbxqvvhkw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "https://hackage.haskell.org/package/network-multicast")
    (synopsis "Simple multicast library")
    (description "The \"Network.Multicast\" module is for sending
UDP datagrams over multicast (class D) addresses.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-network-multicast

(define-public haskell-8.4-non-empty-sequence
  (package
    (name "haskell-8.4-non-empty-sequence")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/non-empty-sequence/non-empty-sequence-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfidlv190wxrrp67h7rcrlczwfv7r0mdbwm31rrf08l1i6618yr"))))
    (properties `((upstream-name . "non-empty-sequence") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://www.github.com/massysett/non-empty-sequence")
    (synopsis "Non-empty sequence")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-non-empty-sequence

(define-public haskell-8.4-old-time
  (package
    (name "haskell-8.4-old-time")
    (version "1.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/old-time/old-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h9b26s3kfh2k0ih4383w90ibji6n0iwamxp6rfp2lbq1y5ibjqw"))))
    (properties `((upstream-name . "old-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1j6ln1dkvhdvnwl33bp0xf9lhc4sybqk0aw42p8cq81xwwzbn7y9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)))
    (home-page "https://hackage.haskell.org/package/old-time")
    (synopsis "Time library")
    (description "This package provides the old time library.

For new projects, the newer
<http://hackage.haskell.org/package/time time library>
is recommended.")
    (license license:bsd-3)))

haskell-8.4-old-time

(define-public haskell-8.4-operational
  (package
    (name "haskell-8.4-operational")
    (version "0.2.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/operational/operational-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2abg2q9d26h1vzj40r6k7k3gqgappbs4g9d853vvg77837km4i"))))
    (properties `((upstream-name . "operational") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbuildexamples")
       #:cabal-revision
       ("1" "0sqa37cf5r1ba1fr9gsw68yc0yysgadbxixnni4lhdm4pmni84qv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://wiki.haskell.org/Operational")
    (synopsis "Implementation of difficult monads made easy
with operational semantics.")
    (description
     "This library makes it easy to implement monads with tricky control flow.

This is useful for: writing web applications in a sequential style, programming games with a uniform interface for human and AI players and easy replay capababilities, implementing fast parser monads, designing monadic DSLs, etc.

See the project homepage <http://wiki.haskell.org/Operational> for a more detailed introduction and features.

Related packages:

* MonadPrompt — <http://hackage.haskell.org/package/MonadPrompt>

* free — <http://hackage.haskell.org/package/free>

* free-operational — <http://hackage.haskell.org/package/free-operational>")
    (license license:bsd-3)))

haskell-8.4-operational

(define-public haskell-8.4-options
  (package
    (name "haskell-8.4-options")
    (version "1.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/options/options-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qjs0v1ny52w51n5582d4z8wy9h6n0zw1xb5dh686ff5wadflgi8"))))
    (properties `((upstream-name . "options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monads-tf)))
    (home-page "https://john-millikin.com/software/haskell-options/")
    (synopsis "A powerful and easy-to-use command-line option parser.")
    (description
     "The @@options@@ package lets library and application developers easily work
with command-line options.

The following example is a full program that can accept two options,
@@--message@@ and @@--quiet@@:

@@
import Control.Applicative
import Options

data MainOptions = MainOptions
&#x20;   &#x7b; optMessage :: String
&#x20;   , optQuiet :: Bool
&#x20;   &#x7d;

instance 'Options' MainOptions where
&#x20;   defineOptions = pure MainOptions
&#x20;       \\<*\\> simpleOption \\\"message\\\" \\\"Hello world!\\\"
&#x20;           \\\"A message to show the user.\\\"
&#x20;       \\<*\\> simpleOption \\\"quiet\\\" False
&#x20;           \\\"Whether to be quiet.\\\"

main :: IO ()
main = runCommand $ \\\\opts args -> do
&#x20;   if optQuiet opts
&#x20;       then return ()
&#x20;       else putStrLn (optMessage opts)
@@

>$ ./hello
>Hello world!
>$ ./hello --message='ciao mondo'
>ciao mondo
>$ ./hello --quiet
>$

In addition, this library will automatically create documentation options
such as @@--help@@ and @@--help-all@@:

>$ ./hello --help
>Help Options:
>  -h, --help
>    Show option summary.
>  --help-all
>    Show all help options.
>
>Application Options:
>  --message :: text
>    A message to show the user.
>    default: \"Hello world!\"
>  --quiet :: bool
>    Whether to be quiet.
>    default: false")
    (license license:expat)))

haskell-8.4-options

(define-public haskell-8.4-papillon
  (package
    (name "haskell-8.4-papillon")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/papillon/papillon-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j0sxac7pgwfbgb545ysjsw7haz6m41m6gz5z8v3xawjhx662nib"))))
    (properties `((upstream-name . "papillon") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monads-tf)))
    (home-page "https://skami.iocikun.jp/haskell/packages/papillon")
    (synopsis "packrat parser")
    (description "see examples directory")
    (license license:bsd-3)))

haskell-8.4-papillon

(define-public haskell-8.4-parallel-io
  (package
    (name "haskell-8.4-parallel-io")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parallel-io/parallel-io-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i86x3bf8pjlg6mdg1zg5lcrjpg75pbqs2mrgrbp4z4bkcmw051s"))))
    (properties `((upstream-name . "parallel-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark" "-f-fuzz" "-f-tests")
       #:cabal-revision
       ("2" "0mggzni708nzxlsjbibdzf03s3b5lnqj2zi1hnbh1rd4j4jr07ym")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://batterseapower.github.com/parallel-io")
    (synopsis
     "Combinators for executing IO actions in parallel on a thread pool.")
    (description
     "This package provides combinators for sequencing IO actions onto a thread pool. The
thread pool is guaranteed to contain no more unblocked threads than a user-specified upper limit, thus
minimizing contention.

Furthermore, the parallel combinators can be used reentrantly - your parallel
actions can spawn more parallel actions - without violating this property of the thread pool.

The package is inspired by the thread <http://thread.gmane.org/gmane.comp.lang.haskell.cafe/56499/focus=56521>.
Thanks to Neil Mitchell and Bulat Ziganshin for some of the code this package is based on.")
    (license license:bsd-3)))

haskell-8.4-parallel-io

(define-public haskell-8.4-pcg-random
  (package
    (name "haskell-8.4-pcg-random")
    (version "0.1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcg-random/pcg-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1920g1babivacds27m0gbjs9mylwiknjykvbrpagzq7r0n4gyhyy"))))
    (properties `((upstream-name . "pcg-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
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

haskell-8.4-pcg-random

(define-public haskell-8.4-persistent-refs
  (package
    (name "haskell-8.4-persistent-refs")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-refs/persistent-refs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lyhz0cywls91a6crjq5v8x4h4740s73h3blvbkr6fg26kh11cs6"))))
    (properties `((upstream-name . "persistent-refs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ref-fd)))
    (home-page "https://github.com/acfoltzer/persistent-refs")
    (synopsis
     "Haskell references backed by an IntMap for persistence and reversibility.")
    (description
     "This library provides support for a persistent version of the
'Control.Monad.ST.ST' monad. Internally, references are backed by a
'Data.IntMap.IntMap', rather than being mutable variables on the
heap. This decreases performance, but can be useful in certain
settings, particularly those involving backtracking.")
    (license license:bsd-3)))

haskell-8.4-persistent-refs

(define-public haskell-8.4-postgresql-libpq
  (package
    (name "haskell-8.4-postgresql-libpq")
    (version "0.9.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-libpq/postgresql-libpq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y86kysakfcf3zq252yl2llrx3765vxvkdwda4q5ql7ikv3m786f"))))
    (properties `((upstream-name . "postgresql-libpq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-pkg-config")
       #:cabal-revision
       ("2" "1i0z3c0d657050kfggr5z8y4hmcqkckm2x1gn3fjbdzyx3p1rcaa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/phadej/postgresql-libpq")
    (synopsis "low-level binding to libpq")
    (description "This is a binding to libpq: the C application
programmer's interface to PostgreSQL. libpq is a
set of library functions that allow client
programs to pass queries to the PostgreSQL
backend server and to receive the results of
these queries.")
    (license license:bsd-3)))

haskell-8.4-postgresql-libpq

(define-public haskell-8.4-pretty-show
  (package
    (name "haskell-8.4-pretty-show")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-show/pretty-show-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0br7pkxqqqhby2j2v1g847lgqsrasx56g1jw3dhmjh4flzs6warq"))))
    (properties `((upstream-name . "pretty-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-lexer)))
    (home-page "http://wiki.github.com/yav/pretty-show")
    (synopsis "Tools for working with derived `Show` instances and generic
inspection of values.")
    (description
     "We provide a library and an executable for working with derived 'Show'
instances. By using the library, we can parse derived 'Show' instances into a
generic data structure. The @@ppsh@@ tool uses the library to produce
human-readable versions of 'Show' instances, which can be quite handy for
debugging Haskell programs.  We can also render complex generic values into
an interactive Html page, for easier examination.")
    (license license:expat)))

haskell-8.4-pretty-show

(define-public haskell-8.4-prim-uniq
  (package
    (name "haskell-8.4-prim-uniq")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prim-uniq/prim-uniq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zssi4zaihjaf3an10ar39d4qb155wcl1j66aymfrr9z2f2rf1gv"))))
    (properties `((upstream-name . "prim-uniq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-dependent-sum)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/mokus0/prim-uniq")
    (synopsis "Opaque unique identifiers in primitive state monads")
    (description "Opaque unique identifiers in primitive state monads
and a GADT-like type using them as witnesses of type
equality.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-prim-uniq

(define-public haskell-8.4-product-isomorphic
  (package
    (name "haskell-8.4-product-isomorphic")
    (version "0.0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/product-isomorphic/product-isomorphic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fy1a7xvnz47120z7vq5hrdllgard7cd1whkwwmgpwdsmhn3my8y"))))
    (properties `((upstream-name . "product-isomorphic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-data-compat)))
    (home-page "http://github.com/khibino/haskell-product-isomorphic")
    (synopsis "Weaken applicative functor on products")
    (description "Weaken applicative functor which allows only product
construction. Product constructions and deconstructions
are always isomorphic.")
    (license license:bsd-3)))

haskell-8.4-product-isomorphic

(define-public haskell-8.4-promises
  (package
    (name "haskell-8.4-promises")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/promises/promises-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q7jjk9dqli4vi46j94gywxp0fp80b7r0k0g4ymyf8n12lcr0z5z"))))
    (properties `((upstream-name . "promises") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/ekmett/promises/")
    (synopsis "Lazy demand-driven promises")
    (description "Lazy demand-driven promises")
    (license license:bsd-3)))

haskell-8.4-promises

(define-public haskell-8.4-prompt
  (package
    (name "haskell-8.4-prompt")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/prompt/prompt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wjil5rrh2flm3ikjk9f3i6y015vm0bdxndn8mv78l66yhg73db7"))))
    (properties `((upstream-name . "prompt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/mstksg/prompt")
    (synopsis "Monad (and transformer) for deferred-effect pure
prompt-response queries")
    (description "Monad (and transformer) for delayed-effect \"pure\"
prompt-and-response queries.

Allows you to specify programs that might query a
database, talk to stdio, etc., without ever involving IO
or opening the door to arbitrary IO.  Write a potentially
pure computation describing prompting interactions, etc.,
without having your type actually do any IO or involve
itself with IO or any effectful context.

Useful as a source of \"things from IO\", without ever
actually involving IO or arbitrary IO itself; only
executing a specific subset of IO (or State, etc.) that
you yourself, the caller, specifies explicitly.  Safer
and more meaningful type.

For more information and instructions on usage with
examples, see <https://github.com/mstksg/prompt the README>.

Not quite related to the /MonadPrompt/ library.")
    (license license:expat)))

haskell-8.4-prompt

(define-public haskell-8.4-regex-pcre
  (package
    (name "haskell-8.4-regex-pcre")
    (version "0.94.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre/regex-pcre-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h16w994g9s62iwkdqa7bar2n9cfixmkzz2rm8svm960qr57valf"))))
    (properties `((upstream-name . "regex-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "0jk29n0may65ghixlx1wwfmfcabsm730y8ppry1qy4naywhi1vs7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hackage.haskell.org/package/regex-pcre")
    (synopsis "Replaces/Enhances Text.Regex")
    (description "The PCRE backend to accompany regex-base, see www.pcre.org")
    (license license:bsd-3)))

haskell-8.4-regex-pcre

(define-public haskell-8.4-regex-pcre-builtin
  (package
    (name "haskell-8.4-regex-pcre-builtin")
    (version "0.94.4.8.8.35")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre-builtin/regex-pcre-builtin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y7as9wqlkykpipka2cfdhmcnin345q01pp0wsva8fwmvsavdl8b"))))
    (properties `((upstream-name . "regex-pcre-builtin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "0r29q3fwlji0vxypk0pywrqgrqz84ryd0n5zmk44bgy2k534mk6c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)))
    (home-page "http://hackage.haskell.org/package/regex-pcre")
    (synopsis "Replaces/Enhances Text.Regex")
    (description
     "The PCRE backend to accompany regex-base, with bundled code from www.pcre.org")
    (license license:bsd-3)))

haskell-8.4-regex-pcre-builtin

(define-public haskell-8.4-regex-posix
  (package
    (name "haskell-8.4-regex-posix")
    (version "0.95.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-posix/regex-posix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gkhzhj8nvfn1ija31c7xnl6p0gadwii9ihyp219ck2arlhrj0an"))))
    (properties `((upstream-name . "regex-posix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("2" "1zrlwmmrb3x3r3af1r42xwhwspzfgnzh4dw1158523sndsg8qn08")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)))
    (home-page "http://sourceforge.net/projects/lazy-regex")
    (synopsis "Replaces/Enhances Text.Regex")
    (description "The posix regex backend for regex-base")
    (license license:bsd-3)))

haskell-8.4-regex-posix

(define-public haskell-8.4-regex-tdfa
  (package
    (name "haskell-8.4-regex-tdfa")
    (version "1.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-tdfa/regex-tdfa-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l7ajnh4hpgggf2a1r9dg0hx2fy679vd2kada5y7r02hy3nfxala"))))
    (properties `((upstream-name . "regex-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")
       #:cabal-revision
       ("1" "120083w1shqbs5czdwswpbr1h7200ckzcspdjqxdrm054z8zccyc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)))
    (home-page "https://github.com/ChrisKuklewicz/regex-tdfa")
    (synopsis "Replaces/Enhances Text.Regex")
    (description
     "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre")
    (license license:bsd-3)))

haskell-8.4-regex-tdfa

(define-public haskell-8.4-sendfile
  (package
    (name "haskell-8.4-sendfile")
    (version "0.7.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sendfile/sendfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hnw1ym81cff49dwww19kgbs4s0kpandbvn6h5cml3y0p1nxybqh"))))
    (properties `((upstream-name . "sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-portable")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "http://hub.darcs.net/stepcut/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-8.4-sendfile

(define-public haskell-8.4-setlocale
  (package
    (name "haskell-8.4-setlocale")
    (version "1.0.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/setlocale/setlocale-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sdrsmkhw08483d73ysgm2926fdbhii61br03lqpqw0lfzj4ilbd"))))
    (properties `((upstream-name . "setlocale") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://bitbucket.org/IchUndNichtDu/haskell-setlocale")
    (synopsis "Haskell bindings to setlocale")
    (description "")
    (license license:bsd-3)))

haskell-8.4-setlocale

(define-public haskell-8.4-simplest-sqlite
  (package
    (name "haskell-8.4-simplest-sqlite")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simplest-sqlite/simplest-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vjx01bls2z99hmynqhxm4j2cq17334wz3pz0gm5saxslkldw2sz"))))
    (properties `((upstream-name . "simplest-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-exception-hierarchy)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages sqlite) sqlite-next)))
    (home-page "comming soon")
    (synopsis "Simplest SQLite3 binding")
    (description "see sample code in samples/")
    (license license:bsd-3)))

haskell-8.4-simplest-sqlite

(define-public haskell-8.4-size-based
  (package
    (name "haskell-8.4-size-based")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/size-based/size-based-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06hmlic0n73ncwlkpx49xlv09bzsrr27ncnp5byhzlknak2gd7vp"))))
    (properties `((upstream-name . "size-based") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kax1ypjyglkn6iff1x4yz12y7f2n249m95xvdhrc63hsa4xlcqv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-dictionary-sharing)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-testing-type-modifiers)))
    (home-page "https://hackage.haskell.org/package/size-based")
    (synopsis "Sized functors, for size-based enumerations")
    (description
     "A framework for size-based enumerations. See the module documentations for details. ")
    (license license:bsd-3)))

haskell-8.4-size-based

(define-public haskell-8.4-smallcheck
  (package
    (name "haskell-8.4-smallcheck")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smallcheck/smallcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "195fj7w3v03d1y1nm2ylavzrwxjcdbq0lb6zsw1dwyx5jmwfc84h"))))
    (properties `((upstream-name . "smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0vg00pkhw3dwnrrpgykibkg9dx33q6dmbv794yz2dgvyab801m0n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-logict)))
    (home-page "https://github.com/strake/smallcheck.hs")
    (synopsis "A property-based testing library")
    (description
     "SmallCheck is a testing library that allows to verify properties
for all test cases up to some depth. The test cases are generated
automatically by SmallCheck.")
    (license license:bsd-3)))

haskell-8.4-smallcheck

(define-public haskell-8.4-socket-activation
  (package
    (name "haskell-8.4-socket-activation")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/socket-activation/socket-activation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fxl9v1mvlv31bhyjl8k1l4f4lr9n0gvcnsfr2m65m3c557pp7mr"))))
    (properties `((upstream-name . "socket-activation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bvm8ik8fp0v5gjw6q4h767zgs1i4ydckdypvqa85sarc985hkmp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "https://github.com/ddfisher/haskell-socket-activation")
    (synopsis "systemd socket activation library")
    (description
     "a module for systemd socket activation.  See
<http://0pointer.de/blog/projects/socket-activation.html> and
<http://www.freedesktop.org/software/systemd/man/systemd.socket.html> for more
details.")
    (license license:bsd-3)))

haskell-8.4-socket-activation

(define-public haskell-8.4-speculate
  (package
    (name "haskell-8.4-speculate")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speculate/speculate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i7a6mq0f46iihq7kd3a1780pqqhmmdi706c42y4dmmj32nb4v3h"))))
    (properties `((upstream-name . "speculate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-leancheck)))
    (home-page "https://github.com/rudymatela/speculate#readme")
    (synopsis "discovery of properties about Haskell functions")
    (description
     "Speculate automatically discovers laws about Haskell functions.
Give Speculate a bunch of Haskell functions and it will discover laws like:

* equations, such as @@ id x == x @@;

* inequalities, such as @@ 0 <= x * x @@;

* conditional equations, such as @@ x \\<= 0  ==\\>  x + abs x == 0 @@.")
    (license license:bsd-3)))

haskell-8.4-speculate

(define-public haskell-8.4-sphinx
  (package
    (name "haskell-8.4-sphinx")
    (version "0.6.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sphinx/sphinx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1px6lxxy7a34jni83l68nnhw40751g6pmvazplhc4wbfrv37gabn"))))
    (properties `((upstream-name . "sphinx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-version-1-1-beta")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-text-icu)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)))
    (home-page "https://github.com/gregwebs/haskell-sphinx-client")
    (synopsis "Haskell bindings to the Sphinx full-text searching daemon.")
    (description
     "Haskell bindings to the Sphinx full-text searching daemon. Compatible with Sphinx version 2.0")
    (license license:bsd-3)))

haskell-8.4-sphinx

(define-public haskell-8.4-splice
  (package
    (name "haskell-8.4-splice")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/splice/splice-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lsfkm4vfipzbnqpf3yli6fwrv5a5mwbs149dfzhs7spa9kbxyl1"))))
    (properties `((upstream-name . "splice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fportable" "-f-llvm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "http://corsis.github.com/splice/")
    (synopsis "Cross-platform Socket to Socket Data Splicing")
    (description
     "A library that implements most efficient socket to socket
data transfer loops for proxy servers on all operating systems.

On GNU/Linux, it exports the zero-copy system call @@c_splice()@@
(<http://en.wikipedia.org/wiki/Splice_(system_call)#Requirements>)
in @@System.IO.Splice.Linux@@.

On other operating systems, it only exports a portable Haskell
implementation.

A unified sockets API for all operating systems is available in
@@Network.Socket.Splice@@.

[Version Scheme]
Major-@@/R/@@-ewrite . New-@@/F/@@-unctionality . @@/I/@@-mprovementAndBugFixes . @@/P/@@-ackagingOnly

* @@PackagingOnly@@ changes are made for quality assurance reasons.")
    (license license:bsd-3)))

haskell-8.4-splice

(define-public haskell-8.4-splitmix
  (package
    (name "haskell-8.4-splitmix")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/splitmix/splitmix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bvpx3hnyhz449s2c2mi5h78024yysnqldfwp7m0qr21m41q0v1a"))))
    (properties `((upstream-name . "splitmix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0c38sajdpqcmicdh4lfy6vpg8wnzpiyamvbximdsqs605frs3mqs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
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

haskell-8.4-splitmix

(define-public haskell-8.4-statestack
  (package
    (name "haskell-8.4-statestack")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statestack/statestack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rjzx9iy5mx5igir6gvslznnx3gpxlb1xy1n8h4cn54cn3wxrspl"))))
    (properties `((upstream-name . "statestack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0s9v88gcc5wnfj4c6xq86asadmh4y8z8ycv2wz5nwfwfazfgzcy3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/statestack")
    (synopsis
     "Simple State-like monad transformer with saveable and restorable state")
    (description
     "Simple State-like monad transformer where states can be saved to
and restored from an internal stack.")
    (license license:bsd-3)))

haskell-8.4-statestack

(define-public haskell-8.4-storable-endian
  (package
    (name "haskell-8.4-storable-endian")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-endian/storable-endian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12allvahkgx1nr10z4gp07gwaxqf52n4yyzihdxiilsf127sqhrp"))))
    (properties `((upstream-name . "storable-endian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")
       #:cabal-revision
       ("1" "12f8sscsvsarlwz3p6kk9vbvqsbyhs8lhafgn9h7c0z6pz1amrya")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteorder)))
    (home-page "https://hackage.haskell.org/package/storable-endian")
    (synopsis "Storable instances with endianness")
    (description "Storable instances with endianness")
    (license license:bsd-3)))

haskell-8.4-storable-endian

(define-public haskell-8.4-store-core
  (package
    (name "haskell-8.4-store-core")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/store-core/store-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1489ydwmq3vd9lz193m5w277wvb9g74ssc1ncfjdry2g0y6czbjv"))))
    (properties `((upstream-name . "store-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-alignment")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Fast and lightweight binary serialization")
    (description "")
    (license license:expat)))

haskell-8.4-store-core

(define-public haskell-8.4-structs
  (package
    (name "haskell-8.4-structs")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/structs/structs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hdajhvd6i81dchdyd42fa17pm53jd7g3irqjfardbbmjx0sqq6z"))))
    (properties `((upstream-name . "structs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-ftest-hlint")
       #:cabal-revision
       ("2" "1v9gmnj17cm4p491rizvw9xdj255lk1y24gz6s8bqcz56sdb4d4s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-8.4-structs

(define-public haskell-8.4-system-argv0
  (package
    (name "haskell-8.4-system-argv0")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)))
    (home-page "https://john-millikin.com/software/haskell-filesystem/")
    (synopsis "Get argv[0] as a FilePath.")
    (description
     "Get @@argv[0]@@ as a FilePath. This is how the program was invoked, and might
not correspond to any actual file.

Use this instead of @@System.Environment.getProgName@@ if you want the full
path, and not just the last component.")
    (license license:expat)))

haskell-8.4-system-argv0

(define-public haskell-8.4-system-fileio
  (package
    (name "haskell-8.4-system-fileio")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "Consistent filesystem interaction across GHC versions (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-8.4-system-fileio

(define-public haskell-8.4-tabular
  (package
    (name "haskell-8.4-tabular")
    (version "0.2.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tabular/tabular-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ysgq7rrks7f98nnvxil8xz1q27hxdgz4szbjhqwzbwd209dmy0k"))))
    (properties `((upstream-name . "tabular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-csv)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-html)))
    (home-page "http://hub.darcs.net/kowey/tabular")
    (synopsis "Two-dimensional data tables with rendering functions")
    (description
     "Tabular provides a Haskell representation of two-dimensional
data tables, the kind that you might find in a spreadsheet or
or a research report.  It also comes with some default
rendering functions for turning those tables into ASCII art,
simple text with an arbitrary delimiter, CSV, HTML or LaTeX.

Below is an example of the kind of output this library produces.
The tabular package can group rows and columns, each group
having one of three separators (no line, single line, double line)
between its members.

>     || memtest 1 | memtest 2 ||  time test  | time test 2
> ====++===========+===========++=============+============
> A 1 ||       hog |  terrible ||        slow |      slower
> A 2 ||       pig |   not bad ||        fast |     slowest
> ----++-----------+-----------++-------------+------------
> B 1 ||      good |     awful || intolerable |    bearable
> B 2 ||    better | no chance ||    crawling |     amazing
> B 3 ||       meh |   well... ||  worst ever |          ok")
    (license license:bsd-3)))

haskell-8.4-tabular

(define-public haskell-8.4-tagged
  (package
    (name "haskell-8.4-tagged")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagged/tagged-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16cdzh0bw16nvjnyyy5j9s60malhz4nnazw96vxb0xzdap4m2z74"))))
    (properties `((upstream-name . "tagged") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdeepseq" "-ftransformers")
       #:cabal-revision
       ("2" "0r2knfcq0b4s652vlvlnfwxlc2mkc2ra9kl8bp4zdn1awmfy0ia5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/tagged")
    (synopsis
     "Haskell 98 phantom types to avoid unsafely passing dummy arguments")
    (description
     "Haskell 98 phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-8.4-tagged

(define-public haskell-8.4-tao-example
  (package
    (name "haskell-8.4-tao-example")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tao-example/tao-example-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ch09fgj46fy5h33rcqlbkm02v8cq246bpxswxfdj8p9g1dkkpk5"))))
    (properties `((upstream-name . "tao-example") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tao)))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Example usage of the tao package.")
    (description "Example usage of type-level assertions using tao.")
    (license license:expat)))

haskell-8.4-tao-example

(define-public haskell-8.4-terminal-size
  (package
    (name "haskell-8.4-terminal-size")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/terminal-size/terminal-size-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n4nvj3dbj9gxfnprgish45asn9z4dipv9j98s8i7g2n8yb3xhmm"))))
    (properties `((upstream-name . "terminal-size") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://hackage.haskell.org/package/terminal-size")
    (synopsis "Get terminal window height and width")
    (description
     "Get terminal window height and width without ncurses dependency.")
    (license license:bsd-3)))

haskell-8.4-terminal-size

(define-public haskell-8.4-text-builder
  (package
    (name "haskell-8.4-text-builder")
    (version "0.5.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder/text-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xcyi3bw44anzah5c4c0wm18vnyqsr3q7ww2kp2psk41ql6gan2h"))))
    (properties `((upstream-name . "text-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/nikita-volkov/text-builder")
    (synopsis "An efficient strict text builder")
    (description "")
    (license license:expat)))

haskell-8.4-text-builder

(define-public haskell-8.4-tf-random
  (package
    (name "haskell-8.4-tf-random")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tf-random/tf-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0445r2nns6009fmq0xbfpyv7jpzwv0snccjdg7hwj4xk4z0cwc1f"))))
    (properties `((upstream-name . "tf-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://hackage.haskell.org/package/tf-random")
    (synopsis "High-quality splittable pseudorandom number generator")
    (description
     "This package contains an implementation of a high-quality splittable pseudorandom number generator. The generator is based on a cryptographic hash function built on top of the ThreeFish block cipher. See the paper /Splittable Pseudorandom Number Generators Using Cryptographic Hashing/ by Claessen, Pałka for details and the rationale of the design.

The package provides the following:

* A splittable PRNG that implements the standard 'System.Random.RandomGen' class.

* The generator also implements an alternative version of the 'System.Random.TF.Gen.RandomGen' class (exported from \"System.Random.TF.Gen\"), which requires the generator to return pseudorandom integers from the full 32-bit range, and contains an n-way split function.

* An alternative version of the @@Random@@ class is provided, which is linked to the new @@RandomGen@@ class, together with @@Random@@ instances for some integral types.

* Two functions for initialising the generator with a non-deterministic seed: one using the system time, and one using the @@\\/dev\\/urandom@@ UNIX special file.

The package uses an adapted version of the reference C implementation of ThreeFish from the reference package of the Skein hash function (<https://www.schneier.com/skein.html>), originally written by Doug Whiting.

Please note that even though the generator provides very high-quality pseudorandom numbers, it has not been designed with cryptographic applications in mind.")
    (license license:bsd-3)))

haskell-8.4-tf-random

(define-public haskell-8.4-th-lift
  (package
    (name "haskell-8.4-th-lift")
    (version "0.7.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-lift/th-lift-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "131360zxb0hazbqwbkk6ab2p77jkxr79bwwm618mrwrwkm3x2g6m"))))
    (properties `((upstream-name . "th-lift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0whppp0p9df3fphv6pyg8f70bnm2kpyb3ylznknrklsl5vn2c49d")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)))
    (home-page "http://github.com/mboes/th-lift")
    (synopsis "Derive Template Haskell's Lift class for datatypes.")
    (description "Derive Template Haskell's Lift class for datatypes.")
    (license license:bsd-3)))

haskell-8.4-th-lift

(define-public haskell-8.4-threads-extras
  (package
    (name "haskell-8.4-threads-extras")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/threads-extras/threads-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x95vsgsizkbidpkprbijqbgclryhbk31m8k0icbjrx7p2capvsd"))))
    (properties `((upstream-name . "threads-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-threads)))
    (home-page "https://hackage.haskell.org/package/threads-extras")
    (synopsis "Extends the threads package with a bounded thread group")
    (description
     "Extends the threads package with a bounded thread group with the same interface as the original thread group.")
    (license license:bsd-3)))

haskell-8.4-threads-extras

(define-public haskell-8.4-time-lens
  (package
    (name "haskell-8.4-time-lens")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-lens/time-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07nh97x1mx5hc48xqv3gk3cgls6xpb829h3bzsjx8rwqnzybijyq"))))
    (properties `((upstream-name . "time-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-lens-light)))
    (home-page "https://github.com/feuerbach/time-lens")
    (synopsis "Lens-based interface to Data.Time data structures")
    (description "")
    (license license:bsd-3)))

haskell-8.4-time-lens

(define-public haskell-8.4-timezone-olson
  (package
    (name "haskell-8.4-timezone-olson")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timezone-olson/timezone-olson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05abywx1nrcaz0nqzfy4zw62bc5qd7pdfnjvv4drxkwv084ha8rj"))))
    (properties `((upstream-name . "timezone-olson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-timezone-series)))
    (home-page "http://projects.haskell.org/time-ng/")
    (synopsis
     "A pure Haskell parser and renderer for binary Olson timezone files")
    (description "A parser and renderer for binary Olson timezone
files whose format is specified by the tzfile(5)
man page on Unix-like systems. For more
information about this format, see
<http://www.iana.org/time-zones/repository/tz-link.html>.
Functions are provided for converting the parsed data into
'TimeZoneSeries' objects from the timezone-series
package. On many platforms, binary Olson timezone
files suitable for use with this package are
available in the directory /usr/share/zoneinfo
and its subdirectories on your computer.
For a way to read binary Olson timezone files at compile
time, see the timezone-olson-th package
(<http://hackage.haskell.org/package/timezone-olson-th>).")
    (license license:bsd-3)))

haskell-8.4-timezone-olson

(define-public haskell-8.4-transformers-lift
  (package
    (name "haskell-8.4-transformers-lift")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-lift/transformers-lift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17g03r5hpnygx0c9ybr9za6208ay0cjvz47rkyplv1r9zcivzn0b"))))
    (properties `((upstream-name . "transformers-lift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0rkbjlpn460gn93qr0l7025ggkgj46j6pkcil6m2chkzk91cpk9i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-writer-cps-transformers)))
    (home-page "https://hackage.haskell.org/package/transformers-lift")
    (synopsis "Ad-hoc type classes for lifting")
    (description "This simple and lightweight library provides type classes
for lifting monad transformer operations.")
    (license license:bsd-3)))

haskell-8.4-transformers-lift

(define-public haskell-8.4-tuple
  (package
    (name "haskell-8.4-tuple")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tuple/tuple-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "094nx29aahyrvbcn7yca9zs2a5rxz1is7510w1q43rpvza7hdjrg"))))
    (properties `((upstream-name . "tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-OneTuple)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-8.4-tuple

(define-public haskell-8.4-tuple-sop
  (package
    (name "haskell-8.4-tuple-sop")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tuple-sop/tuple-sop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hv0fcz5sw93v1niq2r656wpkiwkg6larld7x9cwk4s98h7qvqgn"))))
    (properties `((upstream-name . "tuple-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)))
    (home-page "https://github.com/Ferdinand-vW/tuple-sop#readme")
    (synopsis "functions on n-ary tuples using generics-sop")
    (description
     "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-tuple-sop

(define-public haskell-8.4-unicode-transforms
  (package
    (name "haskell-8.4-unicode-transforms")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-transforms/unicode-transforms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gm0dwbhr666s7xx71qdrha5r3qwfyyv0wsrvq8jxva3mcwd3xy9"))))
    (properties `((upstream-name . "unicode-transforms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-has-icu" "-f-has-llvm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bitarray)))
    (home-page "http://github.com/harendra-kumar/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 9.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-8.4-unicode-transforms

(define-public haskell-8.4-unification-fd
  (package
    (name "haskell-8.4-unification-fd")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unification-fd/unification-fd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15hrnmgr0pqq43fwgxc168r08xjgfhr2nchmz5blq46vwrh6gx2v"))))
    (properties `((upstream-name . "unification-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase4" "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-logict)))
    (home-page "http://code.haskell.org/~wren/")
    (synopsis "Simple generic unification algorithms.")
    (description "Simple generic unification algorithms.")
    (license license:bsd-3)))

haskell-8.4-unification-fd

(define-public haskell-8.4-universe-instances-base
  (package
    (name "haskell-8.4-universe-instances-base")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-base/universe-instances-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04njgl32lk5a0masjdjkm4l2wsyrr29g0fsp599864mp7gp504d2"))))
    (properties `((upstream-name . "universe-instances-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0c9zxmifhy2qjvsikgm168n8k8ka8ia88ldy8qjqkz5pqknlr9sj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from the base package")
    (description "")
    (license license:bsd-3)))

haskell-8.4-universe-instances-base

(define-public haskell-8.4-unordered-intmap
  (package
    (name "haskell-8.4-unordered-intmap")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unordered-intmap/unordered-intmap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vvn510v4gy70lk2bkx45bh7hk0kfdn62j3rp913j57d4c6azynq"))))
    (properties `((upstream-name . "unordered-intmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/ethercrow/unordered-intmap")
    (synopsis "A specialization of `HashMap Int v`")
    (description "")
    (license license:bsd-3)))

haskell-8.4-unordered-intmap

(define-public haskell-8.4-vector
  (package
    (name "haskell-8.4-vector")
    (version "0.12.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vector/vector-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wy0pfa3ks6s2dkp1fwrl1s9d3wjmqy9d09icnwfs2zimyn9vs2j"))))
    (properties `((upstream-name . "vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-f-wall")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/haskell/vector")
    (synopsis "Efficient Arrays")
    (description
     "
An efficient implementation of Int-indexed arrays (both mutable
and immutable), with a powerful loop optimisation framework .

It is structured as follows:

[\"Data.Vector\"] Boxed vectors of arbitrary types.

[\"Data.Vector.Unboxed\"] Unboxed vectors with an adaptive
representation based on data type families.

[\"Data.Vector.Storable\"] Unboxed vectors of 'Storable' types.

[\"Data.Vector.Primitive\"] Unboxed vectors of primitive types as
defined by the @@primitive@@ package. \"Data.Vector.Unboxed\" is more
flexible at no performance cost.

[\"Data.Vector.Generic\"] Generic interface to the vector types.

There is also a (draft) tutorial on common uses of vector.

* <http://haskell.org/haskellwiki/Numeric_Haskell:_A_Vector_Tutorial>")
    (license license:bsd-3)))

haskell-8.4-vector

(define-public haskell-8.4-verbosity
  (package
    (name "haskell-8.4-verbosity")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/verbosity/verbosity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r7jj2h7xzz3i8ck00z19h4bfr4r4nxfzi6ya9kppcda92myak4b"))))
    (properties `((upstream-name . "verbosity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fdata-typeable" "-fghc-generics" "-fbinary" "-fdata-default" "-fdeepseq" "-f-cereal" "-f-safecopy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-8.4-verbosity

(define-public haskell-8.4-wizards
  (package
    (name "haskell-8.4-wizards")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wizards/wizards-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1clvbd1ckhvy29qrbmpkn7bya7300fq6znnps23nn3nxyrxhsr85"))))
    (properties `((upstream-name . "wizards") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "095qd17zrdhqmcvmslbyzfa5sh9glvvsnsvnlz31gzsmi8nnsgim")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-control-monad-free)))
    (home-page "https://hackage.haskell.org/package/wizards")
    (synopsis "High level, generic library for interrogative user interfaces")
    (description
     "@@wizards@@ is a package designed for the quick and painless development of /interrogative/ programs, which
revolve around a \\\"dialogue\\\" with the user, who is asked a series of questions in a sequence much like an
installation wizard.

Everything from interactive system scripts, to installation wizards, to full-blown shells can be implemented with
the support of @@wizards@@.

It is developed transparently on top of a free monad, which separates out the semantics of the program from any
particular interface. A variety of backends exist, including console-based \"System.Console.Wizard.Haskeline\" and
\"System.Console.Wizard.BasicIO\", and the pure \"System.Console.Wizard.Pure\". It is also possible to write your
own backends, or extend existing back-ends with new features. While both built-in IO backends operate on a
console, there is no reason why @@wizards@@ cannot also be used for making GUI wizard interfaces.


See the github page for examples on usage:

<http://www.github.com/liamoc/wizards>

For creating backends, the module \"System.Console.Wizard.Internal\" has a brief tutorial.")
    (license license:bsd-3)))

haskell-8.4-wizards

(define-public haskell-8.4-wl-pprint-text
  (package
    (name "haskell-8.4-wl-pprint-text")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-text/wl-pprint-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g3w92rad6x5appfb22rbzcas2ix2h0hy91sdxhq8a4a5cnlrpa0"))))
    (properties `((upstream-name . "wl-pprint-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)))
    (home-page "https://hackage.haskell.org/package/wl-pprint-text")
    (synopsis "A Wadler/Leijen Pretty Printer for Text values")
    (description "A clone of wl-pprint for use with the text library.")
    (license license:bsd-3)))

haskell-8.4-wl-pprint-text

(define-public haskell-8.4-writer-cps-mtl
  (package
    (name "haskell-8.4-writer-cps-mtl")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-mtl/writer-cps-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09snvqwwhp39vmiiz3jpnfyjfhvpcj8ykbnhmii0yclxxsjgamqm"))))
    (properties `((upstream-name . "writer-cps-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1px4f2i4s2p3jiy50ic8s0r5hjac1i1m9k0di049m002kb22rq6l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-mtl#readme")
    (synopsis "MonadWriter orphan instances for writer-cps-transformers")
    (description
     "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. See also (<http://hackage.haskell.org/package/writer-cps-transformers>).")
    (license license:bsd-3)))

haskell-8.4-writer-cps-mtl

(define-public haskell-8.4-xml-picklers
  (package
    (name "haskell-8.4-xml-picklers")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-picklers/xml-picklers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "196iy4z58x58bjk5jy4fpmn8zhiramlyca4rd732i8j3jp6h5f6i"))))
    (properties `((upstream-name . "xml-picklers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (home-page "https://hackage.haskell.org/package/xml-picklers")
    (synopsis "XML picklers based on xml-types, ported from hexpat-pickle")
    (description
     "A library of combinators that allows Haskell data structures to be pickled
(serialized) to/from a representation of XML as defined in xml-types

Release history

[0.3] Changed the Result type of unpicklers. Unpicklers now fail by default when
there are remaining elements

[0.2] Error system overhaul

[0.1] Initial release")
    (license license:bsd-3)))

haskell-8.4-xml-picklers

(define-public haskell-8.4-yoga
  (package
    (name "haskell-8.4-yoga")
    (version "0.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yoga/yoga-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14az05jh60ncsyw859b9v9m7lb5xcgsv2478pa3if93vxy1h40ih"))))
    (properties `((upstream-name . "yoga") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://hackage.haskell.org/package/yoga")
    (synopsis "Bindings to Facebook's Yoga layout library")
    (description
     "The <https://facebook.github.com/yoga Yoga> library from
<https://facebook.github.com/ Facebook> is a fast layout engine
written in C that implements flexbox. There are two
main ways to interface with these bindings. The high-level
bindings are stored in the Yoga module and provide a more
Haskell-like interface to the library. The other option is to
directly use the C-level bindings in \"Bindings.Yoga\". If you do
so you do so at your own risk (i.e. you must manage your own
memory).
The examples are not built nor included by default. Please
refer to the source tarball for examples on how to use this
library.
These bindings are not affiliated with Facebook in any way,
and have been developed separately for the sole purpose of
interfacing with their open source library.")
    (license license:bsd-3)))

haskell-8.4-yoga

(define-public haskell-8.4-zero
  (package
    (name "haskell-8.4-zero")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zero/zero-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mfmc7na5q2lrlz168hwzdjpmaqdqqpdlsfyk44v9f3kjqnwdk9q"))))
    (properties `((upstream-name . "zero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/phaazon/zero")
    (synopsis "Semigroups with absorption")
    (description "'Monoid' is a 'Semigroup' glued with a neutral element
called 'mempty'. In the same idea, 'Zero' is a 'Semigroup'
glued with an absorbing element called 'zero'.

Keep in mind that 'Zero' requires 'Semigroup'. If you have
'Semigroup' defined to work with 'Monoid', you might end up
with no way to implement 'Zero'. That’s why the 'Semigroup'
instance for 'Maybe' is confusing, because it relies on
'Monoid', and cannot be used with 'Zero'. 'Success' is the
'Zero' equivalent of 'Maybe' + 'Monoid'.")
    (license license:bsd-3)))

haskell-8.4-zero

(define-public haskell-8.4-zot
  (package
    (name "haskell-8.4-zot")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zot/zot-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0cibi8zm9v8vi4i2xdm4kpk1v2kc0sh0fc5ylsn78gwyjcdhkaf8"))))
    (properties `((upstream-name . "zot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04gsbs6fvwpjjg1f6g1j17dxlfzsci9vmirk7mwqwmm9ha0a4hxm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monads-tf)))
    (home-page "https://hackage.haskell.org/package/zot")
    (synopsis "Zot language")
    (description
     "Zot language (<http://semarch.linguistics.fas.nyu.edu/barker/Iota/zot.html>)

> echo \"10100\" | cat examples/reverse.zot - | zot -
> 00101

> cat examples/reverse.lambda | zot lambdaToSki | zot skiToZot | zot arg \"10100\" | zot -
> 00101

And try

> cat examples/reverse.zot | zot zotToSki | zot skiToLambda

and

> cat examples/reverse.zot | zot zotToSki | zot skiToLambda -h")
    (license license:bsd-3)))

haskell-8.4-zot

