;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage001)
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
(define-public haskell-8.6-HUnit
  (package
    (name "haskell-8.6-HUnit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)))
    (home-page "https://github.com/hspec/HUnit#readme")
    (synopsis "A unit testing framework for Haskell")
    (description
     "HUnit is a unit testing framework for Haskell, inspired by the
JUnit tool for Java, see: <http://www.junit.org>.")
    (license license:bsd-3)))

haskell-8.6-HUnit

(define-public haskell-8.6-HaXml
  (package
    (name "haskell-8.6-HaXml")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-polyparse)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "http://projects.haskell.org/HaXml/")
    (synopsis "Utilities for manipulating XML documents")
    (description "This version, 1.25.5 is a Non-Maintainer Upload (NMU).
Report issues to the Hackage Trustees issue tracker.

Haskell utilities for parsing, filtering, transforming and
generating XML documents.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-HaXml

(define-public haskell-8.6-ListTree
  (package
    (name "haskell-8.6-ListTree")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-List)))
    (home-page "http://github.com/yairchu/generator/tree")
    (synopsis
     "Trees and monadic trees expressed as monadic lists where the underlying monad is a list")
    (description "Directory tree structure expressed as a monadic tree.
Searching, pruning, iterating, and processing trees.")
    (license license:bsd-3)))

haskell-8.6-ListTree

(define-public haskell-8.6-MonadPrompt
  (package
    (name "haskell-8.6-MonadPrompt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/MonadPrompt")
    (synopsis "MonadPrompt, implementation & examples")
    (description
     "\\\"Prompting\\\" monad that allows splitting the description
of a computation from the implementation of the effects
used in that computation.
<http://www.haskell.org/pipermail/haskell-cafe/2008-January/038301.html>")
    (license license:bsd-3)))

haskell-8.6-MonadPrompt

(define-public haskell-8.6-MonadRandom
  (package
    (name "haskell-8.6-MonadRandom")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MonadRandom/MonadRandom-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j1lwg3pp77cf87bk0c1gipzrdvpjcj7bkgi37lcjc7avmlhwvvp"))))
    (properties `((upstream-name . "MonadRandom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1xvg09cp197zshq2bipph6w7wrjn076az2jlvk9669s4hysn99w8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/MonadRandom")
    (synopsis "Random-number generation monad.")
    (description "Support for computations which consume random values.")
    (license license:bsd-3)))

haskell-8.6-MonadRandom

(define-public haskell-8.6-abstract-deque
  (package
    (name "haskell-8.6-abstract-deque")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-abstract-deque

(define-public haskell-8.6-alg
  (package
    (name "haskell-8.6-alg")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-dual)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-util)))
    (home-page "https://hackage.haskell.org/package/alg")
    (synopsis "Algebraic structures")
    (description "")
    (license license:bsd-3)))

haskell-8.6-alg

(define-public haskell-8.6-algebraic-graphs
  (package
    (name "haskell-8.6-algebraic-graphs")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/algebraic-graphs/algebraic-graphs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dyk8qgaahrvcp4gsl9c6s3hwmwys4xvznwnh0y1x8bqc4md61f9"))))
    (properties `((upstream-name . "algebraic-graphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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
can be used for polymorphic construction and manipulation of graphs. Also see
<http://hackage.haskell.org/package/algebraic-graphs/docs/Algebra-Graph-Fold.html Algebra.Graph.Fold>
that defines the Boehm-Berarducci encoding of algebraic graphs.

This is an experimental library and the API is expected to remain unstable until version 1.0.0.
Please consider contributing to the on-going
<https://github.com/snowleopard/alga/issues discussions on the library API>.")
    (license license:expat)))

haskell-8.6-algebraic-graphs

(define-public haskell-8.6-alsa-core
  (package
    (name "haskell-8.6-alsa-core")
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
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (Exceptions).")
    (description "This package provides access to ALSA infrastructure,
that is needed by both alsa-seq and alsa-pcm.")
    (license license:bsd-3)))

haskell-8.6-alsa-core

(define-public haskell-8.6-ansi-terminal
  (package
    (name "haskell-8.6-ansi-terminal")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal/ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yr0ld0kqns3w3j9gl62bdwshvyazidx4dv1qkvq19ivnf08w23l"))))
    (properties `((upstream-name . "ansi-terminal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)))
    (home-page "https://github.com/feuerbach/ansi-terminal")
    (synopsis "Simple ANSI terminal support, with Windows compatibility")
    (description "ANSI terminal support for Haskell: allows cursor movement,
screen clearing, color output, showing or hiding the
cursor, and changing the title. Works on UNIX and Windows.")
    (license license:bsd-3)))

haskell-8.6-ansi-terminal

(define-public haskell-8.6-atomic-primops
  (package
    (name "haskell-8.6-atomic-primops")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-primops/atomic-primops-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03n5dmyplrqgbyf8dr91izkxci7gkl3i3fnp82i5ld869zrgjfh0"))))
    (properties `((upstream-name . "atomic-primops") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("1" "01rrj7fmgqln44k6xq8jx2jfa5yqhbk1lk0hi84sclpf79g7pag3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
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

haskell-8.6-atomic-primops

(define-public haskell-8.6-benchpress
  (package
    (name "haskell-8.6-benchpress")
    (version "0.2.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/benchpress/benchpress-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r5b1mdjm08nsxni1qzwq3kap13jflcq7ksd30zl7vaxgz9yhwfm"))))
    (properties `((upstream-name . "benchpress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/WillSewell/benchpress")
    (synopsis "Micro-benchmarking with detailed statistics.")
    (description "Benchmarks actions and produces statistics
such as min, mean, median, standard deviation,
and max execution time.  Also computes
execution time percentiles.  Comes with
functions to pretty-print the results.")
    (license license:bsd-3)))

haskell-8.6-benchpress

(define-public haskell-8.6-binary-list
  (package
    (name "haskell-8.6-binary-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-phantom-state)))
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

haskell-8.6-binary-list

(define-public haskell-8.6-binary-parser
  (package
    (name "haskell-8.6-binary-parser")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/nikita-volkov/binary-parser")
    (synopsis
     "A highly-efficient but limited parser API specialised for bytestrings")
    (description "")
    (license license:expat)))

haskell-8.6-binary-parser

(define-public haskell-8.6-binary-shared
  (package
    (name "haskell-8.6-binary-shared")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://www.leksah.org")
    (synopsis "Sharing for the binary package")
    (description
     "I had problems with the size of the allocated heap space after serializing
and loading data with the binary package. The reason was that
binary does not support sharing of identical elements, so I came up
with the generic solution in this package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-binary-shared

(define-public haskell-8.6-bindings-GLFW
  (package
    (name "haskell-8.6-bindings-GLFW")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
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

haskell-8.6-bindings-GLFW

(define-public haskell-8.6-bindings-libzip
  (package
    (name "haskell-8.6-bindings-libzip")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bindings-DSL)
                  (@ (gnu packages compression) libzip)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Low level bindings to libzip.")
    (description
     "This package provides low-level bindings to libzip (v1.0.1) library.
For higher-level interface please use LibZip package:
<http://hackage.haskell.org/package/LibZip>")
    (license license:bsd-3)))

haskell-8.6-bindings-libzip

(define-public haskell-8.6-boolean-normal-forms
  (package
    (name "haskell-8.6-boolean-normal-forms")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-cond)))
    (home-page "https://hackage.haskell.org/package/boolean-normal-forms")
    (synopsis "Boolean normal form: NNF, DNF & CNF")
    (description
     "The provided types that might be useful in symbolic manipulation of propositional logic expressions.")
    (license license:expat)))

haskell-8.6-boolean-normal-forms

(define-public haskell-8.6-btrfs
  (package
    (name "haskell-8.6-btrfs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
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

haskell-8.6-btrfs

(define-public haskell-8.6-bytestring-strict-builder
  (package
    (name "haskell-8.6-bytestring-strict-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-bytestring-strict-builder

(define-public haskell-8.6-bytestring-tree-builder
  (package
    (name "haskell-8.6-bytestring-tree-builder")
    (version "0.2.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-tree-builder/bytestring-tree-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v78jwzmpipw4iyr0i9klxhcfxf98vljxz3had1xklslhzsabk16"))))
    (properties `((upstream-name . "bytestring-tree-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-bytestring-tree-builder

(define-public haskell-8.6-clay
  (package
    (name "haskell-8.6-clay")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-clay

(define-public haskell-8.6-code-page
  (package
    (name "haskell-8.6-code-page")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
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

haskell-8.6-code-page

(define-public haskell-8.6-codec-beam
  (package
    (name "haskell-8.6-codec-beam")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-8.6-codec-beam

(define-public haskell-8.6-compact
  (package
    (name "haskell-8.6-compact")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/compact/compact-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lynnbvsyr07driy7lm9llrhvmk9wprjdbfc34svzfwldghk71gf"))))
    (properties `((upstream-name . "compact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1sy8szbmbhn13s54bq04ni234kk05najm3xm0sh6r9qnvg7pcjd7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ghc-compact)))
    (home-page "https://github.com/ezyang/compact")
    (synopsis "Non-GC'd, contiguous storage for immutable data structures")
    (description
     "This package provides user-facing APIs for working with
\"compact regions\", which hold a fully evaluated Haskell object graph.
These regions maintain the invariant that no pointers live inside the struct
that point outside it, which ensures efficient garbage collection without
ever reading the structure contents (effectively, it works as a manually
managed \"oldest generation\" which is never freed until the whole is
released).
This package is currently highly experimental, but we hope it may
be useful to some people.  It is GHC 8.2 only.  The bare-bones library
that ships with GHC is ghc-compact.")
    (license license:bsd-3)))

haskell-8.6-compact

(define-public haskell-8.6-concurrent-extra
  (package
    (name "haskell-8.6-concurrent-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unbounded-delays)))
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

haskell-8.6-concurrent-extra

(define-public haskell-8.6-console-style
  (package
    (name "haskell-8.6-console-style")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/minad/console-style#readme")
    (synopsis "Styled console text output using ANSI escape sequences.")
    (description "Styled console text output using ANSI escape sequences.")
    (license license:expat)))

haskell-8.6-console-style

(define-public haskell-8.6-contravariant
  (package
    (name "haskell-8.6-contravariant")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant/contravariant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0366gl62wwwdbl9i6kqy60asf60876k55v91la6bmhnwwcj2q9n4"))))
    (properties `((upstream-name . "contravariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftagged" "-fsemigroups" "-fstatevar")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)))
    (home-page "http://github.com/ekmett/contravariant/")
    (synopsis "Contravariant functors")
    (description "Contravariant functors.")
    (license license:bsd-3)))

haskell-8.6-contravariant

(define-public haskell-8.6-crackNum
  (package
    (name "haskell-8.6-crackNum")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-FloatingHex)))
    (home-page "http://github.com/LeventErkok/CrackNum")
    (synopsis "Crack various integer, floating-point data formats")
    (description
     "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.

For details, please see: <http://github.com/LeventErkok/crackNum/>")
    (license license:bsd-3)))

haskell-8.6-crackNum

(define-public haskell-8.6-data-accessor-mtl
  (package
    (name "haskell-8.6-data-accessor-mtl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in mtl State monad class")
    (description "Use Accessor to access state in mtl State monad class")
    (license license:bsd-3)))

haskell-8.6-data-accessor-mtl

(define-public haskell-8.6-data-accessor-transformers
  (package
    (name "haskell-8.6-data-accessor-transformers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Use Accessor to access state in transformers State monad")
    (description "Use Accessor to access state in transformers State monad")
    (license license:bsd-3)))

haskell-8.6-data-accessor-transformers

(define-public haskell-8.6-data-default-instances-containers
  (package
    (name "haskell-8.6-data-default-instances-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-containers")
    (synopsis "Default instances for types in containers")
    (description "")
    (license license:bsd-3)))

haskell-8.6-data-default-instances-containers

(define-public haskell-8.6-data-default-instances-old-locale
  (package
    (name "haskell-8.6-data-default-instances-old-locale")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-old-locale")
    (synopsis "Default instances for types in old-locale")
    (description "")
    (license license:bsd-3)))

haskell-8.6-data-default-instances-old-locale

(define-public haskell-8.6-data-lens-light
  (package
    (name "haskell-8.6-data-lens-light")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/feuerbach/data-lens-light")
    (synopsis "Simple lenses, minimum dependencies")
    (description
     "See <https://github.com/feuerbach/data-lens-light/blob/master/README.md>")
    (license license:expat)))

haskell-8.6-data-lens-light

(define-public haskell-8.6-data-memocombinators
  (package
    (name "haskell-8.6-data-memocombinators")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-inttrie)))
    (home-page "http://github.com/luqui/data-memocombinators")
    (synopsis "Combinators for building memo tables.")
    (description "Combinators for building memo tables.")
    (license license:bsd-3)))

haskell-8.6-data-memocombinators

(define-public haskell-8.6-data-ref
  (package
    (name "haskell-8.6-data-ref")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)))
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

haskell-8.6-data-ref

(define-public haskell-8.6-debug-trace-var
  (package
    (name "haskell-8.6-debug-trace-var")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unicode-show)))
    (home-page "https://github.com/ncaq/debug-trace-var#readme")
    (synopsis "You do not have to write variable names twice in Debug.Trace")
    (description
     "Please see the README on GitHub at <https://github.com/ncaq/debug-trace-var#readme>")
    (license license:expat)))

haskell-8.6-debug-trace-var

(define-public haskell-8.6-dependent-map
  (package
    (name "haskell-8.6-dependent-map")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)))
    (home-page "https://github.com/mokus0/dependent-map")
    (synopsis "Dependent finite maps (partial dependent products)")
    (description "Provides a type called @@DMap@@ which generalizes
@@Data.Map.Map@@, allowing keys to specify the type
of value that can be associated with them.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-dependent-map

(define-public haskell-8.6-disk-free-space
  (package
    (name "haskell-8.6-disk-free-space")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
    (home-page "https://github.com/redneb/disk-free-space")
    (synopsis "Retrieve information about disk space usage")
    (description
     "A cross-platform library for retrieving information about disk space usage.")
    (license license:bsd-3)))

haskell-8.6-disk-free-space

(define-public haskell-8.6-do-notation
  (package
    (name "haskell-8.6-do-notation")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-indexed)))
    (home-page "https://github.com/isovector/do-notation#readme")
    (synopsis
     "Generalize do-notation to work on monads and indexed monads simultaneously.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/do-notation#readme>")
    (license license:bsd-3)))

haskell-8.6-do-notation

(define-public haskell-8.6-edit-distance
  (package
    (name "haskell-8.6-edit-distance")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "http://github.com/phadej/edit-distance")
    (synopsis "Levenshtein and restricted Damerau-Levenshtein edit distances")
    (description
     "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.")
    (license license:bsd-3)))

haskell-8.6-edit-distance

(define-public haskell-8.6-elm-core-sources
  (package
    (name "haskell-8.6-elm-core-sources")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)))
    (home-page "http://github.com/JoeyEremondi/elm-build-lib")
    (synopsis "Source files for the Elm runtime and standard libraries")
    (description
     "Embeds the  standard libraries and runtime files of the Elm language as Haskell strings,
so that they can be used for compilation and served in a Haskell web server.
For more information on the Elm language, see http://elm-lang.org.")
    (license license:bsd-3)))

haskell-8.6-elm-core-sources

(define-public haskell-8.6-enum-subset-generate
  (package
    (name "haskell-8.6-enum-subset-generate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)))
    (home-page "https://github.com/0xd34df00d/enum-subset-generate#readme")
    (synopsis
     "Generate an ADT being a subset of another ADT, and the corresponding mappings.")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/enum-subset-generate#readme>")
    (license license:bsd-3)))

haskell-8.6-enum-subset-generate

(define-public haskell-8.6-exact-pi
  (package
    (name "haskell-8.6-exact-pi")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-numtype-dk)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-8.6-exact-pi

(define-public haskell-8.6-explicit-exception
  (package
    (name "haskell-8.6-explicit-exception")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-explicit-exception

(define-public haskell-8.6-failable
  (package
    (name "haskell-8.6-failable")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/failable")
    (synopsis
     "A 'Failable' error monad class to unify failure across monads that can fail")
    (description
     "This library contains a 'Failable' error monad class to unify failure across monads and transformers most commonly used to implement pipelines that can fail and does so in a simple nonsense way by providing the means of signaling a computation \"failure\" while striving to keep the failure behaviour consistent with the actual definition of the monad/transformer. Please refer to the README file for a more elaborate description and some examples.")
    (license license:bsd-3)))

haskell-8.6-failable

(define-public haskell-8.6-filemanip
  (package
    (name "haskell-8.6-filemanip")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)))
    (home-page "https://github.com/bos/filemanip")
    (synopsis "Expressive file and directory manipulation for Haskell.")
    (description "A Haskell library for working with files and directories.
Includes code for pattern matching, finding files,
modifying file contents, and more.")
    (license license:bsd-3)))

haskell-8.6-filemanip

(define-public haskell-8.6-fitspec
  (package
    (name "haskell-8.6-fitspec")
    (version "0.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fitspec/fitspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ski62ndgl5ay9kbgx2v590pvfsn0wn0cx9h70fhvcrlsam01p5q"))))
    (properties `((upstream-name . "fitspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)))
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

haskell-8.6-fitspec

(define-public haskell-8.6-foldable1
  (package
    (name "haskell-8.6-foldable1")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-util)))
    (home-page "https://hackage.haskell.org/package/foldable1")
    (synopsis "Foldable types with at least 1 element")
    (description "")
    (license license:bsd-3)))

haskell-8.6-foldable1

(define-public haskell-8.6-foundation
  (package
    (name "haskell-8.6-foundation")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)))
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

haskell-8.6-foundation

(define-public haskell-8.6-freetype2
  (package
    (name "haskell-8.6-freetype2")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
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

haskell-8.6-freetype2

(define-public haskell-8.6-frisby
  (package
    (name "haskell-8.6-frisby")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-frisby

(define-public haskell-8.6-function-builder
  (package
    (name "haskell-8.6-function-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/sheyll/function-builder#readme")
    (synopsis "Create poly variadic functions for monoidal results")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-function-builder

(define-public haskell-8.6-gdp
  (package
    (name "haskell-8.6-gdp")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-lawful)))
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

haskell-8.6-gdp

(define-public haskell-8.6-generics-mrsop
  (package
    (name "haskell-8.6-generics-mrsop")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-mrsop/generics-mrsop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ynzwpwry6fqzjmz3n0iwdp5ra3c402jg1g8sdf7vbpaw9ilyrng"))))
    (properties `((upstream-name . "generics-mrsop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/generics-mrsop")
    (synopsis "Generic Programming with Mutually Recursive Sums of Products.")
    (description
     "A library that supports generic programming for mutually
recursive families in the sum-of-products style.

A couple usage examples can be found under \"Generics.MRSOP.Examples\"
")
    (license license:expat)))

haskell-8.6-generics-mrsop

(define-public haskell-8.6-generics-sop
  (package
    (name "haskell-8.6-generics-sop")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop/generics-sop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "160knr2phnzh2gldfv954lz029jzc7y8kz5xpmbf4z3vb5ngm6fw"))))
    (properties `((upstream-name . "generics-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-sop-core)))
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

haskell-8.6-generics-sop

(define-public haskell-8.6-gitrev
  (package
    (name "haskell-8.6-gitrev")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)))
    (home-page "https://github.com/acfoltzer/gitrev")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Some handy Template Haskell splices for including the current git hash and branch in the code of your project. Useful for including in panic messages, @@--version@@ output, or diagnostic info for more informative bug reports.")
    (license license:bsd-3)))

haskell-8.6-gitrev

(define-public haskell-8.6-graphs
  (package
    (name "haskell-8.6-graphs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
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

haskell-8.6-graphs

(define-public haskell-8.6-happy
  (package
    (name "haskell-8.6-happy")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://www.haskell.org/happy/")
    (synopsis "Happy is a parser generator for Haskell")
    (description
     "Happy is a parser generator for Haskell.  Given a grammar
specification in BNF, Happy generates Haskell code to parse the
grammar.  Happy works in a similar way to the @@yacc@@ tool for C.")
    (license license:bsd-2)))

haskell-8.6-happy

(define-public haskell-8.6-haskell-gi-base
  (package
    (name "haskell-8.6-haskell-gi-base")
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
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/haskell-gi/haskell-gi-base")
    (synopsis "Foundation for libraries generated by haskell-gi")
    (description "Foundation for libraries generated by haskell-gi")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-haskell-gi-base

(define-public haskell-8.6-hexpat
  (package
    (name "haskell-8.6-hexpat")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-List)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
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

haskell-8.6-hexpat

(define-public haskell-8.6-hlibgit2
  (package
    (name "haskell-8.6-hlibgit2")
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
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-8.6-hlibgit2

(define-public haskell-8.6-hs-GeoIP
  (package
    (name "haskell-8.6-hs-GeoIP")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
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

haskell-8.6-hs-GeoIP

(define-public haskell-8.6-hs-functors
  (package
    (name "haskell-8.6-hs-functors")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-functors/hs-functors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "197vyl98ddvc55dxwwjd46sdjvh1a9s5qcx2m16smn9gwmx9gq0l"))))
    (properties `((upstream-name . "hs-functors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z4p93nibk1r0cyff4bfpb1rfklq43p75k35fyrk5kcvfa0ds296")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://hackage.haskell.org/package/hs-functors")
    (synopsis "Functors from products of Haskell and its dual to Haskell")
    (description "")
    (license license:bsd-3)))

haskell-8.6-hs-functors

(define-public haskell-8.6-hsdns
  (package
    (name "haskell-8.6-hsdns")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsdns/hsdns-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jxnfgzsshhaf3n8ywhxy84l6ldhz5cdwaayr61v26iqgm3c3qk0"))))
    (properties `((upstream-name . "hsdns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "09ixj0xywmbigfhqmq58dwqns8l3w6wprykafg52fx69bvhg9yph")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages adns) adns)))
    (home-page "https://github.com/peti/hsdns")
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

haskell-8.6-hsdns

(define-public haskell-8.6-hsp
  (package
    (name "haskell-8.6-hsp")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-hsp

(define-public haskell-8.6-hstatsd
  (package
    (name "haskell-8.6-hstatsd")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "https://github.com/mokus0/hstatsd")
    (synopsis "Quick and dirty statsd interface")
    (description "Quick and dirty statsd interface")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-hstatsd

(define-public haskell-8.6-hsyslog
  (package
    (name "haskell-8.6-hsyslog")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
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

haskell-8.6-hsyslog

(define-public haskell-8.6-hxt-unicode
  (package
    (name "haskell-8.6-hxt-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hxt-charproperties)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis
     "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings")
    (description
     "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,
used in the Haskell XML Toolbox.
ISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding
is done with lazy functions, errors may be detected or ignored.")
    (license license:expat)))

haskell-8.6-hxt-unicode

(define-public haskell-8.6-indentation-core
  (package
    (name "haskell-8.6-indentation-core")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indentation-core/indentation-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l1zk5wz9x0m4ird1qk8shi1fkcm3sq2nwkjj6wz2sicp0xkx6h9"))))
    (properties `((upstream-name . "indentation-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://bitbucket.org/adamsmd/indentation")
    (synopsis "Indentation sensitive parsing combinators core library")
    (description "Indentation sensitive parsing combinators core library

This is the core for the indentation package.
For common use, consider one of the front-ends:
indentation-parsec or indentation-trifecta.  For
both, or for backward compatability, install
indentation.")
    (license license:bsd-3)))

haskell-8.6-indentation-core

(define-public haskell-8.6-inspection-testing
  (package
    (name "haskell-8.6-inspection-testing")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inspection-testing/inspection-testing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bppz99p6ix6hah8lbr9mapl2zxgmkg9i7h6hk8wq6zf54hwz3yp"))))
    (properties `((upstream-name . "inspection-testing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-more-tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-inspection-testing

(define-public haskell-8.6-instance-control
  (package
    (name "haskell-8.6-instance-control")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-instance-control

(define-public haskell-8.6-integration
  (package
    (name "haskell-8.6-integration")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)))
    (home-page "https://github.com/ekmett/integration")
    (synopsis "Fast robust numeric integration via tanh-sinh quadrature")
    (description "Fast robust numeric integration via tanh-sinh quadrature")
    (license license:bsd-3)))

haskell-8.6-integration

(define-public haskell-8.6-kind-generics
  (package
    (name "haskell-8.6-kind-generics")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics/kind-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xkrijwhldgx742xj9nhr8268vdbbgk4pg9mj73c7j13laj27y8x"))))
    (properties `((upstream-name . "kind-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-kind-apply)))
    (home-page "https://hackage.haskell.org/package/kind-generics")
    (synopsis
     "Generic programming in GHC style for arbitrary kinds and GADTs.")
    (description
     "This package provides functionality to extend the data type generic programming functionality in GHC to classes of arbitrary kind, and constructors featuring constraints and existentials, as usually gound in GADTs.")
    (license license:bsd-3)))

haskell-8.6-kind-generics

(define-public haskell-8.6-lazyio
  (package
    (name "haskell-8.6-lazyio")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unsafe)))
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

haskell-8.6-lazyio

(define-public haskell-8.6-leancheck-instances
  (package
    (name "haskell-8.6-leancheck-instances")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leancheck-instances/leancheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h6aw2fvdcjaz9r90l3c9znykn0y9gvg74ycvkrqw823sd9ywwd6"))))
    (properties `((upstream-name . "leancheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-nats)))
    (home-page "https://github.com/rudymatela/leancheck-instances#readme")
    (synopsis "Common LeanCheck instances")
    (description
     "Listable instances for types provided by the Haskell Platform.

The current objective is to include all types supported by quickcheck-instances:
<https://hackage.haskell.org/package/quickcheck-instances>")
    (license license:bsd-3)))

haskell-8.6-leancheck-instances

(define-public haskell-8.6-lens-family
  (package
    (name "haskell-8.6-lens-family")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-lens-family-core)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-lens-family

(define-public haskell-8.6-libgit
  (package
    (name "haskell-8.6-libgit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/vincenthz/hs-libgit")
    (synopsis "Simple Git Wrapper")
    (description
     "Simple git wrapper to access common git functions in a simple haskell way.")
    (license license:bsd-3)))

haskell-8.6-libgit

(define-public haskell-8.6-libgraph
  (package
    (name "haskell-8.6-libgraph")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-monads-tf)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-union-find)))
    (home-page "http://maartenfaddegon.nl")
    (synopsis "Store and manipulate data in a graph.")
    (description
     "A graph type, analysis of graphs and manipulation of graphs.")
    (license license:bsd-3)))

haskell-8.6-libgraph

(define-public haskell-8.6-linux-file-extents
  (package
    (name "haskell-8.6-linux-file-extents")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
    (home-page "https://github.com/redneb/linux-file-extents")
    (synopsis "Retrieve file fragmentation information under Linux")
    (description
     "This package provides a simple wrapper around the Linux FIEMAP ioctl.
It can be used to retrieve the list of all the extents of any given
file, i.e. the area of the disk where the file is actually stored. This is
similar to the @@filefrag@@ command line tool provided by the @@e2fsprogs@@
package.")
    (license license:bsd-3)))

haskell-8.6-linux-file-extents

(define-public haskell-8.6-linux-namespaces
  (package
    (name "haskell-8.6-linux-namespaces")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
    (home-page "https://github.com/redneb/hs-linux-namespaces")
    (synopsis "Work with linux namespaces: create new or enter existing ones")
    (description
     "This library provides bindings to the @@unshare(2)@@ and @@setns(2)@@ linux
system calls.")
    (license license:bsd-3)))

haskell-8.6-linux-namespaces

(define-public haskell-8.6-lmdb
  (package
    (name "haskell-8.6-lmdb")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
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

haskell-8.6-lmdb

(define-public haskell-8.6-mainland-pretty
  (package
    (name "haskell-8.6-mainland-pretty")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-srcloc)))
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

haskell-8.6-mainland-pretty

(define-public haskell-8.6-markov-chain
  (package
    (name "haskell-8.6-markov-chain")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-markov-chain

(define-public haskell-8.6-mathexpr
  (package
    (name "haskell-8.6-mathexpr")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)))
    (home-page "https://github.com/mdibaiee/mathexpr")
    (synopsis
     "Parse and evaluate math expressions with variables and functions")
    (description
     "A simple tool to evaluate math expressions as strings with support for custom functions and operators")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-mathexpr

(define-public haskell-8.6-mersenne-random-pure64
  (package
    (name "haskell-8.6-mersenne-random-pure64")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-mersenne-random-pure64

(define-public haskell-8.6-microlens-contra
  (package
    (name "haskell-8.6-microlens-contra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "True folds and getters for microlens")
    (description
     "This package provides @@Fold@@ and @@Getter@@ that are fully compatible with lens; the downside is that this package depends on contravariant, which in its turn depends on a lot of other packages (but still less than lens).

The difference between @@Fold@@ and @@SimpleFold@@ is that you can use e.g. @@takingWhile@@\\/@@droppingWhile@@ and @@backwards@@ on the former but not on the latter. Most functions from lens that work with @@Fold@@ would work with @@SimpleFold@@ as well, tho.

Starting from GHC 8.6, this package doesn't depend on contravariant anymore.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.6-microlens-contra

(define-public haskell-8.6-microlens-ghc
  (package
    (name "haskell-8.6-microlens-ghc")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-ghc/microlens-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "102dbrdsdadxbbhvx8avv1wbk84767a7lkb8ckp3zxk9g7qlly33"))))
    (properties `((upstream-name . "microlens-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + array, bytestring, containers, transformers")
    (description
     "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @@Lens.Micro.GHC@@ reexports everything from @@Lens.Micro@@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>, <http://hackage.haskell.org/package/transfromers transformers>).

The minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.6-microlens-ghc

(define-public haskell-8.6-microlens-mtl
  (package
    (name "haskell-8.6-microlens-mtl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis "microlens support for Reader/Writer/State from mtl")
    (description
     "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.6-microlens-mtl

(define-public haskell-8.6-microlens-th
  (package
    (name "haskell-8.6-microlens-th")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis "Automatic generation of record lenses for microlens")
    (description
     "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens).

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.6-microlens-th

(define-public haskell-8.6-mmorph
  (package
    (name "haskell-8.6-mmorph")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/mmorph")
    (synopsis "Monad morphisms")
    (description
     "This library provides monad morphism utilities, most commonly used
for manipulating monad transformer stacks.")
    (license license:bsd-3)))

haskell-8.6-mmorph

(define-public haskell-8.6-monad-parallel
  (package
    (name "haskell-8.6-monad-parallel")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://trac.haskell.org/SCC/wiki/monad-parallel")
    (synopsis "Parallel execution of monadic computations")
    (description
     "This package defines classes of monads that can perform multiple executions in parallel and combine their results. For
any monad that's an instance of the class, the package re-implements a subset of the Control.Monad interface, but with
parallel execution.")
    (license license:bsd-3)))

haskell-8.6-monad-parallel

(define-public haskell-8.6-monad-time
  (package
    (name "haskell-8.6-monad-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/scrive/monad-time")
    (synopsis "Type class for monads which carry
the notion of the current time.")
    (description "'MonadTime' type class for monads
which carry the notion of the current time.")
    (license license:bsd-3)))

haskell-8.6-monad-time

(define-public haskell-8.6-monadic-arrays
  (package
    (name "haskell-8.6-monadic-arrays")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://github.com/ekmett/monadic-arrays/")
    (synopsis "Boxed and unboxed arrays for monad transformers")
    (description "Boxed and unboxed arrays for monad transformers")
    (license license:bsd-3)))

haskell-8.6-monadic-arrays

(define-public haskell-8.6-monoid-transformer
  (package
    (name "haskell-8.6-monoid-transformer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-transformer")
    (synopsis "Monoid counterparts to some ubiquitous monad transformers")
    (description
     "Monoid transformers: State, Reader

There is no Writer transformer.
It's vice versa: The Writer monad transforms a monoid to a monad.")
    (license license:bsd-3)))

haskell-8.6-monoid-transformer

(define-public haskell-8.6-mtl-compat
  (package
    (name "haskell-8.6-mtl-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-mtl-compat

(define-public haskell-8.6-mtl-prelude
  (package
    (name "haskell-8.6-mtl-prelude")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-mtl-prelude

(define-public haskell-8.6-natural-induction
  (package
    (name "haskell-8.6-natural-induction")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-peano)))
    (home-page "https://hackage.haskell.org/package/natural-induction")
    (synopsis "Induction over natural numbers")
    (description "")
    (license license:bsd-3)))

haskell-8.6-natural-induction

(define-public haskell-8.6-network-bsd
  (package
    (name "haskell-8.6-network-bsd")
    (version "2.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-bsd/network-bsd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dfbwgrr28y6ypw7p1ppqg7v746qf14569q4xazj4ahdjw2xkpi5"))))
    (properties `((upstream-name . "network-bsd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "https://github.com/haskell/network-bsd")
    (synopsis "Network.BSD")
    (description
     "This package reexports the \"Network.BSD\" module split from the <https://hackage.haskell.org/package/network-2.8.0.0 network-2.8.0.0> package.

See newer versions of <https://hackage.haskell.org/package/network-bsd network-bsd> for more information.")
    (license license:bsd-3)))

haskell-8.6-network-bsd

(define-public haskell-8.6-network-house
  (package
    (name "haskell-8.6-network-house")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-house/network-house-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hxbzzdjrxnx9pknsbma7iyfr3pxrsff5n9mhbkpaqaizhibq7q7"))))
    (properties `((upstream-name . "network-house") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/nh2/network-house")
    (synopsis
     "data and parsers for Ethernet, TCP, UDP, IPv4, IPv6, ICMP, DHCP, TFTP")
    (description
     "The network stack extracted from the House (<https://code.google.com/p/pdxhouse/>) project.

Provides data structures and parsers for Ethernet, TCP, UDP, IPv4, IPv6, ICMP, DHCP and TFTP packets as well as some server implementations.

This package was extracted from house due to the lack of existing network package parsing libraries.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-network-house

(define-public haskell-8.6-non-empty-sequence
  (package
    (name "haskell-8.6-non-empty-sequence")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "http://www.github.com/massysett/non-empty-sequence")
    (synopsis "Non-empty sequence")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-non-empty-sequence

(define-public haskell-8.6-old-time
  (package
    (name "haskell-8.6-old-time")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)))
    (home-page "https://hackage.haskell.org/package/old-time")
    (synopsis "Time library")
    (description "This package provides the old time library.

For new projects, the newer
<http://hackage.haskell.org/package/time time library>
is recommended.")
    (license license:bsd-3)))

haskell-8.6-old-time

(define-public haskell-8.6-operational
  (package
    (name "haskell-8.6-operational")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-operational

(define-public haskell-8.6-options
  (package
    (name "haskell-8.6-options")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-monads-tf)))
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

haskell-8.6-options

(define-public haskell-8.6-parallel-io
  (package
    (name "haskell-8.6-parallel-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-parallel-io

(define-public haskell-8.6-pattern-arrows
  (package
    (name "haskell-8.6-pattern-arrows")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page
     "http://blog.functorial.com/posts/2013-10-27-Pretty-Printing-Arrows.html")
    (synopsis "Arrows for Pretty Printing")
    (description
     "A library for generating concise pretty printers based on precedence rules.")
    (license license:expat)))

haskell-8.6-pattern-arrows

(define-public haskell-8.6-percent-format
  (package
    (name "haskell-8.6-percent-format")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)))
    (home-page "https://github.com/rudymatela/percent-format#readme")
    (synopsis "simple printf-style string formatting")
    (description
     "The @@Text.PercentFormat@@ library provides printf-style string formatting.  It
provides a @@%@@ operator (as in Ruby or Python) and uses the old
C-printf-style format you know and love.")
    (license license:bsd-3)))

haskell-8.6-percent-format

(define-public haskell-8.6-port-utils
  (package
    (name "haskell-8.6-port-utils")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/port-utils/port-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1phpf6n7bjg3a22syh45xsiczqlay82z3isdn6dq5alxdaa31y5n"))))
    (properties `((upstream-name . "port-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "https://github.com/jfischoff/port-utils#readme")
    (synopsis "Utilities for creating and waiting on ports")
    (description
     "Utilities for creating and waiting on ports. . @@openFreePort@@ will create a socket bound to a random port (like @@warp@@'s @@openFreePort@@). . @@wait@@ will attempt to connect to given host and port repeatedly until successful. .")
    (license license:bsd-3)))

haskell-8.6-port-utils

(define-public haskell-8.6-prim-uniq
  (package
    (name "haskell-8.6-prim-uniq")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://github.com/mokus0/prim-uniq")
    (synopsis "Opaque unique identifiers in primitive state monads")
    (description "Opaque unique identifiers in primitive state monads
and a GADT-like type using them as witnesses of type
equality.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-prim-uniq

(define-public haskell-8.6-product-isomorphic
  (package
    (name "haskell-8.6-product-isomorphic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-data-compat)))
    (home-page "http://github.com/khibino/haskell-product-isomorphic")
    (synopsis "Weaken applicative functor on products")
    (description "Weaken applicative functor which allows only product
construction. Product constructions and deconstructions
are always isomorphic.")
    (license license:bsd-3)))

haskell-8.6-product-isomorphic

(define-public haskell-8.6-promises
  (package
    (name "haskell-8.6-promises")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "http://github.com/ekmett/promises/")
    (synopsis "Lazy demand-driven promises")
    (description "Lazy demand-driven promises")
    (license license:bsd-3)))

haskell-8.6-promises

(define-public haskell-8.6-prompt
  (package
    (name "haskell-8.6-prompt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
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

haskell-8.6-prompt

(define-public haskell-8.6-regex-base
  (package
    (name "haskell-8.6-regex-base")
    (version "0.93.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-base/regex-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y1j4h2pg12c853nzmczs263di7xkkmlnsq5dlp5wgbgl49mgp10"))))
    (properties `((upstream-name . "regex-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("2" "0dks3m5xwcjqqlyyg7abh12ci3ap5qn6wz3bz80kr6rcfgk0fhvd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://sourceforge.net/projects/lazy-regex")
    (synopsis "Replaces/Enhances Text.Regex")
    (description "Interface API for regex-posix,pcre,parsec,tdfa,dfa")
    (license license:bsd-3)))

haskell-8.6-regex-base

(define-public haskell-8.6-repline
  (package
    (name "haskell-8.6-repline")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repline/repline-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yxfn6p4gprnv8hzpzh7872fs3l661d587v4kkp51mjyydpiihs5"))))
    (properties `((upstream-name . "repline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/sdiehl/repline")
    (synopsis "Haskeline wrapper for GHCi-like REPL interfaces.")
    (description
     "Haskeline wrapper for GHCi-like REPL interfaces. Composable with normal mtl transformers.")
    (license license:expat)))

haskell-8.6-repline

(define-public haskell-8.6-rev-state
  (package
    (name "haskell-8.6-rev-state")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/DanBurton/rev-state#readme")
    (synopsis "Reverse State monad transformer")
    (description "It's like the State monad transformer.
But Reversed! The state goes backwards.")
    (license license:bsd-3)))

haskell-8.6-rev-state

(define-public haskell-8.6-sendfile
  (package
    (name "haskell-8.6-sendfile")
    (version "0.7.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sendfile/sendfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0988snmx3bylpw3kcq8hsgji8idc6xcrcfp275qjv3apfdgc9rp0"))))
    (properties `((upstream-name . "sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-portable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "http://hub.darcs.net/stepcut/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-8.6-sendfile

(define-public haskell-8.6-setlocale
  (package
    (name "haskell-8.6-setlocale")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
    (home-page "https://gitlab.com/Kritzefitz/haskell-setlocale")
    (synopsis "Haskell bindings to setlocale")
    (description "")
    (license license:bsd-3)))

haskell-8.6-setlocale

(define-public haskell-8.6-shared-memory
  (package
    (name "haskell-8.6-shared-memory")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
    (home-page "https://github.com/nh2/shared-memory")
    (synopsis "POSIX shared memory")
    (description "POSIX shared memory library.")
    (license license:expat)))

haskell-8.6-shared-memory

(define-public haskell-8.6-singleton-bool
  (package
    (name "haskell-8.6-singleton-bool")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-dec)))
    (home-page "https://github.com/phadej/singleton-bool#readme")
    (synopsis "Type level booleans")
    (description "Type level booleans.

@@singletons@@ package provides similar functionality,
but it has tight dependency constraints.")
    (license license:bsd-3)))

haskell-8.6-singleton-bool

(define-public haskell-8.6-size-based
  (package
    (name "haskell-8.6-size-based")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dictionary-sharing)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-testing-type-modifiers)))
    (home-page "https://hackage.haskell.org/package/size-based")
    (synopsis "Sized functors, for size-based enumerations")
    (description
     "A framework for size-based enumerations. See the module documentations for details. ")
    (license license:bsd-3)))

haskell-8.6-size-based

(define-public haskell-8.6-socket-activation
  (package
    (name "haskell-8.6-socket-activation")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "https://github.com/ddfisher/haskell-socket-activation")
    (synopsis "systemd socket activation library")
    (description
     "a module for systemd socket activation.  See
<http://0pointer.de/blog/projects/socket-activation.html> and
<http://www.freedesktop.org/software/systemd/man/systemd.socket.html> for more
details.")
    (license license:bsd-3)))

haskell-8.6-socket-activation

(define-public haskell-8.6-speculate
  (package
    (name "haskell-8.6-speculate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)))
    (home-page "https://github.com/rudymatela/speculate#readme")
    (synopsis "discovery of properties about Haskell functions")
    (description
     "Speculate automatically discovers laws about Haskell functions.
Give Speculate a bunch of Haskell functions and it will discover laws like:

* equations, such as @@ id x == x @@;

* inequalities, such as @@ 0 <= x * x @@;

* conditional equations, such as @@ x \\<= 0  ==\\>  x + abs x == 0 @@.")
    (license license:bsd-3)))

haskell-8.6-speculate

(define-public haskell-8.6-sphinx
  (package
    (name "haskell-8.6-sphinx")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-text-icu)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)))
    (home-page "https://github.com/gregwebs/haskell-sphinx-client")
    (synopsis "Haskell bindings to the Sphinx full-text searching daemon.")
    (description
     "Haskell bindings to the Sphinx full-text searching daemon. Compatible with Sphinx version 2.0")
    (license license:bsd-3)))

haskell-8.6-sphinx

(define-public haskell-8.6-splice
  (package
    (name "haskell-8.6-splice")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
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

haskell-8.6-splice

(define-public haskell-8.6-splitmix
  (package
    (name "haskell-8.6-splitmix")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/splitmix/splitmix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k0amgkz7rvyz3lnw7m786ilnr1cibwhx9sc4qynq329gxan5r7w"))))
    (properties `((upstream-name . "splitmix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-optimised-mixer" "-frandom")
       #:cabal-revision
       ("1" "178d81ksnmgppbd09ci53r88iyacn3phy55v5i4ybfz5d8rfjpa5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-splitmix

(define-public haskell-8.6-stateref
  (package
    (name "haskell-8.6-stateref")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-stateref

(define-public haskell-8.6-statestack
  (package
    (name "haskell-8.6-statestack")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/statestack")
    (synopsis
     "Simple State-like monad transformer with saveable and restorable state")
    (description
     "Simple State-like monad transformer where states can be saved to
and restored from an internal stack.")
    (license license:bsd-3)))

haskell-8.6-statestack

(define-public haskell-8.6-store-core
  (package
    (name "haskell-8.6-store-core")
    (version "0.4.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/store-core/store-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "184f3whh7kzc2fkm1mgllg06f002z8shayz1b8cvhal3qg1qahf9"))))
    (properties `((upstream-name . "store-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-alignment")
       #:cabal-revision
       ("1" "0g0r9cg0c4y097cmcwn54n37jp9igbf19s8dh7qmx6nz7sdn98l7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Fast and lightweight binary serialization")
    (description "")
    (license license:expat)))

haskell-8.6-store-core

(define-public haskell-8.6-string-class
  (package
    (name "haskell-8.6-string-class")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/string-class/string-class")
    (synopsis "String class library")
    (description "String class library.")
    (license license:bsd-3)))

haskell-8.6-string-class

(define-public haskell-8.6-systemd
  (package
    (name "haskell-8.6-systemd")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/systemd/systemd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04jzgixwy267bx75byi1pavfgic2h3znn42psb70i6l6xvwn875g"))))
    (properties `((upstream-name . "systemd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (home-page "https://github.com/erebe/systemd")
    (synopsis "Systemd facilities (Socket activation, Notify)")
    (description "A module for Systemd facilities.")
    (license license:bsd-3)))

haskell-8.6-systemd

(define-public haskell-8.6-tagged-identity
  (package
    (name "haskell-8.6-tagged-identity")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/mrkkrp/tagged-identity")
    (synopsis
     "Trivial monad transformer that allows identical monad stacks have different types")
    (description
     "Trivial monad transformer that allows identical monad stacks have different types.")
    (license license:bsd-3)))

haskell-8.6-tagged-identity

(define-public haskell-8.6-tagshare
  (package
    (name "haskell-8.6-tagshare")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/tagshare")
    (synopsis "TagShare - explicit sharing with tags")
    (description "TagShare supplies a monad for sharing values based on tags
and types. Each tag and type is bound to at most one value
in a dynamic map.

The principal use of this package is to ensure that
constant class members or other overloaded values are
shared.")
    (license license:bsd-3)))

haskell-8.6-tagshare

(define-public haskell-8.6-tao-example
  (package
    (name "haskell-8.6-tao-example")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tao)))
    (home-page "https://github.com/jship/tao#readme")
    (synopsis "Example usage of the tao package.")
    (description "Example usage of type-level assertions using tao.")
    (license license:expat)))

haskell-8.6-tao-example

(define-public haskell-8.6-terminal-size
  (package
    (name "haskell-8.6-terminal-size")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)))
    (home-page "https://hackage.haskell.org/package/terminal-size")
    (synopsis "Get terminal window height and width")
    (description
     "Get terminal window height and width without ncurses dependency.")
    (license license:bsd-3)))

haskell-8.6-terminal-size

(define-public haskell-8.6-tf-random
  (package
    (name "haskell-8.6-tf-random")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
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

haskell-8.6-tf-random

(define-public haskell-8.6-th-lift
  (package
    (name "haskell-8.6-th-lift")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-lift/th-lift-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1msyisgn30l2sd7jagab38r8q9mbi4phmqk4g3fddn4l6wcz989z"))))
    (properties `((upstream-name . "th-lift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)))
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

haskell-8.6-th-lift

(define-public haskell-8.6-timezone-olson
  (package
    (name "haskell-8.6-timezone-olson")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-timezone-series)))
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

haskell-8.6-timezone-olson

(define-public haskell-8.6-tree-fun
  (package
    (name "haskell-8.6-tree-fun")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/tree-fun")
    (synopsis
     "Library for functions pertaining to tree exploration and manipulation")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-tree-fun

(define-public haskell-8.6-tuple
  (package
    (name "haskell-8.6-tuple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-OneTuple)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-8.6-tuple

(define-public haskell-8.6-typelits-witnesses
  (package
    (name "haskell-8.6-typelits-witnesses")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typelits-witnesses/typelits-witnesses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1khy5nacmsl7h4vg7driv4yb9m3zvkhbf8divyhd249i6bdmql70"))))
    (properties `((upstream-name . "typelits-witnesses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11lpv0zymmxlqh2sac324znmr5rhvvfvjipddgyhv6y3l7zy7jhs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)))
    (home-page "https://github.com/mstksg/typelits-witnesses")
    (synopsis
     "Existential witnesses, singletons, and classes for operations on GHC TypeLits")
    (description
     "This library contains:

*   A small specialized subset of the *singletons* library as it pertains to
`Nat` and `Symbol`, for when you need some simple functionality without
wanting to invoke the entire *singletons* library.
*   Operations for manipulating these singletons and `KnownNat` and
`KnownSymbol` instances, such as addition and multiplication of
singletons/`KnownNat` instances.
*   Operations for the comparison of `Nat`s in a way that works well with
*GHC.TypeLits*'s different comparison systems.  This is helpful for
bridging together libraries that use different systems; this functionality
is not yet provided by *singletons*.")
    (license license:expat)))

haskell-8.6-typelits-witnesses

(define-public haskell-8.6-unicode-transforms
  (package
    (name "haskell-8.6-unicode-transforms")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-transforms/unicode-transforms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1akscvyssif4hki3g6hy0jmjyr8cqly1whzvzj0km2b3qh0x09l3"))))
    (properties `((upstream-name . "unicode-transforms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-bench-show" "-f-has-icu" "-f-has-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bitarray)))
    (home-page "http://github.com/harendra-kumar/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 12.1.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-8.6-unicode-transforms

(define-public haskell-8.6-unordered-intmap
  (package
    (name "haskell-8.6-unordered-intmap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://github.com/ethercrow/unordered-intmap")
    (synopsis "A specialization of `HashMap Int v`")
    (description "")
    (license license:bsd-3)))

haskell-8.6-unordered-intmap

(define-public haskell-8.6-url
  (package
    (name "haskell-8.6-url")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://www.haskell.org/haskellwiki/Url")
    (synopsis "A library for working with URLs.")
    (description "A library for working with URLs.")
    (license license:bsd-3)))

haskell-8.6-url

(define-public haskell-8.6-vector
  (package
    (name "haskell-8.6-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
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

haskell-8.6-vector

(define-public haskell-8.6-wide-word
  (package
    (name "haskell-8.6-wide-word")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wide-word/wide-word-" version
                    ".tar.gz"))
              (sha256
               (base32
                "101a2irkgsz9264zj9vdwbkycf25phsf1kbhh6nrx8mh9207aaiw"))))
    (properties `((upstream-name . "wide-word") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
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

haskell-8.6-wide-word

(define-public haskell-8.6-wizards
  (package
    (name "haskell-8.6-wizards")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-control-monad-free)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-wizards

(define-public haskell-8.6-wl-pprint-text
  (package
    (name "haskell-8.6-wl-pprint-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)))
    (home-page "https://hackage.haskell.org/package/wl-pprint-text")
    (synopsis "A Wadler/Leijen Pretty Printer for Text values")
    (description "A clone of wl-pprint for use with the text library.")
    (license license:bsd-3)))

haskell-8.6-wl-pprint-text

(define-public haskell-8.6-writer-cps-mtl
  (package
    (name "haskell-8.6-writer-cps-mtl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-mtl#readme")
    (synopsis "MonadWriter orphan instances for writer-cps-transformers")
    (description
     "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. See also (<http://hackage.haskell.org/package/writer-cps-transformers>).")
    (license license:bsd-3)))

haskell-8.6-writer-cps-mtl

(define-public haskell-8.6-xdg-userdirs
  (package
    (name "haskell-8.6-xdg-userdirs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xdg-basedir)))
    (home-page "http://redmine.iportnov.ru/projects/xdg-userdirs")
    (synopsis "Basic implementation of XDG user directories specification")
    (description "On Unix platforms, this should be a very straightforward
implementation of the XDG User Directory spec. On Windows,
it will attempt to do the right thing with regards to
choosing appropriate directories.")
    (license license:bsd-3)))

haskell-8.6-xdg-userdirs

(define-public haskell-8.6-xml-picklers
  (package
    (name "haskell-8.6-xml-picklers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
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

haskell-8.6-xml-picklers

(define-public haskell-8.6-yoga
  (package
    (name "haskell-8.6-yoga")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ieee754)
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

haskell-8.6-yoga

(define-public haskell-8.6-zero
  (package
    (name "haskell-8.6-zero")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-zero

(define-public haskell-8.6-zot
  (package
    (name "haskell-8.6-zot")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-monads-tf)))
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

haskell-8.6-zot

