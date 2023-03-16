;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage001)
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
(define-public haskell-9.4-HUnit
  (package
    (name "haskell-9.4-HUnit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)))
    (home-page "https://github.com/hspec/HUnit#readme")
    (synopsis "A unit testing framework for Haskell")
    (description
     "HUnit is a unit testing framework for Haskell, inspired by the
JUnit tool for Java, see: <http://www.junit.org>.")
    (license license:bsd-3)))

haskell-9.4-HUnit

(define-public haskell-9.4-ListTree
  (package
    (name "haskell-9.4-ListTree")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-List)))
    (home-page "http://github.com/yairchu/generator/tree")
    (synopsis
     "Trees and monadic trees expressed as monadic lists where the underlying monad is a list")
    (description "Directory tree structure expressed as a monadic tree.
Searching, pruning, iterating, and processing trees.")
    (license license:bsd-3)))

haskell-9.4-ListTree

(define-public haskell-9.4-Sit
  (package
    (name "haskell-9.4-Sit")
    (version "0.2022.3.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Sit/Sit-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "03q784w5wf8rvc173skh1cmdsvw5450cxc9jymqs23xv9wyp8b4z"))))
    (properties `((upstream-name . "Sit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-lens-light)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)))
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

haskell-9.4-Sit

(define-public haskell-9.4-X11
  (package
    (name "haskell-9.4-X11")
    (version "1.10.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/X11/X11-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hnj2q310a6s0h479hq8jsmywymvxdjxg13zw46mmdndynwd2jnq"))))
    (properties `((upstream-name . "X11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
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

haskell-9.4-X11

(define-public haskell-9.4-alsa-core
  (package
    (name "haskell-9.4-alsa-core")
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
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (Exceptions).")
    (description "This package provides access to ALSA infrastructure,
that is needed by both alsa-seq and alsa-pcm.")
    (license license:bsd-3)))

haskell-9.4-alsa-core

(define-public haskell-9.4-ansi-terminal
  (package
    (name "haskell-9.4-ansi-terminal")
    (version "0.11.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal/ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "098f8bdxqmgxaz8y87s6b6bshsq950zq0b75rmbihp2k1a7y963q"))))
    (properties `((upstream-name . "ansi-terminal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-example" "-fwin32-2-13-1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)))
    (home-page "https://github.com/UnkindPartition/ansi-terminal")
    (synopsis "Simple ANSI terminal support, with Windows compatibility")
    (description "ANSI terminal support for Haskell: allows cursor movement,
screen clearing, color output, showing or hiding the
cursor, and changing the title. Works on UNIX and Windows.")
    (license license:bsd-3)))

haskell-9.4-ansi-terminal

(define-public haskell-9.4-ap-normalize
  (package
    (name "haskell-9.4-ap-normalize")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-inspection-testing)))
    (home-page "https://hackage.haskell.org/package/ap-normalize")
    (synopsis "Self-normalizing applicative expressions")
    (description
     "An applicative functor transformer to normalize expressions using @@(\\<$>)@@,
@@(\\<*>)@@, and @@pure@@ into a linear list of actions.
See \"ApNormalize\" to get started.")
    (license license:expat)))

haskell-9.4-ap-normalize

(define-public haskell-9.4-approximate-equality
  (package
    (name "haskell-9.4-approximate-equality")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-type-level-natural-number)))
    (home-page "http://github.com/gcross/approximate-equality")
    (synopsis "Newtype wrappers for approximate equality")
    (description
     "The purpose of this module is to provide newtype wrappers that allow one to effectively override the equality operator of a value so that it is /approximate/ rather than /exact/.  The wrappers use type annotations to specify the tolerance; the 'Digits' type constructor has been provided for specifying the tolerance using type-level natural numbers.  Instances for all of the classes in the numerical hierarchy have been provided for the wrappers, so the wrapped values can mostly be used in the same way as the original values. (In fact, most of the time one doesn't even have to wrap the starting values, since expressions such as @@(1+sqrt 2/3)@@ are automatically wrapped thanks to the 'fromIntegral' method of the 'Num' typeclass.)
See the documentation for Data.Eq.Approximate for more detailed information on how to use this package.
New in version 1.1:  Added explicit Show constraints to the Show instances, as the Num class in the newest version of GHC (wisely) no longer includes Show as a constraint.")
    (license license:bsd-3)))

haskell-9.4-approximate-equality

(define-public haskell-9.4-atomic-primops
  (package
    (name "haskell-9.4-atomic-primops")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
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

haskell-9.4-atomic-primops

(define-public haskell-9.4-binary-list
  (package
    (name "haskell-9.4-binary-list")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-phantom-state)))
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

haskell-9.4-binary-list

(define-public haskell-9.4-bindings-libzip
  (package
    (name "haskell-9.4-bindings-libzip")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bindings-DSL)
                  (@ (gnu packages compression) libzip)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Low level bindings to libzip.")
    (description
     "This package provides low-level bindings to libzip (v1.0.1) library.
For higher-level interface please use LibZip package:
<http://hackage.haskell.org/package/LibZip>")
    (license license:bsd-3)))

haskell-9.4-bindings-libzip

(define-public haskell-9.4-boomerang
  (package
    (name "haskell-9.4-boomerang")
    (version "1.4.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boomerang/boomerang-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hal4z1c1skqjq7vvjql0gm2rhfgrrlj29rgchjwlr2hm22zgnjp"))))
    (properties `((upstream-name . "boomerang") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/boomerang")
    (synopsis "Library for invertible parsing and printing")
    (description
     "Specify a single unified grammar which can be used for parsing and pretty-printing")
    (license license:bsd-3)))

haskell-9.4-boomerang

(define-public haskell-9.4-boring
  (package
    (name "haskell-9.4-boring")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/phadej/boring")
    (synopsis "Boring and Absurd types")
    (description
     "* @@Boring@@ types are isomorphic to @@()@@.

* @@Absurd@@ types are isomorphic to @@Void@@.

See [What does () mean in Haskell -answer by Conor McBride](https://stackoverflow.com/questions/33112439/what-does-mean-in-haskell/33115522#33115522)")
    (license license:bsd-3)))

haskell-9.4-boring

(define-public haskell-9.4-broadcast-chan
  (package
    (name "haskell-9.4-broadcast-chan")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
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

haskell-9.4-broadcast-chan

(define-public haskell-9.4-c-struct
  (package
    (name "haskell-9.4-c-struct")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/YoshikuniJujo/c-struct#readme")
    (synopsis "To make a wrapper for struct of C language")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/c-struct#readme>")
    (license license:bsd-3)))

haskell-9.4-c-struct

(define-public haskell-9.4-clumpiness
  (package
    (name "haskell-9.4-clumpiness")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tree-fun)))
    (home-page "https://hackage.haskell.org/package/clumpiness")
    (synopsis "Calculate the clumpiness of leaf properties in a tree")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-clumpiness

(define-public haskell-9.4-concurrent-extra
  (package
    (name "haskell-9.4-concurrent-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unbounded-delays)))
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

haskell-9.4-concurrent-extra

(define-public haskell-9.4-contravariant
  (package
    (name "haskell-9.4-contravariant")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-StateVar)))
    (home-page "http://github.com/ekmett/contravariant/")
    (synopsis "Contravariant functors")
    (description "Contravariant functors.")
    (license license:bsd-3)))

haskell-9.4-contravariant

(define-public haskell-9.4-cpphs
  (package
    (name "haskell-9.4-cpphs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-polyparse)))
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

haskell-9.4-cpphs

(define-public haskell-9.4-crypto-random-api
  (package
    (name "haskell-9.4-crypto-random-api")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)))
    (home-page "http://github.com/vincenthz/hs-crypto-random-api")
    (synopsis "Simple random generators API for cryptography related code")
    (description "Simple random generators API for cryptography related code")
    (license license:bsd-3)))

haskell-9.4-crypto-random-api

(define-public haskell-9.4-data-accessor-mtl
  (package
    (name "haskell-9.4-data-accessor-mtl")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-accessor-mtl/data-accessor-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xnd5l961530yzpzrkv13jz8lv42szs8ra75nnw8rzkwaijsvi4r"))))
    (properties `((upstream-name . "data-accessor-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in mtl State monad class")
    (description "Use Accessor to access state in mtl State monad class")
    (license license:bsd-3)))

haskell-9.4-data-accessor-mtl

(define-public haskell-9.4-data-accessor-transformers
  (package
    (name "haskell-9.4-data-accessor-transformers")
    (version "0.2.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-accessor-transformers/data-accessor-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m18bdhddi4l7ijd1mighjbjdw5qkznsgrqb8532cv9al55r9y83"))))
    (properties `((upstream-name . "data-accessor-transformers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in transformers State monad")
    (description "Use Accessor to access state in transformers State monad")
    (license license:bsd-3)))

haskell-9.4-data-accessor-transformers

(define-public haskell-9.4-data-default-instances-base
  (package
    (name "haskell-9.4-data-default-instances-base")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-base/data-default-instances-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ym1sw3ssdzzifxxhh76qlv8kkmb2iclc158incv1dklyr9y8kw4"))))
    (properties `((upstream-name . "data-default-instances-base")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-base")
    (synopsis "Default instances for types in base")
    (description "")
    (license license:bsd-3)))

haskell-9.4-data-default-instances-base

(define-public haskell-9.4-data-default-instances-bytestring
  (package
    (name "haskell-9.4-data-default-instances-bytestring")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)))
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

haskell-9.4-data-default-instances-bytestring

(define-public haskell-9.4-data-default-instances-containers
  (package
    (name "haskell-9.4-data-default-instances-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-containers")
    (synopsis "Default instances for types in containers")
    (description "")
    (license license:bsd-3)))

haskell-9.4-data-default-instances-containers

(define-public haskell-9.4-data-default-instances-old-locale
  (package
    (name "haskell-9.4-data-default-instances-old-locale")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-old-locale")
    (synopsis "Default instances for types in old-locale")
    (description "")
    (license license:bsd-3)))

haskell-9.4-data-default-instances-old-locale

(define-public haskell-9.4-data-diverse
  (package
    (name "haskell-9.4-data-diverse")
    (version "4.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-diverse/data-diverse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ccbb8kf2spaa2h6k10y26zzaij1w28vrifhc8c1ljlvsmc9dkf3"))))
    (properties `((upstream-name . "data-diverse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/louispan/data-diverse#readme")
    (synopsis "Extensible records and polymorphic variants.")
    (description
     "\"Data.Diverse.Many\" is an extensible record for any size encoded efficiently as (Seq Any).
\"Data.Diverse.Which\" is a polymorphic variant of possibilities encoded as (Int, Any).
Provides getters, setters, projection, injection, folds, and catamorphisms;
accessed by type, index or label.
Refer to [ManySpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/WhichSpec.hs) for example usages.
Iso, Lens and Prisms are provided in [data-diverse-lens](http://hackage.haskell.org/package/data-diverse-lens)")
    (license license:bsd-3)))

haskell-9.4-data-diverse

(define-public haskell-9.4-data-memocombinators
  (package
    (name "haskell-9.4-data-memocombinators")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-inttrie)))
    (home-page "http://github.com/luqui/data-memocombinators")
    (synopsis "Combinators for building memo tables.")
    (description "Combinators for building memo tables.")
    (license license:bsd-3)))

haskell-9.4-data-memocombinators

(define-public haskell-9.4-data-ref
  (package
    (name "haskell-9.4-data-ref")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-accessor)))
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

haskell-9.4-data-ref

(define-public haskell-9.4-debian-build
  (package
    (name "haskell-9.4-debian-build")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (home-page "http://twitter.com/khibino/")
    (synopsis "Debian package build sequence tools")
    (description "This package provides build sequence functions
for debian package, and includes on-the-fly
build command 'odebuild'.")
    (license license:bsd-3)))

haskell-9.4-debian-build

(define-public haskell-9.4-distributive
  (package
    (name "haskell-9.4-distributive")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "http://github.com/ekmett/distributive/")
    (synopsis "Distributive functors -- Dual to Traversable")
    (description "Distributive functors -- Dual to @@Traversable@@")
    (license license:bsd-3)))

haskell-9.4-distributive

(define-public haskell-9.4-do-notation
  (package
    (name "haskell-9.4-do-notation")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed)))
    (home-page "https://github.com/isovector/do-notation#readme")
    (synopsis
     "Generalize do-notation to work on monads and indexed monads simultaneously.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/do-notation#readme>")
    (license license:bsd-3)))

haskell-9.4-do-notation

(define-public haskell-9.4-dyre
  (package
    (name "haskell-9.4-dyre")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-executable-path)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-io-storage)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)))
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

haskell-9.4-dyre

(define-public haskell-9.4-elm-core-sources
  (package
    (name "haskell-9.4-elm-core-sources")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)))
    (home-page "http://github.com/JoeyEremondi/elm-build-lib")
    (synopsis "Source files for the Elm runtime and standard libraries")
    (description
     "Embeds the  standard libraries and runtime files of the Elm language as Haskell strings,
so that they can be used for compilation and served in a Haskell web server.
For more information on the Elm language, see http://elm-lang.org.")
    (license license:bsd-3)))

haskell-9.4-elm-core-sources

(define-public haskell-9.4-error-or-utils
  (package
    (name "haskell-9.4-error-or-utils")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/error-or-utils/error-or-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z92js5khx49yd0zydjabdn0m2901zv5586r2vsbx7sd3rfvx2ff"))))
    (properties `((upstream-name . "error-or-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-error-or)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/error-or-utils#readme")
    (synopsis "Utilities using ErrorOr datatype")
    (description "Builds on the error type defined in the error-or package")
    (license license:bsd-3)))

haskell-9.4-error-or-utils

(define-public haskell-9.4-explicit-exception
  (package
    (name "haskell-9.4-explicit-exception")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/explicit-exception/explicit-exception-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n2cgliy0ls9740crzpk19wl3cbk5zq90x7qmhhw8idbip7xidni"))))
    (properties `((upstream-name . "explicit-exception") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildtests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "http://wiki.haskell.org/Exception")
    (synopsis "Exceptions which are explicit in the type signature.")
    (description
     "Synchronous and Asynchronous exceptions which are explicit in the type signature.
The first ones are very similar to 'Either' and 'Control.Monad.Error.ErrorT'.
The second ones are used for 'System.IO.readFile' and 'System.IO.hGetContents'.
This package is a proposal for improved exception handling in Haskell.
It strictly separates between handling of
exceptional situations (file not found, invalid user input,
see <http://wiki.haskell.org/Exception>) and
(programming) errors (division by zero, index out of range,
see <http://wiki.haskell.org/Error>).
Handling of the first one is called \\\"exception handling\\\",
whereas handling of errors is better known as \\\"debugging\\\".

For applications see the packages @@midi@@, @@spreadsheet@@, @@http-monad@@.

Although I'm not happy with the identifier style of the Monad Transformer Library
(partially intended for unqualified use)
I have tried to adopt it for this library,
in order to let Haskell programmers get accustomed easily to it.

See also: @@unexceptionalio@@")
    (license license:bsd-3)))

haskell-9.4-explicit-exception

(define-public haskell-9.4-express
  (package
    (name "haskell-9.4-express")
    (version "1.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/express/express-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08y0ssnlfwcqw3vr8mswfc9yhjwhgwrl0yvx439443qwvfm64dc0"))))
    (properties `((upstream-name . "express") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-leancheck)))
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

haskell-9.4-express

(define-public haskell-9.4-file-embed-lzma
  (package
    (name "haskell-9.4-file-embed-lzma")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-embed-lzma/file-embed-lzma-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19l1gdjhsn4zh96mzbjsa5rn0acwrx1w3jy25cm23xv6jl8z28i9"))))
    (properties `((upstream-name . "file-embed-lzma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "https://github.com/phadej/file-embed-lzma")
    (synopsis "Use Template Haskell to embed (LZMA compressed) data.")
    (description
     "The @@file-embed@@ package let's embed file and dir contents.

This package is similar, but also compresses the embedded contents with LZMA.
That makes resulting object files smaller, at the cost of start up decompression.

There's also an 'embedRecursiveDir' function.")
    (license license:bsd-3)))

haskell-9.4-file-embed-lzma

(define-public haskell-9.4-file-path-th
  (package
    (name "haskell-9.4-file-path-th")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)))
    (home-page "https://github.com/Simspace/file-path-th#readme")
    (synopsis "Template Haskell utilities for filepaths.")
    (description
     "Template Haskell utilities for filepaths. This package has utilities for embedding relative filepaths using Template Haskell.")
    (license license:expat)))

haskell-9.4-file-path-th

(define-public haskell-9.4-fitspec
  (package
    (name "haskell-9.4-fitspec")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-leancheck)))
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

haskell-9.4-fitspec

(define-public haskell-9.4-foundation
  (package
    (name "haskell-9.4-foundation")
    (version "0.0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/foundation/foundation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hbkh6a3g6wsj2z48pjimd7djkm82mdxfwc24bnmmzag8amrp0rl"))))
    (properties `((upstream-name . "foundation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-experimental" "-f-bench-all" "-f-minimal-deps" "-f-bounds-check" "-f-doctest" "-f-linktest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)))
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

haskell-9.4-foundation

(define-public haskell-9.4-frisby
  (package
    (name "haskell-9.4-frisby")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/frisby/frisby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02dywihwkyk80viny3lq213qia2ksaylk7gphjiq0jzx9smswgyb"))))
    (properties `((upstream-name . "frisby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
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

haskell-9.4-frisby

(define-public haskell-9.4-function-builder
  (package
    (name "haskell-9.4-function-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/sheyll/function-builder#readme")
    (synopsis "Create poly variadic functions for monoidal results")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-function-builder

(define-public haskell-9.4-fused-effects
  (package
    (name "haskell-9.4-fused-effects")
    (version "1.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fused-effects/fused-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h9nnfn0i89gr8151dlxcyjh9467l25y6glyy5zbqkhwxglmjns0"))))
    (properties `((upstream-name . "fused-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/fused-effects/fused-effects")
    (synopsis "A fast, flexible, fused effect system.")
    (description
     "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.")
    (license license:bsd-3)))

haskell-9.4-fused-effects

(define-public haskell-9.4-gdp
  (package
    (name "haskell-9.4-gdp")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-lawful)))
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

haskell-9.4-gdp

(define-public haskell-9.4-generic-lens-core
  (package
    (name "haskell-9.4-generic-lens-core")
    (version "2.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens-core/generic-lens-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08i4c9yb6z84iknrnl9f3f343121j7ilp0a679v81nsjm9xz3rlf"))))
    (properties `((upstream-name . "generic-lens-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1dbjhd6k7ypqa9f4h9v2xndgb4mjhfli3n1vjm8r8ga0kfndbqfn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-profunctors)))
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

haskell-9.4-generic-lens-core

(define-public haskell-9.4-generics-sop
  (package
    (name "haskell-9.4-generics-sop")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sop-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
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

haskell-9.4-generics-sop

(define-public haskell-9.4-ghc-lib-parser
  (package
    (name "haskell-9.4-ghc-lib-parser")
    (version "9.4.4.20221225")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser/ghc-lib-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0av5c7phk0lc8nnaacm5v0cah1hiihw3kqf7cavphhadw06dixk7"))))
    (properties `((upstream-name . "ghc-lib-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-9.4-ghc-lib-parser

(define-public haskell-9.4-gitrev
  (package
    (name "haskell-9.4-gitrev")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)))
    (home-page "https://github.com/acfoltzer/gitrev")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Some handy Template Haskell splices for including the current git hash and branch in the code of your project. Useful for including in panic messages, @@--version@@ output, or diagnostic info for more informative bug reports.")
    (license license:bsd-3)))

haskell-9.4-gitrev

(define-public haskell-9.4-gpolyline
  (package
    (name "haskell-9.4-gpolyline")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (home-page "https://github.com/fegu/gpolyline")
    (synopsis "Pure module for encoding/decoding Google Polyline")
    (description "Pure module for encoding/decoding Google Polyline")
    (license license:bsd-3)))

haskell-9.4-gpolyline

(define-public haskell-9.4-graphs
  (package
    (name "haskell-9.4-graphs")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/graphs/graphs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1isdy8qx3q00pb3jinvvmfvzhwblr3yhj4dzmlv0hdj0yi9j8bly"))))
    (properties `((upstream-name . "graphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
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

haskell-9.4-graphs

(define-public haskell-9.4-hxt-unicode
  (package
    (name "haskell-9.4-hxt-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hxt-charproperties)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis
     "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings")
    (description
     "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,
used in the Haskell XML Toolbox.
ISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding
is done with lazy functions, errors may be detected or ignored.")
    (license license:expat)))

haskell-9.4-hxt-unicode

(define-public haskell-9.4-integration
  (package
    (name "haskell-9.4-integration")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)))
    (home-page "https://github.com/ekmett/integration")
    (synopsis "Fast robust numeric integration via tanh-sinh quadrature")
    (description "Fast robust numeric integration via tanh-sinh quadrature")
    (license license:bsd-3)))

haskell-9.4-integration

(define-public haskell-9.4-java-adt
  (package
    (name "haskell-9.4-java-adt")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)))
    (home-page "http://github.com/andreasabel/java-adt")
    (synopsis "Create immutable algebraic data structures for Java.")
    (description
     "A simple tool to create immutable algebraic data structures and visitors for Java
(such as abstract syntax trees).  The input syntax is similar to Haskell data types,
and they will be compiled to Java class hierarchies.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-java-adt

(define-public haskell-9.4-justified-containers
  (package
    (name "haskell-9.4-justified-containers")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-roles)))
    (home-page "https://github.com/matt-noonan/justified-containers")
    (synopsis
     "Keyed container types with type-checked proofs of key presence.")
    (description
     "This package contains wrappers around standard container types,
that provide guarantees about the presence of keys within the
container.")
    (license license:bsd-2)))

haskell-9.4-justified-containers

(define-public haskell-9.4-kind-generics
  (package
    (name "haskell-9.4-kind-generics")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-kind-apply)))
    (home-page "https://hackage.haskell.org/package/kind-generics")
    (synopsis
     "Generic programming in GHC style for arbitrary kinds and GADTs.")
    (description
     "This package provides functionality to extend the data type generic programming functionality in GHC to classes of arbitrary kind, and constructors featuring constraints and existentials, as usually found in GADTs.")
    (license license:bsd-3)))

haskell-9.4-kind-generics

(define-public haskell-9.4-language-c
  (package
    (name "haskell-9.4-language-c")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c/language-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cvcxwnbg71xijadr4aqzwxaw29fxj5z2gpnz3lp5pqnv8phscdj"))))
    (properties `((upstream-name . "language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusebytestrings" "-f-allwarnings" "-fiecfpextension")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)))
    (home-page "http://visq.github.io/language-c/")
    (synopsis "Analysis and generation of C code")
    (description
     "Language C is a haskell library for the analysis and generation of C code.
It features a complete, well tested parser and pretty printer for all of C99 and a large
set of C11 and clang/GNU extensions.")
    (license license:bsd-3)))

haskell-9.4-language-c

(define-public haskell-9.4-lazyio
  (package
    (name "haskell-9.4-lazyio")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unsafe)))
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

haskell-9.4-lazyio

(define-public haskell-9.4-leancheck-instances
  (package
    (name "haskell-9.4-leancheck-instances")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leancheck-instances/leancheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "111dgr7ivd36v5fqcvnx2jq7iyn9akz5css6mzb5h72rc0sxwq6q"))))
    (properties `((upstream-name . "leancheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-leancheck)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-nats)))
    (home-page "https://github.com/rudymatela/leancheck-instances#readme")
    (synopsis "Common LeanCheck instances")
    (description
     "Listable instances for types provided by the Haskell Platform.

The current objective is to include all types supported by quickcheck-instances:
<https://hackage.haskell.org/package/quickcheck-instances>")
    (license license:bsd-3)))

haskell-9.4-leancheck-instances

(define-public haskell-9.4-lens-family
  (package
    (name "haskell-9.4-lens-family")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-family/lens-family-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j1n51qx9sszpbksnz35cfsn62mv44g2jvn9iwr6wfy0mz1syq1b"))))
    (properties `((upstream-name . "lens-family") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-lens-family-core)))
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

haskell-9.4-lens-family

(define-public haskell-9.4-mainland-pretty
  (package
    (name "haskell-9.4-mainland-pretty")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-srcloc)))
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

haskell-9.4-mainland-pretty

(define-public haskell-9.4-mathexpr
  (package
    (name "haskell-9.4-mathexpr")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mathexpr/mathexpr-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s6knkj7274m9zfcv258drd4lqlq0ard4hafnsc8p3j8xrpr96pd"))))
    (properties `((upstream-name . "mathexpr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)))
    (home-page "https://github.com/mdibaiee/mathexpr")
    (synopsis
     "Parse and evaluate math expressions with variables and functions")
    (description
     "A simple tool to evaluate math expressions as strings with support for custom functions and operators")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-mathexpr

(define-public haskell-9.4-microlens-contra
  (package
    (name "haskell-9.4-microlens-contra")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-contra/microlens-contra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jxm6shmvacbic6i6hask0kv89kramnk77pcxpv4gv4xydjsr88n"))))
    (properties `((upstream-name . "microlens-contra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "True folds and getters for microlens")
    (description
     "This package provides @@Fold@@ and @@Getter@@ that are fully compatible with lens; the downside is that this package depends on contravariant, which in its turn depends on a lot of other packages (but still less than lens).

The difference between @@Fold@@ and @@SimpleFold@@ is that you can use e.g. @@takingWhile@@\\/@@droppingWhile@@ and @@backwards@@ on the former but not on the latter. Most functions from lens that work with @@Fold@@ would work with @@SimpleFold@@ as well, though.

Starting from GHC 8.6, this package doesn't depend on contravariant anymore.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.4-microlens-contra

(define-public haskell-9.4-microlens-ghc
  (package
    (name "haskell-9.4-microlens-ghc")
    (version "0.4.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-ghc/microlens-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h6wcgv50mxqz09wkamqjgw90382a4m31mq7q57vmzmkl489nw2n"))))
    (properties `((upstream-name . "microlens-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + array, bytestring, containers, transformers")
    (description
     "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @@Lens.Micro.GHC@@ reexports everything from @@Lens.Micro@@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>, <http://hackage.haskell.org/package/transfromers transformers>).

The minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.4-microlens-ghc

(define-public haskell-9.4-microlens-mtl
  (package
    (name "haskell-9.4-microlens-mtl")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-mtl/microlens-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ilz0zyyk9f6h97gjsaqq65njfs23fk3wxhigvj4z0brf7rnlssd"))))
    (properties `((upstream-name . "microlens-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens support for Reader/Writer/State from mtl")
    (description
     "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.4-microlens-mtl

(define-public haskell-9.4-microlens-th
  (package
    (name "haskell-9.4-microlens-th")
    (version "0.4.3.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-th/microlens-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vjjaclfxr0kvlpmj8zh7f6ci4n4b8vynqd67zszx42al7gal6pj"))))
    (properties `((upstream-name . "microlens-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "Automatic generation of record lenses for microlens")
    (description
     "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens).

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.4-microlens-th

(define-public haskell-9.4-mmorph
  (package
    (name "haskell-9.4-mmorph")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmorph/mmorph-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1022d8mm523dihkf85mqsqxpm9rnyicmv91c8rm4csv7xdc80cv1"))))
    (properties `((upstream-name . "mmorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1582vcpjiyimb1vwnhgq8gp805iziwa8sivv2frir0cgq4z236yz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/mmorph")
    (synopsis "Monad morphisms")
    (description
     "This library provides monad morphism utilities, most commonly used
for manipulating monad transformer stacks.")
    (license license:bsd-3)))

haskell-9.4-mmorph

(define-public haskell-9.4-monad-parallel
  (package
    (name "haskell-9.4-monad-parallel")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-parallel/monad-parallel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j905cwc440g7rvbhsdkqf50ag7p2bi6cy2rqsk918rn80fqqra4"))))
    (properties `((upstream-name . "monad-parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://hub.darcs.net/blamario/SCC.wiki/")
    (synopsis "Parallel execution of monadic computations")
    (description
     "This package defines classes of monads that can perform multiple executions in parallel and combine their results. For
any monad that's an instance of the class, the package re-implements a subset of the Control.Monad interface, but with
parallel execution.")
    (license license:bsd-3)))

haskell-9.4-monad-parallel

(define-public haskell-9.4-monad-primitive
  (package
    (name "haskell-9.4-monad-primitive")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "http://bitbucket.org/Shimuuar/monad-primitive")
    (synopsis
     "Type class for monad transformers stack with pirimitive base monad.")
    (description
     "Type class for for monad transformers stack with pirimitive base
monad and mutable references whic could use either ST or IO monads.")
    (license license:bsd-3)))

haskell-9.4-monad-primitive

(define-public haskell-9.4-monadic-arrays
  (package
    (name "haskell-9.4-monadic-arrays")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "http://github.com/ekmett/monadic-arrays/")
    (synopsis "Boxed and unboxed arrays for monad transformers")
    (description "Boxed and unboxed arrays for monad transformers")
    (license license:bsd-3)))

haskell-9.4-monadic-arrays

(define-public haskell-9.4-monoid-transformer
  (package
    (name "haskell-9.4-monoid-transformer")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-transformer")
    (synopsis "Monoid counterparts to some ubiquitous monad transformers")
    (description
     "Monoid transformers: State, Reader

There is no Writer transformer.
It's vice versa: The Writer monad transforms a monoid to a monad.")
    (license license:bsd-3)))

haskell-9.4-monoid-transformer

(define-public haskell-9.4-multipart
  (package
    (name "haskell-9.4-multipart")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03gaapwnvn843hpm5qwdci9df1wf383msd42p8w9ghilpfjj4qy9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stringsearch)))
    (home-page "http://www.github.com/silkapp/multipart")
    (synopsis "Parsers for the HTTP multipart format")
    (description
     "Parsers and data types for the HTTP multipart format from RFC2046.")
    (license license:bsd-3)))

haskell-9.4-multipart

(define-public haskell-9.4-natural-induction
  (package
    (name "haskell-9.4-natural-induction")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-peano)))
    (home-page "https://hackage.haskell.org/package/natural-induction")
    (synopsis "Induction over natural numbers")
    (description "")
    (license license:bsd-3)))

haskell-9.4-natural-induction

(define-public haskell-9.4-non-empty-sequence
  (package
    (name "haskell-9.4-non-empty-sequence")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "http://www.github.com/massysett/non-empty-sequence")
    (synopsis "Non-empty sequence")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-non-empty-sequence

(define-public haskell-9.4-numeric-quest
  (package
    (name "haskell-9.4-numeric-quest")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-quest/numeric-quest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0agwfmbxyig502ac7xvf7208m0v7wdrcg7m30d1iw22c687ph5k9"))))
    (properties `((upstream-name . "numeric-quest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prelude-compat)))
    (home-page "http://www.haskell.org/haskellwiki/Numeric_Quest")
    (synopsis "Math and quantum mechanics")
    (description
     "List based linear algebra, similtaneous linear equations, eigenvalues and eigenvectors, roots of polynomials, transcendent functions with arbitrary precision implemented by continued fractions, quantum operations, tensors")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-numeric-quest

(define-public haskell-9.4-old-time
  (package
    (name "haskell-9.4-old-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)))
    (home-page "https://hackage.haskell.org/package/old-time")
    (synopsis "Time library")
    (description "This package provides the old time library.

For new projects, the newer
<http://hackage.haskell.org/package/time time library>
is recommended.")
    (license license:bsd-3)))

haskell-9.4-old-time

(define-public haskell-9.4-optics-core
  (package
    (name "haskell-9.4-optics-core")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-core/optics-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16ll8829g8v5g6gqdcfj77k6g4sqpmpxbda9jhm4h68pycay4r6a"))))
    (properties `((upstream-name . "optics-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-explicit-generic-labels")
       #:cabal-revision
       ("1" "0sqwlbl6x0197bpkq7jvn9j5iwyr54z8qwmxbij6qlwjyfld2qxi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)))
    (home-page "https://hackage.haskell.org/package/optics-core")
    (synopsis "Optics as an abstract interface: core definitions")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface.

This variant provides core definitions with a minimal dependency footprint.
See the @@<https://hackage.haskell.org/package/optics optics>@@ package (and its
dependencies) for documentation and the \"batteries-included\" variant.")
    (license license:bsd-3)))

haskell-9.4-optics-core

(define-public haskell-9.4-options
  (package
    (name "haskell-9.4-options")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-monads-tf)))
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

haskell-9.4-options

(define-public haskell-9.4-percent-format
  (package
    (name "haskell-9.4-percent-format")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-leancheck)))
    (home-page "https://github.com/rudymatela/percent-format#readme")
    (synopsis "simple printf-style string formatting")
    (description
     "The @@Text.PercentFormat@@ library provides printf-style string formatting.  It
provides a @@%@@ operator (as in Ruby or Python) and uses the old
C-printf-style format you know and love.")
    (license license:bsd-3)))

haskell-9.4-percent-format

(define-public haskell-9.4-persistent-refs
  (package
    (name "haskell-9.4-persistent-refs")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ref-fd)))
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

haskell-9.4-persistent-refs

(define-public haskell-9.4-pretty-show
  (package
    (name "haskell-9.4-pretty-show")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-lexer)))
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

haskell-9.4-pretty-show

(define-public haskell-9.4-prettyprinter-compat-annotated-wl-pprint
  (package
    (name "haskell-9.4-prettyprinter-compat-annotated-wl-pprint")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-annotated-wl-pprint/prettyprinter-compat-annotated-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0plkzvwbqilmh711fbbki9r37i01n00kmzr6cxjgjw0ak1m2djbn"))))
    (properties `((upstream-name . "prettyprinter-compat-annotated-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »annotated-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.4-prettyprinter-compat-annotated-wl-pprint

(define-public haskell-9.4-prettyprinter-compat-wl-pprint
  (package
    (name "haskell-9.4-prettyprinter-compat-wl-pprint")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-wl-pprint/prettyprinter-compat-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffrbh79da9ihn3lbk9vq9329sdhddf6ccnag1k148z3ividxc63"))))
    (properties `((upstream-name . "prettyprinter-compat-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.4-prettyprinter-compat-wl-pprint

(define-public haskell-9.4-primitive-addr
  (package
    (name "haskell-9.4-primitive-addr")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/andrewthad/primitive-addr")
    (synopsis "Addresses to unmanaged memory")
    (description
     "This library provides the `Data.Primitive.Addr` module
that was a part of the `primitive` library before `primitive-0.7.0.0`.")
    (license license:bsd-3)))

haskell-9.4-primitive-addr

(define-public haskell-9.4-primitive-offset
  (package
    (name "haskell-9.4-primitive-offset")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-offset/primitive-offset-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aspdlzx1xaw1fyiy8vnzadbklpg7hn2mb1g9qmw2vpkxglpspmi"))))
    (properties `((upstream-name . "primitive-offset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/andrewthad/primitive-offset")
    (synopsis "Types for offsets into unboxed arrays")
    (description "Pair a typed or untyped primitive array with an offset.
This is useful for providing meaningful type signatures
when working with the foreign function interface.")
    (license license:bsd-3)))

haskell-9.4-primitive-offset

(define-public haskell-9.4-primitive-unaligned
  (package
    (name "haskell-9.4-primitive-unaligned")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-unaligned/primitive-unaligned-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ksl2gib15inbd80rf0bl3baj8fmk740liv4fdg9493dlhr3a4pa"))))
    (properties `((upstream-name . "primitive-unaligned") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1kndcxl120bl0wzjjd8s2nxcw4qw5y3q6vzdqxn8p4xblk1vxajk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/haskell-primitive/primitive-unaligned")
    (synopsis "Unaligned access to primitive arrays")
    (description
     "Unaligned access to primitive arrays. The offsets are given in bytes rather than elements.")
    (license license:bsd-3)))

haskell-9.4-primitive-unaligned

(define-public haskell-9.4-promises
  (package
    (name "haskell-9.4-promises")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "http://github.com/ekmett/promises/")
    (synopsis "Lazy demand-driven promises")
    (description "Lazy demand-driven promises")
    (license license:bsd-3)))

haskell-9.4-promises

(define-public haskell-9.4-prompt
  (package
    (name "haskell-9.4-prompt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
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

haskell-9.4-prompt

(define-public haskell-9.4-random
  (package
    (name "haskell-9.4-random")
    (version "1.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/random/random-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xlv1k4sj87akwvj54kq4nrfkzi6qcz1941bf78pnkbaxpvp44iy"))))
    (properties `((upstream-name . "random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)))
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

The monadic adapter 'System.Random.Stateful.runStateGen_' is used here to lift
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

haskell-9.4-random

(define-public haskell-9.4-reform
  (package
    (name "haskell-9.4-reform")
    (version "0.2.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/reform/reform-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14p98i2682dm1n4drdrvilz67wfp2lr7m8f0wlmk40q3qmhc05xb"))))
    (properties `((upstream-name . "reform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "http://www.happstack.com/")
    (synopsis
     "reform is a type-safe HTML form generation and validation library")
    (description "reform follows in the footsteps of formlets and
digestive-functors <= 0.2. It provides a
type-safe and composable method for generating
an HTML form that includes validation.")
    (license license:bsd-3)))

haskell-9.4-reform

(define-public haskell-9.4-regex-pcre
  (package
    (name "haskell-9.4-regex-pcre")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)
                  (@ (gnu packages pcre) pcre)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "PCRE Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-9.4-regex-pcre

(define-public haskell-9.4-regex-pcre-builtin
  (package
    (name "haskell-9.4-regex-pcre-builtin")
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
       ("3" "071s6k97z0wiqx5rga360awgj0a031gqm725835xxszdz36w0mbv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)))
    (home-page "https://hackage.haskell.org/package/regex-pcre-builtin")
    (synopsis "PCRE Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.

See also <https://wiki.haskell.org/Regular_expressions> for more information.

Includes bundled code from www.pcre.org")
    (license license:bsd-3)))

haskell-9.4-regex-pcre-builtin

(define-public haskell-9.4-regex-posix
  (package
    (name "haskell-9.4-regex-posix")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)))
    (home-page "https://hackage.haskell.org/package/regex-posix")
    (synopsis "POSIX Backend for \"Text.Regex\" (regex-base)")
    (description
     "The POSIX regex backend for <//hackage.haskell.org/package/regex-base regex-base>.

The main appeal of this backend is that it's very lightweight due to its reliance on the ubiquitous <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html POSIX.2 regex> facility that is provided by the standard C library on most POSIX platforms.

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-9.4-regex-posix

(define-public haskell-9.4-regex-tdfa
  (package
    (name "haskell-9.4-regex-tdfa")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-tdfa/regex-tdfa-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lfzhir5zbgga44zhr4qvc2xc9pa9lslv12c8lwqqw80bzfdfq16"))))
    (properties `((upstream-name . "regex-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-o2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis
              "Pure Haskell Tagged DFA Backend for \"Text.Regex\" (regex-base)")
    (description
     "This package provides a pure Haskell \\\"Tagged\\\" DFA regex engine for <//hackage.haskell.org/package/regex-base regex-base>. This implementation was inspired by the algorithm (and Master's thesis) behind the regular expression library known as <https://github.com/laurikari/tre/ TRE or libtre>.

Please consult the \"Text.Regex.TDFA\" module for API documentation including a tutorial with usage examples;
see also <https://wiki.haskell.org/Regular_expressions> for general information about regular expression support in Haskell.")
    (license license:bsd-3)))

haskell-9.4-regex-tdfa

(define-public haskell-9.4-repline
  (package
    (name "haskell-9.4-repline")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repline/repline-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nldn02yqqmrxkzwzrx3v6hkb4y2hch48jkcr2qrw1dl0vqv70b1"))))
    (properties `((upstream-name . "repline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)))
    (home-page "https://github.com/sdiehl/repline")
    (synopsis "Haskeline wrapper for GHCi-like REPL interfaces.")
    (description
     "Haskeline wrapper for GHCi-like REPL interfaces. Composable with normal mtl transformers.")
    (license license:expat)))

haskell-9.4-repline

(define-public haskell-9.4-resource-pool
  (package
    (name "haskell-9.4-resource-pool")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resource-pool/resource-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klcyl0x15a0h73sn6176ma87cgb4n8g2szz54b5xzr60pws057y"))))
    (properties `((upstream-name . "resource-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://hackage.haskell.org/package/resource-pool")
    (synopsis "A high-performance striped resource pooling implementation")
    (description "A high-performance striped pooling abstraction for managing
flexibly-sized collections of resources such as database
connections.")
    (license license:bsd-3)))

haskell-9.4-resource-pool

(define-public haskell-9.4-rrb-vector
  (package
    (name "haskell-9.4-rrb-vector")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rrb-vector/rrb-vector-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0awpx18qklxz5lscmj5ypl8paqja4r2xk4aqj0r181560j7arv3j"))))
    (properties `((upstream-name . "rrb-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/konsumlamm/rrb-vector")
    (synopsis "Efficient RRB-Vectors")
    (description
     "An RRB-Vector is an efficient sequence data structure.
It supports fast indexing, iteration, concatenation and splitting.

== Comparison with [Data.Sequence](https://hackage.haskell.org/package/containers/docs/Data-Sequence.html)

@@Seq a@@ is a container with a very similar API. RRB-Vectors are generally faster for indexing and iteration,
while sequences are faster for access to the front/back (amortized \\(O(1)\\)).")
    (license license:bsd-3)))

haskell-9.4-rrb-vector

(define-public haskell-9.4-size-based
  (package
    (name "haskell-9.4-size-based")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/size-based/size-based-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x2z8iw4jgcp6xirclifjhh3rvyjy5xgqrd6lcv4gifj859sfjd2"))))
    (properties `((upstream-name . "size-based") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-dictionary-sharing)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-testing-type-modifiers)))
    (home-page "https://hackage.haskell.org/package/size-based")
    (synopsis "Sized functors, for size-based enumerations")
    (description
     "A framework for size-based enumerations. See the module documentation for details.")
    (license license:bsd-3)))

haskell-9.4-size-based

(define-public haskell-9.4-srt
  (package
    (name "haskell-9.4-srt")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/srt/srt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0y8aagnc1n2pr4yrq2rj2id031yshi241nfbsrl916i81hw4bcny"))))
    (properties `((upstream-name . "srt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-media-timestamp)))
    (home-page "https://hackage.haskell.org/package/srt")
    (synopsis "The data type for SRT files.")
    (description
     "The data type for SRT files. https://en.wikipedia.org/wiki/SubRip")
    (license license:expat)))

haskell-9.4-srt

(define-public haskell-9.4-storable-complex
  (package
    (name "haskell-9.4-storable-complex")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)))
    (home-page "https://github.com/cartazio/storable-complex")
    (synopsis "Storable instance for Complex")
    (description "Provides a Storable instance for Complex which is binary
compatible with C99, C++ and Fortran complex data types.

The only purpose of this package is to provide a standard
location for this instance so that other packages needing
this instance can play nicely together.")
    (license license:bsd-3)))

haskell-9.4-storable-complex

(define-public haskell-9.4-storable-endian
  (package
    (name "haskell-9.4-storable-endian")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteorder)))
    (home-page "https://hackage.haskell.org/package/storable-endian")
    (synopsis "Storable instances with endianness")
    (description "Storable instances with endianness")
    (license license:bsd-3)))

haskell-9.4-storable-endian

(define-public haskell-9.4-store-core
  (package
    (name "haskell-9.4-store-core")
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
       #:configure-flags (list "-f-force-alignment")
       #:cabal-revision
       ("1" "04jv0y5k9iscw8ac72rbycmcscadnjsv2rjgwj6x0r2bymvdq00g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Fast and lightweight binary serialization")
    (description "")
    (license license:expat)))

haskell-9.4-store-core

(define-public haskell-9.4-stringable
  (package
    (name "haskell-9.4-stringable")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stringable/stringable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jsvbiqbmnbipv1566k5mqkpgfyrzbk8m7b18rqjb5m3qg9dbz7"))))
    (properties `((upstream-name . "stringable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-system-filepath)))
    (home-page "https://hackage.haskell.org/package/stringable")
    (synopsis
     "A Stringable type class, in the spirit of Foldable and Traversable")
    (description
     "'Data.Stringable' provides a type class with a set of functions for
converting to and from the most often used string-linke types in
Haskell.")
    (license license:expat)))

haskell-9.4-stringable

(define-public haskell-9.4-system-argv0
  (package
    (name "haskell-9.4-system-argv0")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-system-filepath)))
    (home-page "https://john-millikin.com/software/haskell-filesystem/")
    (synopsis "Get argv[0] as a FilePath.")
    (description
     "Get @@argv[0]@@ as a FilePath. This is how the program was invoked, and might
not correspond to any actual file.

Use this instead of @@System.Environment.getProgName@@ if you want the full
path, and not just the last component.")
    (license license:expat)))

haskell-9.4-system-argv0

(define-public haskell-9.4-system-fileio
  (package
    (name "haskell-9.4-system-fileio")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-system-filepath)))
    (home-page "https://github.com/fpco/haskell-filesystem")
    (synopsis
     "Consistent filesystem interaction across GHC versions (deprecated)")
    (description
     "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx")
    (license license:expat)))

haskell-9.4-system-fileio

(define-public haskell-9.4-tabular
  (package
    (name "haskell-9.4-tabular")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-csv)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-html)))
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

haskell-9.4-tabular

(define-public haskell-9.4-tao-example
  (package
    (name "haskell-9.4-tao-example")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tao)))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Example usage of the tao package.")
    (description "Example usage of type-level assertions using tao.")
    (license license:expat)))

haskell-9.4-tao-example

(define-public haskell-9.4-termbox-bindings-hs
  (package
    (name "haskell-9.4-termbox-bindings-hs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termbox-bindings-hs/termbox-bindings-hs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07m6lp997skqp04a430ynsrzdpwcczblxawvlcbizffsznkmnl64"))))
    (properties `((upstream-name . "termbox-bindings-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-termbox-bindings-c)))
    (home-page "https://github.com/termbox/termbox-haskell")
    (synopsis "termbox bindings")
    (description
     "This package provides bindings to @@termbox@@, a simple C library for writing text-based user interfaces:
<https://github.com/termbox/termbox>.

See also:

* @@<https://hackage.haskell.org/package/termbox-bindings-c termbox-bindings-c>@@ for lower-level bindings.
* @@<https://hackage.haskell.org/package/termbox termbox>@@ for higher-level bindings.")
    (license license:bsd-3)))

haskell-9.4-termbox-bindings-hs

(define-public haskell-9.4-th-lift
  (package
    (name "haskell-9.4-th-lift")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
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

haskell-9.4-th-lift

(define-public haskell-9.4-threads-extras
  (package
    (name "haskell-9.4-threads-extras")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/threads-extras/threads-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dfbh04nb4zm96yzx7520lixks5v2y4w5ykcdcqm7w5s196pq858"))))
    (properties `((upstream-name . "threads-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-threads)))
    (home-page "https://hackage.haskell.org/package/threads-extras")
    (synopsis "Extends the threads package with a bounded thread group")
    (description
     "Extends the threads package with a bounded thread group with the same interface as the original thread group.")
    (license license:bsd-3)))

haskell-9.4-threads-extras

(define-public haskell-9.4-time-lens
  (package
    (name "haskell-9.4-time-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-lens-light)))
    (home-page "https://github.com/feuerbach/time-lens")
    (synopsis "Lens-based interface to Data.Time data structures")
    (description "")
    (license license:bsd-3)))

haskell-9.4-time-lens

(define-public haskell-9.4-time-units-types
  (package
    (name "haskell-9.4-time-units-types")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-units-types/time-units-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sbyjhl7gw5fn3javsb12ip7ggyi0hwzz6qdpiv1bqh1qcdxkhjb"))))
    (properties `((upstream-name . "time-units-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-units)))
    (home-page "https://github.com/mbg/time-units-types#readme")
    (synopsis "Type-level representations of time durations.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/time-units-types#readme>")
    (license license:expat)))

haskell-9.4-time-units-types

(define-public haskell-9.4-timezone-olson
  (package
    (name "haskell-9.4-timezone-olson")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-timezone-series)))
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

haskell-9.4-timezone-olson

(define-public haskell-9.4-transformers-base
  (package
    (name "haskell-9.4-transformers-base")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://github.com/mvv/transformers-base")
    (synopsis "Lift computations from the bottom of a transformer stack")
    (description
     "This package provides a straightforward port of @@monadLib@@'s BaseM
typeclass to @@transformers@@.")
    (license license:bsd-3)))

haskell-9.4-transformers-base

(define-public haskell-9.4-typecheck-plugin-nat-simple
  (package
    (name "haskell-9.4-typecheck-plugin-nat-simple")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typecheck-plugin-nat-simple/typecheck-plugin-nat-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ada389g1zmprwj2injmx49dcj8z6n1vxbbii4c6327mvw39ay0w"))))
    (properties `((upstream-name . "typecheck-plugin-nat-simple")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-tcplugins-extra)))
    (home-page
     "https://github.com/YoshikuniJujo/typecheck-plugin-nat-simple#readme")
    (synopsis
     "Simple type check plugin which calculate addition, subtraction and less-or-equal-than")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/typecheck-plugin-nat-simple#readme>")
    (license license:bsd-3)))

haskell-9.4-typecheck-plugin-nat-simple

(define-public haskell-9.4-universe-base
  (package
    (name "haskell-9.4-universe-base")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-base/universe-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lnvjpndqj7kk3f95dmpa62ax0m243h8iy7ghcsd2db4nyczx7f5"))))
    (properties `((upstream-name . "universe-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0hnd5vxsncwyjsindfmsvp9jbixanhmzczhrmd8s8g6imgb0mzyk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
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

haskell-9.4-universe-base

(define-public haskell-9.4-vector
  (package
    (name "haskell-9.4-vector")
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
       ("3" "0n8w54d931k5s46ls4n7w40bs0gb839ijli9w6b9am0k1s1yigxb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
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

haskell-9.4-vector

(define-public haskell-9.4-vformat-time
  (package
    (name "haskell-9.4-vformat-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-vformat)))
    (home-page "https://github.com/versioncloud/vformat-time#readme")
    (synopsis "Extend vformat to time datatypes")
    (description "Please see http://hackage.haskell.org/package/vformat-time")
    (license license:bsd-3)))

haskell-9.4-vformat-time

(define-public haskell-9.4-wakame
  (package
    (name "haskell-9.4-wakame")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wakame/wakame-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wm87z7ag1xzvf4lxqg3xz62ac8i5b9ljzlg85vphcfadsj9khh7"))))
    (properties `((upstream-name . "wakame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sop-core)))
    (home-page "https://github.com/kayhide/wakame#readme")
    (synopsis "Functions to manipulate records")
    (description
     "Please see the README on GitHub at <https://github.com/kayhide/wakame>")
    (license license:bsd-3)))

haskell-9.4-wakame

(define-public haskell-9.4-wizards
  (package
    (name "haskell-9.4-wizards")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-control-monad-free)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)))
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

haskell-9.4-wizards

(define-public haskell-9.4-wl-pprint-text
  (package
    (name "haskell-9.4-wl-pprint-text")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)))
    (home-page "https://hackage.haskell.org/package/wl-pprint-text")
    (synopsis "A Wadler/Leijen Pretty Printer for Text values")
    (description "A clone of wl-pprint for use with the text library.")
    (license license:bsd-3)))

haskell-9.4-wl-pprint-text

(define-public haskell-9.4-writer-cps-exceptions
  (package
    (name "haskell-9.4-writer-cps-exceptions")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-exceptions/writer-cps-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzfqmndlhqhb3l84fa1g51ydkf3py5vip5c1l6rzqak7b2ms6ls"))))
    (properties `((upstream-name . "writer-cps-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-exceptions")
    (synopsis
     "Control.Monad.Catch instances for the stricter CPS WriterT and RWST")
    (description
     "Control.Monad.Catch instances for the stricter WriterT and RWST from writer-cps-transformers.")
    (license license:bsd-3)))

haskell-9.4-writer-cps-exceptions

(define-public haskell-9.4-writer-cps-mtl
  (package
    (name "haskell-9.4-writer-cps-mtl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-mtl#readme")
    (synopsis "MonadWriter orphan instances for writer-cps-transformers")
    (description
     "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. See also (<http://hackage.haskell.org/package/writer-cps-transformers>).")
    (license license:bsd-3)))

haskell-9.4-writer-cps-mtl

(define-public haskell-9.4-xdg-userdirs
  (package
    (name "haskell-9.4-xdg-userdirs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xdg-basedir)))
    (home-page "http://redmine.iportnov.ru/projects/xdg-userdirs")
    (synopsis "Basic implementation of XDG user directories specification")
    (description "On Unix platforms, this should be a very straightforward
implementation of the XDG User Directory spec. On Windows,
it will attempt to do the right thing with regards to
choosing appropriate directories.")
    (license license:bsd-3)))

haskell-9.4-xdg-userdirs

(define-public haskell-9.4-xml-helpers
  (package
    (name "haskell-9.4-xml-helpers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (home-page "http://github.com/acw/xml-helpers")
    (synopsis "Some useful helper functions for the xml library.")
    (description
     "Included are some folds and maps I've found useful in parsing XML data.")
    (license license:bsd-3)))

haskell-9.4-xml-helpers

(define-public haskell-9.4-xml-picklers
  (package
    (name "haskell-9.4-xml-picklers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-xml-types)))
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

haskell-9.4-xml-picklers

(define-public haskell-9.4-zot
  (package
    (name "haskell-9.4-zot")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-monads-tf)))
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

haskell-9.4-zot

