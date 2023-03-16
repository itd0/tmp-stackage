;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage011)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.0))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.0-backtracking
  (package
    (name "haskell-9.0-backtracking")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/backtracking/backtracking-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l1isnnld8drsb8jqkf6zd8v61gcy172zk8zdr21yawnkwfr057b"))))
    (properties `((upstream-name . "backtracking") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primes)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/backtracking")
    (synopsis "A backtracking monad")
    (description
     "This library provides a backtracking monad following Spivey's paper \"Algebras for combinatorial search\".")
    (license license:bsd-3)))

haskell-9.0-backtracking

(define-public haskell-9.0-bounded-queue
  (package
    (name "haskell-9.0-bounded-queue")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bounded-queue/bounded-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18jlkdzfkw0v6ifz8fzqkzagc3g97kg13ng8yldq869casnmcw5d"))))
    (properties `((upstream-name . "bounded-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://gitlab.com/fosskers/bounded-queue")
    (synopsis "A strict, immutable, thread-safe, single-ended, bounded queue.")
    (description
     "A strict, immutable, thread-safe, single-ended, bounded queue
which automatically forgets old values instead of blocking.")
    (license license:bsd-3)))

haskell-9.0-bounded-queue

(define-public haskell-9.0-casing
  (package
    (name "haskell-9.0-casing")
    (version "0.1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/casing/casing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jpqni00kalydwzjh2ljpgry3w696wa52bkaxzr53da60b072qhh"))))
    (properties `((upstream-name . "casing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1n7w4w2icfppyvlmyzzmfivbx175ckqabs4my5qvvdvwlc89xrqb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/casing")
    (synopsis "Convert between various source code casing conventions")
    (description
     "Converts between camelCase, PascalCase, kebab-case, and three
flavors of snake_case.")
    (license license:expat)))

haskell-9.0-casing

(define-public haskell-9.0-dunai
  (package
    (name "haskell-9.0-dunai")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dunai/dunai-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xkc7a337g6xg2wgj1sphpmvj22y2fkifs36s7iws7cr7fqx1a1p"))))
    (properties `((upstream-name . "dunai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-hlint" "-f-test-doc-coverage")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-affine-space)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://github.com/ivanperez-keera/dunai")
    (synopsis
     "Generalised reactive framework supporting classic, arrowized and monadic FRP.")
    (description
     "Dunai is a DSL for strongly-typed CPS-based composable transformations.

Dunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are
transformations defined by a function
@@unMSF :: MSF m a b -> a -> m (b, MSF m a b)@@ that executes one step of a
simulation, and produces an output in a monadic context, and a continuation
to be used for future steps.

MSFs are a generalisation of the implementation mechanism used by Yampa,
Wormholes and other FRP and reactive implementations.

When combined with different monads, they produce interesting effects. For
example, when combined with the @@Maybe@@ monad, they become transformations
that may stop producing outputs (and continuations). The @@Either@@ monad gives
rise to MSFs that end with a result (akin to Tasks in Yampa, and Monadic
FRP).

Flattening, that is, going from some structure @@MSF (t m) a b@@ to @@MSF m a b@@
for a specific transformer @@t@@ often gives rise to known FRP constructs. For
instance, flattening with @@EitherT@@ gives rise to switching, and flattening
with @@ListT@@ gives rise to parallelism with broadcasting.

MSFs can be used to implement many FRP variants, including Arrowized FRP,
Classic FRP, and plain reactive programming. Arrowized and applicative syntax
are both supported.

For a very detailed introduction to MSFs, see:
<http://dl.acm.org/citation.cfm?id=2976010>
(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).")
    (license license:bsd-3)))

haskell-9.0-dunai

(define-public haskell-9.0-free-vl
  (package
    (name "haskell-9.0-free-vl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "http://github.com/aaronlevin/free-vl")
    (synopsis "van Laarhoven encoded Free Monad with Extensible Effects")
    (description
     "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.

For more information on the van Laarhoven Free Monads, including examples,
please see the following blog posts:

Initial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>

Adding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>")
    (license license:bsd-3)))

haskell-9.0-free-vl

(define-public haskell-9.0-ghc-typelits-natnormalise
  (package
    (name "haskell-9.0-ghc-typelits-natnormalise")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-natnormalise/ghc-typelits-natnormalise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pqpsy3j4brpg2hrq9qrnjzr1bishycny5gvsdncvhaq3m53gslh"))))
    (properties `((upstream-name . "ghc-typelits-natnormalise")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "GHC typechecker plugin for types of kind GHC.TypeLits.Nat")
    (description
     "A type checker plugin for GHC that can solve /equalities/ and /inequalities/
of types of kind @@Nat@@, where these types are either:

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

haskell-9.0-ghc-typelits-natnormalise

(define-public haskell-9.0-gloss
  (package
    (name "haskell-9.0-gloss")
    (version "1.13.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gloss/gloss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ladpnk2zw27bz895b9gphhrmawb0gwvzrmnisk56msjdxwqq5pn"))))
    (properties `((upstream-name . "gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fglut" "-f-glfw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009) haskell-9.0-GLUT)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-bmp)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-gloss-rendering)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Painless 2D vector graphics, animations and simulations.")
    (description
     "Gloss hides the pain of drawing simple vector graphics behind a nice data type and
a few display functions. Gloss uses OpenGL under the hood, but you won't need to
worry about any of that. Get something cool on the screen in under 10 minutes.")
    (license license:expat)))

haskell-9.0-gloss

(define-public haskell-9.0-immortal
  (package
    (name "haskell-9.0-immortal")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/feuerbach/immortal")
    (synopsis "Spawn threads that never die (unless told to do so)")
    (description "A small library to create threads that never die.
This is useful e.g. for writing servers.")
    (license license:expat)))

haskell-9.0-immortal

(define-public haskell-9.0-indents
  (package
    (name "haskell-9.0-indents")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zbcf8m4n63ff06hjp0mr18i59y5wd6c1k5z1j6rnl7kymghkjrg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "http://github.com/jaspervdj/indents")
    (synopsis "indentation sensitive parser-combinators for parsec")
    (description
     "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.")
    (license license:bsd-3)))

haskell-9.0-indents

(define-public haskell-9.0-jira-wiki-markup
  (package
    (name "haskell-9.0-jira-wiki-markup")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jira-wiki-markup/jira-wiki-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p6axj6km4440ss5naw68r3r85si4qxqgrklp6ssfyapawy0s88w"))))
    (properties `((upstream-name . "jira-wiki-markup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "043x87s8lyg0ck2krwdn1ncr0sxc7p03jmgykwyvg8c7i56n3m7n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/tarleb/jira-wiki-markup")
    (synopsis "Handle Jira wiki markup")
    (description "Parse jira wiki text into an abstract syntax tree for easy
transformation to other formats.")
    (license license:expat)))

haskell-9.0-jira-wiki-markup

(define-public haskell-9.0-logict
  (package
    (name "haskell-9.0-logict")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logict/logict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1d22b7r8lnak5k8ars166cxbk1lv7gf8g0qs604irsx2s474ybi7"))))
    (properties `((upstream-name . "logict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/Bodigrim/logict#readme")
    (synopsis "A backtracking logic-programming monad.")
    (description
     "Adapted from the paper
<http://okmij.org/ftp/papers/LogicT.pdf Backtracking, Interleaving, and Terminating Monad Transformers>
by Oleg Kiselyov, Chung-chieh Shan, Daniel P. Friedman, Amr Sabry.")
    (license license:bsd-3)))

haskell-9.0-logict

(define-public haskell-9.0-lua
  (package
    (name "haskell-9.0-lua")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lua/lua-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "00fcx1by3b2bjb3sc86azr3gmy9jd1b0gilbz48pkbb7cw4p5z1c"))))
    (properties `((upstream-name . "lua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-lua" "-f-apicheck" "-f-lua_32bits" "-fallow-unsafe-gc" "-fexport-dynamic" "-f-pkg-config" "-fhardcode-reg-keys")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hslua.org/")
    (synopsis "Lua, an embeddable scripting language")
    (description "This package provides bindings and types to bridge
Haskell and <https://www.lua.org/ Lua>.

The full Lua interpreter version 5.3.6 is included.
Alternatively, a system-wide Lua installation can be
linked instead.")
    (license license:expat)))

haskell-9.0-lua

(define-public haskell-9.0-monad-loops
  (package
    (name "haskell-9.0-monad-loops")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/mokus0/monad-loops")
    (synopsis "Monadic loops")
    (description "Some useful control operators for looping.

New in 0.4: STM loop operators have been split into a
new package instead of being conditionally-built.

New in 0.3.2.0: various functions for traversing lists and
computing minima/maxima using arbitrary procedures to compare
or score the elements.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-monad-loops

(define-public haskell-9.0-nondeterminism
  (package
    (name "haskell-9.0-nondeterminism")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/nondeterminism")
    (synopsis
     "A monad and monad transformer for nondeterministic computations.")
    (description "Nondeterministic computations")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-nondeterminism

(define-public haskell-9.0-openpgp-asciiarmor
  (package
    (name "haskell-9.0-openpgp-asciiarmor")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openpgp-asciiarmor/openpgp-asciiarmor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g99llkpqp7r01xlbq9m9nrii33yagiy1ah4fgdcmjnkmqg64hjk"))))
    (properties `((upstream-name . "openpgp-asciiarmor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nm5c9x4nzqkklk7a8gkh3v0w08anz17y00h3av6ll260m6m8szy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "http://floss.scru.org/openpgp-asciiarmor")
    (synopsis "OpenPGP (RFC4880) ASCII Armor codec")
    (description "OpenPGP (RFC4880) ASCII Armor codec")
    (license license:expat)))

haskell-9.0-openpgp-asciiarmor

(define-public haskell-9.0-pipes-attoparsec
  (package
    (name "haskell-9.0-pipes-attoparsec")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-parse)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/k0001/pipes-attoparsec")
    (synopsis "Attoparsec and Pipes integration.")
    (description
     "Utilities to run Attoparsec parsers on Pipes input streams.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-9.0-pipes-attoparsec

(define-public haskell-9.0-semver
  (package
    (name "haskell-9.0-semver")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/semver/semver-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hgn3wd1wv3y1723kvd9clj72z65f6m28yf75mxl1zjfd0kf6ivw"))))
    (properties `((upstream-name . "semver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13c692s2fbn6xygw70aglj84a8hq549gcj1p40g11j77w68p9xx4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/brendanhay/semver")
    (synopsis
     "Representation, manipulation, and de/serialisation of Semantic Versions.")
    (description
     "Representation, manipulation, and de/serialisation of a Version type
following the Semantic Versioning specification.

For more information see: <http://semver.org>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-semver

(define-public haskell-9.0-sitemap-gen
  (package
    (name "haskell-9.0-sitemap-gen")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sitemap-gen/sitemap-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dq87yix1ii6mna8qzbgrqn07ph41283bjzy40rpwm7aqdpv2z0z"))))
    (properties `((upstream-name . "sitemap-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wizn0h8vwjrfgznb4bikpvil37v9iy42ginq584k85kiysxxmqa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-xmlgen)))
    (home-page "https://github.com/prikhi/sitemap-gen#readme")
    (synopsis "Generate XML Sitemaps & Sitemap Indexes")
    (description
     "The @@sitemap-gen@@ package uses the @@xmlgen@@ package to generate XML
sitemaps that are compliant with the sitemaps.org XML schema.

See the \"Web.Sitemap.Gen\" module and the
<https://github.com/prikhi/sitemap-gen/blob/master/README.md README> file
for documentation & usage details.")
    (license license:bsd-3)))

haskell-9.0-sitemap-gen

(define-public haskell-9.0-syb
  (package
    (name "haskell-9.0-syb")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/syb/syb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1qxjjndfwz2vvpz9707banmcn6jl2v6w6zp401zxaj327fccchw1"))))
    (properties `((upstream-name . "syb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "http://www.cs.uu.nl/wiki/GenericProgramming/SYB")
    (synopsis "Scrap Your Boilerplate")
    (description
     "This package contains the generics system described in the
/Scrap Your Boilerplate/ papers (see
<http://www.cs.uu.nl/wiki/GenericProgramming/SYB>).
It defines the @@Data@@ class of types permitting folding and unfolding
of constructor applications, instances of this class for primitive
types, and a variety of traversals.")
    (license license:bsd-3)))

haskell-9.0-syb

(define-public haskell-9.0-tasty-focus
  (package
    (name "haskell-9.0-tasty-focus")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-focus/tasty-focus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i6syd1mb1mrf2ys0f4nx3j9xvkb73rwv627b8hr5xkipwp4pjm2"))))
    (properties `((upstream-name . "tasty-focus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/jonascarpay/tasty-focus#readme")
    (synopsis "Simple focus mechanism for tasty")
    (description "Simple focus mechanism for tasty, similar to hspec.")
    (license license:bsd-3)))

haskell-9.0-tasty-focus

(define-public haskell-9.0-tasty-hunit-compat
  (package
    (name "haskell-9.0-tasty-hunit-compat")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit-compat/tasty-hunit-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kfxga9j1iy7f00gj3dsh45ywyi7qzdlrmp16gr4ir3b08rwhj2m"))))
    (properties `((upstream-name . "tasty-hunit-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/serokell/tasty-hunit-compat#readme")
    (synopsis "Integration of `HUnit` with `tasty`.")
    (description
     "Implements the proper integration between existing `HUnit` package and `tasty` framework.
The existing solution in `tasty` defines its own primitives that are not compatible with `HUnit`.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-tasty-hunit-compat

(define-public haskell-9.0-tasty-quickcheck
  (package
    (name "haskell-9.0-tasty-quickcheck")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qnc6rdvjvlw08q6sln2n98rvj0s0pp689h6w4z58smjbn0lr25l"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-pcre-light)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UnkindPartition/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-9.0-tasty-quickcheck

(define-public haskell-9.0-tasty-th
  (package
    (name "haskell-9.0-tasty-th")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-th/tasty-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b2ivrw2257m4cy4rjnkwqlarh83j1y3zywnmaqqqbvy667sqnj3"))))
    (properties `((upstream-name . "tasty-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "http://github.com/bennofs/tasty-th")
    (synopsis "Automatic tasty test case discovery using TH")
    (description
     "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.")
    (license license:bsd-3)))

haskell-9.0-tasty-th

(define-public haskell-9.0-temporary
  (package
    (name "haskell-9.0-temporary")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/feuerbach/temporary")
    (synopsis "Portable temporary file and directory support")
    (description "Functions for creating temporary files and directories.")
    (license license:bsd-3)))

haskell-9.0-temporary

(define-public haskell-9.0-test-fun
  (package
    (name "haskell-9.0-test-fun")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-fun/test-fun-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sp19a2i4ahn9mfd1rx4icp6lcnhw5bz192859yj8f8ky4xszryb"))))
    (properties `((upstream-name . "test-fun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/Lysxia/test-fun#readme")
    (synopsis "Testable functions")
    (description
     "Generate, shrink, and show functions for testing higher-order properties.
See README.")
    (license license:expat)))

haskell-9.0-test-fun

(define-public haskell-9.0-text-manipulate
  (package
    (name "haskell-9.0-text-manipulate")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-manipulate/text-manipulate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g06ldl6cdnyr31xlks5qm1sj44ccrdvq4bf8dk032mzfkpyyrws"))))
    (properties `((upstream-name . "text-manipulate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/brendanhay/text-manipulate")
    (synopsis
     "Case conversion, word boundary manipulation, and textual subjugation.")
    (description
     "Manipulate identifiers and structurally non-complex pieces
of text by delimiting word boundaries via a combination of whitespace,
control-characters, and case-sensitivity.

Has support for common idioms like casing of programmatic variable names,
taking, dropping, and splitting by word, and modifying the first character
of a piece of text.")
    (license license:mpl2.0)))

haskell-9.0-text-manipulate

(define-public haskell-9.0-traverse-with-class
  (package
    (name "haskell-9.0-traverse-with-class")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/traverse-with-class/traverse-with-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c0h902hr3gnlmlvqjhz3k5abyg0ays2g2c1kwrhbz0nhgfwk656"))))
    (properties `((upstream-name . "traverse-with-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/traverse-with-class")
    (synopsis "Generic applicative traversals")
    (description "This is a generic programming library in the spirit of
\\\"Scrap your boilerplate with class\\\", but with several
improvements — most notably, it's based on the @@gtraverse@@
function instead of @@gfoldl@@.
@@gtraverse@@ is equivalent in power to @@gfoldl@@, but lets
you more easily write non-standard views of the data type.")
    (license license:expat)))

haskell-9.0-traverse-with-class

(define-public haskell-9.0-ttc
  (package
    (name "haskell-9.0-ttc")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttc/ttc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1zk4iavn51s89m35w7fwi7z9c5gkz98f8phv5bp4f9ajirmhn6r1"))))
    (properties `((upstream-name . "ttc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/ExtremaIS/ttc-haskell#readme")
    (synopsis "Textual Type Classes")
    (description
     "This library provides type classes for conversion between data types and
textual data types (strings).  Please see the README on GitHub at
<https://github.com/ExtremaIS/ttc-haskell#readme>.")
    (license license:expat)))

haskell-9.0-ttc

(define-public haskell-9.0-wl-pprint-annotated
  (package
    (name "haskell-9.0-wl-pprint-annotated")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/minad/wl-pprint-annotated#readme")
    (synopsis "Pretty printer with annotation support")
    (description
     "Wadler/Leijen pretty printer with support for annotations and modernized API. Annotations are useful for coloring. See wl-pprint-console.")
    (license license:bsd-3)))

haskell-9.0-wl-pprint-annotated

