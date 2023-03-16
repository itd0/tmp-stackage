;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage001)
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
(define-public haskell-8.8-HUnit
  (package
    (name "haskell-8.8-HUnit")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HUnit/HUnit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rpi52rnjpyv379rm6n3s706z6mv114aychf03dq456wfa4b7123"))))
    (properties `((upstream-name . "HUnit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pb42lix1fzhvcc2g7kz5lw8fsz6kcj9b7almr7kvv38f8vmbn5i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)))
    (home-page "https://github.com/hspec/HUnit#readme")
    (synopsis "A unit testing framework for Haskell")
    (description
     "HUnit is a unit testing framework for Haskell, inspired by the
JUnit tool for Java, see: <http://www.junit.org>.")
    (license license:bsd-3)))

haskell-8.8-HUnit

(define-public haskell-8.8-HaXml
  (package
    (name "haskell-8.8-HaXml")
    (version "1.25.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaXml/HaXml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d8jbiv53r3ndg76r3937idqdg34nhmb99vj087i73hjnv21mifb"))))
    (properties `((upstream-name . "HaXml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "029jnlmab1llr55dmlamrn2hxkbqw7ryz1dfg19h1aip6byf4ljh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-polyparse)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "http://projects.haskell.org/HaXml/")
    (synopsis "Utilities for manipulating XML documents")
    (description "This version, 1.25.5 is a Non-Maintainer Upload (NMU).
Report issues to the Hackage Trustees issue tracker.

Haskell utilities for parsing, filtering, transforming and
generating XML documents.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-HaXml

(define-public haskell-8.8-ListTree
  (package
    (name "haskell-8.8-ListTree")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListTree/ListTree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k301z2s7z7qjghcllg6x2aibavr39lfmzja1gwzgnck879s2fhb"))))
    (properties `((upstream-name . "ListTree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-List)))
    (home-page "http://github.com/yairchu/generator/tree")
    (synopsis
     "Trees and monadic trees expressed as monadic lists where the underlying monad is a list")
    (description "Directory tree structure expressed as a monadic tree.
Searching, pruning, iterating, and processing trees.")
    (license license:bsd-3)))

haskell-8.8-ListTree

(define-public haskell-8.8-MonadRandom
  (package
    (name "haskell-8.8-MonadRandom")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MonadRandom/MonadRandom-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rjihspfdg2b9bwvbgj36ql595nbza8ddh1bmgz924xmddshcf30"))))
    (properties `((upstream-name . "MonadRandom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1abrydgsmm1z6qq2knzi40bn6ldv68nqzhp8z6li4wf9baisjgs0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/MonadRandom")
    (synopsis "Random-number generation monad.")
    (description "Support for computations which consume random values.")
    (license license:bsd-3)))

haskell-8.8-MonadRandom

(define-public haskell-8.8-TypeCompose
  (package
    (name "haskell-8.8-TypeCompose")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)))
    (home-page "https://github.com/conal/TypeCompose")
    (synopsis "Type composition classes & instances")
    (description
     "TypeCompose provides some classes & instances for forms of type
composition, as well as some modules who haven't yet found a home.

Please see the project wiki page: <http://haskell.org/haskellwiki/TypeCompose>

Copyright 2007-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.8-TypeCompose

(define-public haskell-8.8-abstract-deque
  (package
    (name "haskell-8.8-abstract-deque")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-abstract-deque

(define-public haskell-8.8-alg
  (package
    (name "haskell-8.8-alg")
    (version "0.2.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alg/alg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0764j2njb86qdskck3nvbrh61v99hqdhf8aj9irblm6smdlrv4l3"))))
    (properties `((upstream-name . "alg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ffcn0ahv2jl6191baik5sqsh5mb61n1g4rgkiybd1mspgsmnnwy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-dual)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-util)))
    (home-page "https://hackage.haskell.org/package/alg")
    (synopsis "Algebraic structures")
    (description "")
    (license license:bsd-3)))

haskell-8.8-alg

(define-public haskell-8.8-alsa-core
  (package
    (name "haskell-8.8-alsa-core")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (Exceptions).")
    (description "This package provides access to ALSA infrastructure,
that is needed by both alsa-seq and alsa-pcm.")
    (license license:bsd-3)))

haskell-8.8-alsa-core

(define-public haskell-8.8-ansi-terminal
  (package
    (name "haskell-8.8-ansi-terminal")
    (version "0.10.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal/ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z5m6ljmdyjyzq0s08rjjdzdj1ry4fz2ni7xlxd86addvwr2wbps"))))
    (properties `((upstream-name . "ansi-terminal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)))
    (home-page "https://github.com/feuerbach/ansi-terminal")
    (synopsis "Simple ANSI terminal support, with Windows compatibility")
    (description "ANSI terminal support for Haskell: allows cursor movement,
screen clearing, color output, showing or hiding the
cursor, and changing the title. Works on UNIX and Windows.")
    (license license:bsd-3)))

haskell-8.8-ansi-terminal

(define-public haskell-8.8-ascii-char
  (package
    (name "haskell-8.8-ascii-char")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-char/ascii-char-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pglcppji9irbz0fjc6hb1fv7qjbjcii6k4qdv389l7kbb77w318"))))
    (properties `((upstream-name . "ascii-char") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "A Char type representing an ASCII character")
    (description
     "This package defines a @@Char@@ type that has 128 constructors, one for each ASCII character.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii-char

(define-public haskell-8.8-async
  (package
    (name "haskell-8.8-async")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/async/async-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zxvfcyy4sg8lmzphi5dgnavksj5pav6rbvd5kc48lf4hanb2jjb"))))
    (properties `((upstream-name . "async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bench")
       #:cabal-revision
       ("1" "1kg9xmby0wkx31998h2r43yr8bl1aixk6025zqigz9vdhmkc2y51")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/simonmar/async")
    (synopsis "Run IO operations asynchronously and wait for their results")
    (description "This package provides a higher-level interface over
threads, in which an @@Async a@@ is a concurrent
thread that will eventually deliver a value of
type @@a@@.  The package provides ways to create
@@Async@@ computations, wait for their results, and
cancel them.

Using @@Async@@ is safer than using threads in two
ways:

* When waiting for a thread to return a result,
if the thread dies with an exception then the
caller must either re-throw the exception
('wait') or handle it ('waitCatch'); the
exception cannot be ignored.

* The API makes it possible to build a tree of
threads that are automatically killed when
their parent dies (see 'withAsync').")
    (license license:bsd-3)))

haskell-8.8-async

(define-public haskell-8.8-atomic-primops
  (package
    (name "haskell-8.8-atomic-primops")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-primops/atomic-primops-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gidqyk913vhcz3q4vnpadx3vkkrwb66rqhsxvdba8g2p5z63a12"))))
    (properties `((upstream-name . "atomic-primops") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
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

haskell-8.8-atomic-primops

(define-public haskell-8.8-binary-list
  (package
    (name "haskell-8.8-binary-list")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-phantom-state)))
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

haskell-8.8-binary-list

(define-public haskell-8.8-bindings-GLFW
  (package
    (name "haskell-8.8-bindings-GLFW")
    (version "3.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bindings-GLFW/bindings-GLFW-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0frvqybvy6bk79drhdmv4m754g4db3ys63ib8kw6aw5d3bmhjdbw"))))
    (properties `((upstream-name . "bindings-GLFW") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-glfw" "-fmacosxusechdir" "-fmacosxusemenubar" "-fmacosxuseretina" "-fx" "-f-wayland" "-f-osmesa" "-f-exposenative")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
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

The binding is to GLFW 3.3, released 2019-04-15
(<http://www.glfw.org/Version-3.3-released.html>
<http://www.glfw.org/changelog.html>).

/These bindings are too low-level for normal use./ For higher-level bindings,
see GLFW-b (<http://hackage.haskell.org/package/GLFW-b>).

If you've used GLFW before, you were probably using 2.7.x. There are some
significant differences in 3.x.x. Please see the transition guide
(<http://www.glfw.org/docs/3.3/moving.html>).")
    (license license:bsd-3)))

haskell-8.8-bindings-GLFW

(define-public haskell-8.8-bindings-libzip
  (package
    (name "haskell-8.8-bindings-libzip")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bindings-DSL)
                  (@ (gnu packages compression) libzip)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Low level bindings to libzip.")
    (description
     "This package provides low-level bindings to libzip (v1.0.1) library.
For higher-level interface please use LibZip package:
<http://hackage.haskell.org/package/LibZip>")
    (license license:bsd-3)))

haskell-8.8-bindings-libzip

(define-public haskell-8.8-boolean-normal-forms
  (package
    (name "haskell-8.8-boolean-normal-forms")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boolean-normal-forms/boolean-normal-forms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zsll476c7g5syfz54kwcb4d2chh9q6gh0f42847n3ja1d64gaar"))))
    (properties `((upstream-name . "boolean-normal-forms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-cond)))
    (home-page "https://hackage.haskell.org/package/boolean-normal-forms")
    (synopsis "Boolean normal form: NNF, DNF & CNF")
    (description
     "The provided types that might be useful in symbolic manipulation of propositional logic expressions.")
    (license license:expat)))

haskell-8.8-boolean-normal-forms

(define-public haskell-8.8-broadcast-chan
  (package
    (name "haskell-8.8-broadcast-chan")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/broadcast-chan/broadcast-chan-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01r57v2ghfkv37cwh64zs1lrz1rd7is3pa5k7y8h16ws1ddglirg"))))
    (properties `((upstream-name . "broadcast-chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-sync" "-fthreaded")
       #:cabal-revision
       ("2" "0zpbfdgxs3b7wx2qgvrs5y01z8lzvww2b7bmyrg5cj6p5xznllk1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (home-page "https://github.com/merijn/broadcast-chan")
    (synopsis "Closable, fair, single-wakeup channel type that avoids 0
reader space leaks.")
    (description
     "__WARNING:__ While the code in this library should be fairly stable and
production, the API is something I'm still working on. API changes will
follow the PVP, but __expect__ breaking API changes in future versions!

A closable, fair, single-wakeup channel that avoids the 0 reader space leak
that @@\"Control.Concurrent.Chan\"@@ from base suffers from.

The @@Chan@@ type from @@\"Control.Concurrent.Chan\"@@ consists of both a read
and write end combined into a single value. This means there is always at
least 1 read end for a @@Chan@@, which keeps any values written to it alive.
This is a problem for applications/libraries that want to have a channel
that can have zero listeners.

Suppose we have an library that produces events and we want to let users
register to receive events. If we use a channel and write all events to it,
we would like to drop and garbage collect any events that take place when
there are 0 listeners. The always present read end of @@Chan@@ from base
makes this impossible. We end up with a @@Chan@@ that forever accumulates
more and more events that will never get removed, resulting in a memory
leak.

@@\"BroadcastChan\"@@ splits channels into separate read and write ends. Any
message written to a a channel with no existing read end is immediately
dropped so it can be garbage collected. Once a read end is created, all
messages written to the channel will be accessible to that read end.

Once all read ends for a channel have disappeared and been garbage
collected, the channel will return to dropping messages as soon as they are
written.

__Why should I use \"BroadcastChan\" over \"Control.Concurrent.Chan\"?__

* @@\"BroadcastChan\"@@ is closable,

* @@\"BroadcastChan\"@@ has no 0 reader space leak,

* @@\"BroadcastChan\"@@ has comparable or better performance.

__Why should I use \"BroadcastChan\" over various (closable) STM channels?__

* @@\"BroadcastChan\"@@ is single-wakeup,

* @@\"BroadcastChan\"@@ is fair,

* @@\"BroadcastChan\"@@ performs better under contention.")
    (license license:bsd-3)))

haskell-8.8-broadcast-chan

(define-public haskell-8.8-btrfs
  (package
    (name "haskell-8.8-btrfs")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/btrfs/btrfs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1h56yb4a3i1c452splxj06c8harrcws2pg86rx7jz6b804ncrzr2"))))
    (properties `((upstream-name . "btrfs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
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

haskell-8.8-btrfs

(define-public haskell-8.8-bytestring-strict-builder
  (package
    (name "haskell-8.8-bytestring-strict-builder")
    (version "0.4.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-strict-builder/bytestring-strict-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p4yhi2x8k2jn6xxq15r38m10h4dkxkryzqzgnw4sq47270p5k5d"))))
    (properties `((upstream-name . "bytestring-strict-builder")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0i3gnzb2dlhxyjx5zbbgycf9l285amwj98s6drvq2hih21z4d3h6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
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

haskell-8.8-bytestring-strict-builder

(define-public haskell-8.8-bytestring-tree-builder
  (package
    (name "haskell-8.8-bytestring-tree-builder")
    (version "0.2.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-tree-builder/bytestring-tree-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "193nryzgbjij6md84i2w2jhpsgsqz94g71744wj45qr2gzivyxfb"))))
    (properties `((upstream-name . "bytestring-tree-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)))
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

haskell-8.8-bytestring-tree-builder

(define-public haskell-8.8-case-insensitive
  (package
    (name "haskell-8.8-case-insensitive")
    (version "1.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/case-insensitive/case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01p40hfjyldfds5jg6vlvvn3ihs4ki63xn6fh8yzngaz1izc2v99"))))
    (properties `((upstream-name . "case-insensitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/basvandijk/case-insensitive")
    (synopsis "Case insensitive string comparison")
    (description "The module @@Data.CaseInsensitive@@ provides the 'CI' type
constructor which can be parameterised by a string-like
type like: 'String', 'ByteString', 'Text',
etc.. Comparisons of values of the resulting type will be
insensitive to cases.")
    (license license:bsd-3)))

haskell-8.8-case-insensitive

(define-public haskell-8.8-cereal-text
  (package
    (name "haskell-8.8-cereal-text")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-text/cereal-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1ml0z5rksvrhz15i9afld7bybgylqmy5nmvik3p98zd3s1ayiw"))))
    (properties `((upstream-name . "cereal-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)))
    (home-page "https://github.com/ulikoehler/cereal-text")
    (synopsis "Data.Text instances for the cereal serialization library")
    (description "Data.Text instances for the cereal serialization library.

Provides instances for Text and lazy Text.
Uses UTF-8 encoding for serialization.

Use
@@import Data.Serialize.Text ()@@
to import instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-cereal-text

(define-public haskell-8.8-clumpiness
  (package
    (name "haskell-8.8-clumpiness")
    (version "0.17.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clumpiness/clumpiness-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h1n349sq2lpikpvzzarz74200b8k7dkdjpp4rpkx79xdlfc58pc"))))
    (properties `((upstream-name . "clumpiness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tree-fun)))
    (home-page "https://hackage.haskell.org/package/clumpiness")
    (synopsis "Calculate the clumpiness of leaf properties in a tree")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-clumpiness

(define-public haskell-8.8-code-page
  (package
    (name "haskell-8.8-code-page")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/code-page/code-page-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i0qbrbhvrwkbikqb7hh7yxaipaavwzvyrw211d0vkz99f62mqxz"))))
    (properties `((upstream-name . "code-page") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14hvch0h2nzp2hkazdkw7kp1yx0qj518sv39q9cb4wv6wxca94ii")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
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

haskell-8.8-code-page

(define-public haskell-8.8-codec-beam
  (package
    (name "haskell-8.8-codec-beam")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-8.8-codec-beam

(define-public haskell-8.8-concurrent-extra
  (package
    (name "haskell-8.8-concurrent-extra")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unbounded-delays)))
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

haskell-8.8-concurrent-extra

(define-public haskell-8.8-concurrent-supply
  (package
    (name "haskell-8.8-concurrent-supply")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-supply/concurrent-supply-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07zjczcgxwpi8imp0w86vrb78w067b322q5d7zlqla91sbf2gy6c"))))
    (properties `((upstream-name . "concurrent-supply") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-properties")
       #:cabal-revision
       ("1" "1yzrr68k81w3jmrarx3y6z7ymzaaxwab509pp6kkd2fjia3g8wwk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "http://github.com/ekmett/concurrent-supply/")
    (synopsis "A fast concurrent unique identifier supply with a pure API")
    (description
     "A fast supply of concurrent unique identifiers suitable for use
within a single process. Once the initial 'Supply' has been initialized,
the remainder of the API is pure. See \"Control.Concurrent.Supply\" for
details.")
    (license license:bsd-3)))

haskell-8.8-concurrent-supply

(define-public haskell-8.8-contravariant
  (package
    (name "haskell-8.8-contravariant")
    (version "1.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant/contravariant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1haxsq7jl95gzmbjdr2pgza9b7j0j3f26wwkf494gphz6c76yls4"))))
    (properties `((upstream-name . "contravariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftagged" "-fsemigroups" "-fstatevar")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)))
    (home-page "http://github.com/ekmett/contravariant/")
    (synopsis "Contravariant functors")
    (description "Contravariant functors.")
    (license license:bsd-3)))

haskell-8.8-contravariant

(define-public haskell-8.8-cpphs
  (package
    (name "haskell-8.8-cpphs")
    (version "1.20.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpphs/cpphs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17wi7fma2qaqdm1hwgaam3fd140v9bpa8ky0wg708h1pqc5v2nbz"))))
    (properties `((upstream-name . "cpphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("1" "1f8jzs8zdh4wwbcq8fy6qqxkv75ypnvsm4yzw49wpr3b9vpnzlha")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-polyparse)))
    (home-page "http://projects.haskell.org/cpphs/")
    (synopsis "A liberalised re-implementation of cpp, the C pre-processor.")
    (description
     "Cpphs is a re-implementation of the C pre-processor that is both
more compatible with Haskell, and itself written in Haskell so
that it can be distributed with compilers.

This version of the C pre-processor is pretty-much
feature-complete and compatible with traditional (K&R)
pre-processors.  Additional features include: a plain-text mode;
an option to unlit literate code files; and an option to turn
off macro-expansion.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-cpphs

(define-public haskell-8.8-crackNum
  (package
    (name "haskell-8.8-crackNum")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-FloatingHex)))
    (home-page "http://github.com/LeventErkok/CrackNum")
    (synopsis "Crack various integer, floating-point data formats")
    (description
     "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.

For details, please see: <http://github.com/LeventErkok/crackNum/>")
    (license license:bsd-3)))

haskell-8.8-crackNum

(define-public haskell-8.8-crypto-api
  (package
    (name "haskell-8.8-crypto-api")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
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

haskell-8.8-crypto-api

(define-public haskell-8.8-crypto-random-api
  (package
    (name "haskell-8.8-crypto-random-api")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)))
    (home-page "http://github.com/vincenthz/hs-crypto-random-api")
    (synopsis "Simple random generators API for cryptography related code")
    (description "Simple random generators API for cryptography related code")
    (license license:bsd-3)))

haskell-8.8-crypto-random-api

(define-public haskell-8.8-currency
  (package
    (name "haskell-8.8-currency")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/currency/currency-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yj1x7zmkmwr9az55i9gvf84m7i3b4qi80p8qk9hszzlv7rigmdw"))))
    (properties `((upstream-name . "currency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-iso3166-country-codes)))
    (home-page "https://github.com/singpolyma/currency-haskell")
    (synopsis "Types representing standard and non-standard currencies")
    (description
     "This package provides two types for representing currencies, one that
can only represent ISO4217 currencies, and one that can also represent
nonstandard currencies.

An IsString instance is provided for convenience on the general type.

Instances of Eq, Ord, and, Hashable are provided for use as keys.

The Enum instance provides a mapping to/from ISO4217 numeric codes for
currencies that have such a code.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-currency

(define-public haskell-8.8-data-accessor-mtl
  (package
    (name "haskell-8.8-data-accessor-mtl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in mtl State monad class")
    (description "Use Accessor to access state in mtl State monad class")
    (license license:bsd-3)))

haskell-8.8-data-accessor-mtl

(define-public haskell-8.8-data-accessor-transformers
  (package
    (name "haskell-8.8-data-accessor-transformers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in transformers State monad")
    (description "Use Accessor to access state in transformers State monad")
    (license license:bsd-3)))

haskell-8.8-data-accessor-transformers

(define-public haskell-8.8-data-default-instances-containers
  (package
    (name "haskell-8.8-data-default-instances-containers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-containers")
    (synopsis "Default instances for types in containers")
    (description "")
    (license license:bsd-3)))

haskell-8.8-data-default-instances-containers

(define-public haskell-8.8-data-default-instances-old-locale
  (package
    (name "haskell-8.8-data-default-instances-old-locale")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-old-locale")
    (synopsis "Default instances for types in old-locale")
    (description "")
    (license license:bsd-3)))

haskell-8.8-data-default-instances-old-locale

(define-public haskell-8.8-data-memocombinators
  (package
    (name "haskell-8.8-data-memocombinators")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-inttrie)))
    (home-page "http://github.com/luqui/data-memocombinators")
    (synopsis "Combinators for building memo tables.")
    (description "Combinators for building memo tables.")
    (license license:bsd-3)))

haskell-8.8-data-memocombinators

(define-public haskell-8.8-data-ref
  (package
    (name "haskell-8.8-data-ref")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-ref/data-ref-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xqgzcpp9b0y2w5h1nln529dizdplhpfl41vxvbhxxcdkng3j53v"))))
    (properties `((upstream-name . "data-ref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-accessor)))
    (home-page "http://wiki.haskell.org/Mutable_variable")
    (synopsis "Unify STRef and IORef in plain Haskell 98")
    (description
     "This package provides a unique interface to both STRef and IORef.
The advantage is that it is plain Haskell 98,
the disadvantage is that we cannot use STRef and IORef as they are.

Our approach works with Haskell 98 single parameter type classes
because we use an explicit dictionary,
and we do not pass the references around but their accessors.

Similar packages: @@reference@@, @@ref-mtl@@, @@ref-fd@@, @@ref-tf@@.")
    (license license:bsd-3)))

haskell-8.8-data-ref

(define-public haskell-8.8-debug-trace-var
  (package
    (name "haskell-8.8-debug-trace-var")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unicode-show)))
    (home-page "https://github.com/ncaq/debug-trace-var#readme")
    (synopsis "You do not have to write variable names twice in Debug.Trace")
    (description
     "Please see the README on GitHub at <https://github.com/ncaq/debug-trace-var#readme>")
    (license license:expat)))

haskell-8.8-debug-trace-var

(define-public haskell-8.8-disk-free-space
  (package
    (name "haskell-8.8-disk-free-space")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://github.com/redneb/disk-free-space")
    (synopsis "Retrieve information about disk space usage")
    (description
     "A cross-platform library for retrieving information about disk space usage.")
    (license license:bsd-3)))

haskell-8.8-disk-free-space

(define-public haskell-8.8-do-notation
  (package
    (name "haskell-8.8-do-notation")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/do-notation/do-notation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xbvphpwbzns4567zbk8baq0zd068dcprp59cjzhbplf9cypiwy9"))))
    (properties `((upstream-name . "do-notation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-indexed)))
    (home-page "https://github.com/isovector/do-notation#readme")
    (synopsis
     "Generalize do-notation to work on monads and indexed monads simultaneously.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/do-notation#readme>")
    (license license:bsd-3)))

haskell-8.8-do-notation

(define-public haskell-8.8-dyre
  (package
    (name "haskell-8.8-dyre")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-executable-path)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-paths)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-io-storage)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xdg-basedir)))
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

haskell-8.8-dyre

(define-public haskell-8.8-edit-distance
  (package
    (name "haskell-8.8-edit-distance")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "http://github.com/phadej/edit-distance")
    (synopsis "Levenshtein and restricted Damerau-Levenshtein edit distances")
    (description
     "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.")
    (license license:bsd-3)))

haskell-8.8-edit-distance

(define-public haskell-8.8-elm-core-sources
  (package
    (name "haskell-8.8-elm-core-sources")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)))
    (home-page "http://github.com/JoeyEremondi/elm-build-lib")
    (synopsis "Source files for the Elm runtime and standard libraries")
    (description
     "Embeds the  standard libraries and runtime files of the Elm language as Haskell strings,
so that they can be used for compilation and served in a Haskell web server.
For more information on the Elm language, see http://elm-lang.org.")
    (license license:bsd-3)))

haskell-8.8-elm-core-sources

(define-public haskell-8.8-enum-subset-generate
  (package
    (name "haskell-8.8-enum-subset-generate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)))
    (home-page "https://github.com/0xd34df00d/enum-subset-generate#readme")
    (synopsis
     "Generate an ADT being a subset of another ADT, and the corresponding mappings.")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/enum-subset-generate#readme>")
    (license license:bsd-3)))

haskell-8.8-enum-subset-generate

(define-public haskell-8.8-enummapset
  (package
    (name "haskell-8.8-enummapset")
    (version "0.6.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enummapset/enummapset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sxbg053z9v68l9mw906npnm0864jn17rp28bnv4h6ifxyjckb2y"))))
    (properties `((upstream-name . "enummapset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/Mikolaj/enummapset")
    (synopsis "IntMap and IntSet with Enum keys/elements.")
    (description
     "This package contains simple wrappers around 'Data.IntMap' and
'Data.IntSet' with 'Enum' keys and elements respectively.
Especially useful for 'Int's wrapped with `newtype`.")
    (license license:bsd-3)))

haskell-8.8-enummapset

(define-public haskell-8.8-exact-pi
  (package
    (name "haskell-8.8-exact-pi")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exact-pi/exact-pi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q0qrkmpff835m3zz3w60i1y4sqicnzqb6vqmk13cjh4ign5d0ax"))))
    (properties `((upstream-name . "exact-pi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "11g9w0rcndi8c28hykzipcfcxffxgdys21di1fdz4n5p05f3ldqa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-numtype-dk)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-8.8-exact-pi

(define-public haskell-8.8-exception-transformers
  (package
    (name "haskell-8.8-exception-transformers")
    (version "0.4.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-transformers/exception-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "033z8mhczwf59lh59q3z546gkcsy0bzg98r1qhm3fiq7j11hgd95"))))
    (properties `((upstream-name . "exception-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/exception-transformers")
    (synopsis "Type classes and monads for unchecked extensible exceptions.")
    (description "This package provides type classes, a monad and a monad
transformer that support unchecked extensible exceptions as
well as asynchronous exceptions. It is compatible with
the transformers package.")
    (license license:bsd-3)))

haskell-8.8-exception-transformers

(define-public haskell-8.8-exp-pairs
  (package
    (name "haskell-8.8-exp-pairs")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exp-pairs/exp-pairs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ry9k89xfy2493j7yypyiqcj0v7h5x9w8gl60dy28w4597yinisp"))))
    (properties `((upstream-name . "exp-pairs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1fkllbgsygzm1lw3g3a9l8fg8ap74bx0x7ja8yx3lbrjjsaqh8pa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)))
    (home-page "https://github.com/Bodigrim/exp-pairs")
    (synopsis "Linear programming over exponent pairs")
    (description
     "Package implements an algorithm to minimize rational objective function over the set of exponent pairs")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-exp-pairs

(define-public haskell-8.8-explicit-exception
  (package
    (name "haskell-8.8-explicit-exception")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/explicit-exception/explicit-exception-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g7q01zqxv9aj4pqfbv4r8b2zndkilispigvmlvxnlapyzb6gm00"))))
    (properties `((upstream-name . "explicit-exception") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildtests" "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
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

haskell-8.8-explicit-exception

(define-public haskell-8.8-express
  (package
    (name "haskell-8.8-express")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/express/express-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09g7i6x553gv5jkhbn5ffsrxznx8g4b3fcn1gibwyh380pbss8x1"))))
    (properties `((upstream-name . "express") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)))
    (home-page "https://github.com/rudymatela/express#readme")
    (synopsis
     "Dynamically-typed expressions involving applications and variables.")
    (description
     "Express is a library for manipulating dynamically typed Haskell expressions.
It's like @@ Data.Dynamic @@ but with support for encoding applications and
variables.

It provides the @@ Expr @@ type and over a hundred functions for
building, evaluating, comparing, folding, canonicalizing and matching
@@ Expr @@s.  See the README and Haddock documentation for more details.")
    (license license:bsd-3)))

haskell-8.8-express

(define-public haskell-8.8-file-path-th
  (package
    (name "haskell-8.8-file-path-th")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-path-th/file-path-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15v2jlif4qrzl3xqkicqd71rx7n9916zip44yk0j7gsnyrwrr7p5"))))
    (properties `((upstream-name . "file-path-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v1hfgw2sqscbxlzidqzdljz92mihydk765370sq6hmjiw98a5fk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)))
    (home-page "https://github.com/Simspace/file-path-th#readme")
    (synopsis "Template Haskell utilities for filepaths.")
    (description
     "Template Haskell utilities for filepaths. This package has utilities for embedding relative filepaths using Template Haskell.")
    (license license:expat)))

haskell-8.8-file-path-th

(define-public haskell-8.8-filemanip
  (package
    (name "haskell-8.8-filemanip")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1l53qqlh9w7572n5dxk8rq0p8vsvg6m1afbak6xzdx0kgg8j6y8a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)))
    (home-page "https://github.com/bos/filemanip")
    (synopsis "Expressive file and directory manipulation for Haskell.")
    (description "A Haskell library for working with files and directories.
Includes code for pattern matching, finding files,
modifying file contents, and more.")
    (license license:bsd-3)))

haskell-8.8-filemanip

(define-public haskell-8.8-fitspec
  (package
    (name "haskell-8.8-fitspec")
    (version "0.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fitspec/fitspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01xfchs98xy5436kchzysnvwgm00s2srsn5xyxx3r04pzzb5cbd9"))))
    (properties `((upstream-name . "fitspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)))
    (home-page "https://github.com/rudymatela/fitspec#readme")
    (synopsis "refining property sets for testing Haskell programs")
    (description
     "FitSpec provides automated assistance in the task of refining test properties
for Haskell functions.

FitSpec tests mutant variations of functions under test against a given
property set, recording any surviving mutants that pass all tests. FitSpec
then reports:

* surviving mutants: indicating incompleteness of properties,
prompting the user to amend a property or to add a new one;

* conjectures: indicating redundancy in the property set,
prompting the user to remove properties so to reduce the cost of testing.")
    (license license:bsd-3)))

haskell-8.8-fitspec

(define-public haskell-8.8-foldable1
  (package
    (name "haskell-8.8-foldable1")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-util)))
    (home-page "https://hackage.haskell.org/package/foldable1")
    (synopsis "Foldable types with at least 1 element")
    (description "")
    (license license:bsd-3)))

haskell-8.8-foldable1

(define-public haskell-8.8-foundation
  (package
    (name "haskell-8.8-foundation")
    (version "0.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/foundation/foundation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q6kx57ygmznlpf8n499hid4x6mj3180paijx0a8dgi9hh7man61"))))
    (properties `((upstream-name . "foundation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-experimental" "-f-bench-all" "-f-minimal-deps" "-f-bounds-check" "-f-doctest" "-f-linktest")
       #:cabal-revision
       ("2" "174b754jxhrmkwi53iqip2rird05m66z2x70klxd0m5mzzrxk9qy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-basement)))
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

haskell-8.8-foundation

(define-public haskell-8.8-freetype2
  (package
    (name "haskell-8.8-freetype2")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freetype2/freetype2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fdzhm6lcb6bxgza5z41925a75xdi19lwqw6vas1s2y130x3zfam"))))
    (properties `((upstream-name . "freetype2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://hackage.haskell.org/package/freetype2")
    (synopsis "Haskell bindings for FreeType 2 library")
    (description
     "Mostly complete and mostly raw bindings to the [FreeType2](https://www.freetype.org/) library.

Please check the README for information on how these
bindings operate.")
    (license license:bsd-3)))

haskell-8.8-freetype2

(define-public haskell-8.8-function-builder
  (package
    (name "haskell-8.8-function-builder")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/function-builder/function-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pzfyn0aah38g90z1bxdld5b7ahb3x9ikvvxnvyfz11gcba62bck"))))
    (properties `((upstream-name . "function-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/sheyll/function-builder#readme")
    (synopsis "Create poly variadic functions for monoidal results")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-function-builder

(define-public haskell-8.8-gdp
  (package
    (name "haskell-8.8-gdp")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gdp/gdp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0pkx6j557p9rm39pr6pw8p2j3nz8s4q839n6y9p6c31dnlz0zxx0"))))
    (properties `((upstream-name . "gdp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-lawful)))
    (home-page "https://github.com/matt-noonan/gdp#readme")
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

haskell-8.8-gdp

(define-public haskell-8.8-generic-lens-core
  (package
    (name "haskell-8.8-generic-lens-core")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens-core/generic-lens-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h7fjh3zk8lkkmdj3w3wg72gbmnr8wz9wfm58ryvx0036l284qji"))))
    (properties `((upstream-name . "generic-lens-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-indexed-profunctors)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

This package is the shared internal logic of the
@@<https://hackage.haskell.org/package/generic-lens generic-lens>@@
and
@@<https://hackage.haskell.org/package/generic-optics generic-optics>@@
libraries.")
    (license license:bsd-3)))

haskell-8.8-generic-lens-core

(define-public haskell-8.8-generics-sop
  (package
    (name "haskell-8.8-generics-sop")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop/generics-sop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g0z0k5bnw3whfj3qswzhadrhg85jfn491s30cgai0ijfjm5gipa"))))
    (properties `((upstream-name . "generics-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1m61bb6k96ybsrc3hpxn0fdspq9mbkyfklx7vfnd55mava4ahzp2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-sop-core)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/generics-sop")
    (synopsis "Generic Programming using True Sums of Products")
    (description
     "A library to support the definition of generic functions.
Datatypes are viewed in a uniform, structured way:
the choice between constructors is represented using an n-ary
sum, and the arguments of each constructor are represented using
an n-ary product.

The module \"Generics.SOP\" is the main module of this library and contains
more detailed documentation.

Since version 0.4.0.0, this package is now based on
@@<https://hackage.haskell.org/package/sop-core sop-core>@@. The core package
contains all the functionality of n-ary sums and products, whereas this
package provides the datatype-generic programming support on top.

Examples of using this library are provided by the following
packages:

* @@<https://hackage.haskell.org/package/basic-sop basic-sop>@@ basic examples,

* @@<https://hackage.haskell.org/package/pretty-sop pretty-sop>@@ generic pretty printing,

* @@<https://hackage.haskell.org/package/lens-sop lens-sop>@@ generically computed lenses,

* @@<https://hackage.haskell.org/package/json-sop json-sop>@@ generic JSON conversions.

A detailed description of the ideas behind this library is provided by
the paper:

* Edsko de Vries and Andres Löh.
<http://www.andres-loeh.de/TrueSumsOfProducts True Sums of Products>.
Workshop on Generic Programming (WGP) 2014.
")
    (license license:bsd-3)))

haskell-8.8-generics-sop

(define-public haskell-8.8-ghc-lib-parser
  (package
    (name "haskell-8.8-ghc-lib-parser")
    (version "8.10.3.20201220")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser/ghc-lib-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k68w2v5x68sxqcd7xm94khmr4gqxbj4jdsaac3m1wcy66bjriir"))))
    (properties `((upstream-name . "ghc-lib-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-alex)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-8.8-ghc-lib-parser

(define-public haskell-8.8-gitrev
  (package
    (name "haskell-8.8-gitrev")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)))
    (home-page "https://github.com/acfoltzer/gitrev")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Some handy Template Haskell splices for including the current git hash and branch in the code of your project. Useful for including in panic messages, @@--version@@ output, or diagnostic info for more informative bug reports.")
    (license license:bsd-3)))

haskell-8.8-gitrev

(define-public haskell-8.8-graphs
  (package
    (name "haskell-8.8-graphs")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
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

haskell-8.8-graphs

(define-public haskell-8.8-hashable-time
  (package
    (name "haskell-8.8-hashable-time")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable-time/hashable-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7y4plqqwy5286hhx2fygn12h8lqk0y047b597sbdckskxzfqgs"))))
    (properties `((upstream-name . "hashable-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("3" "1dr7ak803ngrhpv43dy25jm18gfzn02gzd3hm31dzcjv3mxsmbrk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://hackage.haskell.org/package/hashable-time")
    (synopsis "Hashable instances for Data.Time")
    (description "Hashable instances for types in Data.Time")
    (license license:bsd-3)))

haskell-8.8-hashable-time

(define-public haskell-8.8-hashmap
  (package
    (name "haskell-8.8-hashmap")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashmap/hashmap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ma7svf9nanlfbj9nkk6bzk4m98i7xd71xrdc3a5dmmws5yba1nw"))))
    (properties `((upstream-name . "hashmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-oldcontainers")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/foxik/hashmap")
    (synopsis "Persistent containers Map and Set based on hashing.")
    (description
     "An implementation of persistent 'Map' and 'Set' containers
based on hashing. The implementation is build on
top of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',
with very similar API. It uses 'Hashable' class from the
@@hashable@@ package for hashing.

This package can be used as a drop-in replacement for
'Data.Map' and 'Data.Set' modules.

The @@'Map' key value@@ is an 'Data.IntMap.IntMap'
indexed by the hash value, containing either one ('key', 'value')
or a @@'Data.Map.Map' key value@@ for all keys with the same hash value.

The @@'Set' elem@@ is an 'Data.IntMap.IntMap' indexed by
the hash value, containing either one 'elem' or @@'Data.Set.Set' elem@@ for
all elements with the same hash value.")
    (license license:bsd-3)))

haskell-8.8-hashmap

(define-public haskell-8.8-haskell-gi-base
  (package
    (name "haskell-8.8-haskell-gi-base")
    (version "0.23.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi-base/haskell-gi-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f22d4pvmyy52w9hqa36b6psw34j562rayqgk052ng1ax9yvwzn0"))))
    (properties `((upstream-name . "haskell-gi-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/haskell-gi/haskell-gi-base")
    (synopsis "Foundation for libraries generated by haskell-gi")
    (description "Foundation for libraries generated by haskell-gi")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-haskell-gi-base

(define-public haskell-8.8-haskell-src-exts
  (package
    (name "haskell-8.8-haskell-src-exts")
    (version "1.23.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts/haskell-src-exts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01bcrxs9af4yqpclw43aijmsd1g19qhyzb47blz7vzwz2r3k11b7"))))
    (properties `((upstream-name . "haskell-src-exts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)))
    (home-page "https://github.com/haskell-suite/haskell-src-exts")
    (synopsis
     "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer")
    (description
     "Haskell-Source with Extensions (HSE, haskell-src-exts)
is a standalone parser for Haskell. In addition to
standard Haskell, all extensions implemented in GHC are supported.

Apart from these standard extensions,
it also handles regular patterns as per the HaRP extension
as well as HSX-style embedded XML syntax.")
    (license license:bsd-3)))

haskell-8.8-haskell-src-exts

(define-public haskell-8.8-hexpat
  (package
    (name "haskell-8.8-hexpat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-List)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
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

haskell-8.8-hexpat

(define-public haskell-8.8-hfsevents
  (package
    (name "haskell-8.8-hfsevents")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hfsevents/hfsevents-" version
                    ".tar.gz"))
              (sha256
               (base32
                "019zbnvfd866ch49gax0c1c93zv92142saim1hrgypz5lprz7hvl"))))
    (properties `((upstream-name . "hfsevents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/luite/hfsevents")
    (synopsis "File/folder watching for OS X")
    (description "")
    (license license:bsd-3)))

haskell-8.8-hfsevents

(define-public haskell-8.8-hidapi
  (package
    (name "haskell-8.8-hidapi")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hidapi/hidapi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pjrrm8rpcwwsc5ck36p0zyk5rr5jri8c79436whk8xxpnyf09ip"))))
    (properties `((upstream-name . "hidapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-deepseq-generics)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) eudev)))
    (home-page "https://github.com/vahokif/haskell-hidapi")
    (synopsis "Haskell bindings to HIDAPI")
    (description
     "Haskell bindings to the HIDAPI library (<http://www.signal11.us/oss/hidapi/>).

Note you need need to have the corresponding low-level
library installed for your OS, e.g. libudev-dev on Debian/Ubuntu,
or just udev on distributions that don't split dev libraries.")
    (license license:expat)))

haskell-8.8-hidapi

(define-public haskell-8.8-hlibgit2
  (package
    (name "haskell-8.8-hlibgit2")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages version-control) git)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-8.8-hlibgit2

(define-public haskell-8.8-hs-GeoIP
  (package
    (name "haskell-8.8-hs-GeoIP")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
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

haskell-8.8-hs-GeoIP

(define-public haskell-8.8-hs-functors
  (package
    (name "haskell-8.8-hs-functors")
    (version "0.1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-functors/hs-functors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cigaggilr05pgizj11g5c40ln38zb5q8p0igliamkhx7fz3axis"))))
    (properties `((upstream-name . "hs-functors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-dual)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://hackage.haskell.org/package/hs-functors")
    (synopsis "Functors from products of Haskell and its dual to Haskell")
    (description "")
    (license license:bsd-3)))

haskell-8.8-hs-functors

(define-public haskell-8.8-hsyslog
  (package
    (name "haskell-8.8-hsyslog")
    (version "5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsyslog/hsyslog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kkypn0dd92aqv8dr112bhkr9k9r9mchnyyvy41kvhj2zg447v1y"))))
    (properties `((upstream-name . "hsyslog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "0k1j46nk3z64zw4bqmvw5lgy16ih200m66rv4b6ygjqv7nglqq0b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://github.com/peti/hsyslog")
    (synopsis "FFI interface to syslog(3) from POSIX.1-2001")
    (description
     "A Haskell interface to @@syslog(3)@@ as specified in
<http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.
The entire public API lives in \"System.Posix.Syslog\". There is a set of exposed
modules available underneath that one, which contain various implementation details
that may be useful to other developers who want to implement syslog-related
functionality. /Users/ of @@syslog@@, however, do not need them.

An example program that demonstrates how to use this library is available in the
<https://github.com/peti/hsyslog/blob/master/example/Main.hs examples> directory of
this package.")
    (license license:bsd-3)))

haskell-8.8-hsyslog

(define-public haskell-8.8-hxt-unicode
  (package
    (name "haskell-8.8-hxt-unicode")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hxt-charproperties)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis
     "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings")
    (description
     "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,
used in the Haskell XML Toolbox.
ISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding
is done with lazy functions, errors may be detected or ignored.")
    (license license:expat)))

haskell-8.8-hxt-unicode

(define-public haskell-8.8-include-file
  (package
    (name "haskell-8.8-include-file")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/include-file/include-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vk6l5gpd4nv2bw47vlwnxb42vgfigx6672aw2xqbvf55d4967sv"))))
    (properties `((upstream-name . "include-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "https://hackage.haskell.org/package/include-file")
    (synopsis "Inclusion of files in executables at compile-time.")
    (description "Inclusion of files in source code via Template Haskell.

When distributing executables, sometimes it is required
to attach some other resources in files. Using this library
(together with the TemplateHaskell extension) you avoid this
problem by including those files inside the executable at
compile time.")
    (license license:bsd-3)))

haskell-8.8-include-file

(define-public haskell-8.8-integration
  (package
    (name "haskell-8.8-integration")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)))
    (home-page "https://github.com/ekmett/integration")
    (synopsis "Fast robust numeric integration via tanh-sinh quadrature")
    (description "Fast robust numeric integration via tanh-sinh quadrature")
    (license license:bsd-3)))

haskell-8.8-integration

(define-public haskell-8.8-kind-generics
  (package
    (name "haskell-8.8-kind-generics")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics/kind-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ldfi5rvs3mxlbpy0nfyx8mq58xjkk76c13fmvmgqcpgb8gvmrnx"))))
    (properties `((upstream-name . "kind-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-kind-apply)))
    (home-page "https://hackage.haskell.org/package/kind-generics")
    (synopsis
     "Generic programming in GHC style for arbitrary kinds and GADTs.")
    (description
     "This package provides functionality to extend the data type generic programming functionality in GHC to classes of arbitrary kind, and constructors featuring constraints and existentials, as usually found in GADTs.")
    (license license:bsd-3)))

haskell-8.8-kind-generics

(define-public haskell-8.8-lazyio
  (package
    (name "haskell-8.8-lazyio")
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
       (list "-fsplitbase" "-f-buildtests")
       #:cabal-revision
       ("1" "1kbvbdzh3n6ci51nc2sfp0i2mc203a5cn5xraafiabk3awi5b9x7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unsafe)))
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

haskell-8.8-lazyio

(define-public haskell-8.8-leancheck-instances
  (package
    (name "haskell-8.8-leancheck-instances")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leancheck-instances/leancheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l1hwkhxgmy7ssqhrbi8xngb99zhdfnchzq4668gi35a932a1id7"))))
    (properties `((upstream-name . "leancheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-nats)))
    (home-page "https://github.com/rudymatela/leancheck-instances#readme")
    (synopsis "Common LeanCheck instances")
    (description
     "Listable instances for types provided by the Haskell Platform.

The current objective is to include all types supported by quickcheck-instances:
<https://hackage.haskell.org/package/quickcheck-instances>")
    (license license:bsd-3)))

haskell-8.8-leancheck-instances

(define-public haskell-8.8-lens-family
  (package
    (name "haskell-8.8-lens-family")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-family/lens-family-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nq3dwkrjyqafbv4gvwwgz6ih8y4x9bks11jhljh43q3qnjz54v7"))))
    (properties `((upstream-name . "lens-family") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nf0zxhwqkg54mc3kimnqcvg9b732rn35r1rjs1fzf0vwssla3zw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-lens-family-core)))
    (home-page "https://hackage.haskell.org/package/lens-family")
    (synopsis "Lens Families")
    (description
     "This package provides first class functional references in Van Laarhoven style supporting the following optics:

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

* Reviewers (review)")
    (license license:bsd-3)))

haskell-8.8-lens-family

(define-public haskell-8.8-libgraph
  (package
    (name "haskell-8.8-libgraph")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monads-tf)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-union-find)))
    (home-page "http://maartenfaddegon.nl")
    (synopsis "Store and manipulate data in a graph.")
    (description
     "A graph type, analysis of graphs and manipulation of graphs.")
    (license license:bsd-3)))

haskell-8.8-libgraph

(define-public haskell-8.8-linux-file-extents
  (package
    (name "haskell-8.8-linux-file-extents")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://github.com/redneb/linux-file-extents")
    (synopsis "Retrieve file fragmentation information under Linux")
    (description
     "This package provides a simple wrapper around the Linux FIEMAP ioctl.
It can be used to retrieve the list of all the extents of any given
file, i.e. the area of the disk where the file is actually stored. This is
similar to the @@filefrag@@ command line tool provided by the @@e2fsprogs@@
package.")
    (license license:bsd-3)))

haskell-8.8-linux-file-extents

(define-public haskell-8.8-linux-namespaces
  (package
    (name "haskell-8.8-linux-namespaces")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://github.com/redneb/hs-linux-namespaces")
    (synopsis "Work with linux namespaces: create new or enter existing ones")
    (description
     "This library provides bindings to the @@unshare(2)@@ and @@setns(2)@@ linux
system calls.")
    (license license:bsd-3)))

haskell-8.8-linux-namespaces

(define-public haskell-8.8-lmdb
  (package
    (name "haskell-8.8-lmdb")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
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

haskell-8.8-lmdb

(define-public haskell-8.8-mainland-pretty
  (package
    (name "haskell-8.8-mainland-pretty")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mainland-pretty/mainland-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cifvdpqcb1cvjazgqwaxvl2ga7kap5a6f89yw1xn8y5yw7nz1c8"))))
    (properties `((upstream-name . "mainland-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-srcloc)))
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

haskell-8.8-mainland-pretty

(define-public haskell-8.8-markov-chain
  (package
    (name "haskell-8.8-markov-chain")
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
       #:configure-flags (list "-fsplitbase")
       #:cabal-revision
       ("1" "10qpqdpnkjw72hxkrbxxwwjaf4lxk3shhippwkpn6m5s80fgzlwg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-markov-chain

(define-public haskell-8.8-mathexpr
  (package
    (name "haskell-8.8-mathexpr")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)))
    (home-page "https://github.com/mdibaiee/mathexpr")
    (synopsis
     "Parse and evaluate math expressions with variables and functions")
    (description
     "A simple tool to evaluate math expressions as strings with support for custom functions and operators")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-mathexpr

(define-public haskell-8.8-mersenne-random-pure64
  (package
    (name "haskell-8.8-mersenne-random-pure64")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-mersenne-random-pure64

(define-public haskell-8.8-messagepack
  (package
    (name "haskell-8.8-messagepack")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/messagepack/messagepack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z2xbfqg9x8ymbr0j81br610ja8f0wd2wvvrnjrk222vbp0915ck"))))
    (properties `((upstream-name . "messagepack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "199x0hqa6h6wqysaip1wc7kivc26f3wkb8y4il70mzmz80skmm29")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)))
    (home-page "https://github.com/rodrigosetti/messagepack")
    (synopsis "Serialize instance for Message Pack Object")
    (description "Serialize instance for Message Pack Object")
    (license license:expat)))

haskell-8.8-messagepack

(define-public haskell-8.8-microlens-contra
  (package
    (name "haskell-8.8-microlens-contra")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-contra/microlens-contra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ny9qhvd7rfzdkq4jdcgh4mfia856rsgpdhg8lprfprh6p7lhy5m"))))
    (properties `((upstream-name . "microlens-contra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "True folds and getters for microlens")
    (description
     "This package provides @@Fold@@ and @@Getter@@ that are fully compatible with lens; the downside is that this package depends on contravariant, which in its turn depends on a lot of other packages (but still less than lens).

The difference between @@Fold@@ and @@SimpleFold@@ is that you can use e.g. @@takingWhile@@\\/@@droppingWhile@@ and @@backwards@@ on the former but not on the latter. Most functions from lens that work with @@Fold@@ would work with @@SimpleFold@@ as well, tho.

Starting from GHC 8.6, this package doesn't depend on contravariant anymore.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.8-microlens-contra

(define-public haskell-8.8-microlens-ghc
  (package
    (name "haskell-8.8-microlens-ghc")
    (version "0.4.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-ghc/microlens-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qh66alv00jz4l3w80km8grym6sk36c5kx5jfaya20irq91ni1b"))))
    (properties `((upstream-name . "microlens-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + array, bytestring, containers, transformers")
    (description
     "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @@Lens.Micro.GHC@@ reexports everything from @@Lens.Micro@@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>, <http://hackage.haskell.org/package/transfromers transformers>).

The minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.8-microlens-ghc

(define-public haskell-8.8-microlens-mtl
  (package
    (name "haskell-8.8-microlens-mtl")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-mtl/microlens-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ijy7xyd5lbc3calhcrhy8czkf3fjcxrv68p7kd2a5b352rfi7fp"))))
    (properties `((upstream-name . "microlens-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens support for Reader/Writer/State from mtl")
    (description
     "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.8-microlens-mtl

(define-public haskell-8.8-microlens-th
  (package
    (name "haskell-8.8-microlens-th")
    (version "0.4.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-th/microlens-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pw0ljpyhpj4jsgs25i4mi1a07vpbwfik84fc2kip1pzajflrcql"))))
    (properties `((upstream-name . "microlens-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "Automatic generation of record lenses for microlens")
    (description
     "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens).

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.8-microlens-th

(define-public haskell-8.8-miniutter
  (package
    (name "haskell-8.8-miniutter")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/miniutter/miniutter-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0871hhpj5fl5si6rwg9l1lpdarlva3y888rgrrb4gaqsssnh0kk1"))))
    (properties `((upstream-name . "miniutter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-minimorph)))
    (home-page "https://github.com/Mikolaj/miniutter")
    (synopsis "Simple English clause creation from arbitrary words")
    (description
     "This library helps in generating simple present tense
English sentences from short, parametrized descriptions.
In a typical use, the structure of a clause is fixed,
but the particular words to be used vary in arbitrary ways.
The main goal of the library is to minimize the API
complexity and the code size of programs that use it.
The library doesn't attempt to ban incorrect English sentences,
but just make the creation of the simple correct ones easy
and predictable.")
    (license license:bsd-3)))

haskell-8.8-miniutter

(define-public haskell-8.8-mmorph
  (package
    (name "haskell-8.8-mmorph")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmorph/mmorph-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rfsy9n9mlinpmqi2s17fhc67fzma2ig5fbmh6m5m830canzf8vr"))))
    (properties `((upstream-name . "mmorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/mmorph")
    (synopsis "Monad morphisms")
    (description
     "This library provides monad morphism utilities, most commonly used
for manipulating monad transformer stacks.")
    (license license:bsd-3)))

haskell-8.8-mmorph

(define-public haskell-8.8-monad-par-extras
  (package
    (name "haskell-8.8-monad-par-extras")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par-extras/monad-par-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bl4bd6jzdc5zm20q1g67ppkfh6j6yn8fwj6msjayj621cck67p2"))))
    (properties `((upstream-name . "monad-par-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-abstract-par)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "Combinators and extra features for Par monads")
    (description "The modules below provide additional
data structures, and other added capabilities
layered on top of the 'Par' monad.")
    (license license:bsd-3)))

haskell-8.8-monad-par-extras

(define-public haskell-8.8-monad-parallel
  (package
    (name "haskell-8.8-monad-parallel")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://trac.haskell.org/SCC/wiki/monad-parallel")
    (synopsis "Parallel execution of monadic computations")
    (description
     "This package defines classes of monads that can perform multiple executions in parallel and combine their results. For
any monad that's an instance of the class, the package re-implements a subset of the Control.Monad interface, but with
parallel execution.")
    (license license:bsd-3)))

haskell-8.8-monad-parallel

(define-public haskell-8.8-monad-peel
  (package
    (name "haskell-8.8-monad-peel")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-peel/monad-peel-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x1kr5pk8ksw8xcm19c50jx8m0crf3m3qp73k31dnl9r1w4ykm9d"))))
    (properties `((upstream-name . "monad-peel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)))
    (home-page "http://andersk.mit.edu/haskell/monad-peel/")
    (synopsis
     "Lift control operations like exception catching through monad transformers")
    (description
     "This package defines @@MonadPeelIO@@, a subset of @@MonadIO@@ into which
generic control operations such as @@catch@@ can be lifted from @@IO@@.
Instances are based on monad transformers in @@MonadTransPeel@@, which
includes all standard monad transformers in the @@transformers@@
library except @@ContT@@.  For convenience, it provides a wrapped
version of Control.Exception with types generalized from @@IO@@ to all
monads in @@MonadPeelIO@@.")
    (license license:bsd-3)))

haskell-8.8-monad-peel

(define-public haskell-8.8-monadic-arrays
  (package
    (name "haskell-8.8-monadic-arrays")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://github.com/ekmett/monadic-arrays/")
    (synopsis "Boxed and unboxed arrays for monad transformers")
    (description "Boxed and unboxed arrays for monad transformers")
    (license license:bsd-3)))

haskell-8.8-monadic-arrays

(define-public haskell-8.8-monoid-transformer
  (package
    (name "haskell-8.8-monoid-transformer")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-transformer")
    (synopsis "Monoid counterparts to some ubiquitous monad transformers")
    (description
     "Monoid transformers: State, Reader

There is no Writer transformer.
It's vice versa: The Writer monad transforms a monoid to a monad.")
    (license license:bsd-3)))

haskell-8.8-monoid-transformer

(define-public haskell-8.8-murmur3
  (package
    (name "haskell-8.8-murmur3")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/murmur3/murmur3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "022sadxhnywbzx8crwkgky7kndxwpaddc89nq3ya4a4ikq3qvbhm"))))
    (properties `((upstream-name . "murmur3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "130ign0n566nsrzfp4ipb2sy5hq1ymxdlmqb80zbpdc0rdkqh0x0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)))
    (home-page "http://github.com/haskoin/murmur3")
    (synopsis
     "Pure Haskell implementation of the MurmurHash3 x86_32 algorithm.")
    (description
     "MurmurHash3 is a non-cryptogrpahic hash function suitable for general
hash-based lookup. We provide the x86_32 version which closely follows
the following implementation:
<https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>")
    (license license:expat)))

haskell-8.8-murmur3

(define-public haskell-8.8-natural-induction
  (package
    (name "haskell-8.8-natural-induction")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-peano)))
    (home-page "https://hackage.haskell.org/package/natural-induction")
    (synopsis "Induction over natural numbers")
    (description "")
    (license license:bsd-3)))

haskell-8.8-natural-induction

(define-public haskell-8.8-network
  (package
    (name "haskell-8.8-network")
    (version "3.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/network/network-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16ic2hgvadyiy0zfnyd2zknf8rxqmwzpy5mw5x9apwpzfc0mkvyp"))))
    (properties `((upstream-name . "network") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://github.com/haskell/network")
    (synopsis "Low-level networking interface")
    (description
     "This package provides a low-level networking interface.

=== High-Level Packages
Other packages provide higher level interfaces:

* connection
* hookup
* network-simple

=== Extended Packages
@@network@@ seeks to provide a cross-platform core for networking. As such some
APIs live in extended libraries. Packages in the @@network@@ ecosystem are
often prefixed with @@network-@@.

==== @@network-bsd@@
In @@network-3.0.0.0@@ the @@Network.BSD@@ module was split off into its own
package, @@network-bsd-3.0.0.0@@.

==== @@network-uri@@
In @@network-2.6@@ the @@Network.URI@@ module was split off into its own package,
@@network-uri-2.6@@. If you're using the @@Network.URI@@ module you can
automatically get it from the right package by adding this to your @@.cabal@@
file:

> library
>   build-depends: network-uri-flag")
    (license license:bsd-3)))

haskell-8.8-network

(define-public haskell-8.8-network-transport
  (package
    (name "haskell-8.8-network-transport")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport/network-transport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0izcqi3zl7ynav0qqrrfmiax8vziqwrhflprddhjj6x6nkzhp1sv"))))
    (properties `((upstream-name . "network-transport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03parnmzh2mffs6fadqbf4lw1d5bsmvr347rzamp230s303nr6yc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Network abstraction layer")
    (description
     "\"Network.Transport\" is a Network Abstraction Layer which provides
the following high-level concepts:

* Nodes in the network are represented by 'EndPoint's. These are
heavyweight stateful objects.

* Each 'EndPoint' has an 'EndPointAddress'.

* Connections can be established from one 'EndPoint' to another
using the 'EndPointAddress' of the remote end.

* The 'EndPointAddress' can be serialised and sent over the
network, whereas 'EndPoint's and connections cannot.

* Connections between 'EndPoint's are unidirectional and lightweight.

* Outgoing messages are sent via a 'Connection' object that
represents the sending end of the connection.

* Incoming messages for /all/ of the incoming connections on
an 'EndPoint' are collected via a shared receive queue.

* In addition to incoming messages, 'EndPoint's are notified of
other 'Event's such as new connections or broken connections.

This design was heavily influenced by the design of the Common
Communication Interface
(<http://www.olcf.ornl.gov/center-projects/common-communication-interface>).
Important design goals are:

* Connections should be lightweight: it should be no problem to
create thousands of connections between endpoints.

* Error handling is explicit: every function declares as part of
its type which errors it can return (no exceptions are thrown)

* Error handling is \"abstract\": errors that originate from
implementation specific problems (such as \"no more sockets\" in
the TCP implementation) get mapped to generic errors
(\"insufficient resources\") at the Transport level.

This package provides the generic interface only; you will
probably also want to install at least one transport
implementation (network-transport-*).")
    (license license:bsd-3)))

haskell-8.8-network-transport

(define-public haskell-8.8-non-empty-sequence
  (package
    (name "haskell-8.8-non-empty-sequence")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/non-empty-sequence/non-empty-sequence-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a6xk2ijj3lzhqzdrk6q89538d1a62aw8x0ccvkq2kyl1dlahwc0"))))
    (properties `((upstream-name . "non-empty-sequence") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "http://www.github.com/massysett/non-empty-sequence")
    (synopsis "Non-empty sequence")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-non-empty-sequence

(define-public haskell-8.8-old-time
  (package
    (name "haskell-8.8-old-time")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)))
    (home-page "https://hackage.haskell.org/package/old-time")
    (synopsis "Time library")
    (description "This package provides the old time library.

For new projects, the newer
<http://hackage.haskell.org/package/time time library>
is recommended.")
    (license license:bsd-3)))

haskell-8.8-old-time

(define-public haskell-8.8-operational
  (package
    (name "haskell-8.8-operational")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-operational

(define-public haskell-8.8-optics-core
  (package
    (name "haskell-8.8-optics-core")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-core/optics-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19hsax8wxxgr28rjz6p9afb06f338xnyvws7salmm1dsik1ghzr8"))))
    (properties `((upstream-name . "optics-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1sghrm6xyflzkv350phcm344ljv82wk2vjnwhwyvcqwirkwg8rk9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-indexed-profunctors)))
    (home-page "https://hackage.haskell.org/package/optics-core")
    (synopsis "Optics as an abstract interface: core definitions")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface.

This variant provides core definitions with a minimal dependency footprint.
See the @@<https://hackage.haskell.org/package/optics optics>@@ package (and its
dependencies) for documentation and the \"batteries-included\" variant.")
    (license license:bsd-3)))

haskell-8.8-optics-core

(define-public haskell-8.8-options
  (package
    (name "haskell-8.8-options")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monads-tf)))
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

haskell-8.8-options

(define-public haskell-8.8-papillon
  (package
    (name "haskell-8.8-papillon")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/papillon/papillon-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z0136v8hhzrljql8z17jvcb3y5n7nr9fc584kj4wyscpma38a46"))))
    (properties `((upstream-name . "papillon") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monads-tf)))
    (home-page "https://skami.iocikun.jp/haskell/packages/papillon")
    (synopsis "packrat parser")
    (description "see examples directory")
    (license license:bsd-3)))

haskell-8.8-papillon

(define-public haskell-8.8-parallel-io
  (package
    (name "haskell-8.8-parallel-io")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-parallel-io

(define-public haskell-8.8-pcg-random
  (package
    (name "haskell-8.8-pcg-random")
    (version "0.1.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcg-random/pcg-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l6jq5nvmg1ygk7i7g50s47p6qkh74p9avl1wbcxdl5m85lc5j76"))))
    (properties `((upstream-name . "pcg-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-pcg-random

(define-public haskell-8.8-percent-format
  (package
    (name "haskell-8.8-percent-format")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/percent-format/percent-format-"
                    version ".tar.gz"))
              (sha256
               (base32
                "028c8rnv86mln9pdhb6w4i56n07hlslg69f3pmcjpb7ilr5scc3m"))))
    (properties `((upstream-name . "percent-format") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)))
    (home-page "https://github.com/rudymatela/percent-format#readme")
    (synopsis "simple printf-style string formatting")
    (description
     "The @@Text.PercentFormat@@ library provides printf-style string formatting.  It
provides a @@%@@ operator (as in Ruby or Python) and uses the old
C-printf-style format you know and love.")
    (license license:bsd-3)))

haskell-8.8-percent-format

(define-public haskell-8.8-postgresql-libpq
  (package
    (name "haskell-8.8-postgresql-libpq")
    (version "0.9.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-libpq/postgresql-libpq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gfnhc5pibn7zmifdf2g0c112xrpzsk756ln2kjzqljkspf4dqp3"))))
    (properties `((upstream-name . "postgresql-libpq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-pkg-config")
       #:cabal-revision
       ("3" "02cj493a2qxl5hddiq0579079s398hdqqy164pig6d61nl7q66cs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/haskellari/postgresql-libpq")
    (synopsis "low-level binding to libpq")
    (description "This is a binding to libpq: the C application
programmer's interface to PostgreSQL. libpq is a
set of library functions that allow client
programs to pass queries to the PostgreSQL
backend server and to receive the results of
these queries.")
    (license license:bsd-3)))

haskell-8.8-postgresql-libpq

(define-public haskell-8.8-pretty-show
  (package
    (name "haskell-8.8-pretty-show")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-show/pretty-show-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lkgvbv00v1amvpqli6y4dzsbs25l4v3wlagvhwx8qxhw2390zrh"))))
    (properties `((upstream-name . "pretty-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-lexer)))
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

haskell-8.8-pretty-show

(define-public haskell-8.8-prettyprinter-compat-annotated-wl-pprint
  (package
    (name "haskell-8.8-prettyprinter-compat-annotated-wl-pprint")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-annotated-wl-pprint/prettyprinter-compat-annotated-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zpmpbpnyxqswfb7gdj0kwz7hw606fj1iwkpl1qv0xcxk6n9n99c"))))
    (properties `((upstream-name . "prettyprinter-compat-annotated-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0vzi7id60pfj35xp61akzvfx9x6py45r5b8343i48ljpir91rvgw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Prettyprinter compatibility module for previous users of the annotated-wl-pprint package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.8-prettyprinter-compat-annotated-wl-pprint

(define-public haskell-8.8-prettyprinter-compat-wl-pprint
  (package
    (name "haskell-8.8-prettyprinter-compat-wl-pprint")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-wl-pprint/prettyprinter-compat-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17jj8m9s3cp1s1szpy67g7wni9ssid78jqksh3aym7p6ci81y8km"))))
    (properties `((upstream-name . "prettyprinter-compat-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0cb1i1hmr6wl8lacy3w822h273lapqhp537snxgbmhf9xvfckbpr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Prettyprinter compatibility module for previous users of the wl-pprint package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.8-prettyprinter-compat-wl-pprint

(define-public haskell-8.8-primitive-addr
  (package
    (name "haskell-8.8-primitive-addr")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-addr/primitive-addr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06r1p56wm8rbjxnlaqbmc3rbsj1rsv5scwnh80lsn0xw56jc70a2"))))
    (properties `((upstream-name . "primitive-addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14pawzzip9528qizhrpai00h27z9dfin4kw8vqkb6576pi8g1y2f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/andrewthad/primitive-addr")
    (synopsis "Addresses to unmanaged memory")
    (description
     "This library provides the `Data.Primitive.Addr` module
that was a part of the `primitive` library before `primitive-0.7.0.0`.")
    (license license:bsd-3)))

haskell-8.8-primitive-addr

(define-public haskell-8.8-primitive-unaligned
  (package
    (name "haskell-8.8-primitive-unaligned")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-unaligned/primitive-unaligned-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f3a46d9dr7x1k8b6ixnp9jzxkppx3g27qsxq4f244ndnf2jnchl"))))
    (properties `((upstream-name . "primitive-unaligned") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vksp8izwb2hwyc1li3cf209cf2vaj6ww9n3lyrksr8ymd1p6f16")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/haskell-primitive/primitive-unaligned")
    (synopsis "Unaligned access to primitive arrays")
    (description
     "Unaligned access to primitive arrays. The offsets are given in bytes rather than elements.")
    (license license:bsd-3)))

haskell-8.8-primitive-unaligned

(define-public haskell-8.8-product-isomorphic
  (package
    (name "haskell-8.8-product-isomorphic")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-data-compat)))
    (home-page "http://github.com/khibino/haskell-product-isomorphic")
    (synopsis "Weaken applicative functor on products")
    (description "Weaken applicative functor which allows only product
construction. Product constructions and deconstructions
are always isomorphic.")
    (license license:bsd-3)))

haskell-8.8-product-isomorphic

(define-public haskell-8.8-promises
  (package
    (name "haskell-8.8-promises")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "http://github.com/ekmett/promises/")
    (synopsis "Lazy demand-driven promises")
    (description "Lazy demand-driven promises")
    (license license:bsd-3)))

haskell-8.8-promises

(define-public haskell-8.8-prompt
  (package
    (name "haskell-8.8-prompt")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
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

haskell-8.8-prompt

(define-public haskell-8.8-psqueues
  (package
    (name "haskell-8.8-psqueues")
    (version "0.2.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psqueues/psqueues-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yckx2csqswghiy9nfj03cybmza8104nmnpbpcc9ngwlbmakn9i6"))))
    (properties `((upstream-name . "psqueues") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d0mm3c8x31dasfzp1884r2irkm3c9irvvbahjzfr1bzzxfb7vyv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://hackage.haskell.org/package/psqueues")
    (synopsis "Pure priority search queues")
    (description
     "The psqueues package provides
<http://en.wikipedia.org/wiki/Priority_queue Priority Search Queues> in
three different flavors.

* @@OrdPSQ k p v@@, which uses the @@Ord k@@ instance to provide fast insertion,
deletion and lookup. This implementation is based on Ralf Hinze's
<http://citeseer.ist.psu.edu/hinze01simple.html A Simple Implementation Technique for Priority Search Queues>.
Hence, it is similar to the
<http://hackage.haskell.org/package/PSQueue PSQueue> library, although it is
considerably faster and provides a slightly different API.

* @@IntPSQ p v@@ is a far more efficient implementation. It fixes the key type
to @@Int@@ and uses a <http://en.wikipedia.org/wiki/Radix_tree radix tree>
(like @@IntMap@@) with an additional min-heap property.

* @@HashPSQ k p v@@ is a fairly straightforward extension of @@IntPSQ@@: it
simply uses the keys' hashes as indices in the @@IntPSQ@@. If there are any
hash collisions, it uses an @@OrdPSQ@@ to resolve those. The performance of
this implementation is comparable to that of @@IntPSQ@@, but it is more widely
applicable since the keys are not restricted to @@Int@@, but rather to any
@@Hashable@@ datatype.

Each of the three implementations provides the same API, so they can be used
interchangeably. The benchmarks show how they perform relative to one
another, and also compared to the other Priority Search Queue
implementations on Hackage:
<http://hackage.haskell.org/package/PSQueue PSQueue>
and
<http://hackage.haskell.org/package/fingertree-psqueue fingertree-psqueue>.

<<http://i.imgur.com/KmbDKR6.png>>

<<http://i.imgur.com/ClT181D.png>>

Typical applications of Priority Search Queues include:

* Caches, and more specifically LRU Caches;

* Schedulers;

* Pathfinding algorithms, such as Dijkstra's and A*.")
    (license license:bsd-3)))

haskell-8.8-psqueues

(define-public haskell-8.8-range-set-list
  (package
    (name "haskell-8.8-range-set-list")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/range-set-list/range-set-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m8c8qhpk9vaykqfy6gsv1csmvdclm27zv9l56ipv152k75xks0j"))))
    (properties `((upstream-name . "range-set-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "17wbbhjlcbyz9qil2z2s6nwk7mdfck1lkx5jqrdsavwbrzza6xzr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/phadej/range-set-list#readme")
    (synopsis "Memory efficient sets with ranges of elements.")
    (description
     "Memory efficient sets with continuous ranges of discrete, bounded elements. List- and map-based implementations. Interface mimics 'Data.Set' where possible.")
    (license license:expat)))

haskell-8.8-range-set-list

(define-public haskell-8.8-rate-limit
  (package
    (name "haskell-8.8-rate-limit")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rate-limit/rate-limit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zb19vwzyj1vg890776r3bprmjzhs9kr2r1vqa42nxv9nvwvnljm"))))
    (properties `((upstream-name . "rate-limit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-units)))
    (home-page "http://github.com/acw/rate-limit")
    (synopsis "A basic library for rate-limiting IO actions.")
    (description
     "In many cases, it is useful, necessary, or simply nice to limit how
frequently you perform some action. For example, you may want to limit
how often your program makes a request of some web site. This library
is intended as a general-purpose mechanism for rate-limiting IO actions.")
    (license license:bsd-3)))

haskell-8.8-rate-limit

(define-public haskell-8.8-reform
  (package
    (name "haskell-8.8-reform")
    (version "0.2.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/reform/reform-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dl0jz5ibcj4vafpf0a0v52rac4nmmif69817g7qgxavc093nq82"))))
    (properties `((upstream-name . "reform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "http://www.happstack.com/")
    (synopsis
     "reform is a type-safe HTML form generation and validation library")
    (description "reform follows in the footsteps of formlets and
digestive-functors <= 0.2. It provides a
type-safe and composable method for generating
an HTML form that includes validation.")
    (license license:bsd-3)))

haskell-8.8-reform

(define-public haskell-8.8-regex-pcre
  (package
    (name "haskell-8.8-regex-pcre")
    (version "0.95.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre/regex-pcre-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nn76q4bsjnxim0j0d01jifmh36as9jdpcvm001a851vvq86zb8n"))))
    (properties `((upstream-name . "regex-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fpkg-config")
       #:cabal-revision
       ("4" "07fqy6pj7zz2vqbj8y4s5npc7vk9ggzayiy31hy4ss91lys74d1j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages pcre) pcre)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "PCRE Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.8-regex-pcre

(define-public haskell-8.8-regex-pcre-builtin
  (package
    (name "haskell-8.8-regex-pcre-builtin")
    (version "0.95.1.3.8.43")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre-builtin/regex-pcre-builtin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n1sbsjch0n5cgv2lhw2yfaxb611mckyg0jpz2kcbyj5hcrvzv3c"))))
    (properties `((upstream-name . "regex-pcre-builtin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)))
    (home-page "https://hackage.haskell.org/package/regex-pcre-builtin")
    (synopsis "PCRE Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.

See also <https://wiki.haskell.org/Regular_expressions> for more information.

Includes bundled code from www.pcre.org")
    (license license:bsd-3)))

haskell-8.8-regex-pcre-builtin

(define-public haskell-8.8-regex-posix
  (package
    (name "haskell-8.8-regex-posix")
    (version "0.96.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-posix/regex-posix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08a584jabmmn5gmaqrcar5wsp3qzk0hklldzp2mr2bmvlvqh04r5"))))
    (properties `((upstream-name . "regex-posix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-_regex-posix-clib")
       #:cabal-revision
       ("2" "10al5qljh6pc46581nkhrs0rjn8w05pp6jb4v55lgfr17ac0z1xx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)))
    (home-page "https://hackage.haskell.org/package/regex-posix")
    (synopsis "POSIX Backend for \"Text.Regex\" (regex-base)")
    (description
     "The POSIX regex backend for <//hackage.haskell.org/package/regex-base regex-base>.

The main appeal of this backend is that it's very lightweight due to its reliance on the ubiquitous <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html POSIX.2 regex> facility that is provided by the standard C library on most POSIX platforms.

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.8-regex-posix

(define-public haskell-8.8-regex-tdfa
  (package
    (name "haskell-8.8-regex-tdfa")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-tdfa/regex-tdfa-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h1fliv2zjxwmddl9wnn7ckxxpgy1049hdfg6fcknyrr7mw7dhqm"))))
    (properties `((upstream-name . "regex-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-o2")
       #:cabal-revision
       ("2" "1hvcqdywwlcpia7qss7ikr9bq0lvkk8z0mjgaylaqpzlgh00z3gb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis
              "Pure Haskell Tagged DFA Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a pure Haskell \\\"Tagged\\\" DFA regex engine for <//hackage.haskell.org/package/regex-base regex-base>. This implementation was inspired by the algorithm (and Master's thesis) behind the regular expression library known as <https://github.com/laurikari/tre/ TRE or libtre>.

Please consult the \"Text.Regex.TDFA\" module for API documentation including a tutorial with usage examples;
see also <https://wiki.haskell.org/Regular_expressions> for general information about regular expression support in Haskell.")
    (license license:bsd-3)))

haskell-8.8-regex-tdfa

(define-public haskell-8.8-renderable
  (package
    (name "haskell-8.8-renderable")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/renderable/renderable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1idn0jg74wm3ksy5n4jk2dzsij64r1byghr6qc03g4d85n6mmsni"))))
    (properties `((upstream-name . "renderable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/schell/renderable")
    (synopsis "An API for managing renderable resources.")
    (description
     "The `renderable` package provides a method for managing resources
of a rendering system. Resources are allocated according to a strategy and
released automatically when your renderable data changes. These changes are
detected during each draw call based on the hash of your renderable
datatype.
This package is meant to be pulled in as a portion of your rendering system.
It aims to ease the task of managing allocation of resources over time as
the value of your renderable datatype changes.")
    (license license:expat)))

haskell-8.8-renderable

(define-public haskell-8.8-resolv
  (package
    (name "haskell-8.8-resolv")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/resolv/resolv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wa6wsh6i52q4ah2z0hgzlks325kigch4yniz0y15nw4skxbm8l1"))))
    (properties `((upstream-name . "resolv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0df5y8bj9bxjmqnkvpwxvb17k70g1i174xs6vfrv9f1lys7xkqk1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)))
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
    (license license:gpl2+)))

haskell-8.8-resolv

(define-public haskell-8.8-scientific
  (package
    (name "haskell-8.8-scientific")
    (version "0.3.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scientific/scientific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03ql2f0ac8bsl524idy9xxa3kxisb2sj3avflzw580j5hzy0m397"))))
    (properties `((upstream-name . "scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder" "-f-integer-simple")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/basvandijk/scientific")
    (synopsis "Numbers represented using scientific notation")
    (description
     "\"Data.Scientific\" provides the number type 'Scientific'. Scientific numbers are
arbitrary precision and space efficient. They are represented using
<http://en.wikipedia.org/wiki/Scientific_notation scientific notation>.
The implementation uses a coefficient @@c :: 'Integer'@@ and a base-10 exponent
@@e :: 'Int'@@. A scientific number corresponds to the
'Fractional' number: @@'fromInteger' c * 10 '^^' e@@.

Note that since we're using an 'Int' to represent the exponent these numbers
aren't truly arbitrary precision. I intend to change the type of the exponent
to 'Integer' in a future release.

The main application of 'Scientific' is to be used as the target of parsing
arbitrary precision numbers coming from an untrusted source. The advantages
over using 'Rational' for this are that:

* A 'Scientific' is more efficient to construct. Rational numbers need to be
constructed using '%' which has to compute the 'gcd' of the 'numerator' and
'denominator'.

* 'Scientific' is safe against numbers with huge exponents. For example:
@@1e1000000000 :: 'Rational'@@ will fill up all space and crash your
program. Scientific works as expected:

>>> read \"1e1000000000\" :: Scientific
1.0e1000000000

* Also, the space usage of converting scientific numbers with huge exponents to
@@'Integral's@@ (like: 'Int') or @@'RealFloat's@@ (like: 'Double' or 'Float')
will always be bounded by the target type.")
    (license license:bsd-3)))

haskell-8.8-scientific

(define-public haskell-8.8-scrypt
  (package
    (name "haskell-8.8-scrypt")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)))
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

haskell-8.8-scrypt

(define-public haskell-8.8-setlocale
  (package
    (name "haskell-8.8-setlocale")
    (version "1.0.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/setlocale/setlocale-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18b6xafspzxrmz5m9r9nzy3z053crqi59xc8n8aqd4gw0pvqdcrv"))))
    (properties `((upstream-name . "setlocale") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "10ikb40vv1n3rk7cczhgpi2h4wmv2s0wzq5xkgjqvsqwl1pxkidw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://gitlab.com/Kritzefitz/haskell-setlocale")
    (synopsis "Haskell bindings to setlocale")
    (description "")
    (license license:bsd-3)))

haskell-8.8-setlocale

(define-public haskell-8.8-shared-memory
  (package
    (name "haskell-8.8-shared-memory")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shared-memory/shared-memory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g1s08zjpj9xaaff3qg29k6fhnpiig9fqv9i7879yhllh50kjrr6"))))
    (properties `((upstream-name . "shared-memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://github.com/nh2/shared-memory")
    (synopsis "POSIX shared memory")
    (description "POSIX shared memory library.")
    (license license:expat)))

haskell-8.8-shared-memory

(define-public haskell-8.8-simplest-sqlite
  (package
    (name "haskell-8.8-simplest-sqlite")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simplest-sqlite/simplest-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02ws0f4cf9mdbkadzp4val5kqiflgwskil71iq7mb90d41j1khmp"))))
    (properties `((upstream-name . "simplest-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-exception-hierarchy)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages sqlite) sqlite-next)))
    (home-page "comming soon")
    (synopsis "Simplest SQLite3 binding")
    (description "see sample code in samples/")
    (license license:bsd-3)))

haskell-8.8-simplest-sqlite

(define-public haskell-8.8-simplistic-generics
  (package
    (name "haskell-8.8-simplistic-generics")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simplistic-generics/simplistic-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "178sy401xh8g4a7gs0iiwpcgqb9nif8yaa7rsr0ryjkhi5xpbb6q"))))
    (properties `((upstream-name . "simplistic-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-kind-apply)))
    (home-page "https://hackage.haskell.org/package/simplistic-generics")
    (synopsis "Generic programming without too many type classes")
    (description
     "This library provides a representation build on top of `GHC.Generics`, which can be used to describe generic operations on a single function, instead of having each case defined in an instance of a type class.")
    (license license:bsd-3)))

haskell-8.8-simplistic-generics

(define-public haskell-8.8-singleton-bool
  (package
    (name "haskell-8.8-singleton-bool")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-bool/singleton-bool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17w9vv6arn7vvc7kykqcx81q2364ji43khrryl27r1cjx9yxapa0"))))
    (properties `((upstream-name . "singleton-bool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "11rhzpy4xiry39bbxzwrqff75f0f4g7z0vkr3v9l8rv3w40jlf7x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-dec)))
    (home-page "https://github.com/phadej/singleton-bool#readme")
    (synopsis "Type level booleans")
    (description "Type level booleans.

@@singletons@@ package provides similar functionality,
but it has tight dependency constraints.")
    (license license:bsd-3)))

haskell-8.8-singleton-bool

(define-public haskell-8.8-siphash
  (package
    (name "haskell-8.8-siphash")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/siphash/siphash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wq5dan30ggjgmravy92ylqjvjv1q7mxrmddr7zc8h6aqr0wx0fg"))))
    (properties `((upstream-name . "siphash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "14l9ndv8l2vysb3fp00gfh2g6j5bwhkh67kwbx9ish74ncmqkznv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-cpu)))
    (home-page "http://github.com/vincenthz/hs-siphash")
    (synopsis "siphash: a fast short input PRF")
    (description
     "Haskell implementation of siphash. [http://131002.net/siphash/siphash.pdf]")
    (license license:bsd-3)))

haskell-8.8-siphash

(define-public haskell-8.8-size-based
  (package
    (name "haskell-8.8-size-based")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-dictionary-sharing)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-testing-type-modifiers)))
    (home-page "https://hackage.haskell.org/package/size-based")
    (synopsis "Sized functors, for size-based enumerations")
    (description
     "A framework for size-based enumerations. See the module documentations for details. ")
    (license license:bsd-3)))

haskell-8.8-size-based

(define-public haskell-8.8-splitmix
  (package
    (name "haskell-8.8-splitmix")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/splitmix/splitmix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lndnirkxc87c7hwlrjbnk5m4clcb0wncxvicdjkbj87lxxriwhr"))))
    (properties `((upstream-name . "splitmix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-optimised-mixer" "-frandom")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-splitmix

(define-public haskell-8.8-statestack
  (package
    (name "haskell-8.8-statestack")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statestack/statestack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b8yd314h8a97ggjv82cy4mr0f4scb5pjvslxq7hwxxq7cw7mgns"))))
    (properties `((upstream-name . "statestack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "00qpdrgxibfcdablasi5bdvdflxfgdk3hyg6461nsymwagr42ya3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/statestack")
    (synopsis
     "Simple State-like monad transformer with saveable and restorable state")
    (description
     "Simple State-like monad transformer where states can be saved to
and restored from an internal stack.")
    (license license:bsd-3)))

haskell-8.8-statestack

(define-public haskell-8.8-storable-complex
  (package
    (name "haskell-8.8-storable-complex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)))
    (home-page "https://github.com/cartazio/storable-complex")
    (synopsis "Storable instance for Complex")
    (description "Provides a Storable instance for Complex which is binary
compatible with C99, C++ and Fortran complex data types.

The only purpose of this package is to provide a standard
location for this instance so that other packages needing
this instance can play nicely together.")
    (license license:bsd-3)))

haskell-8.8-storable-complex

(define-public haskell-8.8-string-class
  (package
    (name "haskell-8.8-string-class")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-class/string-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s0bj0wvwriw4516za6ar7w7zsz5mmnf1dba0ch239n27rb00nwf"))))
    (properties `((upstream-name . "string-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z3cq57j6gjkz8q0wn9y222qw8lg560372na0nn7fcbf54yc749r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/string-class/string-class")
    (synopsis "String class library")
    (description "String class library.")
    (license license:bsd-3)))

haskell-8.8-string-class

(define-public haskell-8.8-system-argv0
  (package
    (name "haskell-8.8-system-argv0")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-system-filepath)))
    (home-page "https://john-millikin.com/software/haskell-filesystem/")
    (synopsis "Get argv[0] as a FilePath.")
    (description
     "Get @@argv[0]@@ as a FilePath. This is how the program was invoked, and might
not correspond to any actual file.

Use this instead of @@System.Environment.getProgName@@ if you want the full
path, and not just the last component.")
    (license license:expat)))

haskell-8.8-system-argv0

(define-public haskell-8.8-system-fileio
  (package
    (name "haskell-8.8-system-fileio")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-system-filepath)))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "Consistent filesystem interaction across GHC versions (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-8.8-system-fileio

(define-public haskell-8.8-tabular
  (package
    (name "haskell-8.8-tabular")
    (version "0.2.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tabular/tabular-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z936gh8n8i8qdkagyxwd9gqq13skd5fv013vdvwsibrxkm0czfb"))))
    (properties `((upstream-name . "tabular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-csv)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-html)))
    (home-page "https://github.com/bgamari/tabular")
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

haskell-8.8-tabular

(define-public haskell-8.8-tao-example
  (package
    (name "haskell-8.8-tao-example")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-tao)))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Example usage of the tao package.")
    (description "Example usage of type-level assertions using tao.")
    (license license:expat)))

haskell-8.8-tao-example

(define-public haskell-8.8-terminal-size
  (package
    (name "haskell-8.8-terminal-size")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)))
    (home-page "https://hackage.haskell.org/package/terminal-size")
    (synopsis "Get terminal window height and width")
    (description
     "Get terminal window height and width without ncurses dependency.")
    (license license:bsd-3)))

haskell-8.8-terminal-size

(define-public haskell-8.8-text-short
  (package
    (name "haskell-8.8-text-short")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-short/text-short-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xyrxlb602z8bc9sr2y1fag0x56a20yj5qrkvy7iwc6hnznrynxz"))))
    (properties `((upstream-name . "text-short") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-asserts")
       #:cabal-revision
       ("3" "1wjy98ihhipzr34b310sgjjq3cc12aydhckbrgr21kxkzwglm4nv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://hackage.haskell.org/package/text-short")
    (synopsis "Memory-efficient representation of Unicode text strings")
    (description
     "This package provides the 'ShortText' type which is suitable for keeping many short strings in memory. This is similiar to how 'ShortByteString' relates to 'ByteString'.

The main difference between 'Text' and 'ShortText' is that 'ShortText' uses UTF-8 instead of UTF-16 internally and also doesn't support zero-copy slicing (thereby saving 2 words). Consequently, the memory footprint of a (boxed) 'ShortText' value is 4 words (2 words when unboxed) plus the length of the UTF-8 encoded payload.")
    (license license:bsd-3)))

haskell-8.8-text-short

(define-public haskell-8.8-tf-random
  (package
    (name "haskell-8.8-tf-random")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
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

haskell-8.8-tf-random

(define-public haskell-8.8-th-lift
  (package
    (name "haskell-8.8-th-lift")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-lift/th-lift-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r2wrnrn6qwy6ysyfnlqn6xbfckw0b22h8n00pk67bhhg81jfn9s"))))
    (properties `((upstream-name . "th-lift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1s95i774zy3q8yzk18ygdzhzky6wfcr7g55hd2g8h8lc05xzcdgi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "http://github.com/RyanGlScott/th-lift")
    (synopsis "Derive Template Haskell's Lift class for datatypes.")
    (description
     "Derive Template Haskell's @@Lift@@ class for datatypes using @@TemplateHaskell@@.
The functionality in this package has largely been subsumed by the
@@DeriveLift@@ language extension, which is available in GHC 8.0 and later
versions. This package can still be useful as a uniform way to derive
@@Lift@@ instances that is backwards-compatible with older GHCs.

The following libraries are related:

* The <https://hackage.haskell.org/package/th-orphans th-orphans> package
provides instances for @@template-haskell@@ syntax types.

* The <http://hackage.haskell.org/package/th-lift-instances th-lift-instances>
package provides @@Lift@@ instances for types in @@base@@, @@text@@,
@@bytestring@@, @@vector@@, etc. Some of these instances are only provided for
old versions of their respective libraries, as the same @@Lift@@ instances
are also present upstream on newer versions.")
    (license license:bsd-3)))

haskell-8.8-th-lift

(define-public haskell-8.8-time-compat
  (package
    (name "haskell-8.8-time-compat")
    (version "1.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-compat/time-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19p3056i6kh8lgcdsnwsh8pj80xyi23kmw9n7hmdacczs5kv49ii"))))
    (properties `((upstream-name . "time-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("1" "1f6r8cyfgzpfg9nrsqbf99pi44fyds9wcmgwxb4s0zmlb5dbv1m5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)))
    (home-page "https://github.com/haskellari/time-compat")
    (synopsis "Compatibility package for time")
    (description
     "This packages tries to compat as much of @@time@@ features as possible.

/TODO:/

* Difference type @@ParseTime@@ and @@FormatTime@@ instances are missing.

* Formatting varies depending on underlying @@time@@ version

* @@dayFractionToTimeOfDay@@ on extreme values")
    (license license:bsd-3)))

haskell-8.8-time-compat

(define-public haskell-8.8-time-lens
  (package
    (name "haskell-8.8-time-lens")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-lens-light)))
    (home-page "https://github.com/feuerbach/time-lens")
    (synopsis "Lens-based interface to Data.Time data structures")
    (description "")
    (license license:bsd-3)))

haskell-8.8-time-lens

(define-public haskell-8.8-timezone-olson
  (package
    (name "haskell-8.8-timezone-olson")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timezone-olson/timezone-olson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b9vh27b9nz803yhd93d5z63bs370lvn4vkdajxaak9clxlw6mwg"))))
    (properties `((upstream-name . "timezone-olson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-timezone-series)))
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

haskell-8.8-timezone-olson

(define-public haskell-8.8-transformers-base
  (package
    (name "haskell-8.8-transformers-base")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://github.com/mvv/transformers-base")
    (synopsis "Lift computations from the bottom of a transformer stack")
    (description
     "This package provides a straightforward port of @@monadLib@@'s BaseM
typeclass to @@transformers@@.")
    (license license:bsd-3)))

haskell-8.8-transformers-base

(define-public haskell-8.8-tuple
  (package
    (name "haskell-8.8-tuple")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-OneTuple)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-8.8-tuple

(define-public haskell-8.8-unique
  (package
    (name "haskell-8.8-unique")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unique/unique-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dgln2dr64ma1isqskj1qnjslg9smmr7jssg8hmk68wp36i3rwkd"))))
    (properties `((upstream-name . "unique") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l95cgs8hbvakrcqzqk5l9rkz3cr3jnnszq7pgjnxrqfhgsp58r7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "http://github.com/ekmett/unique/")
    (synopsis "Fully concurrent unique identifiers")
    (description "Fully concurrent unique identifiers.")
    (license license:bsd-3)))

haskell-8.8-unique

(define-public haskell-8.8-universe-base
  (package
    (name "haskell-8.8-universe-base")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-base/universe-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a6yyvrzkz7jnjz4lyp8aw0r5hci1nx8c06v3dicgfqs3frk1v8x"))))
    (properties `((upstream-name . "universe-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0601hqv5h2274i11j1ai2yqb7zk2fkqkiqlpwnq5awbgdkwb10i8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "A class for finite and recursively enumerable types.")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them.

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This is slim package definiting only the type-classes and instances
for types in GHC boot libraries.
For more instances check @@universe-instances-*@@ packages.")
    (license license:bsd-3)))

haskell-8.8-universe-base

(define-public haskell-8.8-unordered-containers
  (package
    (name "haskell-8.8-unordered-containers")
    (version "0.2.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unordered-containers/unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wy5hfrs880hh8hvp648bl07ws777n3kkmczzdszr7papnyigwb5"))))
    (properties `((upstream-name . "unordered-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("1" "01727lm2spbqfn0rl89zv9zhpsmnls0kmizyckqf5nc3j9d0k6sy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/tibbe/unordered-containers")
    (synopsis "Efficient hashing-based container types")
    (description
     "Efficient hashing-based container types.  The containers have been
optimized for performance critical use, both in terms of large data
quantities and high speed.

The declared cost of each operation is either worst-case or
amortized, but remains valid even if structures are shared.")
    (license license:bsd-3)))

haskell-8.8-unordered-containers

(define-public haskell-8.8-unordered-intmap
  (package
    (name "haskell-8.8-unordered-intmap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/ethercrow/unordered-intmap")
    (synopsis "A specialization of `HashMap Int v`")
    (description "")
    (license license:bsd-3)))

haskell-8.8-unordered-intmap

(define-public haskell-8.8-uri-encode
  (package
    (name "haskell-8.8-uri-encode")
    (version "1.5.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-encode/uri-encode-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lj2h701af12539p957rw24bxr07mfqd5r4h52i42f43ax165767"))))
    (properties `((upstream-name . "uri-encode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-tools" "-fnetwork-uri")
       #:cabal-revision
       ("2" "03pmvbi56gmg1z2wr3glncc7dbyh666bqp565inh31qzsp9zwmgj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://hackage.haskell.org/package/uri-encode")
    (synopsis "Unicode aware uri-encoding")
    (description "This package allows you to uri encode and uri decode
Strings, Texts and ByteString values.")
    (license license:bsd-3)))

haskell-8.8-uri-encode

(define-public haskell-8.8-url
  (package
    (name "haskell-8.8-url")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/url/url-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0qag18wbrq9jjk1444mjigz1xl7xl03fz66b1lnya9qaihzpxwjs"))))
    (properties `((upstream-name . "url") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "http://www.haskell.org/haskellwiki/Url")
    (synopsis "A library for working with URLs.")
    (description "A library for working with URLs.")
    (license license:bsd-3)))

haskell-8.8-url

(define-public haskell-8.8-uuid-types
  (package
    (name "haskell-8.8-uuid-types")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uuid-types/uuid-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zdka5jnm1h6k36w3nr647yf3b5lqb336g3fkprhd6san9x52xlj"))))
    (properties `((upstream-name . "uuid-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0ipwfd5y8021ygpadjjhchw5irm0x27dlv1k2hf4znza5v7hadcn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "https://github.com/aslatter/uuid")
    (synopsis "Type definitions for Universally Unique Identifiers")
    (description
     "This library contains type definitions for Universally Unique Identifiers
and basic conversion functions.
See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-8.8-uuid-types

(define-public haskell-8.8-vector
  (package
    (name "haskell-8.8-vector")
    (version "0.12.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vector/vector-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g8i806ph9l789pv2k665bbxlmsbwfwzml1mi9xv683g7xl2fviv"))))
    (properties `((upstream-name . "vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-f-wall")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
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

haskell-8.8-vector

(define-public haskell-8.8-wide-word
  (package
    (name "haskell-8.8-wide-word")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wide-word/wide-word-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10sj7nca2sba74bkiicnp95xrfq2j1al93ggw3z24982nm9x3j8r"))))
    (properties `((upstream-name . "wide-word") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "150ikl5cf15lbk383pv1w8smpwbp0dzc0vby653fbzm8a2svcx76")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/erikd/wide-word")
    (synopsis
     "Data types for large but fixed width signed and unsigned integers")
    (description
     "A library to provide data types for large (ie > 64 bits) but fixed width signed
and unsigned integers with the usual typeclass instances to allow them to be used
interchangeably with `Word64`.

The types and operations are coded to be as fast as possible using strictness
annotations, `INLINEABLE` pragmas and unboxed values and operations where
appropriate.")
    (license license:bsd-2)))

haskell-8.8-wide-word

(define-public haskell-8.8-wizards
  (package
    (name "haskell-8.8-wizards")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-control-monad-free)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)))
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

haskell-8.8-wizards

(define-public haskell-8.8-wl-pprint-text
  (package
    (name "haskell-8.8-wl-pprint-text")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-text/wl-pprint-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "030ckgzz14sv2c317g4j5g68hyq9xi40cmv0apwclw6sc6xgsvly"))))
    (properties `((upstream-name . "wl-pprint-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0yy27q99hmkf8amy0gfrh2xgwa22nb294p2fvqawjbpwxa2x1qxb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)))
    (home-page "https://hackage.haskell.org/package/wl-pprint-text")
    (synopsis "A Wadler/Leijen Pretty Printer for Text values")
    (description "A clone of wl-pprint for use with the text library.")
    (license license:bsd-3)))

haskell-8.8-wl-pprint-text

(define-public haskell-8.8-writer-cps-mtl
  (package
    (name "haskell-8.8-writer-cps-mtl")
    (version "0.1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-mtl/writer-cps-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dnx2h4pqmvbkg2hh9c6vhayn6hyzyvs12c0s7rjdba1vihgpy86"))))
    (properties `((upstream-name . "writer-cps-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0j0qmb3r1xiva0q0vh8qi0l56py1n0cj1ikd44ivdmbadm5krs92")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-mtl#readme")
    (synopsis "MonadWriter orphan instances for writer-cps-transformers")
    (description
     "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. See also (<http://hackage.haskell.org/package/writer-cps-transformers>).")
    (license license:bsd-3)))

haskell-8.8-writer-cps-mtl

(define-public haskell-8.8-xdg-userdirs
  (package
    (name "haskell-8.8-xdg-userdirs")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xdg-userdirs/xdg-userdirs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vh4m385a828qb61845bb7zfcqfm000g4fjkmmlvdrfyh35vpal8"))))
    (properties `((upstream-name . "xdg-userdirs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xdg-basedir)))
    (home-page "http://redmine.iportnov.ru/projects/xdg-userdirs")
    (synopsis "Basic implementation of XDG user directories specification")
    (description "On Unix platforms, this should be a very straightforward
implementation of the XDG User Directory spec. On Windows,
it will attempt to do the right thing with regards to
choosing appropriate directories.")
    (license license:bsd-3)))

haskell-8.8-xdg-userdirs

(define-public haskell-8.8-xml-helpers
  (package
    (name "haskell-8.8-xml-helpers")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-helpers/xml-helpers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rrk0j7m8ws86hbjw0l4ryq4m9i8llhsag2sfisy5r1iv2zwa0lv"))))
    (properties `((upstream-name . "xml-helpers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (home-page "http://github.com/acw/xml-helpers")
    (synopsis "Some useful helper functions for the xml library.")
    (description
     "Included are some folds and maps I've found useful in parsing XML data.")
    (license license:bsd-3)))

haskell-8.8-xml-helpers

(define-public haskell-8.8-xml-picklers
  (package
    (name "haskell-8.8-xml-picklers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
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

haskell-8.8-xml-picklers

(define-public haskell-8.8-xmlgen
  (package
    (name "haskell-8.8-xmlgen")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlgen/xmlgen-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1milbbr2iqwckqbq6i9sypinvs4hs7mzqn274x350psjfy6ajvwj"))))
    (properties `((upstream-name . "xmlgen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vwnqd0lsw81llsn0psga5r6pw7jh69vfbj3rnz7c2fpkc0gjh3j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)))
    (home-page "https://hackage.haskell.org/package/xmlgen")
    (synopsis "Fast XML generation library")
    (description "Library for high-performance XML generation.")
    (license license:bsd-3)))

haskell-8.8-xmlgen

(define-public haskell-8.8-yoga
  (package
    (name "haskell-8.8-yoga")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ieee754)
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

haskell-8.8-yoga

(define-public haskell-8.8-zero
  (package
    (name "haskell-8.8-zero")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zero/zero-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yb00wcgcyckzlf8kdxsdxpqra0r1sakwdph7pv9naa6q8zhhllw"))))
    (properties `((upstream-name . "zero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
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

haskell-8.8-zero

(define-public haskell-8.8-zot
  (package
    (name "haskell-8.8-zot")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monads-tf)))
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

haskell-8.8-zot

