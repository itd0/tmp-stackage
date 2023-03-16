;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage015)
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
(define-public haskell-8.4-ALUT
  (package
    (name "haskell-8.4-ALUT")
    (version "2.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ALUT/ALUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11sb715z6rkmwf9n7l9q32g81qiv2ld8a9z42dfxiwgmh2ilsdmq"))))
    (properties `((upstream-name . "ALUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-OpenAL)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
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

haskell-8.4-ALUT

(define-public haskell-8.4-ForestStructures
  (package
    (name "haskell-8.4-ForestStructures")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ForestStructures/ForestStructures-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gv9hvwbql015k28xvphx4dllpfp5dgi36l3bkg48630xrzhcx7y"))))
    (properties `((upstream-name . "ForestStructures") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vector-th-unbox)))
    (home-page "https://github.com/choener/ForestStructures")
    (synopsis "Tree- and forest structures")
    (description
     "This library provides both static and dynamic tree and forest
structures. Once a tree structure is static, it can be mappend
onto a linearized representation, which is beneficial for
algorithms that do not modify the internal tree structure, but
need fast @@O(1)@@ access to individual nodes, children, and
siblings.")
    (license license:bsd-3)))

haskell-8.4-ForestStructures

(define-public haskell-8.4-HPDF
  (package
    (name "haskell-8.4-HPDF")
    (version "1.4.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HPDF/HPDF-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m072rc03yx5y4djmvj87kn6n23d9378v3ipl8lj3vzfjgfzsayy"))))
    (properties `((upstream-name . "HPDF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1djn0a9rk3qrbz31bxj115r65p28fi3wzcrkrnjvzibl3450pq30")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-HTF)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.alpheccar.org")
    (synopsis "Generation of PDF documents")
    (description
     "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ... Have a look at the \"Graphics.PDF.Documentation\" module to see how to use it. Or, download the package and look at the test.hs file in the Test folder. That file is giving an example of each feature.")
    (license license:bsd-3)))

haskell-8.4-HPDF

(define-public haskell-8.4-JuicyPixels-blp
  (package
    (name "haskell-8.4-JuicyPixels-blp")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-blp/JuicyPixels-blp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vccx98n9bjnz2clpww4gqns7mc2cmzgpzmj2mx6mwhgb12rwbvx"))))
    (properties `((upstream-name . "JuicyPixels-blp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-optparse-simple)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/NCrashed/JuicyPixels-blp#readme")
    (synopsis "BLP format decoder/encoder over JuicyPixels library")
    (description
     "The library provides decoding/encoding functions for BLP1 texture format of Warcraft III game.
The result is represented in types of [JuicyPixels](http://hackage.haskell.org/package/JuicyPixels) library.
Please see README.md for detailed description.")
    (license license:bsd-3)))

haskell-8.4-JuicyPixels-blp

(define-public haskell-8.4-QuasiText
  (package
    (name "haskell-8.4-QuasiText")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuasiText/QuasiText-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06giw0q5lynx05c4h45zwnlcifg91w291h3gwrg68qsjw9lx40g8"))))
    (properties `((upstream-name . "QuasiText") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-8.4-QuasiText

(define-public haskell-8.4-RSA
  (package
    (name "haskell-8.4-RSA")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/RSA/RSA-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0csk933gb2ayijxx6ar110lmsbvgyn7p5bqln3g2qbfxz73nvrzf"))))
    (properties `((upstream-name . "RSA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13hazdsp5y6rmkfnmf2a94lzh3cmv0f48yvl8i7ck0l840vns2zn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-SHA)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-crypto-pubkey-types)))
    (home-page "https://hackage.haskell.org/package/RSA")
    (synopsis
     "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.")
    (description
     "This library implements the RSA encryption and signature
algorithms for arbitrarily-sized ByteStrings. While the
implementations work, they are not necessarily the fastest ones
on the planet. Particularly key generation. The algorithms
included are based of RFC 3447, or the Public-Key Cryptography
Standard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).")
    (license license:bsd-3)))

haskell-8.4-RSA

(define-public haskell-8.4-aeson-casing
  (package
    (name "haskell-8.4-aeson-casing")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-casing/aeson-casing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xq587sqn68gnx1np035wl5j1341v19h26d7b1c06bw2qqymdv6g"))))
    (properties `((upstream-name . "aeson-casing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)))
    (home-page "https://hackage.haskell.org/package/aeson-casing")
    (synopsis "Tools to change the formatting of field names in Aeson
instances.")
    (description "Tools to change the formatting of field names in Aeson
instances. This includes CamelCasing, Pascal Casing and
Snake Casing.")
    (license license:expat)))

haskell-8.4-aeson-casing

(define-public haskell-8.4-aeson-qq
  (package
    (name "haskell-8.4-aeson-qq")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-qq/aeson-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ln13jqyfh5726hdrk1rad9a6cgrrj201plmwcfcpvq18v4m5ckd"))))
    (properties `((upstream-name . "aeson-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/sol/aeson-qq#readme")
    (synopsis "JSON quasiquoter for Haskell")
    (description "@@aeson-qq@@ provides a JSON quasiquoter for Haskell.

This package exposes the function `aesonQQ` that compile-time
converts a string representation of a JSON value into a
`Data.Aeson.Value`.  `aesonQQ` has the signature

>aesonQQ :: QuasiQuoter

Consult the @@README@@ for documentation:
<https://github.com/sol/aeson-qq#readme>")
    (license license:expat)))

haskell-8.4-aeson-qq

(define-public haskell-8.4-auto
  (package
    (name "haskell-8.4-auto")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
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

haskell-8.4-auto

(define-public haskell-8.4-bound
  (package
    (name "haskell-8.4-bound")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-deriving-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-functor-classes-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
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

haskell-8.4-bound

(define-public haskell-8.4-capataz
  (package
    (name "haskell-8.4-capataz")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/capataz/capataz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b026vbp9xkwfis5xr1z4svi5z5b4dpj5c3w28133fr4rl6cdpx4"))))
    (properties `((upstream-name . "capataz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-teardown)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (home-page "https://github.com/roman/Haskell-capataz#readme")
    (synopsis "OTP-like supervision trees in Haskell")
    (description
     "`capataz` enhances the reliability of your concurrent applications by offering
supervision of green threads that run in your application.

Advantages over standard library:

* Links related long-living processes together under a common capataz
supervisor, with restart/shutdown order

* Set restart strategies (Permanent, Transient, Temporary) on `IO`
sub-routines on a granular level

* Set restart strategies on a pool of long-living worker threads (AllForOne,
OneForOne)

* Complete telemetry on the sub-routine lifecycle of your application (start,
error, restarts, shutdown)")
    (license license:expat)))

haskell-8.4-capataz

(define-public haskell-8.4-cheapskate-lucid
  (package
    (name "haskell-8.4-cheapskate-lucid")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cheapskate)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)))
    (home-page "http://github.com/aelve/cheapskate-lucid")
    (synopsis "Use cheapskate with Lucid")
    (description
     "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-8.4-cheapskate-lucid

(define-public haskell-8.4-checkers
  (package
    (name "haskell-8.4-checkers")
    (version "0.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/checkers/checkers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f1dhiymdihrnpz9h9p4mi8iica07qv3wm47acvdkhxrc4sjsq6h"))))
    (properties `((upstream-name . "checkers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "https://github.com/conal/checkers")
    (synopsis "Check properties on standard classes and data structures.")
    (description
     "''Checkers'' wraps up the expected properties associated with various
standard type classes as QuickCheck properties.  Also some morphism
properties.  It also provides arbitrary instances and generator combinators
for common data types.

&#169; 2008-2013 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.4-checkers

(define-public haskell-8.4-codec
  (package
    (name "haskell-8.4-codec")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/codec/codec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a2vqaislh9jwqb5jr59s448456iawc4cs0b1c6dkhq8h6sn3hpz"))))
    (properties `((upstream-name . "codec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-binary-bits)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/chpatrick/codec")
    (synopsis "Simple bidirectional serialization")
    (description "See the README")
    (license license:bsd-3)))

haskell-8.4-codec

(define-public haskell-8.4-codo-notation
  (package
    (name "haskell-8.4-codo-notation")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/codo-notation/codo-notation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bwfjg0bzph0vka1rx8m6f505l9dmj8nn6al9kmjkva18l05gsvq"))))
    (properties `((upstream-name . "codo-notation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://hackage.haskell.org/package/codo-notation")
    (synopsis
     "A notation for comonads, analogous to the do-notation for monads.")
    (description
     "A notation for comonads, analogous to the do-notation for monads.

Requires the @@TemplateHaskell@@ and @@QuasiQuotes@@ extensions.

Example 1:

@@
&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;
&#x7b;-\\# LANGUAGE QuasiQuotes \\#-&#x7d;

import Control.Comonad
import Language.Haskell.Codo

foo :: (Comonad c, Num a) => c a -> a
foo = [codo| x => extract x + 1 |]
@@

Example 2:

@@
import Data.Monoid
instance Monoid Double where
&#x20;&#x20;&#x20;    mempty = 0.0
&#x20;&#x20;&#x20;    mappend = (+)

differentiate f = ((f 0.001) - f 0) / 0.001

minima :: (Double -> Double) -> Bool
minima = [codo| f => f'  <- differentiate f
&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; f'' <- differentiate f'
&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; (extract f' &#60; 0.001) && (extract f'' &#62; 0) |]
@@

Further explanation of the syntax can be found in the following (short) paper: <http://www.cl.cam.ac.uk/~dao29/drafts/codo-notation-orchard-ifl12.pdf> with a numer of examples.

Further examples can be found here: <https://github.com/dorchard/codo-notation>.")
    (license license:bsd-3)))

haskell-8.4-codo-notation

(define-public haskell-8.4-colonnade
  (package
    (name "haskell-8.4-colonnade")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colonnade/colonnade-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12ryrg42qgg1hnflz757fik1lrg51l9bg4145bb678y9c1ixisrj"))))
    (properties `((upstream-name . "colonnade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/andrewthad/colonnade#readme")
    (synopsis "Generic types and functions for columnar encoding and decoding")
    (description
     "The `colonnade` package provides a way to talk about
columnar encodings and decodings of data. This package provides
very general types and does not provide a way for the end-user
to actually apply the columnar encodings they build to data.
Most users will also want to one a companion packages
that provides (1) a content type and (2) functions for feeding
data into a columnar encoding:

* <https://hackage.haskell.org/package/lucid-colonnade lucid-colonnade> for `lucid` html tables

* <https://hackage.haskell.org/package/blaze-colonnade blaze-colonnade> for `blaze` html tables

* <https://hackage.haskell.org/package/reflex-dom-colonnade reflex-dom-colonnade> for reactive `reflex-dom` tables

* <https://hackage.haskell.org/package/yesod-colonnade yesod-colonnade> for `yesod` widgets

* <http://hackage.haskell.org/package/siphon siphon> for encoding and decoding CSVs")
    (license license:bsd-3)))

haskell-8.4-colonnade

(define-public haskell-8.4-compiler-warnings
  (package
    (name "haskell-8.4-compiler-warnings")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compiler-warnings/compiler-warnings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qswbwi2i8xqv61gjnx77w3j53ybyblsdyk974bb2qad3dzcbx4c"))))
    (properties `((upstream-name . "compiler-warnings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)))
    (home-page "https://github.com/yi-editor/compiler-warnings#readme")
    (synopsis "Parser for common compiler warning formats")
    (description "")
    (license license:bsd-2)))

haskell-8.4-compiler-warnings

(define-public haskell-8.4-componentm
  (package
    (name "haskell-8.4-componentm")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm/componentm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19xnav3xiw5v8sdmw6a90wdhxxkjlkvpkwrf0pjsxlisgn93vqpg"))))
    (properties `((upstream-name . "componentm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-teardown)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Monad for allocation and cleanup of application resources")
    (description "This library allows you to allocate resources with
clean up strategies when initializing your application.
It then provides a Monadic interface to compose multiple
resources without having to deal with cleanup operations
explicitely.")
    (license license:expat)))

haskell-8.4-componentm

(define-public haskell-8.4-crypto-pubkey
  (package
    (name "haskell-8.4-crypto-pubkey")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey/crypto-pubkey-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmmx2fqq2xc3xfavy22i2nyynpk88jhmjr62qgxw5w5qgsz5k60"))))
    (properties `((upstream-name . "crypto-pubkey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-crypto-numbers)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-random)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/vincenthz/hs-crypto-pubkey")
    (synopsis "Public Key cryptography")
    (description
     "Public Key cryptography

Supports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.

Also have primitive support for Diffie Hellman, and ElGamal encryption")
    (license license:bsd-3)))

haskell-8.4-crypto-pubkey

(define-public haskell-8.4-data-msgpack
  (package
    (name "haskell-8.4-data-msgpack")
    (version "0.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack/data-msgpack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zlw465lpa371y7cpz9r4gn1c4cw0rjrpl5l3h6h0y3zc28p7sw"))))
    (properties `((upstream-name . "data-msgpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-data-msgpack-types)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-groom)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-8.4-data-msgpack

(define-public haskell-8.4-dejafu
  (package
    (name "haskell-8.4-dejafu")
    (version "1.11.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dejafu/dejafu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zks4mqdndlyg8mqa1gshwahcqn45zawksgp738crls3yafgh9dg"))))
    (properties `((upstream-name . "dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-concurrency)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-leancheck)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "A library for unit-testing concurrent programs.")
    (description
     "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time

This package builds on the
[concurrency](https://hackage.haskell.org/package/concurrency)
package by enabling you to deterministically test your concurrent
programs.

See the [website](https://dejafu.readthedocs.io) or README for more.")
    (license license:expat)))

haskell-8.4-dejafu

(define-public haskell-8.4-discrimination
  (package
    (name "haskell-8.4-discrimination")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discrimination/discrimination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18scvjb4vj1y9mwhanr8h73bs80h1d23m2vrixm48riyg22v5m6n"))))
    (properties `((upstream-name . "discrimination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p39vcdmv9k9wxlkh49w1dr1isvn2hvhjjbs95qwljpxca74i23g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-promises)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/discrimination/")
    (synopsis
     "Fast generic linear-time sorting, joins and container construction.")
    (description
     "This package provides fast, generic, linear-time discrimination and sorting.

The techniques applied are based on <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011a.pdf multiple> <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011c.pdf papers> and <https://www.youtube.com/watch?v=sz9ZlZIRDAg talks> by <http://www.diku.dk/hjemmesider/ansatte/henglein/ Fritz Henglein>.")
    (license license:bsd-3)))

haskell-8.4-discrimination

(define-public haskell-8.4-dlist-nonempty
  (package
    (name "haskell-8.4-dlist-nonempty")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
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

haskell-8.4-dlist-nonempty

(define-public haskell-8.4-either
  (package
    (name "haskell-8.4-either")
    (version "5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/either/either-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "064hjfld7dkzs78sy30k5qkiva3hx24rax6dvzz5ygr2c0zypdkc"))))
    (properties `((upstream-name . "either") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0859h2dc77fq0f14jh11h4i89hrg3iqvzk0yrk78516k6m7n96zc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "Combinators for working with sums")
    (description "Combinators for working with sums.")
    (license license:bsd-3)))

haskell-8.4-either

(define-public haskell-8.4-eq
  (package
    (name "haskell-8.4-eq")
    (version "4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eq/eq-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1s3h77i0h4z3dg97sqqjl027rz0k82h48cpzp0c7a75g0qx70q21"))))
    (properties `((upstream-name . "eq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "http://github.com/ekmett/eq/")
    (synopsis "Leibnizian equality")
    (description "Leibnizian equality.")
    (license license:bsd-3)))

haskell-8.4-eq

(define-public haskell-8.4-exinst
  (package
    (name "haskell-8.4-exinst")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/exinst/exinst-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pljgk0y4azzgp0k9q8dl7jpf9bf2719xax54mnc35g1px4s21p9"))))
    (properties `((upstream-name . "exinst") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fbytes" "-fcereal" "-fhashable" "-fquickcheck" "-f-serialise")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/exinst")
    (synopsis "Dependent pairs and their instances.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-exinst

(define-public haskell-8.4-fay
  (package
    (name "haskell-8.4-fay")
    (version "0.24.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fay/fay-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "05z8dyw1yf2bh42mrrk1d9rxqdz1p6gn8sjnpk66s2k76xrg4vm2"))))
    (properties `((upstream-name . "fay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-lens-light)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-language-ecmascript)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-sourcemap)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-spoon)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-traverse-with-class)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/faylang/fay/wiki")
    (synopsis
     "A compiler for Fay, a Haskell subset that compiles to JavaScript.")
    (description
     "Fay is a proper subset of Haskell which is type-checked
with GHC, and compiled to JavaScript. It is lazy, pure, has a Fay monad,
an FFI, tail-recursion optimization (experimental), and support for cabal packages.

/Documentation/

See <https://github.com/faylang/fay/wiki>

/Examples/

See the examples directory and <https://github.com/faylang/fay/wiki#fay-in-the-wild>
")
    (license license:bsd-3)))

haskell-8.4-fay

(define-public haskell-8.4-foldl
  (package
    (name "haskell-8.4-foldl")
    (version "1.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/foldl/foldl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19qjmzc7gaxfwgqbgy0kq4vhbxvh3qjnwsxnc7pzwws2if5bv80b"))))
    (properties `((upstream-name . "foldl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1mrp0szk413qc56a3lad0v0g5n93573inw3d81sxz9j4c835v2yc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-builder)))
    (home-page "https://hackage.haskell.org/package/foldl")
    (synopsis "Composable, streaming, and efficient left folds")
    (description
     "This library provides strict left folds that stream in constant
memory, and you can combine folds using @@Applicative@@ style to derive new
folds.  Derived folds still traverse the container just once and are often as
efficient as hand-written folds.")
    (license license:bsd-3)))

haskell-8.4-foldl

(define-public haskell-8.4-free
  (package
    (name "haskell-8.4-free")
    (version "5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free/free-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15m3n9vhz7z3kzv1w3wlfa3x8jp4cbrkwmrcjr7jlx39iqffn1gg"))))
    (properties `((upstream-name . "free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "036js4y08jpqy5g067wpvzmq2lljnx51xclm5jhrvaq2s9fhhlvd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
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

haskell-8.4-free

(define-public haskell-8.4-generic-lens
  (package
    (name "haskell-8.4-generic-lens")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens/generic-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s21jfw0ndkkmx7di3q0b7xj7hws6yxxcsflal617c44iqc8lvsy"))))
    (properties `((upstream-name . "generic-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump-core")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.")
    (license license:bsd-3)))

haskell-8.4-generic-lens

(define-public haskell-8.4-generic-xmlpickler
  (package
    (name "haskell-8.4-generic-xmlpickler")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-xmlpickler/generic-xmlpickler-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brnlgnbys811qy64aps2j03ks2p0rkihaqzaszfwl80cpsn05ym"))))
    (properties `((upstream-name . "generic-xmlpickler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1hpcglml4b5yv192syxazminr5v7qjrgqwb2wk0cf7f0sjpm5d0q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hxt-pickle-utils)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)))
    (home-page "http://github.com/silkapp/generic-xmlpickler")
    (synopsis
     "Generic generation of HXT XmlPickler instances using GHC Generics.")
    (description
     "Generic generation of HXT XmlPickler instances using GHC Generics.")
    (license license:bsd-3)))

haskell-8.4-generic-xmlpickler

(define-public haskell-8.4-genvalidity-aeson
  (package
    (name "haskell-8.4-genvalidity-aeson")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-aeson/genvalidity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c77lbw4y6fmrsdzxwm38la161n6k3zvjwisg17ssz0a1bm4y96i"))))
    (properties `((upstream-name . "genvalidity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-genvalidity-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-validity-aeson)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for aeson")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-aeson

(define-public haskell-8.4-genvalidity-path
  (package
    (name "haskell-8.4-genvalidity-path")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fj0lc1il2yjlj6wmczvnk505c1dlvz4xw2aml0agkal9lpnvz00"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-validity-path)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-path

(define-public haskell-8.4-gloss-rendering
  (package
    (name "haskell-8.4-gloss-rendering")
    (version "1.12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-rendering/gloss-rendering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g64wlyk13lssf8p71xhpjaqygzdkn5fq6k2bmqwixmq56bhpnb0"))))
    (properties `((upstream-name . "gloss-rendering") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-GLUT)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-OpenGL)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-bmp)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gloss-rendering")
    (synopsis "Gloss picture data types and rendering functions.")
    (description
     "Gloss picture data types and rendering functions. These functions
don't do any window management. If you want gloss to setup your window as
well then use the plain @@gloss@@ package.")
    (license license:expat)))

haskell-8.4-gloss-rendering

(define-public haskell-8.4-haskey
  (package
    (name "haskell-8.4-haskey")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/haskey/haskey-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s24k6mwb1231j3ryd4iizday4l966vs9rcghr53k3jx2nl0h74h"))))
    (properties `((upstream-name . "haskey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-focus)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-haskey-btree)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-list-t)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-lz4)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-stm-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-xxhash-ffi)))
    (home-page "https://github.com/haskell-haskey")
    (synopsis "A transactional, ACID compliant, embeddable key-value store.")
    (description
     "Haskey is a transactional, ACID compliant, embeddable, scalable key-value
store written entirely in Haskell.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey>")
    (license license:bsd-3)))

haskell-8.4-haskey

(define-public haskell-8.4-hasql
  (package
    (name "haskell-8.4-hasql")
    (version "1.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01vl4p67yhcm8cmbmajgyd7ggj3p5f6350f8sky8kv3dn31wg6ji"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "14063k0dald0i2cqk70kdja1df587vn8vrzgw3rb62nxwycr0r9b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-loch-th)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-placeholders)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-text-builder)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql ")
    (synopsis "An efficient PostgreSQL driver and a flexible mapping API")
    (description
     "This package is the root of the \\\"hasql\\\" ecosystem.

The API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.

The version 1 is completely backward-compatible with 0.19.")
    (license license:expat)))

haskell-8.4-hasql

(define-public haskell-8.4-here
  (package
    (name "haskell-8.4-here")
    (version "1.2.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/here/here-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "001wfyvigl2xswqysnpignkl124hybf833875mkcsn8yp8krqvs0"))))
    (properties `((upstream-name . "here") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-8.4-here

(define-public haskell-8.4-hpqtypes
  (package
    (name "haskell-8.4-hpqtypes")
    (version "1.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpqtypes/hpqtypes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1igzja5vy3pfvn2xi4bfbrbnxggxwav16cw2kfjrzkp2xrxq09gz"))))
    (properties `((upstream-name . "hpqtypes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/scrive/hpqtypes")
    (synopsis "Haskell bindings to libpqtypes")
    (description
     "Efficient and easy-to-use bindings to (slightly modified)
libpqtypes, lipq extension that adds support for binary
transport format and composite types.

Since modified libpqtypes is used, its source code is bundled
along with the bindings. The differences between verbatim
libpqtypes and the one used by this package:

* per-thread global error structures were replaced by
explicit passing of these structures around so that
there is no need to use bound threads.

* handlers that take values to be put into the database were
modified to always expect pointers to objects, as opposed
to previous situation where primitives were being taken by
value (which was convenient if the library was used
directly from C, but created inconsistency problems
while trying to define bindings in a sensible way).

Examples can be found in the
<https://github.com/scrive/hpqtypes/tree/master/examples examples>
directory.")
    (license license:bsd-3)))

haskell-8.4-hpqtypes

(define-public haskell-8.4-hquantlib
  (package
    (name "haskell-8.4-hquantlib")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hquantlib/hquantlib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zi31y89kdbid3xjvpsd2iqwvn8a7d2i5518maigkmhp5v1lg0w6"))))
    (properties `((upstream-name . "hquantlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hmatrix-special)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hquantlib-time)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-statistics)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "http://github.com/paulrzcz/hquantlib.git")
    (synopsis "HQuantLib is a port of essencial parts of QuantLib to Haskell")
    (description
     "HQuantLib is intended to be a functional style port of QuantLib (<http://quantlib.org>)")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-hquantlib

(define-public haskell-8.4-hsini
  (package
    (name "haskell-8.4-hsini")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsini/hsini-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r6qksnrmk18ndxs5zaga8b7kvmk34kp0kh5hwqmq797qrlax9pa"))))
    (properties `((upstream-name . "hsini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1b83g6jk9hcm2h17f1h9vyzm34bmr7w4j5888rbv9k8gpi97f8i7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)))
    (home-page "https://hackage.haskell.org/package/hsini")
    (synopsis "ini configuration files")
    (description
     "Library for reading and writing configuration files in INI format (see <https://en.wikipedia.org/wiki/INI_file>).")
    (license license:bsd-3)))

haskell-8.4-hsini

(define-public haskell-8.4-inline-java
  (package
    (name "haskell-8.4-inline-java")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-java/inline-java-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ddgwhk40g23lc71f8wbbfck9pqymil0syi14wsawc25sx6zb52v"))))
    (properties `((upstream-name . "inline-java") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-jni)
                  (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-jvm)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-language-java)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages java) openjdk19)))
    (home-page "http://github.com/tweag/inline-java#readme")
    (synopsis "Java interop via inline Java code in Haskell modules.")
    (description "Please see README.md.")
    (license license:bsd-3)))

haskell-8.4-inline-java

(define-public haskell-8.4-interpolate
  (package
    (name "haskell-8.4-interpolate")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolate/interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gkaj98yz363v38fv78sqby236mp8yqwqcilx7kr2b9z0w3204bf"))))
    (properties `((upstream-name . "interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)))
    (home-page "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license license:expat)))

haskell-8.4-interpolate

(define-public haskell-8.4-interpolatedstring-perl6
  (package
    (name "haskell-8.4-interpolatedstring-perl6")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolatedstring-perl6/interpolatedstring-perl6-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n3j6qvzp6as5ji93rn0sy873w5hdsplik51lkrah42cl95vmbay"))))
    (properties `((upstream-name . "interpolatedstring-perl6") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-interpolatedstring-perl6

(define-public haskell-8.4-invariant
  (package
    (name "haskell-8.4-invariant")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invariant/invariant-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aqj7z55632qdg45074kgn9qfdxzb0a2f8lgjzr0l0i4mm2rr37b"))))
    (properties `((upstream-name . "invariant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "100gsacbpal53khj94m5qs4aq70hbsp4dz4065czfm49ysd4yqq4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/nfrisby/invariant-functors")
    (synopsis "Haskell98 invariant functors")
    (description
     "Haskell98 invariant functors (also known as exponential functors).

For more information, see Edward Kmett's article \\\"Rotten Bananas\\\":

<http://comonad.com/reader/2008/rotten-bananas/>")
    (license license:bsd-2)))

haskell-8.4-invariant

(define-public haskell-8.4-invertible-grammar
  (package
    (name "haskell-8.4-invertible-grammar")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible-grammar/invertible-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vqv0q3096hfclakh7xk1hkwdbpghvllbzd795sgdf438zshr419"))))
    (properties `((upstream-name . "invertible-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hgssm0vm9d1n6iiz43jnr4pnyb6lxm0f2wyywldf8dnnd2j7qdf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/esmolanka/invertible-grammar")
    (synopsis "Invertible parsing combinators framework")
    (description
     "Grammar combinator framework to build invertible parsing libraries
for concrete syntax.")
    (license license:bsd-3)))

haskell-8.4-invertible-grammar

(define-public haskell-8.4-jmacro
  (package
    (name "haskell-8.4-jmacro")
    (version "0.6.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jmacro/jmacro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1b3crf16szj11pcgrg3912xq072vnv0myq6mzg0ypaabdzn3zr7s"))))
    (properties `((upstream-name . "jmacro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-benchmarks")
       #:cabal-revision
       ("2" "0r16y3sk22vgrciaadrdzjd768mnh08s019ffgk5jma782nz9v7d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parseargs)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-wl-pprint-text)))
    (home-page "https://hackage.haskell.org/package/jmacro")
    (synopsis
     "QuasiQuotation library for programmatic generation of Javascript code.")
    (description
     "Javascript syntax, functional syntax, hygienic names, compile-time guarantees of syntactic correctness, limited typechecking. Additional documentation available at <http://www.haskell.org/haskellwiki/Jmacro>")
    (license license:bsd-3)))

haskell-8.4-jmacro

(define-public haskell-8.4-json-schema
  (package
    (name "haskell-8.4-json-schema")
    (version "0.7.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-schema/json-schema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09bgcc00q1v24rdglw9b24dgi690mlax6abarhcgvgmn22406wp8"))))
    (properties `((upstream-name . "json-schema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0pwmh48z54n0mrwzmgff95mwy1jbmy1rwsk5kmddby86f0j5873g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-generic-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/json-schema")
    (synopsis "Types and type classes for defining JSON schemas.")
    (description
     "Types and type classes for defining JSON schemas.

/Documentation/

See <https://github.com/silkapp/json-schema/blob/master/README.md>
")
    (license license:bsd-3)))

haskell-8.4-json-schema

(define-public haskell-8.4-language-c-quote
  (package
    (name "haskell-8.4-language-c-quote")
    (version "0.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c-quote/language-c-quote-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15c6rdj91768jf8lqzf4fkbi8k6kz9gch5w81x6qzy2l256rncgb"))))
    (properties `((upstream-name . "language-c-quote") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")
       #:cabal-revision
       ("1" "099w1lln1vm000sf06wrmq6gya5sx2w4flrlwqz2c8wwvv8c9j9h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-exception-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exception-transformers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mainland-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-srcloc)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-symbol)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-8.4-language-c-quote

(define-public haskell-8.4-large-hashable
  (package
    (name "haskell-8.4-large-hashable")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/large-hashable/large-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13k2k8rqbk40whzn4hpa92ypws2c1gh5fb4zh0diy5m0kxfk9hz9"))))
    (properties `((upstream-name . "large-hashable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1xfl265ryvrjra2nsjvlcmwgilbnxhp8pwxy54wi1ada645nwgbr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-HTF)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-light)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/factisresearch/large-hashable")
    (synopsis "Efficiently hash (large) Haskell values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-large-hashable

(define-public haskell-8.4-lattices
  (package
    (name "haskell-8.4-lattices")
    (version "1.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lattices/lattices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1byx2hmmh2213afdcsjxf3mvq3h9bwkl5wrvzxv1yqvd9jiqjz3r"))))
    (properties `((upstream-name . "lattices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "085mdaa4qgrrhrqnm7agiwgrfsxhw7g2k3ihldg9iw45cmdizvwk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-universe-base)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
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

haskell-8.4-lattices

(define-public haskell-8.4-lens-labels
  (package
    (name "haskell-8.4-lens-labels")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-labels/lens-labels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s23klkxckly91yfn194bbd3g8lq2x5ykp2mx6730wh2izzwiblw"))))
    (properties `((upstream-name . "lens-labels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Integration of lenses with OverloadedLabels.")
    (description
     "Provides a framework to integrate lenses with GHC's OverloadedLabels extension.")
    (license license:bsd-3)))

haskell-8.4-lens-labels

(define-public haskell-8.4-lifted-async
  (package
    (name "haskell-8.4-lifted-async")
    (version "0.10.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-async/lifted-async-"
                    version ".tar.gz"))
              (sha256
               (base32
                "131bh83yc3jhy0hwgslvs9p9clgl4i2hhvwz2xgx7igpbhsrrl43"))))
    (properties `((upstream-name . "lifted-async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/maoe/lifted-async")
    (synopsis
     "Run lifted IO operations asynchronously and wait for their results")
    (description
     "This package provides IO operations from @@async@@ package lifted to any
instance of 'MonadBase' or 'MonadBaseControl'.")
    (license license:bsd-3)))

haskell-8.4-lifted-async

(define-public haskell-8.4-log-domain
  (package
    (name "haskell-8.4-log-domain")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-domain/log-domain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zin3zgxrx8v69blqzkd5gjk0nmpmg58caqz2xa8qd4v1fjcp4bi"))))
    (properties `((upstream-name . "log-domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-fffi")
       #:cabal-revision
       ("4" "1z7p87dl1rj0v2gnfwfa7zmgaxccd093hvjkijc56whyg4b4az4y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/ekmett/log-domain/")
    (synopsis "Log-domain arithmetic")
    (description
     "This package provides log-domain floats, doubles and complex numbers.")
    (license license:bsd-3)))

haskell-8.4-log-domain

(define-public haskell-8.4-lucid-extras
  (package
    (name "haskell-8.4-lucid-extras")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-extras/lucid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wyb5pqhphfckmzpnl0xp6fy8fmnwqjqim3h3f3sdjqkqdly5iaw"))))
    (properties `((upstream-name . "lucid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "030mj3yddbia6dkbl8d6mssi42l3z8gs79z50r78gwiif6mh5dny")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)))
    (home-page "https://github.com/diffusionkinetics/open/lucid-extras")
    (synopsis "Generate more HTML with Lucid")
    (description "Generate more HTML with Lucid - Bootstrap, Rdash and Email.")
    (license license:expat)))

haskell-8.4-lucid-extras

(define-public haskell-8.4-marvin-interpolate
  (package
    (name "haskell-8.4-marvin-interpolate")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/marvin-interpolate/marvin-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kzc83ly479cwm95qpfsixb747xi34ylm49wn8gpvqbh5yyc6h6n"))))
    (properties `((upstream-name . "marvin-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://marvin.readthedocs.io/en/latest/interpolation.html")
    (synopsis "Compile time string interpolation a la Scala and CoffeeScript")
    (description
     "The documentation can be found on readthedocs <https://marvin.readthedocs.io/en/latest/interpolation.html>")
    (license license:bsd-3)))

haskell-8.4-marvin-interpolate

(define-public haskell-8.4-messagepack
  (package
    (name "haskell-8.4-messagepack")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "199x0hqa6h6wqysaip1wc7kivc26f3wkb8y4il70mzmz80skmm29")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-test-framework-th)))
    (home-page "https://github.com/rodrigosetti/messagepack")
    (synopsis "Serialize instance for Message Pack Object")
    (description "Serialize instance for Message Pack Object")
    (license license:expat)))

haskell-8.4-messagepack

(define-public haskell-8.4-modern-uri
  (package
    (name "haskell-8.4-modern-uri")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/modern-uri/modern-uri-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ldl2i34fl7srv72bjxnrbihafq8m8mmk5xca6lhcqwdpx8yakxb"))))
    (properties `((upstream-name . "modern-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "08krkwzcaxvi8l8myii0nqyhcb4akmgbgm6q561xwpx692qw8m22")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/mrkkrp/modern-uri")
    (synopsis "Modern library for working with URIs")
    (description "Modern library for working with URIs.")
    (license license:bsd-3)))

haskell-8.4-modern-uri

(define-public haskell-8.4-monad-products
  (package
    (name "haskell-8.4-monad-products")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "http://github.com/ekmett/monad-products")
    (synopsis "Monad products")
    (description "Monad products")
    (license license:bsd-3)))

haskell-8.4-monad-products

(define-public haskell-8.4-monoid-extras
  (package
    (name "haskell-8.4-monoid-extras")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-extras/monoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172d1mfns7agd619rlbb1i9kw2y26kjvivkva06k1r14bar1lmy6"))))
    (properties `((upstream-name . "monoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0f2lww0qjk3sspj199b88j1zg9nn0cmm0mmsf6j7dd30cdqam76p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-groups)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://hackage.haskell.org/package/monoid-extras")
    (synopsis "Various extra monoid-related definitions and utilities")
    (description "Various extra monoid-related definitions and utilities,
such as monoid actions, monoid coproducts, semi-direct
products, \\\"deletable\\\" monoids, \\\"split\\\" monoids,
and \\\"cut\\\" monoids.")
    (license license:bsd-3)))

haskell-8.4-monoid-extras

(define-public haskell-8.4-netwire
  (package
    (name "haskell-8.4-netwire")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/esoeylemez/netwire")
    (synopsis "Functional reactive programming library")
    (description
     "This library provides interfaces for and implements wire arrows
useful both for functional reactive programming (FRP) and locally
stateful programming (LSP).")
    (license license:bsd-3)))

haskell-8.4-netwire

(define-public haskell-8.4-network-attoparsec
  (package
    (name "haskell-8.4-network-attoparsec")
    (version "0.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-attoparsec/network-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w08py367mmwfg5lff6y9s6hdpg1nbjf7v6vv9s19aw6saxak44p"))))
    (properties `((upstream-name . "network-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "http://github.com/solatis/haskell-network-attoparsec")
    (synopsis "Utility functions for running a parser against a socket")
    (description
     "Utility functions for running a parser against a socket, without the need of a bigger framework such as Pipes or Conduit.")
    (license license:expat)))

haskell-8.4-network-attoparsec

(define-public haskell-8.4-one-liner
  (package
    (name "haskell-8.4-one-liner")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/sjoerdvisscher/one-liner")
    (synopsis "Constraint-based generics")
    (description "Write short and concise generic instances of type classes.
one-liner is particularly useful for writing default
implementations of type class methods.")
    (license license:bsd-3)))

haskell-8.4-one-liner

(define-public haskell-8.4-parsec-numeric
  (package
    (name "haskell-8.4-parsec-numeric")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-numeric/parsec-numeric-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bz5ls9m6ld9v8g641sskzz2ymzibsw9jgf7f8q5wsb3mbj9mpbv"))))
    (properties `((upstream-name . "parsec-numeric") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)))
    (home-page "https://github.com/AndrewRademacher/parsec-numeric")
    (synopsis "Parsec combinators for parsing Haskell numeric types.")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-parsec-numeric

(define-public haskell-8.4-plotlyhs
  (package
    (name "haskell-8.4-plotlyhs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)))
    (home-page "https://github.com/diffusionkinetics/open/plotlyhs")
    (synopsis "Haskell bindings to Plotly.js")
    (description "Generate web-based plots with the Plotly.js library.
For examples, see <https://glutamate.github.io/plotlyhs/>")
    (license license:expat)))

haskell-8.4-plotlyhs

(define-public haskell-8.4-postgresql-typed
  (package
    (name "haskell-8.4-postgresql-typed")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-typed/postgresql-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0apq662lhkjc1xl4alpz20yz20x6mf3gz6li7wb86sp94441rh5k"))))
    (properties `((upstream-name . "postgresql-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmd5" "-fbinary" "-ftext" "-fuuid" "-fscientific" "-faeson" "-fhdbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-HDBC)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/dylex/postgresql-typed")
    (synopsis
     "PostgreSQL interface with compile-time SQL type checking, optional HDBC backend")
    (description
     "Automatically type-check SQL statements at compile time.
Uses Template Haskell and the raw PostgreSQL protocol to describe SQL statements at compile time and provide appropriate type marshalling for both parameters and results.
Allows not only syntax verification of your SQL but also full type safety between your SQL and Haskell.
Supports many built-in PostgreSQL types already, including arrays and ranges, and can be easily extended in user code to support any other types.

Also includes an optional HDBC backend that, since it uses the raw PostgreSQL protocol, may be more efficient than the normal libpq backend in some cases (though provides no more type safety than HDBC-postgresql when used without templates).

Originally based on Chris Forno's templatepg library.")
    (license license:bsd-3)))

haskell-8.4-postgresql-typed

(define-public haskell-8.4-product-profunctors
  (package
    (name "haskell-8.4-product-profunctors")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/product-profunctors/product-profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s0ssl2900r16992mgl0idkryg3l7psp8nljyg9brr7fqa3pd3dd"))))
    (properties `((upstream-name . "product-profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0vf9w949qfi6p1nqr0cxb9shxdz15mmrd8r0w4gxid56fjc2kaia")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/tomjaguarpaw/product-profunctors")
    (synopsis "product-profunctors")
    (description "Product profunctors")
    (license license:bsd-3)))

haskell-8.4-product-profunctors

(define-public haskell-8.4-qm-interpolated-string
  (package
    (name "haskell-8.4-qm-interpolated-string")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brbs4qwvb16bkmcg51spjjrzc83hwgi1fbsix25vrri2myk6sz8"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-qm-interpolated-string

(define-public haskell-8.4-reducers
  (package
    (name "haskell-8.4-reducers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-fingertree)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/reducers/")
    (synopsis
     "Semigroups, specialized containers and a general map/reduce framework")
    (description
     "Semigroups, specialized containers and a general map/reduce framework.")
    (license license:bsd-3)))

haskell-8.4-reducers

(define-public haskell-8.4-riak
  (package
    (name "haskell-8.4-riak")
    (version "1.1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/riak/riak-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ln7qm6rl8nr4fc1109pk0jmnqhw4dm3q2jfmvd4a34whplzwln7"))))
    (properties `((upstream-name . "riak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdebug" "-f-developer" "-f-test2i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-protocol-buffers)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pureMD5)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-riak-protobuf)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/riak-haskell-client/riak-haskell-client")
    (synopsis "A Haskell client for the Riak decentralized data store")
    (description
     "A Haskell client library for the Riak decentralized data
store, designed for efficiency, ease of use, and flexibility.  Uses
the Riak protocol buffers API for speed.

This library is organized to allow a tradeoff between power
and ease of use.  If you would like a different degree of
automation with storage and conflict resolution, you may want to
use one of the following modules (ranked from easiest to most
tricky to use):

[Network.Riak] JSON for storage, automatic conflict resolution.
This is the easiest module to work with.

[Network.Riak.JSON] JSON for storage, manual conflict resolution.

[Network.Riak.Value.Resolvable] More complex (but still automatic)
storage, automatic conflict resolution.

[Network.Riak.Value] More complex (but still automatic) storage,
manual conflict resolution.

[Network.Riak.Basic] manual storage, manual conflict resolution.
This is the most demanding module to work with, as you must encode
and decode data yourself, and handle all conflict resolution
yourself

[Network.Riak.CRDT] CRDT operations.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-riak

(define-public haskell-8.4-saltine
  (package
    (name "haskell-8.4-saltine")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/saltine/saltine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0253m8n6s39fnr8wz1z240kaizw3chfm1fgwp51dgqgk0nwrv67x"))))
    (properties `((upstream-name . "saltine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
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

haskell-8.4-saltine

(define-public haskell-8.4-semigroupoid-extras
  (package
    (name "haskell-8.4-semigroupoid-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "http://github.com/ekmett/semigroupoid-extras")
    (synopsis "Semigroupoids that depend on PolyKinds")
    (description "Semigroupoids that depend on PolyKinds")
    (license license:bsd-3)))

haskell-8.4-semigroupoid-extras

(define-public haskell-8.4-slave-thread
  (package
    (name "haskell-8.4-slave-thread")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slave-thread/slave-thread-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04sbbdgzsi1ww642b9fgbhx348c0a4qim4ak6bivwpnnimcj0wg4"))))
    (properties `((upstream-name . "slave-thread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-list-t)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-partial-handler)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-stm-containers)))
    (home-page "https://github.com/nikita-volkov/slave-thread ")
    (synopsis "A principal solution to ghost threads and silent exceptions")
    (description
     "Vanilla thread management in Haskell is low level and
it does not approach the problems related to thread deaths.
When it's used naively the following typical problems arise:

* When a forked thread dies due to an uncaught exception,
the exception does not get raised in the main thread,
which is why the program continues to run as if nothing happened,
i.e., with the presumption that the already dead thread is running normally.
Naturally this may very well bring your program to a chaotic state.

* Another issue is that one thread dying does not
affect any of the threads forked from it.
That's why your program may be accumulating ghost threads.

* Ever dealt with your program ignoring the \\<Ctrl-C\\> strikes?

This library solves all the issues above with a concept of a slave thread.
A slave thread has the following properties:

1. When it dies for whatever reason (exception or finishing normally)
it kills all the slave threads that were forked from it.
This protects you from ghost threads.

2. It waits for all slaves to die and execute their finalizers
before executing its own finalizer and getting released itself.
This gives you hierarchical releasing of resources.

3. When a slave thread dies with an uncaught exception
it reraises it in the master thread.
This protects you from silent exceptions
and lets you be sure of getting informed
if your program gets brought to an erroneous state.")
    (license license:expat)))

haskell-8.4-slave-thread

(define-public haskell-8.4-snap-blaze
  (package
    (name "haskell-8.4-snap-blaze")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-blaze/snap-blaze-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hc8k0cviq7ayjymsfr435bnfw35pa4f80i7x4ypn2539fykavmk"))))
    (properties `((upstream-name . "snap-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-snap-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jaspervdj/snap-blaze")
    (synopsis "blaze-html integration for Snap")
    (description "blaze-html integration for Snap")
    (license license:bsd-3)))

haskell-8.4-snap-blaze

(define-public haskell-8.4-snap-server
  (package
    (name "haskell-8.4-snap-server")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-server/snap-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vvw9n8xs272qdlrf3dxhnva41zh3awi7pf022rrjj75lj8a77i4"))))
    (properties `((upstream-name . "snap-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-openssl" "-f-build-pong" "-f-build-testserver" "-f-debug")
       #:cabal-revision
       ("3" "0a9d3nqb5rvgm25nak68lp6yj9m6cwhbgdbg5l7ib5i2czcg7yjh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-common)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-http-streams)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-io-streams-haproxy)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-snap-core)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-threads)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "A web server for the Snap Framework")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

The Snap HTTP server is a high performance web server library written in
Haskell. Together with the @@snap-core@@ library upon which it depends, it
provides a clean and efficient Haskell programming interface to the HTTP
protocol.")
    (license license:bsd-3)))

haskell-8.4-snap-server

(define-public haskell-8.4-squeal-postgresql
  (package
    (name "haskell-8.4-squeal-postgresql")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/squeal-postgresql/squeal-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "022bh32r5cgkiical5jc7ax9im5a3nfl8v2cxc7v1rkq6ag2rclq"))))
    (properties `((upstream-name . "squeal-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-binary-parser)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-network-ip)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/morphismtech/squeal")
    (synopsis "Squeal PostgreSQL Library")
    (description "Squeal is a type-safe embedding of PostgreSQL in Haskell")
    (license license:bsd-3)))

haskell-8.4-squeal-postgresql

(define-public haskell-8.4-tagged-transformer
  (package
    (name "haskell-8.4-tagged-transformer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "http://github.com/ekmett/tagged-transformer")
    (synopsis "Monad transformer carrying an extra phantom type tag")
    (description
     "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-8.4-tagged-transformer

(define-public haskell-8.4-text-show-instances
  (package
    (name "haskell-8.4-text-show-instances")
    (version "3.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show-instances/text-show-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hljqh31m3199w8ppcihggcya8cj4zmrav5z6fvcn6xn2hzz1cql"))))
    (properties `((upstream-name . "text-show-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")
       #:cabal-revision
       ("2" "1lqvwm9ciazk13jabyr81rl4hsmwksjmks7ckxrdgz3jk201yr6i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hoopl)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-th-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/RyanGlScott/text-show-instances")
    (synopsis "Additional instances for text-show")
    (description
     "@@text-show-instances@@ is a supplemental library to @@text-show@@
that provides additional @@Show@@ instances for data types in
common Haskell libraries and GHC dependencies that are not
encompassed by @@text-show@@. Currently, @@text-show-instances@@
covers these libraries:

* @@<http://hackage.haskell.org/package/bifunctors           bifunctors>@@

* @@<http://hackage.haskell.org/package/binary               binary>@@

* @@<http://hackage.haskell.org/package/containers           containers>@@

* @@<http://hackage.haskell.org/package/directory            directory>@@

* @@<http://hackage.haskell.org/package/ghc-boot-th          ghc-boot-th>@@

* @@<http://hackage.haskell.org/package/haskeline            haskeline>@@

* @@<http://hackage.haskell.org/package/hoopl                hoopl>@@

* @@<http://hackage.haskell.org/package/hpc                  hpc>@@

* @@<http://hackage.haskell.org/package/old-locale           old-locale>@@

* @@<http://hackage.haskell.org/package/old-time             old-time>@@

* @@<http://hackage.haskell.org/package/pretty               pretty>@@

* @@<http://hackage.haskell.org/package/random               random>@@

* @@<http://hackage.haskell.org/package/tagged               tagged>@@

* @@<http://hackage.haskell.org/package/template-haskell     template-haskell>@@

* @@<http://hackage.haskell.org/package/terminfo             terminfo>@@

* @@<http://hackage.haskell.org/package/time                 time>@@

* @@<http://hackage.haskell.org/package/transformers         transformers>@@

* @@<http://hackage.haskell.org/package/unix                 unix>@@

* @@<http://hackage.haskell.org/package/unordered-containers unordered-containers>@@

* @@<http://hackage.haskell.org/package/vector               vector>@@

* @@<http://hackage.haskell.org/package/Win32                Win32>@@

* @@<http://hackage.haskell.org/package/xhtml                xhtml>@@

One can use these instances by importing
\"TextShow.Instances\". Alternatively, there are monomorphic
versions of the @@showb@@ function available in the other submodules
of \"TextShow\".")
    (license license:bsd-3)))

haskell-8.4-text-show-instances

(define-public haskell-8.4-tzdata
  (package
    (name "haskell-8.4-tzdata")
    (version "0.1.20181026.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tzdata/tzdata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b531ydcb63q44zjpcd2l70xp2hgkxqppnfld7n16ifh9vrxm6gf"))))
    (properties `((upstream-name . "tzdata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-test-framework-th)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/nilcons/haskell-tzdata")
    (synopsis "Time zone database (as files and as a module)")
    (description
     "The goal of this package is to distribute the standard Time Zone
Database in a cabal package, so that it can be used in Haskell
programs uniformly on all platforms.

This package currently ships the @@2018g@@ version of the time zone
database.  The version of the time zone database shipped is always
reflected in the version of this package: @@x.y.YYYYMMDD.z@@, then
@@YYYYMMDD@@ is the official release date of time zone database.

See: <http://www.iana.org/time-zones> for more info about the time
zone database.

See also the @@tz@@ package <http://hackage.haskell.org/package/tz> or
the @@timezone-olson@@ and @@timezone-series@@ packages that provide
facilities to /use/ the data shipped here. (The @@tz@@ package
automatically installs this package.)")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-tzdata

(define-public haskell-8.4-unbound-generics
  (package
    (name "haskell-8.4-unbound-generics")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unbound-generics/unbound-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01g8zhf9plgl3fcj57fkma3rkdwmh28rla3r1cr0bfmbd03q3fva"))))
    (properties `((upstream-name . "unbound-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/lambdageek/unbound-generics")
    (synopsis
     "Support for programming with names and binders using GHC Generics")
    (description
     "Specify the binding structure of your data type with an
expressive set of type combinators, and unbound-generics
handles the rest!  Automatically derives
alpha-equivalence, free variable calculation,
capture-avoiding substitution, and more. See
@@Unbound.Generics.LocallyNameless@@ to get started.

This is an independent re-implementation of <http://hackage.haskell.org/package/unbound Unbound>
but using <https://hackage.haskell.org/package/base/docs/GHC-Generics.html GHC.Generics>
instead of <http://hackage.haskell.org/package/RepLib RepLib>.
See the accompanying README for some porting notes.")
    (license license:bsd-3)))

haskell-8.4-unbound-generics

(define-public haskell-8.4-union
  (package
    (name "haskell-8.4-union")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/union/union-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i4fvlwkw1wx64a6l8342aqfqsdq7fqa4p24g3i5gn5704lxrsb3"))))
    (properties `((upstream-name . "union") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0rm4nm47arflmbqngzq9ajri8f43wgplzrk9qfvjm6ag12vnjrl5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-vinyl)))
    (home-page "https://hackage.haskell.org/package/union")
    (synopsis "Extensible type-safe unions")
    (description
     "Extensible type-safe unions for Haskell with prisms using modern
GHC features. Dual to vinyl records. Unions are also known as
corecords or polymorphic variants.
Neither requires a @@Typeable@@ constraint nor uses unsafe coercions
at the cost of linear time access (negligible in practice).")
    (license license:bsd-3)))

haskell-8.4-union

(define-public haskell-8.4-witness
  (package
    (name "haskell-8.4-witness")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "https://github.com/AshleyYakeley/witness")
    (synopsis "values that witness types")
    (description
     "A witness is a value that /witnesses/ some sort of constraint on some list of type variables.
This library provides support for simple witnesses, that constrain a type variable to a single type, and equality witnesses, that constrain two type variables to be the same type.
It also provides classes for representatives, which are values that represent types.
See the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).")
    (license license:bsd-3)))

haskell-8.4-witness

(define-public haskell-8.4-wl-pprint-extras
  (package
    (name "haskell-8.4-wl-pprint-extras")
    (version "3.5.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-extras/wl-pprint-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13wdx7l236yyv9wqsgcjlbrm5gk1bmw1z2lk4b21y699ly2imhm9"))))
    (properties `((upstream-name . "wl-pprint-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://github.com/ekmett/wl-pprint-extras/")
    (synopsis "A free monad based on the Wadler/Leijen pretty printer")
    (description "A free monad based on the Wadler/Leijen pretty printer")
    (license license:bsd-3)))

haskell-8.4-wl-pprint-extras

(define-public haskell-8.4-world-peace
  (package
    (name "haskell-8.4-world-peace")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/world-peace/world-peace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19anwyh9n9agpcdhzfbh0l28nm0mdn8616klihbw55yxkiwqaxkk"))))
    (properties `((upstream-name . "world-peace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/cdepillabout/world-peace")
    (synopsis "Open Union and Open Product Types")
    (description
     "Please see <https://github.com/cdepillabout/world-peace#readme README.md>.")
    (license license:bsd-3)))

haskell-8.4-world-peace

(define-public haskell-8.4-x509
  (package
    (name "haskell-8.4-x509")
    (version "1.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j67c35g8334jx7x32hh6awhr43dplp0qwal5gnlkmx09axzrc5i"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z98llpggldy4yb7afcsn3r3q4vklvx2pqyrhy9fir5y2yd5l601")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-asn1-parse)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-8.4-x509

(define-public haskell-8.4-zlib-lens
  (package
    (name "haskell-8.4-zlib-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://lens.github.io/")
    (synopsis "Lenses for zlib")
    (description "Lenses for zlib")
    (license license:bsd-3)))

haskell-8.4-zlib-lens

