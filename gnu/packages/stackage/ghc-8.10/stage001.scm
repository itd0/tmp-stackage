;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage001)
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
(define-public haskell-8.10-HUnit
  (package
    (name "haskell-8.10-HUnit")
    (version "1.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HUnit/HUnit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1as4sw5y39c3zrmr6sb8zbw74c9gdn4401y0dx45ih7zf6457dxh"))))
    (properties `((upstream-name . "HUnit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)))
    (home-page "https://github.com/hspec/HUnit#readme")
    (synopsis "A unit testing framework for Haskell")
    (description
     "HUnit is a unit testing framework for Haskell, inspired by the
JUnit tool for Java, see: <http://www.junit.org>.")
    (license license:bsd-3)))

haskell-8.10-HUnit

(define-public haskell-8.10-ListTree
  (package
    (name "haskell-8.10-ListTree")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-List)))
    (home-page "http://github.com/yairchu/generator/tree")
    (synopsis
     "Trees and monadic trees expressed as monadic lists where the underlying monad is a list")
    (description "Directory tree structure expressed as a monadic tree.
Searching, pruning, iterating, and processing trees.")
    (license license:bsd-3)))

haskell-8.10-ListTree

(define-public haskell-8.10-Rattus
  (package
    (name "haskell-8.10-Rattus")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Rattus/Rattus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rj29wbhk9bn7mazhrqcgas8m7rnfcak10krimsn08v2nzw2af79"))))
    (properties `((upstream-name . "Rattus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-simple-affine-space)))
    (home-page "https://github.com/pa-ba/Rattus")
    (synopsis "A modal FRP language")
    (description
     "This library implements the Rattus programming language as
an embedded DSL. To this end the library provides a GHC
plugin that performs the additional checks that are
necessary for Rattus. What follows is a brief
introduction to the language and its usage. A more
detailed introduction can be found in this
<src/docs/paper.pdf paper>.

Rattus is a functional reactive programming (FRP) language
that uses modal types to ensure operational properties
that are crucial for reactive programs: productivity (in
each computation step, the program makes progress),
causality (output depends only on current and earlier
input), and no implicit space leaks (programs do not
implicitly retain memory over time).

To ensure these properties, Rattus uses the type modality
@@O@@ to express the concept of time at the type
level. Intuitively speaking, a value of type @@O a@@
represents a computation that will produce a value of type
@@a@@ in the next time step. Additionally, the language also
features the @@Box@@ type modality. A value of type @@Box a@@
is a time-independent computation that can be executed at
any time to produce a value of type @@a@@.

For example, the type of streams is defined as

> data Str a = a ::: (O (Str a))

So the head of the stream is available now, but its tail
is only available in the next time step. Writing a @@map@@
function for this type of streams, requires us to use the
@@Box@@ modality:

> map :: Box (a -> b) -> Str a -> Str b
> map f (x ::: xs) = unbox f x ::: delay (map f (adv xs))

This makes sure that the function @@f@@ that we give to
@@map@@ is available at any time in the future.

The core of the language is defined in the module
\"Rattus.Primitives\". Note that the operations on @@O@@ and
@@Box@@ have non-standard typing rules. Therefore, this
library provides a compiler plugin that checks these
non-standard typing rules. To write Rattus programs, one
must enable this plugin via the GHC option
@@-fplugin=Rattus.Plugin@@, e.g. by including the following
line in the source file:

> @{-# OPTIONS -fplugin=Rattus.Plugin #-@}

In addition, one must annotate the functions that are
written in Rattus:

> @{-# ANN myFunction Rattus #-@}

Or annotate the whole module as a Rattus module:

> @{-# ANN module Rattus #-@}

Below is a minimal Rattus program using the
\"Rattus.Stream\" module for programming with streams:

> @{-# OPTIONS -fplugin=Rattus.Plugin #-@}
>
> import Rattus
> import Rattus.Stream
>
> @{-# ANN sums Rattus #-@}
> sums :: Str Int -> Str Int
> sums = scan (box (+)) 0

The
<docs/src/Rattus.Stream.html source code of the Rattus.Stream module>
provides more examples on how to program in Rattus.")
    (license license:bsd-3)))

haskell-8.10-Rattus

(define-public haskell-8.10-Sit
  (package
    (name "haskell-8.10-Sit")
    (version "0.2021.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Sit/Sit-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "045xbxf0jyxr6510mcfhnfbj2p0kka5l45cydlxchhwg75z8snmi"))))
    (properties `((upstream-name . "Sit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vd1j410rp27g9cbzd3b1ymv02gfmi7pcnqzgpnppi9kc0nrr6kl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-lens-light)))
    (home-page "https://github.com/andreasabel/Sit")
    (synopsis
     "Prototypical type checker for Type Theory with Sized Natural Numbers")
    (description
     "Sit = Size-irrelevant types

Sit is a prototypical language with an Agda-compatible syntax.
It has dependent function types, universes, sized natural numbers,
and case and recursion over natural numbers.
There is a relevant and an irrelevant quantifier over sizes.
For an example, see file test/Test.agda.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-Sit

(define-public haskell-8.10-TypeCompose
  (package
    (name "haskell-8.10-TypeCompose")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)))
    (home-page "https://github.com/conal/TypeCompose")
    (synopsis "Type composition classes & instances")
    (description
     "TypeCompose provides some classes & instances for forms of type
composition, as well as some modules who haven't yet found a home.

Please see the project wiki page: <http://haskell.org/haskellwiki/TypeCompose>

Copyright 2007-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.10-TypeCompose

(define-public haskell-8.10-X11
  (package
    (name "haskell-8.10-X11")
    (version "1.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/X11/X11-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1ip207l97s8nw4daxp9s254agk8f0wibpf0prx0n695klqyn8bz1"))))
    (properties `((upstream-name . "X11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/xmonad/X11")
    (synopsis "A binding to the X11 graphics library")
    (description
     "A Haskell binding to the X11 graphics library. The binding is a direct
translation of the C binding; for documentation of these calls, refer
to \\\"The Xlib Programming Manual\\\", available online at
<http://tronche.com/gui/x/xlib/>.")
    (license license:bsd-3)))

haskell-8.10-X11

(define-public haskell-8.10-alg
  (package
    (name "haskell-8.10-alg")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-dual)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-util)))
    (home-page "https://hackage.haskell.org/package/alg")
    (synopsis "Algebraic structures")
    (description "")
    (license license:bsd-3)))

haskell-8.10-alg

(define-public haskell-8.10-alsa-core
  (package
    (name "haskell-8.10-alsa-core")
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
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (Exceptions).")
    (description "This package provides access to ALSA infrastructure,
that is needed by both alsa-seq and alsa-pcm.")
    (license license:bsd-3)))

haskell-8.10-alsa-core

(define-public haskell-8.10-ansi-terminal
  (package
    (name "haskell-8.10-ansi-terminal")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal/ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0avjvd2492y2rqvi63a633rqsrmi1aq6dv18q5cp0x4kch3dlm5f"))))
    (properties `((upstream-name . "ansi-terminal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)))
    (home-page "https://github.com/UnkindPartition/ansi-terminal")
    (synopsis "Simple ANSI terminal support, with Windows compatibility")
    (description "ANSI terminal support for Haskell: allows cursor movement,
screen clearing, color output, showing or hiding the
cursor, and changing the title. Works on UNIX and Windows.")
    (license license:bsd-3)))

haskell-8.10-ansi-terminal

(define-public haskell-8.10-ap-normalize
  (package
    (name "haskell-8.10-ap-normalize")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ap-normalize/ap-normalize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1212zxc4qn6msk0w13yhrza2qjs79h78misllb4chng75jqi61l2"))))
    (properties `((upstream-name . "ap-normalize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-with-clang")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)))
    (home-page "https://hackage.haskell.org/package/ap-normalize")
    (synopsis "Self-normalizing applicative expressions")
    (description
     "An applicative functor transformer to normalize expressions using @@(\\<$>)@@,
@@(\\<*>)@@, and @@pure@@ into a linear list of actions.
See \"ApNormalize\" to get started.")
    (license license:expat)))

haskell-8.10-ap-normalize

(define-public haskell-8.10-approximate-equality
  (package
    (name "haskell-8.10-approximate-equality")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/approximate-equality/approximate-equality-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pxvyb5a6vh0isba81flv7wjlwfn091xrma7g6wzr08bvqmix883"))))
    (properties `((upstream-name . "approximate-equality") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-type-level-natural-number)))
    (home-page "http://github.com/gcross/approximate-equality")
    (synopsis "Newtype wrappers for approximate equality")
    (description
     "The purpose of this module is to provide newtype wrappers that allow one to effectively override the equality operator of a value so that it is /approximate/ rather than /exact/.  The wrappers use type annotations to specify the tolerance; the 'Digits' type constructor has been provided for specifying the tolerance using type-level natural numbers.  Instances for all of the classes in the numerical hierarchy have been provided for the wrappers, so the wrapped values can mostly be used in the same way as the original values. (In fact, most of the time one doesn't even have to wrap the starting values, since expressions such as @@(1+sqrt 2/3)@@ are automatically wrapped thanks to the 'fromIntegral' method of the 'Num' typeclass.)
See the documentation for Data.Eq.Approximate for more detailed information on how to use this package.
New in version 1.1:  Added explicit Show constraints to the Show instances, as the Num class in the newest version of GHC (wisely) no longer includes Show as a constraint.")
    (license license:bsd-3)))

haskell-8.10-approximate-equality

(define-public haskell-8.10-ascii-char
  (package
    (name "haskell-8.10-ascii-char")
    (version "1.0.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-char/ascii-char-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0mdmcxp5bd89akh6z7kdyhl679pbm58rww0mhzj6y41sj4g7j4m4"))))
    (properties `((upstream-name . "ascii-char") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "A Char type representing an ASCII character")
    (description
     "This package defines a @@Char@@ type that has 128 constructors, one for each ASCII character.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-ascii-char

(define-public haskell-8.10-async
  (package
    (name "haskell-8.10-async")
    (version "2.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/async/async-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09d7w3krfhnmf9dp6yffa9wykinhw541wibnjgnlyv77w1dzhka8"))))
    (properties `((upstream-name . "async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bench")
       #:cabal-revision
       ("2" "1j93w1krkadqijn59yjiws1366yhcn2mad1irqrk50in6l10k51b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
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

haskell-8.10-async

(define-public haskell-8.10-atomic-primops
  (package
    (name "haskell-8.10-atomic-primops")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
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

haskell-8.10-atomic-primops

(define-public haskell-8.10-binary-list
  (package
    (name "haskell-8.10-binary-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-phantom-state)))
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

haskell-8.10-binary-list

(define-public haskell-8.10-bindings-libzip
  (package
    (name "haskell-8.10-bindings-libzip")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bindings-DSL)
                  (@ (gnu packages compression) libzip)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Low level bindings to libzip.")
    (description
     "This package provides low-level bindings to libzip (v1.0.1) library.
For higher-level interface please use LibZip package:
<http://hackage.haskell.org/package/LibZip>")
    (license license:bsd-3)))

haskell-8.10-bindings-libzip

(define-public haskell-8.10-boring
  (package
    (name "haskell-8.10-boring")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/boring/boring-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d2cm9ra69cvaxs5x3lr2rfv7xx6xrbpb3dbcpyd8m77cqxm7b0b"))))
    (properties `((upstream-name . "boring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftagged")
       #:cabal-revision
       ("2" "04pn94i3mysi7px93k86sf29vw99sf38sl4n0gy2nma0iqsik828")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/phadej/boring")
    (synopsis "Boring and Absurd types")
    (description
     "* @@Boring@@ types are isomorphic to @@()@@.

* @@Absurd@@ types are isomorphic to @@Void@@.

See [What does () mean in Haskell -answer by Conor McBride](https://stackoverflow.com/questions/33112439/what-does-mean-in-haskell/33115522#33115522)")
    (license license:bsd-3)))

haskell-8.10-boring

(define-public haskell-8.10-broadcast-chan
  (package
    (name "haskell-8.10-broadcast-chan")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/broadcast-chan/broadcast-chan-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zsrafz3q9l8np8wafmrbi8ilwwsgnzkc8jfjkjfgs4kq65yglqw"))))
    (properties `((upstream-name . "broadcast-chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-sync" "-fthreaded")
       #:cabal-revision
       ("1" "1989dc49db8cf3ca24x4hs3nirm74xl9p0dqf8kpj1dr64y6dvzj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
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

haskell-8.10-broadcast-chan

(define-public haskell-8.10-c-struct
  (package
    (name "haskell-8.10-c-struct")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/c-struct/c-struct-" version
                    ".tar.gz"))
              (sha256
               (base32
                "179sqqzik48xf9axhm3m9y6qv8028lh7l16cr79z85ddkvry7avd"))))
    (properties `((upstream-name . "c-struct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/YoshikuniJujo/c-struct#readme")
    (synopsis "To make a wrapper for struct of C language")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/c-struct#readme>")
    (license license:bsd-3)))

haskell-8.10-c-struct

(define-public haskell-8.10-case-insensitive
  (package
    (name "haskell-8.10-case-insensitive")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/basvandijk/case-insensitive")
    (synopsis "Case insensitive string comparison")
    (description "The module @@Data.CaseInsensitive@@ provides the 'CI' type
constructor which can be parameterised by a string-like
type like: 'String', 'ByteString', 'Text',
etc.. Comparisons of values of the resulting type will be
insensitive to cases.")
    (license license:bsd-3)))

haskell-8.10-case-insensitive

(define-public haskell-8.10-cereal-text
  (package
    (name "haskell-8.10-cereal-text")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)))
    (home-page "https://github.com/ulikoehler/cereal-text")
    (synopsis "Data.Text instances for the cereal serialization library")
    (description "Data.Text instances for the cereal serialization library.

Provides instances for Text and lazy Text.
Uses UTF-8 encoding for serialization.

Use
@@import Data.Serialize.Text ()@@
to import instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-cereal-text

(define-public haskell-8.10-clumpiness
  (package
    (name "haskell-8.10-clumpiness")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tree-fun)))
    (home-page "https://hackage.haskell.org/package/clumpiness")
    (synopsis "Calculate the clumpiness of leaf properties in a tree")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-clumpiness

(define-public haskell-8.10-codec-beam
  (package
    (name "haskell-8.10-codec-beam")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-8.10-codec-beam

(define-public haskell-8.10-concurrent-extra
  (package
    (name "haskell-8.10-concurrent-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unbounded-delays)))
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

haskell-8.10-concurrent-extra

(define-public haskell-8.10-concurrent-supply
  (package
    (name "haskell-8.10-concurrent-supply")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "http://github.com/ekmett/concurrent-supply/")
    (synopsis "A fast concurrent unique identifier supply with a pure API")
    (description
     "A fast supply of concurrent unique identifiers suitable for use
within a single process. Once the initial 'Supply' has been initialized,
the remainder of the API is pure. See \"Control.Concurrent.Supply\" for
details.")
    (license license:bsd-3)))

haskell-8.10-concurrent-supply

(define-public haskell-8.10-contravariant
  (package
    (name "haskell-8.10-contravariant")
    (version "1.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant/contravariant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ynz89vfn7czxpa203zmdqknkvpylzzl9rlkpasx1anph1jxcbq6"))))
    (properties `((upstream-name . "contravariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftagged" "-fsemigroups" "-fstatevar")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-StateVar)))
    (home-page "http://github.com/ekmett/contravariant/")
    (synopsis "Contravariant functors")
    (description "Contravariant functors.")
    (license license:bsd-3)))

haskell-8.10-contravariant

(define-public haskell-8.10-cpphs
  (package
    (name "haskell-8.10-cpphs")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-polyparse)))
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

haskell-8.10-cpphs

(define-public haskell-8.10-crypto-api
  (package
    (name "haskell-8.10-crypto-api")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
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

haskell-8.10-crypto-api

(define-public haskell-8.10-crypto-random-api
  (package
    (name "haskell-8.10-crypto-random-api")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)))
    (home-page "http://github.com/vincenthz/hs-crypto-random-api")
    (synopsis "Simple random generators API for cryptography related code")
    (description "Simple random generators API for cryptography related code")
    (license license:bsd-3)))

haskell-8.10-crypto-random-api

(define-public haskell-8.10-currency
  (package
    (name "haskell-8.10-currency")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-iso3166-country-codes)))
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

haskell-8.10-currency

(define-public haskell-8.10-data-accessor-mtl
  (package
    (name "haskell-8.10-data-accessor-mtl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in mtl State monad class")
    (description "Use Accessor to access state in mtl State monad class")
    (license license:bsd-3)))

haskell-8.10-data-accessor-mtl

(define-public haskell-8.10-data-accessor-transformers
  (package
    (name "haskell-8.10-data-accessor-transformers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in transformers State monad")
    (description "Use Accessor to access state in transformers State monad")
    (license license:bsd-3)))

haskell-8.10-data-accessor-transformers

(define-public haskell-8.10-data-default-instances-bytestring
  (package
    (name "haskell-8.10-data-default-instances-bytestring")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-bytestring/data-default-instances-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "083jck7v6zsnlamj96d2nbcqhpv1v1qdp08jagym846ws1w14hsc"))))
    (properties `((upstream-name . "data-default-instances-bytestring")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0gpdba4y17rp0kp9pd2qj6r4pnrc86vx47fkk3zfkggmv73pa82r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for (lazy and strict) ByteString, Builder and
ShortByteString.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> -- Strict ByteString:
> instance Default ByteString where
>     def = empty
>
> -- Lazy ByteString:
> instance Default ByteString where
>     def = empty

Following instance is provided only for
<https://hackage.haskell.org/package/bytestring bytestring> >=0.10, since
that it the version that introduced @@Builder@@:

> instance Default Builder where
>     def = mempty

Following instance is provided only for
<https://hackage.haskell.org/package/bytestring bytestring> >=0.10.4, since
that it the version that introduced @@ShortByteString@@:

> instance Default ShortByteString where
>     def = empty")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-bytestring

(define-public haskell-8.10-data-default-instances-containers
  (package
    (name "haskell-8.10-data-default-instances-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-containers")
    (synopsis "Default instances for types in containers")
    (description "")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-containers

(define-public haskell-8.10-data-default-instances-new-base
  (package
    (name "haskell-8.10-data-default-instances-new-base")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-new-base/data-default-instances-new-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzi7szmjf2df3v4aaid6pk6i4ma25k78v5mcxkhd6w52ifg67c3"))))
    (properties `((upstream-name . "data-default-instances-new-base")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-data-default-class")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for types in newer versions of base package.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

In addition to instances reexported from
<https://hackage.haskell.org/package/data-default-instances-base data-default-instances-base>
package, following @@Default@@ instances are provided:

> instance Default a => Default (Const a b) where
>     def = Const def
>
> instance Monad m => Default (Kleisli m a b) where
>     def = Kleisli return
>
> instance Default Version where
>     def = Version [] []

Following instances are available only for base >= 4.7.0.0:

> instance Default (Proxy a) where
>     def = Proxy
>
> instance Default SomeNat where
>     def = SomeNat (Proxy :: Proxy 0)
>
> instance Default SomeSymbol where
>     def = SomeSymbol (Proxy :: Proxy \"\")

Following instances are available only for base >= 4.8.0.0:

> instance Alternative f => Default (Alt f a) where
>     def = Alt empty
>
> instance Default a => Default (Identity a) where
>     def = Identity def
>
> instance Default Natural where
>     def = 0

Following instances are available only for base >= 4.9.0.0:

> instance Default a => Default (NonEmpty a) where
>     def = def :| []
>
> instance Bounded a => Default (Min a) where
>     def = minBound
>
> instance Bounded a => Default (Max a) where
>     def = maxBound
>
> instance Default (Option a) where
>     def = Option Nothing")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-new-base

(define-public haskell-8.10-data-default-instances-old-locale
  (package
    (name "haskell-8.10-data-default-instances-old-locale")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-old-locale")
    (synopsis "Default instances for types in old-locale")
    (description "")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-old-locale

(define-public haskell-8.10-data-default-instances-text
  (package
    (name "haskell-8.10-data-default-instances-text")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-text/data-default-instances-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pqc0rqh26vc7qfq4qdxp40c1qa85h7zxbyhzxb5kkinrx34qpfv"))))
    (properties `((upstream-name . "data-default-instances-text")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01125vbzwq35rkppm96x8fnwjyfid7x6ay6wq8n0qhr0skhcp2js")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for (lazy and strict) Text and Text Builder.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> -- Strict Text:
> instance Default Text where
>     def = empty
>
> -- Lazy Text:
> instance Default Text where
>     def = empty

Following instances are provided only for
<https://hackage.haskell.org/package/text text> >=0.8, since that it the
version that introduced @@Builder@@:

> instance Default Builder where
>     def = mempty")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-text

(define-public haskell-8.10-data-fix
  (package
    (name "haskell-8.10-data-fix")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-fix/data-fix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k0rcbb6dzv0ggdxqa2bh4jr829y0bczjrg98mrk5733q0xjs5rs"))))
    (properties `((upstream-name . "data-fix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0z77i9y86wlc13396akl8qxq39rwpkhhcs5fadzk47bwn7v1gsmx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/spell-music/data-fix")
    (synopsis "Fixpoint data types")
    (description
     "Fixpoint types and recursion schemes. If you define your AST as
fixpoint type, you get fold and unfold operations for free.

Thanks for contribution to: Matej Kollar, Herbert Valerio Riedel")
    (license license:bsd-3)))

haskell-8.10-data-fix

(define-public haskell-8.10-data-memocombinators
  (package
    (name "haskell-8.10-data-memocombinators")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-inttrie)))
    (home-page "http://github.com/luqui/data-memocombinators")
    (synopsis "Combinators for building memo tables.")
    (description "Combinators for building memo tables.")
    (license license:bsd-3)))

haskell-8.10-data-memocombinators

(define-public haskell-8.10-data-ref
  (package
    (name "haskell-8.10-data-ref")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)))
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

haskell-8.10-data-ref

(define-public haskell-8.10-debian-build
  (package
    (name "haskell-8.10-debian-build")
    (version "0.10.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/debian-build/debian-build-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1114xaqmhx74w0zqdksj6c1ggmfglcshhsxrw89gai5kzy47zp9d"))))
    (properties `((upstream-name . "debian-build") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "http://twitter.com/khibino/")
    (synopsis "Debian package build sequence tools")
    (description "This package provides build sequence functions
for debian package, and includes on-the-fly
build command 'odebuild'.")
    (license license:bsd-3)))

haskell-8.10-debian-build

(define-public haskell-8.10-debug-trace-var
  (package
    (name "haskell-8.10-debug-trace-var")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-show)))
    (home-page "https://github.com/ncaq/debug-trace-var#readme")
    (synopsis "You do not have to write variable names twice in Debug.Trace")
    (description
     "Please see the README on GitHub at <https://github.com/ncaq/debug-trace-var#readme>")
    (license license:expat)))

haskell-8.10-debug-trace-var

(define-public haskell-8.10-distributive
  (package
    (name "haskell-8.10-distributive")
    (version "0.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributive/distributive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14bb66qyfn43bj688igfvnfjw7iycjf4n2k38sm8rxbqw2916dfp"))))
    (properties `((upstream-name . "distributive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")
       #:cabal-revision
       ("1" "033890dfyd23dh7g7px863l0hr1b881jnhv4kgwaq16a3iagb68g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "http://github.com/ekmett/distributive/")
    (synopsis "Distributive functors -- Dual to Traversable")
    (description "Distributive functors -- Dual to @@Traversable@@")
    (license license:bsd-3)))

haskell-8.10-distributive

(define-public haskell-8.10-do-notation
  (package
    (name "haskell-8.10-do-notation")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed)))
    (home-page "https://github.com/isovector/do-notation#readme")
    (synopsis
     "Generalize do-notation to work on monads and indexed monads simultaneously.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/do-notation#readme>")
    (license license:bsd-3)))

haskell-8.10-do-notation

(define-public haskell-8.10-dyre
  (package
    (name "haskell-8.10-dyre")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dyre/dyre-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lrpjvah57p1ld3spcrgqds3claqkd5a9ay8inihl9wws0ifhfmh"))))
    (properties `((upstream-name . "dyre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-executable-path)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-io-storage)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)))
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

haskell-8.10-dyre

(define-public haskell-8.10-elm-core-sources
  (package
    (name "haskell-8.10-elm-core-sources")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)))
    (home-page "http://github.com/JoeyEremondi/elm-build-lib")
    (synopsis "Source files for the Elm runtime and standard libraries")
    (description
     "Embeds the  standard libraries and runtime files of the Elm language as Haskell strings,
so that they can be used for compilation and served in a Haskell web server.
For more information on the Elm language, see http://elm-lang.org.")
    (license license:bsd-3)))

haskell-8.10-elm-core-sources

(define-public haskell-8.10-enum-subset-generate
  (package
    (name "haskell-8.10-enum-subset-generate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)))
    (home-page "https://github.com/0xd34df00d/enum-subset-generate#readme")
    (synopsis
     "Generate an ADT being a subset of another ADT, and the corresponding mappings.")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/enum-subset-generate#readme>")
    (license license:bsd-3)))

haskell-8.10-enum-subset-generate

(define-public haskell-8.10-enummapset
  (package
    (name "haskell-8.10-enummapset")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/Mikolaj/enummapset")
    (synopsis "IntMap and IntSet with Enum keys/elements.")
    (description
     "This package contains simple wrappers around 'Data.IntMap' and
'Data.IntSet' with 'Enum' keys and elements respectively.
Especially useful for 'Int's wrapped with `newtype`.")
    (license license:bsd-3)))

haskell-8.10-enummapset

(define-public haskell-8.10-error-or-utils
  (package
    (name "haskell-8.10-error-or-utils")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/error-or-utils/error-or-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14n5h69wknns3b6ij8avdijwlpwykalkpvx2q57cg6zv0ywnvmwz"))))
    (properties `((upstream-name . "error-or-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-error-or)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/error-or-utils#readme")
    (synopsis "Utilities using ErrorOr datatype")
    (description "Builds on the error type defined in the error-or package")
    (license license:bsd-3)))

haskell-8.10-error-or-utils

(define-public haskell-8.10-exact-pi
  (package
    (name "haskell-8.10-exact-pi")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-numtype-dk)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-8.10-exact-pi

(define-public haskell-8.10-exception-transformers
  (package
    (name "haskell-8.10-exception-transformers")
    (version "0.4.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-transformers/exception-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmd2s40m86c9mhv32l5bvvf5r52cgpxvb4v5phyc3pjwlr7m8g5"))))
    (properties `((upstream-name . "exception-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/exception-transformers")
    (synopsis "Type classes and monads for unchecked extensible exceptions.")
    (description "This package provides type classes, a monad and a monad
transformer that support unchecked extensible exceptions as
well as asynchronous exceptions. It is compatible with
the transformers package.")
    (license license:bsd-3)))

haskell-8.10-exception-transformers

(define-public haskell-8.10-explicit-exception
  (package
    (name "haskell-8.10-explicit-exception")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
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

haskell-8.10-explicit-exception

(define-public haskell-8.10-express
  (package
    (name "haskell-8.10-express")
    (version "0.1.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/express/express-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04a1iv3dzyni7b0yvzqf1s8l0wg07hk9sg6d59hdbsl4f3kw8ki4"))))
    (properties `((upstream-name . "express") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)))
    (home-page "https://github.com/rudymatela/express#readme")
    (synopsis
     "Dynamically-typed expressions involving function application and variables.")
    (description
     "Express is a library for manipulating dynamically typed Haskell expressions.
It's like @@ Data.Dynamic @@ but
with support for encoding function aplication and variables.

It provides the @@ Expr @@ type and over a hundred functions for
building, evaluating, comparing, folding, canonicalizing and matching
@@ Expr @@s.  See the README and Haddock documentation for more details.")
    (license license:bsd-3)))

haskell-8.10-express

(define-public haskell-8.10-extra
  (package
    (name "haskell-8.10-extra")
    (version "1.7.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/extra/extra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17fzmxwrv0w7inhq7kia36prc2nsx845r9v56sihqvr17fk2cvpn"))))
    (properties `((upstream-name . "extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)))
    (home-page "https://github.com/ndmitchell/extra#readme")
    (synopsis "Extra functions I use.")
    (description
     "A library of extra functions for the standard Haskell libraries. Most functions are simple additions, filling out missing functionality. A few functions are available in later versions of GHC, but this package makes them available back to GHC 7.2.

The module \"Extra\" documents all functions provided by this library. Modules such as \"Data.List.Extra\" provide extra functions over \"Data.List\" and also reexport \"Data.List\". Users are recommended to replace \"Data.List\" imports with \"Data.List.Extra\" if they need the extra functionality.")
    (license license:bsd-3)))

haskell-8.10-extra

(define-public haskell-8.10-file-path-th
  (package
    (name "haskell-8.10-file-path-th")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)))
    (home-page "https://github.com/Simspace/file-path-th#readme")
    (synopsis "Template Haskell utilities for filepaths.")
    (description
     "Template Haskell utilities for filepaths. This package has utilities for embedding relative filepaths using Template Haskell.")
    (license license:expat)))

haskell-8.10-file-path-th

(define-public haskell-8.10-filemanip
  (package
    (name "haskell-8.10-filemanip")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (home-page "https://github.com/bos/filemanip")
    (synopsis "Expressive file and directory manipulation for Haskell.")
    (description "A Haskell library for working with files and directories.
Includes code for pattern matching, finding files,
modifying file contents, and more.")
    (license license:bsd-3)))

haskell-8.10-filemanip

(define-public haskell-8.10-fitspec
  (package
    (name "haskell-8.10-fitspec")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fitspec/fitspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jq4brkwq59hj8fpyfq60hywj9hx82qp0yjvyl0bmwy8jpc6j91k"))))
    (properties `((upstream-name . "fitspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)))
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

haskell-8.10-fitspec

(define-public haskell-8.10-foldable1
  (package
    (name "haskell-8.10-foldable1")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-util)))
    (home-page "https://hackage.haskell.org/package/foldable1")
    (synopsis "Foldable types with at least 1 element")
    (description "")
    (license license:bsd-3)))

haskell-8.10-foldable1

(define-public haskell-8.10-foundation
  (package
    (name "haskell-8.10-foundation")
    (version "0.0.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/foundation/foundation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06hsh40qwmy2nfkrd9m8lfhi6arziixdw9pn379m6a7cga2vjcnh"))))
    (properties `((upstream-name . "foundation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-experimental" "-f-bench-all" "-f-minimal-deps" "-f-bounds-check" "-f-doctest" "-f-linktest")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)))
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

haskell-8.10-foundation

(define-public haskell-8.10-function-builder
  (package
    (name "haskell-8.10-function-builder")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/sheyll/function-builder#readme")
    (synopsis "Create poly variadic functions for monoidal results")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-function-builder

(define-public haskell-8.10-gdp
  (package
    (name "haskell-8.10-gdp")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lawful)))
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

haskell-8.10-gdp

(define-public haskell-8.10-generic-lens-core
  (package
    (name "haskell-8.10-generic-lens-core")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens-core/generic-lens-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ja72rn7f7a24bmgqb6rds1ic78jffy2dzrb7sx8gy3ld5mlg135"))))
    (properties `((upstream-name . "generic-lens-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-profunctors)))
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

haskell-8.10-generic-lens-core

(define-public haskell-8.10-generics-sop
  (package
    (name "haskell-8.10-generics-sop")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop/generics-sop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "098blydb7c7wg77dn658r0zb1z20vfkar1him1rqlq0da90437b3"))))
    (properties `((upstream-name . "generics-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1s8bx25yrjqy1cj9y1s1m8a8qlby9dxjzin16yymz7g39fqcqxz8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sop-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
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

haskell-8.10-generics-sop

(define-public haskell-8.10-ghc-lib-parser
  (package
    (name "haskell-8.10-ghc-lib-parser")
    (version "8.10.7.20220219")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser/ghc-lib-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0caiv5nj1xxgzbimppy6hbakdplh3aacdg8g4ba3ssr5ba25rxbh"))))
    (properties `((upstream-name . "ghc-lib-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-8.10-ghc-lib-parser

(define-public haskell-8.10-gitrev
  (package
    (name "haskell-8.10-gitrev")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)))
    (home-page "https://github.com/acfoltzer/gitrev")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Some handy Template Haskell splices for including the current git hash and branch in the code of your project. Useful for including in panic messages, @@--version@@ output, or diagnostic info for more informative bug reports.")
    (license license:bsd-3)))

haskell-8.10-gitrev

(define-public haskell-8.10-gpolyline
  (package
    (name "haskell-8.10-gpolyline")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gpolyline/gpolyline-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01bsl7s8r33jgvk9lyca02awj43acii8spa6sskz19ivhm2adcr8"))))
    (properties `((upstream-name . "gpolyline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://github.com/fegu/gpolyline")
    (synopsis "Pure module for encoding/decoding Google Polyline")
    (description "Pure module for encoding/decoding Google Polyline")
    (license license:bsd-3)))

haskell-8.10-gpolyline

(define-public haskell-8.10-graphs
  (package
    (name "haskell-8.10-graphs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
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

haskell-8.10-graphs

(define-public haskell-8.10-hashmap
  (package
    (name "haskell-8.10-hashmap")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
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

haskell-8.10-hashmap

(define-public haskell-8.10-haskell-src-exts
  (package
    (name "haskell-8.10-haskell-src-exts")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)))
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

haskell-8.10-haskell-src-exts

(define-public haskell-8.10-hfsevents
  (package
    (name "haskell-8.10-hfsevents")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/luite/hfsevents")
    (synopsis "File/folder watching for OS X")
    (description "")
    (license license:bsd-3)))

haskell-8.10-hfsevents

(define-public haskell-8.10-hidapi
  (package
    (name "haskell-8.10-hidapi")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hidapi/hidapi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mgl2yrx7jgn9zzgbrxa7sa5wflzk1jj932jf0bf7f2vsvas71gf"))))
    (properties `((upstream-name . "hidapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-deepseq-generics)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) eudev)))
    (home-page "https://github.com/chpatrick/haskell-hidapi")
    (synopsis "Haskell bindings to HIDAPI")
    (description
     "Haskell bindings to the HIDAPI library (<https://github.com/libusb/hidapi>).

Note you need need to have the corresponding low-level
library installed for your OS, e.g. libudev-dev on Debian/Ubuntu,
or just udev on distributions that don't split dev libraries.")
    (license license:expat)))

haskell-8.10-hidapi

(define-public haskell-8.10-hlibgit2
  (package
    (name "haskell-8.10-hlibgit2")
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
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-8.10-hlibgit2

(define-public haskell-8.10-hs-functors
  (package
    (name "haskell-8.10-hs-functors")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-dual)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://hackage.haskell.org/package/hs-functors")
    (synopsis "Functors from products of Haskell and its dual to Haskell")
    (description "")
    (license license:bsd-3)))

haskell-8.10-hs-functors

(define-public haskell-8.10-hxt-unicode
  (package
    (name "haskell-8.10-hxt-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hxt-charproperties)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis
     "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings")
    (description
     "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,
used in the Haskell XML Toolbox.
ISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding
is done with lazy functions, errors may be detected or ignored.")
    (license license:expat)))

haskell-8.10-hxt-unicode

(define-public haskell-8.10-integration
  (package
    (name "haskell-8.10-integration")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)))
    (home-page "https://github.com/ekmett/integration")
    (synopsis "Fast robust numeric integration via tanh-sinh quadrature")
    (description "Fast robust numeric integration via tanh-sinh quadrature")
    (license license:bsd-3)))

haskell-8.10-integration

(define-public haskell-8.10-java-adt
  (package
    (name "haskell-8.10-java-adt")
    (version "0.2018.11.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/java-adt/java-adt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pdp7yvq0gpbxw7gp61r5mkrhdiff0cvlxssxzvg770idp46j6p5"))))
    (properties `((upstream-name . "java-adt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)))
    (home-page "http://github.com/andreasabel/java-adt")
    (synopsis "Create immutable algebraic data structures for Java.")
    (description
     "A simple tool to create immutable algebraic data structures and visitors for Java
(such as abstract syntax trees).  The input syntax is similar to Haskell data types,
and they will be compiled to Java class hierarchies.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-java-adt

(define-public haskell-8.10-kind-generics
  (package
    (name "haskell-8.10-kind-generics")
    (version "0.4.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics/kind-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11l1n57wfh1gr9mn0gb9kbkjbrfghmf3qasl0l6fjlbjcl8yvzbm"))))
    (properties `((upstream-name . "kind-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-kind-apply)))
    (home-page "https://hackage.haskell.org/package/kind-generics")
    (synopsis
     "Generic programming in GHC style for arbitrary kinds and GADTs.")
    (description
     "This package provides functionality to extend the data type generic programming functionality in GHC to classes of arbitrary kind, and constructors featuring constraints and existentials, as usually found in GADTs.")
    (license license:bsd-3)))

haskell-8.10-kind-generics

(define-public haskell-8.10-language-c
  (package
    (name "haskell-8.10-language-c")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c/language-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01yj353n85qcv9zvaf19f1260rip26h6gxqahplkx9fy7ybbnk6l"))))
    (properties `((upstream-name . "language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusebytestrings" "-f-allwarnings" "-fiecfpextension")
       #:cabal-revision
       ("1" "0wvrvfphz5r2yqxgxfn0ki9vmqhxh49qx41xdidmibp5i826c2mn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)))
    (home-page "http://visq.github.io/language-c/")
    (synopsis "Analysis and generation of C code")
    (description
     "Language C is a haskell library for the analysis and generation of C code.
It features a complete, well tested parser and pretty printer for all of C99 and a large
set of C11 and clang/GNU extensions.")
    (license license:bsd-3)))

haskell-8.10-language-c

(define-public haskell-8.10-lazyio
  (package
    (name "haskell-8.10-lazyio")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unsafe)))
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

haskell-8.10-lazyio

(define-public haskell-8.10-leancheck-instances
  (package
    (name "haskell-8.10-leancheck-instances")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-nats)))
    (home-page "https://github.com/rudymatela/leancheck-instances#readme")
    (synopsis "Common LeanCheck instances")
    (description
     "Listable instances for types provided by the Haskell Platform.

The current objective is to include all types supported by quickcheck-instances:
<https://hackage.haskell.org/package/quickcheck-instances>")
    (license license:bsd-3)))

haskell-8.10-leancheck-instances

(define-public haskell-8.10-lens-family
  (package
    (name "haskell-8.10-lens-family")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lens-family-core)))
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

haskell-8.10-lens-family

(define-public haskell-8.10-libgraph
  (package
    (name "haskell-8.10-libgraph")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-monads-tf)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-union-find)))
    (home-page "http://maartenfaddegon.nl")
    (synopsis "Store and manipulate data in a graph.")
    (description
     "A graph type, analysis of graphs and manipulation of graphs.")
    (license license:bsd-3)))

haskell-8.10-libgraph

(define-public haskell-8.10-mainland-pretty
  (package
    (name "haskell-8.10-mainland-pretty")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mainland-pretty/mainland-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19z2769rik6kwvsil2if2bfq2v59jmwv74jy3fy4q3q3zy4239p1"))))
    (properties `((upstream-name . "mainland-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cqvwxapdvqs9xixas3jaim8ydzvgs361i73ggxjf41b4mfml8z7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-srcloc)))
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

haskell-8.10-mainland-pretty

(define-public haskell-8.10-mathexpr
  (package
    (name "haskell-8.10-mathexpr")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)))
    (home-page "https://github.com/mdibaiee/mathexpr")
    (synopsis
     "Parse and evaluate math expressions with variables and functions")
    (description
     "A simple tool to evaluate math expressions as strings with support for custom functions and operators")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-mathexpr

(define-public haskell-8.10-messagepack
  (package
    (name "haskell-8.10-messagepack")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)))
    (home-page "https://github.com/rodrigosetti/messagepack")
    (synopsis "Serialize instance for Message Pack Object")
    (description "Serialize instance for Message Pack Object")
    (license license:expat)))

haskell-8.10-messagepack

(define-public haskell-8.10-microlens-contra
  (package
    (name "haskell-8.10-microlens-contra")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "True folds and getters for microlens")
    (description
     "This package provides @@Fold@@ and @@Getter@@ that are fully compatible with lens; the downside is that this package depends on contravariant, which in its turn depends on a lot of other packages (but still less than lens).

The difference between @@Fold@@ and @@SimpleFold@@ is that you can use e.g. @@takingWhile@@\\/@@droppingWhile@@ and @@backwards@@ on the former but not on the latter. Most functions from lens that work with @@Fold@@ would work with @@SimpleFold@@ as well, tho.

Starting from GHC 8.6, this package doesn't depend on contravariant anymore.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.10-microlens-contra

(define-public haskell-8.10-microlens-ghc
  (package
    (name "haskell-8.10-microlens-ghc")
    (version "0.4.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-ghc/microlens-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q079kjqah8nbr4lll1w9i1wb1ayia07qi6g50hfcpsfvwsrh8s6"))))
    (properties `((upstream-name . "microlens-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + array, bytestring, containers, transformers")
    (description
     "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @@Lens.Micro.GHC@@ reexports everything from @@Lens.Micro@@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>, <http://hackage.haskell.org/package/transfromers transformers>).

The minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.10-microlens-ghc

(define-public haskell-8.10-microlens-mtl
  (package
    (name "haskell-8.10-microlens-mtl")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens support for Reader/Writer/State from mtl")
    (description
     "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.10-microlens-mtl

(define-public haskell-8.10-microlens-th
  (package
    (name "haskell-8.10-microlens-th")
    (version "0.4.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-th/microlens-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dg2xhj85fy8q39m5dd94kjlabjyxgc0336vzkg0174l6l110l1c"))))
    (properties `((upstream-name . "microlens-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "142wksvc854qmd665qd6mwzik8g02yzfpjk1fpxw4mlcns06y4m2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "Automatic generation of record lenses for microlens")
    (description
     "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens).

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.10-microlens-th

(define-public haskell-8.10-miniutter
  (package
    (name "haskell-8.10-miniutter")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/miniutter/miniutter-" version
                    ".tar.gz"))
              (sha256
               (base32
                "126gwbii4j8j778h7c8vwapn6dya8phbjja37pys4kly0p877mp4"))))
    (properties `((upstream-name . "miniutter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-minimorph)))
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

haskell-8.10-miniutter

(define-public haskell-8.10-mmorph
  (package
    (name "haskell-8.10-mmorph")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmorph/mmorph-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bq9m3hlfax1826gg5yhih79x33rvfx59wdh8yf43azd7l74bys6"))))
    (properties `((upstream-name . "mmorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "087v8ajcfpx4f0v4jxvv16h6jswgnkfnyfn28k406d5w3ihcx1wl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/mmorph")
    (synopsis "Monad morphisms")
    (description
     "This library provides monad morphism utilities, most commonly used
for manipulating monad transformer stacks.")
    (license license:bsd-3)))

haskell-8.10-mmorph

(define-public haskell-8.10-monad-parallel
  (package
    (name "haskell-8.10-monad-parallel")
    (version "0.7.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-parallel/monad-parallel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yjn8acn8z8b1v5nnmwrmrcim9lqh942kgi2c03cnnklfdc1cqip"))))
    (properties `((upstream-name . "monad-parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://hub.darcs.net/blamario/SCC.wiki/")
    (synopsis "Parallel execution of monadic computations")
    (description
     "This package defines classes of monads that can perform multiple executions in parallel and combine their results. For
any monad that's an instance of the class, the package re-implements a subset of the Control.Monad interface, but with
parallel execution.")
    (license license:bsd-3)))

haskell-8.10-monad-parallel

(define-public haskell-8.10-monad-peel
  (package
    (name "haskell-8.10-monad-peel")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)))
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

haskell-8.10-monad-peel

(define-public haskell-8.10-monad-primitive
  (package
    (name "haskell-8.10-monad-primitive")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-primitive/monad-primitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vi6g65hdyq5vq78mfag0qljxgzb6vq83m82x3cpgjl7dr9k5h1x"))))
    (properties `((upstream-name . "monad-primitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "http://bitbucket.org/Shimuuar/monad-primitive")
    (synopsis
     "Type class for monad transformers stack with pirimitive base monad.")
    (description
     "Type class for for monad transformers stack with pirimitive base
monad and mutable references whic could use either ST or IO monads.")
    (license license:bsd-3)))

haskell-8.10-monad-primitive

(define-public haskell-8.10-monadic-arrays
  (package
    (name "haskell-8.10-monadic-arrays")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "http://github.com/ekmett/monadic-arrays/")
    (synopsis "Boxed and unboxed arrays for monad transformers")
    (description "Boxed and unboxed arrays for monad transformers")
    (license license:bsd-3)))

haskell-8.10-monadic-arrays

(define-public haskell-8.10-monoid-transformer
  (package
    (name "haskell-8.10-monoid-transformer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-transformer")
    (synopsis "Monoid counterparts to some ubiquitous monad transformers")
    (description
     "Monoid transformers: State, Reader

There is no Writer transformer.
It's vice versa: The Writer monad transforms a monoid to a monad.")
    (license license:bsd-3)))

haskell-8.10-monoid-transformer

(define-public haskell-8.10-multipart
  (package
    (name "haskell-8.10-multipart")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multipart/multipart-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p6n4knxpjv70nbl6cmd6x7gkdjsjqp4ya7fz00bfrqp7jvhlivn"))))
    (properties `((upstream-name . "multipart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stringsearch)))
    (home-page "http://www.github.com/silkapp/multipart")
    (synopsis "Parsers for the HTTP multipart format")
    (description
     "Parsers and data types for the HTTP multipart format from RFC2046.")
    (license license:bsd-3)))

haskell-8.10-multipart

(define-public haskell-8.10-murmur3
  (package
    (name "haskell-8.10-murmur3")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/murmur3/murmur3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ldmhprzldcxdbv5cd7nm7dfaavns4iv4z6mi1prnx1yn41lp6d0"))))
    (properties `((upstream-name . "murmur3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)))
    (home-page "https://github.com/haskoin/murmur3#readme")
    (synopsis "Pure Haskell implementation of the MurmurHash3 x86 algorithm")
    (description
     "MurmurHash3 is a non-cryptographic hash function suitable for general hash-based lookup. We provide the x86 version which closely follows  the following implementation: <https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>")
    (license license:expat)))

haskell-8.10-murmur3

(define-public haskell-8.10-natural-induction
  (package
    (name "haskell-8.10-natural-induction")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-peano)))
    (home-page "https://hackage.haskell.org/package/natural-induction")
    (synopsis "Induction over natural numbers")
    (description "")
    (license license:bsd-3)))

haskell-8.10-natural-induction

(define-public haskell-8.10-network-transport
  (package
    (name "haskell-8.10-network-transport")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
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

haskell-8.10-network-transport

(define-public haskell-8.10-non-empty-sequence
  (package
    (name "haskell-8.10-non-empty-sequence")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "http://www.github.com/massysett/non-empty-sequence")
    (synopsis "Non-empty sequence")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-non-empty-sequence

(define-public haskell-8.10-old-time
  (package
    (name "haskell-8.10-old-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)))
    (home-page "https://hackage.haskell.org/package/old-time")
    (synopsis "Time library")
    (description "This package provides the old time library.

For new projects, the newer
<http://hackage.haskell.org/package/time time library>
is recommended.")
    (license license:bsd-3)))

haskell-8.10-old-time

(define-public haskell-8.10-optics-core
  (package
    (name "haskell-8.10-optics-core")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-core/optics-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01z1rjrmj3jqh3fygqa1asr4azhdnqpix27sdw3ygi5dnbcmn49h"))))
    (properties `((upstream-name . "optics-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-profunctors)))
    (home-page "https://hackage.haskell.org/package/optics-core")
    (synopsis "Optics as an abstract interface: core definitions")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface.

This variant provides core definitions with a minimal dependency footprint.
See the @@<https://hackage.haskell.org/package/optics optics>@@ package (and its
dependencies) for documentation and the \"batteries-included\" variant.")
    (license license:bsd-3)))

haskell-8.10-optics-core

(define-public haskell-8.10-options
  (package
    (name "haskell-8.10-options")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-monads-tf)))
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

haskell-8.10-options

(define-public haskell-8.10-percent-format
  (package
    (name "haskell-8.10-percent-format")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/percent-format/percent-format-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nlfva8ldvq169q76ng2f23bdnyzc6q8a7bq4lgwr9ypw96i503f"))))
    (properties `((upstream-name . "percent-format") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)))
    (home-page "https://github.com/rudymatela/percent-format#readme")
    (synopsis "simple printf-style string formatting")
    (description
     "The @@Text.PercentFormat@@ library provides printf-style string formatting.  It
provides a @@%@@ operator (as in Ruby or Python) and uses the old
C-printf-style format you know and love.")
    (license license:bsd-3)))

haskell-8.10-percent-format

(define-public haskell-8.10-pretty-show
  (package
    (name "haskell-8.10-pretty-show")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-lexer)))
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

haskell-8.10-pretty-show

(define-public haskell-8.10-primitive-addr
  (package
    (name "haskell-8.10-primitive-addr")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/andrewthad/primitive-addr")
    (synopsis "Addresses to unmanaged memory")
    (description
     "This library provides the `Data.Primitive.Addr` module
that was a part of the `primitive` library before `primitive-0.7.0.0`.")
    (license license:bsd-3)))

haskell-8.10-primitive-addr

(define-public haskell-8.10-primitive-unaligned
  (package
    (name "haskell-8.10-primitive-unaligned")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/haskell-primitive/primitive-unaligned")
    (synopsis "Unaligned access to primitive arrays")
    (description
     "Unaligned access to primitive arrays. The offsets are given in bytes rather than elements.")
    (license license:bsd-3)))

haskell-8.10-primitive-unaligned

(define-public haskell-8.10-product-isomorphic
  (package
    (name "haskell-8.10-product-isomorphic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-data-compat)))
    (home-page "http://github.com/khibino/haskell-product-isomorphic")
    (synopsis "Weaken applicative functor on products")
    (description "Weaken applicative functor which allows only product
construction. Product constructions and deconstructions
are always isomorphic.")
    (license license:bsd-3)))

haskell-8.10-product-isomorphic

(define-public haskell-8.10-promises
  (package
    (name "haskell-8.10-promises")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "http://github.com/ekmett/promises/")
    (synopsis "Lazy demand-driven promises")
    (description "Lazy demand-driven promises")
    (license license:bsd-3)))

haskell-8.10-promises

(define-public haskell-8.10-prompt
  (package
    (name "haskell-8.10-prompt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
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

haskell-8.10-prompt

(define-public haskell-8.10-psqueues
  (package
    (name "haskell-8.10-psqueues")
    (version "0.2.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psqueues/psqueues-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cmz7spfzx7niglmsphnndh0m4b8njkn0fhb9nshbnbq6nx515yh"))))
    (properties `((upstream-name . "psqueues") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
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

haskell-8.10-psqueues

(define-public haskell-8.10-random
  (package
    (name "haskell-8.10-random")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/random/random-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pmr7zbbqg58kihhhwj8figf5jdchhi7ik2apsyxbgsqq3vrqlg4"))))
    (properties `((upstream-name . "random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1hzfz9b1cxrsya8i53yx145iypaakfsfjix7l8girhx7vbz0cm8r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)))
    (home-page "https://hackage.haskell.org/package/random")
    (synopsis "Pseudo-random number generation")
    (description
     "This package provides basic pseudo-random number generation, including the
ability to split random number generators.

== \"System.Random\": pure pseudo-random number interface

In pure code, use 'System.Random.uniform' and 'System.Random.uniformR' from
\"System.Random\" to generate pseudo-random numbers with a pure pseudo-random
number generator like 'System.Random.StdGen'.

As an example, here is how you can simulate rolls of a six-sided die using
'System.Random.uniformR':

>>> let roll = uniformR (1, 6)        :: RandomGen g => g -> (Word, g)
>>> let rolls = unfoldr (Just . roll) :: RandomGen g => g -> [Word]
>>> let pureGen = mkStdGen 42
>>> take 10 (rolls pureGen)           :: [Word]
[1,1,3,2,4,5,3,4,6,2]

See \"System.Random\" for more details.

== \"System.Random.Stateful\": monadic pseudo-random number interface

In monadic code, use 'System.Random.Stateful.uniformM' and
'System.Random.Stateful.uniformRM' from \"System.Random.Stateful\" to generate
pseudo-random numbers with a monadic pseudo-random number generator, or
using a monadic adapter.

As an example, here is how you can simulate rolls of a six-sided die using
'System.Random.Stateful.uniformRM':

>>> let rollM = uniformRM (1, 6)                 :: StatefulGen g m => g -> m Word
>>> let pureGen = mkStdGen 42
>>> runStateGen_ pureGen (replicateM 10 . rollM) :: [Word]
[1,1,3,2,4,5,3,4,6,2]

The monadic adapter 'System.Random.Stateful.runGenState_' is used here to lift
the pure pseudo-random number generator @@pureGen@@ into the
'System.Random.Stateful.StatefulGen' context.

The monadic interface can also be used with existing monadic pseudo-random
number generators. In this example, we use the one provided in the
<https://hackage.haskell.org/package/mwc-random mwc-random> package:

>>> import System.Random.MWC as MWC
>>> let rollM = uniformRM (1, 6)       :: StatefulGen g m => g -> m Word
>>> monadicGen <- MWC.create
>>> replicateM 10 (rollM monadicGen) :: IO [Word]
[2,3,6,6,4,4,3,1,5,4]

See \"System.Random.Stateful\" for more details.")
    (license license:bsd-3)))

haskell-8.10-random

(define-public haskell-8.10-range-set-list
  (package
    (name "haskell-8.10-range-set-list")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/phadej/range-set-list#readme")
    (synopsis "Memory efficient sets with ranges of elements.")
    (description
     "Memory efficient sets with continuous ranges of discrete, bounded elements. List- and map-based implementations. Interface mimics 'Data.Set' where possible.")
    (license license:expat)))

haskell-8.10-range-set-list

(define-public haskell-8.10-rate-limit
  (package
    (name "haskell-8.10-rate-limit")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-units)))
    (home-page "http://github.com/acw/rate-limit")
    (synopsis "A basic library for rate-limiting IO actions.")
    (description
     "In many cases, it is useful, necessary, or simply nice to limit how
frequently you perform some action. For example, you may want to limit
how often your program makes a request of some web site. This library
is intended as a general-purpose mechanism for rate-limiting IO actions.")
    (license license:bsd-3)))

haskell-8.10-rate-limit

(define-public haskell-8.10-reform
  (package
    (name "haskell-8.10-reform")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "http://www.happstack.com/")
    (synopsis
     "reform is a type-safe HTML form generation and validation library")
    (description "reform follows in the footsteps of formlets and
digestive-functors <= 0.2. It provides a
type-safe and composable method for generating
an HTML form that includes validation.")
    (license license:bsd-3)))

haskell-8.10-reform

(define-public haskell-8.10-regex-pcre
  (package
    (name "haskell-8.10-regex-pcre")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)
                  (@ (gnu packages pcre) pcre)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "PCRE Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.10-regex-pcre

(define-public haskell-8.10-regex-pcre-builtin
  (package
    (name "haskell-8.10-regex-pcre-builtin")
    (version "0.95.2.3.8.44")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre-builtin/regex-pcre-builtin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pn55ssrwr05c9sa9jvp0knvzjksz04wn3pmzf5dz4xgbyjadkna"))))
    (properties `((upstream-name . "regex-pcre-builtin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "19ryjv8va9bjwhfk4v81lsvi91aj7aw1cflggywjpmw001qr419d")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)))
    (home-page "https://hackage.haskell.org/package/regex-pcre-builtin")
    (synopsis "PCRE Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.

See also <https://wiki.haskell.org/Regular_expressions> for more information.

Includes bundled code from www.pcre.org")
    (license license:bsd-3)))

haskell-8.10-regex-pcre-builtin

(define-public haskell-8.10-regex-posix
  (package
    (name "haskell-8.10-regex-posix")
    (version "0.96.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-posix/regex-posix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1715b57z67q4hg0jz44wkxrxi3v7n5iagw6gw48pf8hr34wpr0n7"))))
    (properties `((upstream-name . "regex-posix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-_regex-posix-clib")
       #:cabal-revision
       ("1" "1x5xkfddn3llxk4fngqbd8njssrwb7jlp0a0jxfrgdivbava9fwx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)))
    (home-page "https://hackage.haskell.org/package/regex-posix")
    (synopsis "POSIX Backend for \"Text.Regex\" (regex-base)")
    (description
     "The POSIX regex backend for <//hackage.haskell.org/package/regex-base regex-base>.

The main appeal of this backend is that it's very lightweight due to its reliance on the ubiquitous <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html POSIX.2 regex> facility that is provided by the standard C library on most POSIX platforms.

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.10-regex-posix

(define-public haskell-8.10-renderable
  (package
    (name "haskell-8.10-renderable")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
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

haskell-8.10-renderable

(define-public haskell-8.10-scientific
  (package
    (name "haskell-8.10-scientific")
    (version "0.3.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scientific/scientific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aa3ngb71l2sh1x2829napnr1w285q0sn2f7z2wvi3ynng2238d3"))))
    (properties `((upstream-name . "scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder" "-f-integer-simple")
       #:cabal-revision
       ("3" "1n67w1b64q59nn4845z3kr8rm0x0p7bi3cyp6n1dpnfs8k4l8x2i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
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

haskell-8.10-scientific

(define-public haskell-8.10-scrypt
  (package
    (name "haskell-8.10-scrypt")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)))
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

haskell-8.10-scrypt

(define-public haskell-8.10-simplistic-generics
  (package
    (name "haskell-8.10-simplistic-generics")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-kind-apply)))
    (home-page "https://hackage.haskell.org/package/simplistic-generics")
    (synopsis "Generic programming without too many type classes")
    (description
     "This library provides a representation build on top of `GHC.Generics`, which can be used to describe generic operations on a single function, instead of having each case defined in an instance of a type class.")
    (license license:bsd-3)))

haskell-8.10-simplistic-generics

(define-public haskell-8.10-singleton-bool
  (package
    (name "haskell-8.10-singleton-bool")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-dec)))
    (home-page "https://github.com/phadej/singleton-bool#readme")
    (synopsis "Type level booleans")
    (description "Type level booleans.

@@singletons@@ package provides similar functionality,
but it has tight dependency constraints.")
    (license license:bsd-3)))

haskell-8.10-singleton-bool

(define-public haskell-8.10-siphash
  (package
    (name "haskell-8.10-siphash")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cpu)))
    (home-page "http://github.com/vincenthz/hs-siphash")
    (synopsis "siphash: a fast short input PRF")
    (description
     "Haskell implementation of siphash. [http://131002.net/siphash/siphash.pdf]")
    (license license:bsd-3)))

haskell-8.10-siphash

(define-public haskell-8.10-storable-complex
  (package
    (name "haskell-8.10-storable-complex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)))
    (home-page "https://github.com/cartazio/storable-complex")
    (synopsis "Storable instance for Complex")
    (description "Provides a Storable instance for Complex which is binary
compatible with C99, C++ and Fortran complex data types.

The only purpose of this package is to provide a standard
location for this instance so that other packages needing
this instance can play nicely together.")
    (license license:bsd-3)))

haskell-8.10-storable-complex

(define-public haskell-8.10-storable-endian
  (package
    (name "haskell-8.10-storable-endian")
    (version "0.2.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-endian/storable-endian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0icyf3w9hw2k5naxjsfvmykj98l94bz626qadz37r0wv22lsicff"))))
    (properties `((upstream-name . "storable-endian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteorder)))
    (home-page "https://hackage.haskell.org/package/storable-endian")
    (synopsis "Storable instances with endianness")
    (description "Storable instances with endianness")
    (license license:bsd-3)))

haskell-8.10-storable-endian

(define-public haskell-8.10-store-core
  (package
    (name "haskell-8.10-store-core")
    (version "0.4.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/store-core/store-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0h21wp51phbwk9ajblqaqzx1hk9c58gkihmycjn0hj299kxly80y"))))
    (properties `((upstream-name . "store-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-alignment")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Fast and lightweight binary serialization")
    (description "")
    (license license:expat)))

haskell-8.10-store-core

(define-public haskell-8.10-string-class
  (package
    (name "haskell-8.10-string-class")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/string-class/string-class")
    (synopsis "String class library")
    (description "String class library.")
    (license license:bsd-3)))

haskell-8.10-string-class

(define-public haskell-8.10-system-argv0
  (package
    (name "haskell-8.10-system-argv0")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-system-filepath)))
    (home-page "https://john-millikin.com/software/haskell-filesystem/")
    (synopsis "Get argv[0] as a FilePath.")
    (description
     "Get @@argv[0]@@ as a FilePath. This is how the program was invoked, and might
not correspond to any actual file.

Use this instead of @@System.Environment.getProgName@@ if you want the full
path, and not just the last component.")
    (license license:expat)))

haskell-8.10-system-argv0

(define-public haskell-8.10-system-fileio
  (package
    (name "haskell-8.10-system-fileio")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-system-filepath)))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "Consistent filesystem interaction across GHC versions (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-8.10-system-fileio

(define-public haskell-8.10-tabular
  (package
    (name "haskell-8.10-tabular")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-csv)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-html)))
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

haskell-8.10-tabular

(define-public haskell-8.10-tao-example
  (package
    (name "haskell-8.10-tao-example")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tao)))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Example usage of the tao package.")
    (description "Example usage of type-level assertions using tao.")
    (license license:expat)))

haskell-8.10-tao-example

(define-public haskell-8.10-text-format
  (package
    (name "haskell-8.10-text-format")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-format/text-format-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qxs8xyjk8nzzzam62lqqml9s0p08m749jri0lfaa844mnw3frij"))))
    (properties `((upstream-name . "text-format") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("2" "05findgw709h930wshaq514maxarjyjhsam6pkyzq83iz1yc2gra")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/bos/text-format")
    (synopsis "Text formatting")
    (description
     "A text formatting library optimized for both ease of use and high
performance.")
    (license license:bsd-3)))

haskell-8.10-text-format

(define-public haskell-8.10-text-short
  (package
    (name "haskell-8.10-text-short")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://hackage.haskell.org/package/text-short")
    (synopsis "Memory-efficient representation of Unicode text strings")
    (description
     "This package provides the 'ShortText' type which is suitable for keeping many short strings in memory. This is similiar to how 'ShortByteString' relates to 'ByteString'.

The main difference between 'Text' and 'ShortText' is that 'ShortText' uses UTF-8 instead of UTF-16 internally and also doesn't support zero-copy slicing (thereby saving 2 words). Consequently, the memory footprint of a (boxed) 'ShortText' value is 4 words (2 words when unboxed) plus the length of the UTF-8 encoded payload.")
    (license license:bsd-3)))

haskell-8.10-text-short

(define-public haskell-8.10-th-lift
  (package
    (name "haskell-8.10-th-lift")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
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

haskell-8.10-th-lift

(define-public haskell-8.10-time-compat
  (package
    (name "haskell-8.10-time-compat")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)))
    (home-page "https://github.com/haskellari/time-compat")
    (synopsis "Compatibility package for time")
    (description
     "This packages tries to compat as much of @@time@@ features as possible.

/TODO:/

* Difference type @@ParseTime@@ and @@FormatTime@@ instances are missing.

* Formatting varies depending on underlying @@time@@ version

* @@dayFractionToTimeOfDay@@ on extreme values")
    (license license:bsd-3)))

haskell-8.10-time-compat

(define-public haskell-8.10-time-lens
  (package
    (name "haskell-8.10-time-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-lens-light)))
    (home-page "https://github.com/feuerbach/time-lens")
    (synopsis "Lens-based interface to Data.Time data structures")
    (description "")
    (license license:bsd-3)))

haskell-8.10-time-lens

(define-public haskell-8.10-timezone-olson
  (package
    (name "haskell-8.10-timezone-olson")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timezone-olson/timezone-olson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10f5843sza2ikj2sg9fjhf5dhnhcidad86cdjmrj1y6zclkiqmdc"))))
    (properties `((upstream-name . "timezone-olson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-timezone-series)))
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

haskell-8.10-timezone-olson

(define-public haskell-8.10-transformers-base
  (package
    (name "haskell-8.10-transformers-base")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-base/transformers-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "146g69yxmlrmvqnzwcw4frxfl3z04lda9zqwcqib34dnkrlghfrj"))))
    (properties `((upstream-name . "transformers-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-forphaninstances")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://github.com/mvv/transformers-base")
    (synopsis "Lift computations from the bottom of a transformer stack")
    (description
     "This package provides a straightforward port of @@monadLib@@'s BaseM
typeclass to @@transformers@@.")
    (license license:bsd-3)))

haskell-8.10-transformers-base

(define-public haskell-8.10-tuple
  (package
    (name "haskell-8.10-tuple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-OneTuple)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-8.10-tuple

(define-public haskell-8.10-unique
  (package
    (name "haskell-8.10-unique")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "http://github.com/ekmett/unique/")
    (synopsis "Fully concurrent unique identifiers")
    (description "Fully concurrent unique identifiers.")
    (license license:bsd-3)))

haskell-8.10-unique

(define-public haskell-8.10-universe-base
  (package
    (name "haskell-8.10-universe-base")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-base/universe-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jja1yqfqdnpc0982haccpqz9zb3p50ydyv89hcg9pjr3cr1is4r"))))
    (properties `((upstream-name . "universe-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
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

haskell-8.10-universe-base

(define-public haskell-8.10-vector
  (package
    (name "haskell-8.10-vector")
    (version "0.12.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vector/vector-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dczbcisxhhix859dng5zhxkn3xvlnllsq60apqzvmyl5g056jpv"))))
    (properties `((upstream-name . "vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-f-wall")
       #:cabal-revision
       ("2" "0gkzrqcx5fymkxm92gy47qj0spj79ygv1vn7kfzdg7nn284x1yzz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
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

haskell-8.10-vector

(define-public haskell-8.10-wide-word
  (package
    (name "haskell-8.10-wide-word")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
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

haskell-8.10-wide-word

(define-public haskell-8.10-wl-pprint-text
  (package
    (name "haskell-8.10-wl-pprint-text")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-text/wl-pprint-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0axivwh7bxmljxpfnccs66knxzrqck07byxmp2j737xbb26pf5cj"))))
    (properties `((upstream-name . "wl-pprint-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)))
    (home-page "https://hackage.haskell.org/package/wl-pprint-text")
    (synopsis "A Wadler/Leijen Pretty Printer for Text values")
    (description "A clone of wl-pprint for use with the text library.")
    (license license:bsd-3)))

haskell-8.10-wl-pprint-text

(define-public haskell-8.10-writer-cps-mtl
  (package
    (name "haskell-8.10-writer-cps-mtl")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-mtl#readme")
    (synopsis "MonadWriter orphan instances for writer-cps-transformers")
    (description
     "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. See also (<http://hackage.haskell.org/package/writer-cps-transformers>).")
    (license license:bsd-3)))

haskell-8.10-writer-cps-mtl

(define-public haskell-8.10-xdg-userdirs
  (package
    (name "haskell-8.10-xdg-userdirs")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)))
    (home-page "http://redmine.iportnov.ru/projects/xdg-userdirs")
    (synopsis "Basic implementation of XDG user directories specification")
    (description "On Unix platforms, this should be a very straightforward
implementation of the XDG User Directory spec. On Windows,
it will attempt to do the right thing with regards to
choosing appropriate directories.")
    (license license:bsd-3)))

haskell-8.10-xdg-userdirs

(define-public haskell-8.10-xml-helpers
  (package
    (name "haskell-8.10-xml-helpers")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
    (home-page "http://github.com/acw/xml-helpers")
    (synopsis "Some useful helper functions for the xml library.")
    (description
     "Included are some folds and maps I've found useful in parsing XML data.")
    (license license:bsd-3)))

haskell-8.10-xml-helpers

(define-public haskell-8.10-xml-picklers
  (package
    (name "haskell-8.10-xml-picklers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
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

haskell-8.10-xml-picklers

(define-public haskell-8.10-xmlgen
  (package
    (name "haskell-8.10-xmlgen")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)))
    (home-page "https://hackage.haskell.org/package/xmlgen")
    (synopsis "Fast XML generation library")
    (description "Library for high-performance XML generation.")
    (license license:bsd-3)))

haskell-8.10-xmlgen

(define-public haskell-8.10-zero
  (package
    (name "haskell-8.10-zero")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
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

haskell-8.10-zero

(define-public haskell-8.10-zot
  (package
    (name "haskell-8.10-zot")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-monads-tf)))
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

haskell-8.10-zot

