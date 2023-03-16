;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage012)
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
(define-public haskell-8.8-ALUT
  (package
    (name "haskell-8.8-ALUT")
    (version "2.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ALUT/ALUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04nrh7vribs4jvg99hj3fmshzcw6kkf45r842iys19ln3l51p2bi"))))
    (properties `((upstream-name . "ALUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-OpenAL)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages audio) freealut)
                             (@ (gnu packages gl) freeglut)
                             (@ (gnu packages audio) openal)))
    (home-page "https://github.com/haskell-openal/ALUT")
    (synopsis "A binding for the OpenAL Utility Toolkit")
    (description
     "A Haskell binding for the OpenAL Utility Toolkit, which makes
managing of OpenAL contexts, loading sounds in various formats
and creating waveforms very easy. For more information about the
C library on which this binding is based, please see:
<http://distro.ibiblio.org/rootlinux/rootlinux-ports/more/freealut/freealut-1.1.0/doc/alut.html>.")
    (license license:bsd-3)))

haskell-8.8-ALUT

(define-public haskell-8.8-auto
  (package
    (name "haskell-8.8-auto")
    (version "0.4.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/auto/auto-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h9vrljhq9nlmi2j9wszpay0yli4n4r993mwamg69qqppcf6vqn6"))))
    (properties `((upstream-name . "auto") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-MonadRandom)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/mstksg/auto")
    (synopsis "Denotative, locally stateful programming DSL & platform")
    (description
     "(Up to date documentation is maintained at
<https://mstksg.github.com/auto>)

Read the README first!
<https://github.com/mstksg/auto/blob/master/README.md>
, for motivating examples, and concrete explanations of
things described here.

/auto/ is a Haskell DSL and platform providing
declarative, compositional, denotative semantics for
discrete-step, locally stateful, interactive programs,
games, and automations, with implicitly derived
serialization.  It is suited for any domain where either
the input or the output can be described as a stream of
values: a stream of input events, output views, etc.

/auto/ works by providing a type that encapsulates
\"value stream transformers\", or locally stateful
functions; by specifying your program as a (potentially
cyclic) graph of relationships between value streams, you
create a way of \"declaring\" a system based simply on
static relationships between quantities.

Instead of a \"state monad\" type solution, where all
functions have access to a rigid global state, /auto/
works by specifying relationships which each exist
independently and on their own, without any global state.

A more fuller exposition is in the `README.md`, in this
project directory and also online at
<https://github.com/mstksg/auto/blob/master/README.md>;
you can get started by reading the tutorial, which is
also in this project directory in the `tutorial`
directory, and also incidentally online at
<https://github.com/mstksg/auto/blob/master/tutorial/tutorial.md>.
Also, check out the
<https://github.com/mstksg/auto-examples auto-examples>
repository on github for plenty of real-world and toy
examples to learn from; I've also done a
<http://blog.jle.im/entries/series/+all-about-auto blog series>
on this library, with examples and full tutorials!

Support available on freenode's #haskell-auto,
#haskell-game, and also on the github issue
tracker for the source repository.

Import \"Control.Auto\" to begin!")
    (license license:expat)))

haskell-8.8-auto

(define-public haskell-8.8-auto-update
  (package
    (name "haskell-8.8-auto-update")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/auto-update/auto-update-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i36xc2i34aync8271x3pv515l3zb53i518dybn8ghqkhzf27q7l"))))
    (properties `((upstream-name . "auto-update") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Efficiently run periodic, on-demand actions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/auto-update>.")
    (license license:expat)))

haskell-8.8-auto-update

(define-public haskell-8.8-bound
  (package
    (name "haskell-8.8-bound")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bound/bound-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xmvkwambzmji1czxipl9cms5l3v98765b9spmb3wn5n6dpj0ji9"))))
    (properties `((upstream-name . "bound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("10" "18px8ggdfzhrkkhwzqc6rq2jcp69xvi52gq3jy1plpvdiiwj5yqx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-deriving-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-functor-classes-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "http://github.com/ekmett/bound/")
    (synopsis "Making de Bruijn Succ Less")
    (description
     "We represent the target language itself as an ideal monad supplied by the
user, and provide a 'Scope' monad transformer for introducing bound variables
in user supplied terms. Users supply a 'Monad' and 'Traversable' instance,
and we traverse to find free variables, and use the Monad to perform
substitution that avoids bound variables.

Slides describing and motivating this approach to name binding are available
online at:

<http://www.slideshare.net/ekmett/bound-making-de-bruijn-succ-less>

The goal of this package is to make it as easy as possible to deal with name
binding without forcing an awkward monadic style on the user.

With generalized de Bruijn term you can 'lift' whole trees instead of just
applying 'succ' to individual variables, weakening the all variables bound
by a scope and greatly speeding up instantiation. By giving binders more
structure we permit easy simultaneous substitution and further speed up
instantiation.")
    (license license:bsd-3)))

haskell-8.8-bound

(define-public haskell-8.8-cheapskate-lucid
  (package
    (name "haskell-8.8-cheapskate-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-lucid/cheapskate-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibjfy5dbkizg8cw4avhwl62xpk735a1a7bc0nkhf9zxpq9fb0pm"))))
    (properties `((upstream-name . "cheapskate-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "197nx95xw21i7zyvgzcgnr36ab6vrk17c66iz8ndwz61vp1jf6hc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cheapskate)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)))
    (home-page "http://github.com/aelve/cheapskate-lucid")
    (synopsis "Use cheapskate with Lucid")
    (description
     "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-8.8-cheapskate-lucid

(define-public haskell-8.8-checkers
  (package
    (name "haskell-8.8-checkers")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/checkers/checkers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b82dz295h37pi6bnkr4r18gkvavrwvsig15955i8hh1rcn2msaz"))))
    (properties `((upstream-name . "checkers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "https://github.com/conal/checkers")
    (synopsis "Check properties on standard classes and data structures.")
    (description
     "''Checkers'' wraps up the expected properties associated with various
standard type classes as QuickCheck properties.  Also some morphism
properties.  It also provides arbitrary instances and generator combinators
for common data types.

&#169; 2008-2013 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.8-checkers

(define-public haskell-8.8-cmark-lucid
  (package
    (name "haskell-8.8-cmark-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-lucid/cmark-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00rwiax7dd01259vrdkv574zi58agr17p7jkzixgwchfxngpp4nj"))))
    (properties `((upstream-name . "cmark-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mizbv18bl8qrgz27wlz7sb6cfhblmp7p7gh7dqq8g0r4djrvqg5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-cmark)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)))
    (home-page "http://github.com/aelve/cmark-lucid")
    (synopsis "Use cmark with Lucid")
    (description
     "A package for rendering Markdown (parsed via cmark) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-8.8-cmark-lucid

(define-public haskell-8.8-cursor-gen
  (package
    (name "haskell-8.8-cursor-gen")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-gen/cursor-gen-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sy7ypz4x9xhirfj9i2dk8r854gzr238qgaijgi221k7681jdcqb"))))
    (properties `((upstream-name . "cursor-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-cursor)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-text)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Generators for Purely Functional Cursors")
    (description
     "Generators for Purely Functional Cursors for common data structures")
    (license license:expat)))

haskell-8.8-cursor-gen

(define-public haskell-8.8-dejafu
  (package
    (name "haskell-8.8-dejafu")
    (version "2.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dejafu/dejafu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0klw2knnhqanmfjz2hjrj5sag6bqkh1g6vhgbvyk3d532m748wx1"))))
    (properties `((upstream-name . "dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-concurrency)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "A library for unit-testing concurrent programs.")
    (description
     "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time

This package builds on the
<https://hackage.haskell.org/package/concurrency concurrency>
package by enabling you to deterministically test your concurrent
programs.

See the <https://dejafu.readthedocs.io website> or README for more.")
    (license license:expat)))

haskell-8.8-dejafu

(define-public haskell-8.8-dlist-nonempty
  (package
    (name "haskell-8.8-dlist-nonempty")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dlist-nonempty/dlist-nonempty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csbspdy43pzvasb5mhs5pz2f49ws78pi253cx7pp84wjx6ads20"))))
    (properties `((upstream-name . "dlist-nonempty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("13" "1hbd0j8yw81y4rnxqxxnvhy33ccgl5c7qcr9shzqy97fwi2vkikm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "https://github.com/phadej/dlist-nonempty")
    (synopsis "Non-empty difference lists")
    (description
     "Difference lists are a list-like type supporting O(1) append. This is
particularly useful for efficient logging and pretty printing (e.g. with the
Writer monad), where list append quickly becomes too expensive.

> DList a         ≅ [a] -> [a]
> NonEmptyDList a ≅ [a] -> NonEmpty a

For empty variant, @@DList@@, see <http://hackage.haskell.org/package/dlist dlist package>.")
    (license license:bsd-3)))

haskell-8.8-dlist-nonempty

(define-public haskell-8.8-either
  (package
    (name "haskell-8.8-either")
    (version "5.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/either/either-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09yzki8ss56xhy9vggdw1rls86b2kf55hjl5wi0vbv02d8fxahq2"))))
    (properties `((upstream-name . "either") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03bgnq55lc6f1nx4p662gidfsyyfm3xm4fi84h77wnsppxrpa5j1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "Combinators for working with sums")
    (description "Combinators for working with sums.")
    (license license:bsd-3)))

haskell-8.8-either

(define-public haskell-8.8-ekg
  (package
    (name "haskell-8.8-ekg")
    (version "0.4.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ekg/ekg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1k3d5kiqm034qs04k0pcisf4zbdmx2fcgl9a6c1lzzjw96zf6aj8"))))
    (properties `((upstream-name . "ekg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "05k50vx956zlh7dvkhi7qvd9f7x48hg5hwgqjqsf5fwzm1cqir6n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ekg-core)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-ekg-json)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-snap-core)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-snap-server)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tibbe/ekg")
    (synopsis "Remote monitoring of processes")
    (description
     "This library lets you remotely monitor a running process over HTTP.
It provides a simple way to integrate a monitoring server into any
application.")
    (license license:bsd-3)))

haskell-8.8-ekg

(define-public haskell-8.8-eq
  (package
    (name "haskell-8.8-eq")
    (version "4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eq/eq-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1bcvjpbdis79dd09i07l7rjkh7j79qbpwb731rgr9k9215268wfa"))))
    (properties `((upstream-name . "eq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "http://github.com/ekmett/eq/")
    (synopsis "Leibnizian equality")
    (description "Leibnizian equality.")
    (license license:bsd-3)))

haskell-8.8-eq

(define-public haskell-8.8-foldl
  (package
    (name "haskell-8.8-foldl")
    (version "1.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/foldl/foldl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ah4i8w0ybdkkqsfjl990jbx16ar5q67x85qhg4l80xkkvlsl51a"))))
    (properties `((upstream-name . "foldl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hp70c5r1dvjwvf1a89mq7m0gcng1hc9pbqm6ck6i8ghh9b4nmga")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-builder)))
    (home-page "https://hackage.haskell.org/package/foldl")
    (synopsis "Composable, streaming, and efficient left folds")
    (description
     "This library provides strict left folds that stream in constant
memory, and you can combine folds using @@Applicative@@ style to derive new
folds.  Derived folds still traverse the container just once and are often as
efficient as hand-written folds.")
    (license license:bsd-3)))

haskell-8.8-foldl

(define-public haskell-8.8-free
  (package
    (name "haskell-8.8-free")
    (version "5.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free/free-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b9f9jrfgkq13333px6p1faxpcypqvzi0m9dnbj2rm8s79pdcw1c"))))
    (properties `((upstream-name . "free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w0bxkdsspw1blhr01bb9n98wlmqpgjpdbbp2f50qmhapav2fk30")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "http://github.com/ekmett/free/")
    (synopsis "Monads for free")
    (description
     "Free monads are useful for many tree-like structures and domain specific languages.

If @@f@@ is a 'Functor' then the free 'Monad' on @@f@@ is the type
of trees whose nodes are labeled with the constructors of @@f@@. The word
\\\"free\\\" is used in the sense of \\\"unrestricted\\\" rather than \\\"zero-cost\\\":
@@Free f@@ makes no constraining assumptions beyond those given by @@f@@ and the
definition of 'Monad'. As used here it is a standard term from the
mathematical theory of adjoint functors.

Cofree comonads are dual to free monads. They provide convenient ways to talk
about branching streams and rose-trees, and can be used to annotate syntax
trees. The cofree comonad can be seen as a stream parameterized by a 'Functor'
that controls its branching factor.

More information on free monads, including examples, can be found in the
following blog posts:
<http://comonad.com/reader/2008/monads-for-free/>
<http://comonad.com/reader/2011/free-monads-for-less/>")
    (license license:bsd-3)))

haskell-8.8-free

(define-public haskell-8.8-generic-lens
  (package
    (name "haskell-8.8-generic-lens")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens/generic-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fh9095qiqlym0s6w0zkmybn7hyywgy964fhg95x0vprpmfya5mq"))))
    (properties `((upstream-name . "generic-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generic-lens-core)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

The library exposes a van Laarhoven interface. For an alternative interface, supporting an opaque optic type, see
@@<https://hackage.haskell.org/package/generic-optics generic-optics>@@.")
    (license license:bsd-3)))

haskell-8.8-generic-lens

(define-public haskell-8.8-genvalidity-aeson
  (package
    (name "haskell-8.8-genvalidity-aeson")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-aeson/genvalidity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8n7k9v32izir9x0qrsnk4zkv3qhpghjzzpig4mk861cgycd42h"))))
    (properties `((upstream-name . "genvalidity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-vector)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-validity-aeson)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for aeson")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.8-genvalidity-aeson

(define-public haskell-8.8-genvalidity-mergeful
  (package
    (name "haskell-8.8-genvalidity-mergeful")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeful/genvalidity-mergeful-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mzlsa2rxj5dsrkbvpsilkb895cqw11iswfvjkfnwmimm8wg7c8q"))))
    (properties `((upstream-name . "genvalidity-mergeful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-time)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-mergeful)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-8.8-genvalidity-mergeful

(define-public haskell-8.8-genvalidity-mergeless
  (package
    (name "haskell-8.8-genvalidity-mergeless")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeless/genvalidity-mergeless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02p71gnih7xcrbfkaw76jjppz19xjv41idbgwqr93lrjs2qdyj7h"))))
    (properties `((upstream-name . "genvalidity-mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-time)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-mergeless)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-8.8-genvalidity-mergeless

(define-public haskell-8.8-genvalidity-path
  (package
    (name "haskell-8.8-genvalidity-path")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sv059xwz0qrw5718qszh3h7n923xxq3klvzmfrr7k4k5q48513l"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-validity-path)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "")
    (license license:expat)))

haskell-8.8-genvalidity-path

(define-public haskell-8.8-gloss-rendering
  (package
    (name "haskell-8.8-gloss-rendering")
    (version "1.13.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-rendering/gloss-rendering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pkzm7zzfdya8cz3h66akx8785h3vxbnyb815liw4nilvwg01d9x"))))
    (properties `((upstream-name . "gloss-rendering") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10x83cpxp6yrmamjg4kjm3pzlhh6zj2rdw686py0vcx0jrjy3qg7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011) haskell-8.8-GLUT)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-OpenGL)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-bmp)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gloss-rendering")
    (synopsis "Gloss picture data types and rendering functions.")
    (description
     "Gloss picture data types and rendering functions. These functions
don't do any window management. If you want gloss to setup your window as
well then use the plain @@gloss@@ package.")
    (license license:expat)))

haskell-8.8-gloss-rendering

(define-public haskell-8.8-gluturtle
  (package
    (name "haskell-8.8-gluturtle")
    (version "0.0.58.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gluturtle/gluturtle-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jwkppf9ipm61g052r9m65awq3nsigf3q4m9bj2hmb3n9z75i1hp"))))
    (properties `((upstream-name . "gluturtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011) haskell-8.8-GLUT)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-convertible)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-yjsvg)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-yjtools)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gluturtle")
    (synopsis "turtle like LOGO with glut")
    (description "turtle like LOGO with glut

Now alpha alpha alpha alpha version.")
    (license license:bsd-3)))

haskell-8.8-gluturtle

(define-public haskell-8.8-invariant
  (package
    (name "haskell-8.8-invariant")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invariant/invariant-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03245nhcqxx6b0yw81fzqaqd7cgllmx8awzhvs2xv7ys73pmsgnp"))))
    (properties `((upstream-name . "invariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0vsil8x0z283n4993nk9m0v0y0za1b6lph59k1rb2i4wj05syx2v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/nfrisby/invariant-functors")
    (synopsis "Haskell98 invariant functors")
    (description
     "Haskell98 invariant functors (also known as exponential functors).

For more information, see Edward Kmett's article \\\"Rotten Bananas\\\":

<http://comonad.com/reader/2008/rotten-bananas/>")
    (license license:bsd-2)))

haskell-8.8-invariant

(define-public haskell-8.8-invertible-grammar
  (package
    (name "haskell-8.8-invertible-grammar")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible-grammar/invertible-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "160hw7p5mpajwmv8fps2gicqj3x3yr9w239pfnv9i5gsf4irnn9n"))))
    (properties `((upstream-name . "invertible-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1fmw3v2g22n812ppba4yibgq1wlpfwkypsxa768calxafynb3i33")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/esmolanka/invertible-grammar")
    (synopsis "Invertible parsing combinators framework")
    (description
     "Grammar combinator framework to build invertible parsing libraries
for concrete syntax.")
    (license license:bsd-3)))

haskell-8.8-invertible-grammar

(define-public haskell-8.8-lattices
  (package
    (name "haskell-8.8-lattices")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lattices/lattices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "108rhpax72j6xdl0yqdmg7n32l1j805861f3q9wd3jh8nc67avix"))))
    (properties `((upstream-name . "lattices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1kqxhrbj0kd9l4fn7qryg9a2k7ad4f7mj4nsaz6lxa90lvi3ynj7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-universe-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/phadej/lattices/")
    (synopsis
     "Fine-grained library for constructing and manipulating lattices")
    (description
     "In mathematics, a lattice is a partially ordered set in which every two
elements @@x@@ and @@y@@ have a unique supremum (also called a least upper bound, join, or @@x /\\\\ y@@)
and a unique infimum (also called a greatest lower bound, meet, or @@x \\\\/ y@@).

This package provide type-classes for different lattice types, as well
as a class for the partial order.")
    (license license:bsd-3)))

haskell-8.8-lattices

(define-public haskell-8.8-log-domain
  (package
    (name "haskell-8.8-log-domain")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-domain/log-domain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0isl8rs0k5088sxapfh351sff3lh7r1qkgwz8lmai3gvqasb3avv"))))
    (properties `((upstream-name . "log-domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-fffi")
       #:cabal-revision
       ("3" "10ajmxkjbbkdrkasgfd5hhjcbggrylrg00m1lafac53v97hqpyp1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-reflect)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/ekmett/log-domain/")
    (synopsis "Log-domain arithmetic")
    (description
     "This package provides log-domain floats, doubles and complex numbers.")
    (license license:bsd-3)))

haskell-8.8-log-domain

(define-public haskell-8.8-lucid-extras
  (package
    (name "haskell-8.8-lucid-extras")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-extras/lucid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zi48ly2729rs3rsbnwj3z5zk9zgzmva0d3dvp448726r62ryfc3"))))
    (properties `((upstream-name . "lucid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)))
    (home-page "https://github.com/diffusionkinetics/open/lucid-extras")
    (synopsis
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email.")
    (description
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email. Provides functions to generate rich web page elements for infographics, geographical maps, and more.")
    (license license:expat)))

haskell-8.8-lucid-extras

(define-public haskell-8.8-massiv
  (package
    (name "haskell-8.8-massiv")
    (version "0.5.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dmm6x5izmjl1l803fvmxzqrh0jpg56z2aid228a4c44n620dzln"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")
       #:cabal-revision
       ("2" "09g3gzbg5k4k0nva207vlld0jlan30lmbhszlrlhpdr7acvs8phc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-scheduler)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-splitmix)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-8.8-massiv

(define-public haskell-8.8-modern-uri
  (package
    (name "haskell-8.8-modern-uri")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/modern-uri/modern-uri-" version
                    ".tar.gz"))
              (sha256
               (base32
                "184vhcnpwjsvxwbdsipz7kc2xylfwfqflbbbyipag610w07a3qk2"))))
    (properties `((upstream-name . "modern-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/mrkkrp/modern-uri")
    (synopsis "Modern library for working with URIs")
    (description "Modern library for working with URIs.")
    (license license:bsd-3)))

haskell-8.8-modern-uri

(define-public haskell-8.8-monad-products
  (package
    (name "haskell-8.8-monad-products")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-products/monad-products-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1skcjjkn14fh92l4rx3akxjg1c85jqhnlwvkkzqwz9g15bdy3gq2"))))
    (properties `((upstream-name . "monad-products") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "http://github.com/ekmett/monad-products")
    (synopsis "Monad products")
    (description "Monad products")
    (license license:bsd-3)))

haskell-8.8-monad-products

(define-public haskell-8.8-monoid-extras
  (package
    (name "haskell-8.8-monoid-extras")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-extras/monoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xfrkgqn9d31z54l617m3w3kkd5m9vjb4yl247r3zzql3mpb1f37"))))
    (properties `((upstream-name . "monoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0gbrwpr7rzh9mmf59yhs74hixgclmxngaxx51j7pvr6wnkbvz3a3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-groups)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-extras")
    (synopsis "Various extra monoid-related definitions and utilities")
    (description "Various extra monoid-related definitions and utilities,
such as monoid actions, monoid coproducts, semi-direct
products, \\\"deletable\\\" monoids, \\\"split\\\" monoids,
and \\\"cut\\\" monoids.")
    (license license:bsd-3)))

haskell-8.8-monoid-extras

(define-public haskell-8.8-netwire
  (package
    (name "haskell-8.8-netwire")
    (version "5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netwire/netwire-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bi2xyipz11vsai4wghdrh5yywzl0bkinfpmh0qdp77y7qlygpgi"))))
    (properties `((upstream-name . "netwire") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/esoeylemez/netwire")
    (synopsis "Functional reactive programming library")
    (description
     "This library provides interfaces for and implements wire arrows
useful both for functional reactive programming (FRP) and locally
stateful programming (LSP).")
    (license license:bsd-3)))

haskell-8.8-netwire

(define-public haskell-8.8-nonemptymap
  (package
    (name "haskell-8.8-nonemptymap")
    (version "0.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonemptymap/nonemptymap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pzs51kmsyarv62qqbskhw2xlkjp74bwcgs9a8ri1jk96m64rg94"))))
    (properties `((upstream-name . "nonemptymap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "https://github.com/ChristopherDavenport/nonemptymap#readme")
    (synopsis "A NonEmptyMap Implementation")
    (description
     "This package intends to allow general use of a NonEmptyMap
which is very beneficial as sometimes you want the functionality
this provides.")
    (license license:bsd-3)))

haskell-8.8-nonemptymap

(define-public haskell-8.8-one-liner
  (package
    (name "haskell-8.8-one-liner")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/one-liner/one-liner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1diigbl8l0m8q1sl0kxjjqbhl3vkpf0rrzxlbqaamp3ahpmgpx67"))))
    (properties `((upstream-name . "one-liner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0qzjwwsa2bwwplrizzdhwqkxv0l7dfwvhl12rijvyaki2kxc0inw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/sjoerdvisscher/one-liner")
    (synopsis "Constraint-based generics")
    (description "Write short and concise generic instances of type classes.
one-liner is particularly useful for writing default
implementations of type class methods.")
    (license license:bsd-3)))

haskell-8.8-one-liner

(define-public haskell-8.8-optics-vl
  (package
    (name "haskell-8.8-optics-vl")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-vl/optics-vl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gd61ha93bws7fchjghc6bca9g8jgli0v6cl24g8ii2c22jgga6x"))))
    (properties `((upstream-name . "optics-vl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-indexed-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)))
    (home-page "https://hackage.haskell.org/package/optics-vl")
    (synopsis "Utilities for compatibility with van Laarhoven optics")
    (description
     "This package is part of the @@<https://hackage.haskell.org/package/optics optics>@@
package family.  It provides utilities for converting between the 'Optic' type
defined by @@<https://hackage.haskell.org/package/optics optics>@@ and the van
Laarhoven representations of optics that require definitions outside of @@base@@
(in particular isomorphisms and prisms).")
    (license license:bsd-3)))

haskell-8.8-optics-vl

(define-public haskell-8.8-plotlyhs
  (package
    (name "haskell-8.8-plotlyhs")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/plotlyhs/plotlyhs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d7cqy22myp6r0x0b00amn64fra0lklb9jy2hd8ic9lxg0nd8pn9"))))
    (properties `((upstream-name . "plotlyhs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)))
    (home-page "https://github.com/diffusionkinetics/open/plotlyhs")
    (synopsis "Haskell bindings to Plotly.js")
    (description "Generate web-based plots with the Plotly.js library.
For examples, see <https://glutamate.github.io/plotlyhs/>")
    (license license:expat)))

haskell-8.8-plotlyhs

(define-public haskell-8.8-postgres-options
  (package
    (name "haskell-8.8-postgres-options")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgres-options/postgres-options-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dfr15bg77117y27rr1kvbxcsyh36ha30c8rgiqd15y7pjd4apy4"))))
    (properties `((upstream-name . "postgres-options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-generic-monoid)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-uri-bytestring)))
    (home-page "https://github.com/jfischoff/postgres-options#readme")
    (synopsis "An Options type representing options for postgres connections")
    (description
     "This package exports an Options type representing options for postgres connections")
    (license license:bsd-3)))

haskell-8.8-postgres-options

(define-public haskell-8.8-pretty-relative-time
  (package
    (name "haskell-8.8-pretty-relative-time")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-relative-time/pretty-relative-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17w7bs0xj2bbjqc9qzcq40xsq5virdaqw57r0wfgfs6akj2i9r5d"))))
    (properties `((upstream-name . "pretty-relative-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-time)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-time)))
    (home-page "https://github.com/NorfairKing/pretty-relative-time#readme")
    (synopsis "Pretty relative time")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>")
    (license license:expat)))

haskell-8.8-pretty-relative-time

(define-public haskell-8.8-product-profunctors
  (package
    (name "haskell-8.8-product-profunctors")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/product-profunctors/product-profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15q6mgn42in4df61251q8h2d7hgvflik93xngc7jyyxj4ymaz5yh"))))
    (properties `((upstream-name . "product-profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://github.com/tomjaguarpaw/product-profunctors")
    (synopsis "product-profunctors")
    (description "Product profunctors and tools for working with them")
    (license license:bsd-3)))

haskell-8.8-product-profunctors

(define-public haskell-8.8-proto-lens
  (package
    (name "haskell-8.8-proto-lens")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens/proto-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dg73jwc9mis7igxdj3chkb8fz9a25wxw3d6nz11r98z3ambd8rs"))))
    (properties `((upstream-name . "proto-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-lens-family)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "A lens-based implementation of protocol buffers in Haskell.")
    (description
     "The proto-lens library provides an API for protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:

* Composable field accessors via lenses

* Simple field name resolution/overloading via type-level literals

* Type-safe reflection and encoding/decoding of messages via GADTs")
    (license license:bsd-3)))

haskell-8.8-proto-lens

(define-public haskell-8.8-quickcheck-classes
  (package
    (name "haskell-8.8-quickcheck-classes")
    (version "0.6.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-classes/quickcheck-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qcxmkf9ig6jnfpd5slx2imzwmvvyqgvlif2940yzwam63m6anwg"))))
    (properties `((upstream-name . "quickcheck-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fsemigroupoids" "-fsemirings" "-fvector" "-funary-laws" "-fbinary-laws")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-primitive-addr)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-semirings)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/andrewthad/quickcheck-classes#readme")
    (synopsis "QuickCheck common typeclasses")
    (description
     "This library provides QuickCheck properties to ensure
that typeclass instances adhere to the set of laws that
they are supposed to. There are other libraries that do
similar things, such as `genvalidity-hspec` and `checkers`.
This library differs from other solutions by not introducing
any new typeclasses that the user needs to learn.

/Note:/ on GHC < 8.5, this library uses the higher-kinded typeclasses
('Data.Functor.Classes.Show1', 'Data.Functor.Classes.Eq1', 'Data.Functor.Classes.Ord1', etc.),
but on GHC >= 8.5, it uses `-XQuantifiedConstraints` to express these
constraints more cleanly.")
    (license license:bsd-3)))

haskell-8.8-quickcheck-classes

(define-public haskell-8.8-reducers
  (package
    (name "haskell-8.8-reducers")
    (version "3.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reducers/reducers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09wf8pl9ycglcv6qj5ba26gkg2s5iy81hsx9xp0q8na0cwvp71ki"))))
    (properties `((upstream-name . "reducers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1whz68iy9v8wgzarmafis2k9gjzdzbj8yz9b8bg6bsqk7r1mww3p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/ekmett/reducers/")
    (synopsis
     "Semigroups, specialized containers and a general map/reduce framework")
    (description
     "Semigroups, specialized containers and a general map/reduce framework.")
    (license license:bsd-3)))

haskell-8.8-reducers

(define-public haskell-8.8-registry
  (package
    (name "haskell-8.8-registry")
    (version "0.1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry/registry-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x418lv2nnw5ryrinciq1dg7wgmz0zsvv8v3mfrp38rx5x88hbic"))))
    (properties `((upstream-name . "registry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protolude)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://hackage.haskell.org/package/registry")
    (synopsis "data structure for assembling components")
    (description
     "This library provides a \"Registry\" which is a data structure containing a list of functions and values representing dependencies in a directed acyclic graph. A `make` function can then be used to create a value of a specific type out of the registry.
You can start with the [README](https://github.com/etorreborre/registry/blob/master/README.md) for a full description of the library.")
    (license license:expat)))

haskell-8.8-registry

(define-public haskell-8.8-saltine
  (package
    (name "haskell-8.8-saltine")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/saltine/saltine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bgr6vrmw18qr8akabxz6w3hwhlqi6zsnr23n70hkvwvcap1lnx7"))))
    (properties `((upstream-name . "saltine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages crypto) libsodium)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/saltine")
    (synopsis "Cryptography that's easy to digest (NaCl/libsodium bindings).")
    (description
     "/NaCl/ (pronounced \\\"salt\\\") is a new easy-to-use high-speed software
library for network communication, encryption, decryption,
signatures, etc. NaCl's goal is to provide all of the core
operations needed to build higher-level cryptographic tools.

<http://nacl.cr.yp.to/>

/Sodium/ is a portable, cross-compilable, installable, packageable
crypto library based on NaCl, with a compatible API.

<https://github.com/jedisct1/libsodium>

/Saltine/ is a Haskell binding to the NaCl primitives going through
Sodium for build convenience and, eventually, portability.")
    (license license:expat)))

haskell-8.8-saltine

(define-public haskell-8.8-semigroupoid-extras
  (package
    (name "haskell-8.8-semigroupoid-extras")
    (version "5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoid-extras/semigroupoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ciq1jnc0d9d8jph9103v04vphiz7xqa69a8f4dmmcf3bjsk6bhh"))))
    (properties `((upstream-name . "semigroupoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fprofunctors")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "http://github.com/ekmett/semigroupoid-extras")
    (synopsis "Semigroupoids that depend on PolyKinds")
    (description "Semigroupoids that depend on PolyKinds")
    (license license:bsd-3)))

haskell-8.8-semigroupoid-extras

(define-public haskell-8.8-smash-aeson
  (package
    (name "haskell-8.8-smash-aeson")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-aeson/smash-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmazs3ypqxaw4zdywimxfzrsvidnyk5damx6fpy549ny9319rqs"))))
    (properties `((upstream-name . "smash-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y0k6gz9qlr98f543607zkx6a97fnzh3zrbi2b59rlljp0rjvdw8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-smash)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Aeson support for the smash library")
    (description "Aeson support for the `smash` library")
    (license license:bsd-3)))

haskell-8.8-smash-aeson

(define-public haskell-8.8-smash-microlens
  (package
    (name "haskell-8.8-smash-microlens")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-microlens/smash-microlens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "164vmvrgfsq777408skndzybhg4cp0d97vrijk6b66nnv9k4ril0"))))
    (properties `((upstream-name . "smash-microlens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "020r04bxhml84lgl1bvf2s6gjahswdxpzcrla43rqhx0paz0n0cs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-smash)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Optics for the `smash` library")
    (description "Optics for the `smash` library using `microlens`")
    (license license:bsd-3)))

haskell-8.8-smash-microlens

(define-public haskell-8.8-tagged-transformer
  (package
    (name "haskell-8.8-tagged-transformer")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-transformer/tagged-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ffwxr312vi3fqhgnad5b6gqkgz3j27c30z551j8zisjx0hn3zx0"))))
    (properties `((upstream-name . "tagged-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "http://github.com/ekmett/tagged-transformer")
    (synopsis "Monad transformer carrying an extra phantom type tag")
    (description
     "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-8.8-tagged-transformer

(define-public haskell-8.8-these
  (package
    (name "haskell-8.8-these")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/these/these-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "027m1gd7i6jf2ppfkld9qrv3xnxg276587pmx10z9phpdvswk66p"))))
    (properties `((upstream-name . "these") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fassoc")
       #:cabal-revision
       ("6" "12ll5l8m482qkb8zn79vx51bqlwc89fgixf8jv33a32b4qzc3499")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-assoc)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "An either-or-both data type.")
    (description
     "This package provides a data type @@These a b@@ which can hold a value of either
type or values of each type. This is usually thought of as an \"inclusive or\"
type (contrasting @@Either a b@@ as \"exclusive or\") or as an \"outer join\" type
(contrasting @@(a, b)@@ as \"inner join\").

@@
data These a b = This a | That b | These a b
@@

Since version 1, this package was split into parts:

* <https://hackage.haskell.org/package/semialign semialign> For @@Align@@ and @@Zip@@ type-classes.

* <https://hackage.haskell.org/package/semialign-indexed semialign-indexed> For @@SemialignWithIndex@@ class, providing @@ialignWith@@ and @@izipWith@@.

* <https://hackage.haskell.org/package/these-lens these-lens> For lens combinators.

* <http://hackage.haskell.org/package/monad-chronicle monad-chronicle> For transformers variant of @@These@@.")
    (license license:bsd-3)))

haskell-8.8-these

(define-public haskell-8.8-thyme
  (package
    (name "haskell-8.8-thyme")
    (version "0.3.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/thyme/thyme-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v3rbjl92bqggsdra72zdq6rxzb2qf1268424p94225lnwgp1il4"))))
    (properties `((upstream-name . "thyme") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbug-for-bug" "-f-hlint" "-f-lens" "-f-show-internal" "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-vector-space)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-vector-th-unbox)))
    (home-page "https://github.com/liyang/thyme")
    (synopsis "A faster time library")
    (description
     "Thyme is a rewrite of the fine @@time@@ library, with a particular focus
on performance for applications that make heavy use of timestamps.

See <http://hackage.haskell.org/package/thyme/docs/Data-Thyme.html Data.Thyme> for a full description.")
    (license license:bsd-3)))

haskell-8.8-thyme

(define-public haskell-8.8-tomland
  (package
    (name "haskell-8.8-tomland")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tomland/tomland-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17909a8aapbrsa0yb642ij80k64dg2dam1v3rsvc3rm07ik61x42"))))
    (properties `((upstream-name . "tomland") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-hspec-golden)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-validation-selective)))
    (home-page "https://github.com/kowainik/tomland")
    (synopsis "Bidirectional TOML serialization")
    (description
     "Implementation of bidirectional TOML serialization. Simple codecs look like this:

@@
__data__ User = User
\\    @{ userName :: Text
\\    , userAge  :: Int
\\    @}
\\
\\userCodec :: TomlCodec User
\\userCodec = User
\\    \\<$\\> Toml.text \"name\" .= userName
\\    \\<*\\> Toml.int  \"age\"  .= userAge
@@

The following blog post has more details about library design:

* [tomland: Bidirectional TOML serialization](https://kowainik.github.io/posts/2019-01-14-tomland)")
    (license license:mpl2.0)))

haskell-8.8-tomland

(define-public haskell-8.8-uri-bytestring-aeson
  (package
    (name "haskell-8.8-uri-bytestring-aeson")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring-aeson/uri-bytestring-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02bm5r0i1anwy3wv2xdfhnsmmgllv5vs7npy01fpmp91x7dcqak1"))))
    (properties `((upstream-name . "uri-bytestring-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-uri-bytestring)))
    (home-page "https://github.com/reactormonk/uri-bytestring-aeson")
    (synopsis "Aeson instances for URI Bytestring")
    (description "")
    (license license:bsd-3)))

haskell-8.8-uri-bytestring-aeson

(define-public haskell-8.8-websockets-snap
  (package
    (name "haskell-8.8-websockets-snap")
    (version "0.10.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets-snap/websockets-snap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hpszqb61xhbgfvxd6g56kdfxsyi14q7xh12jbdnyycbfijb9bqk"))))
    (properties `((upstream-name . "websockets-snap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08rz1l4f84gcp2a2rsihk6zl3jm2x4igr13fwv2y8m5agsvd2lhy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-snap-core)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-snap-server)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/websockets-snap")
    (synopsis "Snap integration for the websockets library")
    (description "Snap integration for the websockets library")
    (license license:bsd-3)))

haskell-8.8-websockets-snap

(define-public haskell-8.8-witness
  (package
    (name "haskell-8.8-witness")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/witness/witness-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "180yy0dyvmn9jsl1gjbryxli3qkl2h6pvh297vsr9ax3h4vciilk"))))
    (properties `((upstream-name . "witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)))
    (home-page "https://github.com/AshleyYakeley/witness")
    (synopsis "values that witness types")
    (description
     "A witness is a value that /witnesses/ some sort of constraint on some list of type variables.
This library provides support for simple witnesses, that constrain a type variable to a single type, and equality witnesses, that constrain two type variables to be the same type.
It also provides classes for representatives, which are values that represent types.
See the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).")
    (license license:bsd-3)))

haskell-8.8-witness

(define-public haskell-8.8-world-peace
  (package
    (name "haskell-8.8-world-peace")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/world-peace/world-peace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05r4ils0imcv31sx6h82mwcwcrasrfs6kkip3frdsbf0aizgzcdb"))))
    (properties `((upstream-name . "world-peace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-should-not-typecheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/cdepillabout/world-peace")
    (synopsis "Open Union and Open Product Types")
    (description
     "Please see <https://github.com/cdepillabout/world-peace#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-world-peace

(define-public haskell-8.8-x509-system
  (package
    (name "haskell-8.8-x509-system")
    (version "1.6.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-system/x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06a4m9c7vlr9nhp9gmqbb46arf0yj1dkdm4nip03hzy67spdmp20"))))
    (properties `((upstream-name . "x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description "System X.509 handling")
    (license license:bsd-3)))

haskell-8.8-x509-system

(define-public haskell-8.8-x509-validation
  (package
    (name "haskell-8.8-x509-validation")
    (version "1.6.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-validation/x509-validation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16yihzljql3z8w5rgdl95fv3hgk7yd86kbl9b3glllsark5j2hzr"))))
    (properties `((upstream-name . "x509-validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hourglass)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-8.8-x509-validation

(define-public haskell-8.8-zlib-lens
  (package
    (name "haskell-8.8-zlib-lens")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zlib-lens/zlib-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sv6yx7p06zk653d3rmcj0lh2rzwzfi25v9sz9n8kq4r712n79g5"))))
    (properties `((upstream-name . "zlib-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://lens.github.io/")
    (synopsis "Lenses for zlib")
    (description "Lenses for zlib")
    (license license:bsd-3)))

haskell-8.8-zlib-lens

