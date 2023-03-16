;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage007)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.2))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.2-ChasingBottoms
  (package
    (name "haskell-9.2-ChasingBottoms")
    (version "1.3.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ChasingBottoms/ChasingBottoms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vy9yq07p95qiap1pcp2bbbn1mqvp3spyrswpdz0qfcn06656650"))))
    (properties `((upstream-name . "ChasingBottoms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ra041bg2m04niqzi0y468cfmv2bkjh8ckix2i8xf2shw7v2zn4r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://hackage.haskell.org/package/ChasingBottoms")
    (synopsis "For testing partial and infinite values.")
    (description
     "Do you ever feel the need to test code involving bottoms (e.g. calls to
the @@error@@ function), or code involving infinite values? Then this
library could be useful for you.

It is usually easy to get a grip on bottoms by showing a value and
waiting to see how much gets printed before the first exception is
encountered. However, that quickly gets tiresome and is hard to automate
using e.g. QuickCheck
(<http://www.cse.chalmers.se/~rjmh/QuickCheck/>). With this library you
can do the tests as simply as the following examples show.

Testing explicitly for bottoms:

> > isBottom (head [])
> True

> > isBottom bottom
> True

> > isBottom (\\_ -> bottom)
> False

> > isBottom (bottom, bottom)
> False

Comparing finite, partial values:

> > ((bottom, 3) :: (Bool, Int)) ==! (bottom, 2+5-4)
> True

> > ((bottom, bottom) :: (Bool, Int)) <! (bottom, 8)
> True

Showing partial and infinite values (@@\\\\\\/!@@ is join and @@\\/\\\\!@@ is meet):

> > approxShow 4 $ (True, bottom) \\/! (bottom, 'b')
> \"Just (True, 'b')\"

> > approxShow 4 $ (True, bottom) /\\! (bottom, 'b')
> \"(_|_, _|_)\"

> > approxShow 4 $ ([1..] :: [Int])
> \"[1, 2, 3, _\"

> > approxShow 4 $ (cycle [bottom] :: [Bool])
> \"[_|_, _|_, _|_, _\"

Approximately comparing infinite, partial values:

> > approx 100 [2,4..] ==! approx 100 (filter even [1..] :: [Int])
> True

> > approx 100 [2,4..] /=! approx 100 (filter even [bottom..] :: [Int])
> True

The code above relies on the fact that @@bottom@@, just as @@error
\\\"...\\\"@@, @@undefined@@ and pattern match failures, yield
exceptions. Sometimes we are dealing with properly non-terminating
computations, such as the following example, and then it can be nice to
be able to apply a time-out:

> > timeOut' 1 (reverse [1..5])
> Value [5,4,3,2,1]

> > timeOut' 1 (reverse [1..])
> NonTermination

The time-out functionality can be used to treat \\\"slow\\\" computations as
bottoms:

@@
\\> let tweak = Tweak &#x7b; approxDepth = Just 5, timeOutLimit = Just 2 &#x7d;
\\> semanticEq tweak (reverse [1..], [1..]) (bottom :: [Int], [1..] :: [Int])
True
@@

@@
\\> let tweak = noTweak &#x7b; timeOutLimit = Just 2 &#x7d;
\\> semanticJoin tweak (reverse [1..], True) ([] :: [Int], bottom)
Just ([],True)
@@

This can of course be dangerous:

@@
\\> let tweak = noTweak &#x7b; timeOutLimit = Just 0 &#x7d;
\\> semanticEq tweak (reverse [1..100000000]) (bottom :: [Integer])
True
@@

Timeouts can also be applied to @@IO@@ computations:

> > let primes () = unfoldr (\\(x:xs) -> Just (x, filter ((/= 0) . (`mod` x)) xs)) [2..]
> > timeOutMicro 100 (print $ primes ())
> [2,NonTermination
> > timeOutMicro 10000 (print $ take 10 $ primes ())
> [2,3,5,7,11,13,17,19,23,29]
> Value ()

For the underlying theory and a larger example involving use of
QuickCheck, see the article \\\"Chasing Bottoms, A Case Study in Program
Verification in the Presence of Partial and Infinite Values\\\"
(<http://www.cse.chalmers.se/~nad/publications/danielsson-jansson-mpc2004.html>).

The code has been tested using GHC. Most parts can probably be
ported to other Haskell compilers, but this would require some work.
The @@TimeOut@@ functions require preemptive scheduling, and most of
the rest requires @@Data.Generics@@; @@isBottom@@ only requires
exceptions, though.")
    (license license:expat)))

haskell-9.2-ChasingBottoms

(define-public haskell-9.2-GLFW-b
  (package
    (name "haskell-9.2-GLFW-b")
    (version "3.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLFW-b/GLFW-b-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xh6nnm4c7bjvbr62rw7vv86p0r76vrqhdbm89vmcs51jk92yxv4"))))
    (properties `((upstream-name . "GLFW-b") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-bindings-GLFW)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://hackage.haskell.org/package/GLFW-b")
    (synopsis "Bindings to GLFW OpenGL library")
    (description
     "Bindings to GLFW (<http://www.glfw.org/>), an open source, multi-platform
library for creating windows with OpenGL contexts and managing input and
events.

GLFW-b depends on bindings-GLFW
(<http://hackage.haskell.org/package/bindings-GLFW>), which, as of the time
of this writing, binds to GLFW 3.3.0, released 2019-04-15
(<http://www.glfw.org/Version-3.3.0-released.html>
<http://www.glfw.org/changelog.html>).

If you've used GLFW < 3 before, you should read the transition guide
(<http://www.glfw.org/docs/3.0/moving.html>).")
    (license license:bsd-3)))

haskell-9.2-GLFW-b

(define-public haskell-9.2-GLURaw
  (package
    (name "haskell-9.2-GLURaw")
    (version "2.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLURaw/GLURaw-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1b3rnva77k9naw5bl573bqgmsq7n9i8rrrvfvhbjcndqgmzhkini"))))
    (properties `((upstream-name . "GLURaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-OpenGLRaw)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A raw binding for the OpenGL graphics system")
    (description
     "GLURaw is a raw Haskell binding for the GLU 1.3 OpenGL utility library. It is
basically a 1:1 mapping of GLU's C API, intended as a basis for a nicer
interface.

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-9.2-GLURaw

(define-public haskell-9.2-HStringTemplate
  (package
    (name "haskell-9.2-HStringTemplate")
    (version "0.8.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HStringTemplate/HStringTemplate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n8ci0kzjcgnqh4dfpqwlh7mnlzyiqiqc6hc0zr65p0balbg8zbi"))))
    (properties `((upstream-name . "HStringTemplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0sj82pzq2hcx3yjsljwgbr1kcdgwpgfmq0n0dhz3am8ckwir0slz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (home-page "https://hackage.haskell.org/package/HStringTemplate")
    (synopsis "StringTemplate implementation in Haskell.")
    (description "A port of the Java library by Terrence Parr.")
    (license license:bsd-3)))

haskell-9.2-HStringTemplate

(define-public haskell-9.2-HsOpenSSL
  (package
    (name "haskell-9.2-HsOpenSSL")
    (version "0.11.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL/HsOpenSSL-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zxcfa8b0ng97v53vb8fvg2gss89b28xiz83rx38a0h4lsxpn2xf"))))
    (properties `((upstream-name . "HsOpenSSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast-bignum" "-f-homebrew-openssl" "-f-macports-openssl" "-f-use-pkg-config")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/haskell-cryptography/HsOpenSSL")
    (synopsis "Partial OpenSSL binding for Haskell")
    (description
     "HsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA
and DSA keys, read and write PEM files, generate message digests,
sign and verify messages, encrypt and decrypt messages. It has
also some capabilities of creating SSL clients and servers.

This package is in production use by a number of Haskell based
systems and stable. You may also be interested in the @@tls@@ package,
<http://hackage.haskell.org/package/tls>, which is a pure Haskell
implementation of SSL.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-HsOpenSSL

(define-public haskell-9.2-STMonadTrans
  (package
    (name "haskell-9.2-STMonadTrans")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/STMonadTrans/STMonadTrans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rvhh0hhwz601ibpzisry7xf3j61r5sxfgp47imaa37i5bvrlynb"))))
    (properties `((upstream-name . "STMonadTrans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04svg3fwiir2zd5da44pklvw51bs2qm8pqmsnicyav0g0wvhbxbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/josefs/STMonadTrans")
    (synopsis "A monad transformer version of the ST monad")
    (description
     "A monad transformer version of the ST monad.

Warning! This monad transformer should not be used with monads that
can contain multiple answers, like the list monad. The reason is that
the state token will be duplicated across the different answers and
this causes Bad Things to happen (such as loss of referential
transparency). Safe monads include the monads State, Reader, Writer,
Maybe and combinations of their corresponding monad transformers.")
    (license license:bsd-3)))

haskell-9.2-STMonadTrans

(define-public haskell-9.2-alsa-pcm
  (package
    (name "haskell-9.2-alsa-pcm")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-pcm/alsa-pcm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mllr9nbm3qb837zgvd6mrpr6f8i272wflv0a45rrpsq50zgcj33"))))
    (properties `((upstream-name . "alsa-pcm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-buildsynthesizer" "-f-debug")
       #:cabal-revision
       ("1" "1bq0rmawwn7xaqny6gvp0qh0pggqcxr9b64346fm4a8fsq71a6wi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-alsa-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-sample-frame)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (PCM audio).")
    (description
     "This package provides access to ALSA realtime audio signal input and output.
For MIDI support see alsa-seq.")
    (license license:bsd-3)))

haskell-9.2-alsa-pcm

(define-public haskell-9.2-asn1-encoding
  (package
    (name "haskell-9.2-asn1-encoding")
    (version "0.9.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-encoding/asn1-encoding-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02nsr30h5yic1mk7znf0q4z3n560ip017n60hg7ya25rsfmxxy6r"))))
    (properties `((upstream-name . "asn1-encoding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "16503ryhq15f2rfdav2qnkq11dg2r3vk3f9v64q9dmxf8dh8zv97")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "ASN1 data reader and writer in RAW, BER and DER forms")
    (description
     "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, and DER).")
    (license license:bsd-3)))

haskell-9.2-asn1-encoding

(define-public haskell-9.2-backtracking
  (package
    (name "haskell-9.2-backtracking")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primes)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/backtracking")
    (synopsis "A backtracking monad")
    (description
     "This library provides a backtracking monad following Spivey's paper \"Algebras for combinatorial search\".")
    (license license:bsd-3)))

haskell-9.2-backtracking

(define-public haskell-9.2-barbies
  (package
    (name "haskell-9.2-barbies")
    (version "2.0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/barbies/barbies-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v8bckxi58fkqgf1i1xd3100wp792pzd319xlfvmmw8z0ii1g872"))))
    (properties `((upstream-name . "barbies") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jcpetruzza/barbies#readme")
    (synopsis "Classes for working with types that can change clothes.")
    (description
     "Types that are parametric on a functor are like Barbies that have an outfit for each role. This package provides the basic abstractions to work with them comfortably.")
    (license license:bsd-3)))

haskell-9.2-barbies

(define-public haskell-9.2-blaze-markup
  (package
    (name "haskell-9.2-blaze-markup")
    (version "0.8.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-markup/blaze-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jd30wg5yz0a97b36zwqg4hv8faifza1n2gys3l1p3fwf9l3zz23"))))
    (properties `((upstream-name . "blaze-markup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1hn694kk615prqdn7bfzl0wvbw8bksxk4cxwmx8yhwpl0cq3fiwa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast markup combinator library for Haskell")
    (description
     "Core modules of a blazingly fast markup combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.2-blaze-markup

(define-public haskell-9.2-brotli
  (package
    (name "haskell-9.2-brotli")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brotli/brotli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fp8vhqzl6i1vvb4fw4zya6cgkzmj0yaaw94jdf2kggm3gn8zwfc"))))
    (properties `((upstream-name . "brotli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mp8fcczfaxk2rfmaakxyrc0w9cwglj1dv9fifl3spvp6g8zcr1n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages compression) brotli)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/brotli")
    (synopsis "Brotli (RFC7932) compression and decompression")
    (description
     "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.

This package provides a pure interface for compressing and
decompressing Brotli streams of data represented as lazy @@ByteString@@s. A
monadic incremental interface is provided as well. This package
relies on Google's C implementation.

The following packages are based on this package and provide
API support for popular streaming frameworks:

* </package/brotli-streams brotli-streams> (for </package/io-streams io-streams>)

* </package/pipes-brotli pipes-brotli> (for </package/pipes pipes>)

* </package/brotli-conduit brotli-conduit> (for </package/conduit conduit>)
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-brotli

(define-public haskell-9.2-carray
  (package
    (name "haskell-9.2-carray")
    (version "0.1.6.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/carray/carray-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04qny61gcjblqjrz761wp4bdkxk6zbm31xn6h426iybw9kanf6cg"))))
    (properties `((upstream-name . "carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04c4xizl2hjrk5fqwxpv1f0rdrrdl4z5vw6kl7cgc22pywkc2hgj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ix-shapable)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-9.2-carray

(define-public haskell-9.2-cookie
  (package
    (name "haskell-9.2-cookie")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cookie/cookie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ajbcsk4k0jc6v2fqn36scs6l8wa6fq46gd54pak75rbqdbajhcc"))))
    (properties `((upstream-name . "cookie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-9.2-cookie

(define-public haskell-9.2-cprng-aes
  (package
    (name "haskell-9.2-cprng-aes")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cprng-aes/cprng-aes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wr15kbmk1g3l8a75n0iwbzqg24ixv78slwzwb2q6rlcvq0jlnb4"))))
    (properties `((upstream-name . "cprng-aes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cipher-aes)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-crypto-random)))
    (home-page "http://github.com/vincenthz/hs-cprng-aes")
    (synopsis
     "Crypto Pseudo Random Number Generator using AES in counter mode.")
    (description
     "Simple crypto pseudo-random-number-generator with really good randomness property.

Using ent, a randomness property maker on one 1Mb sample:
Entropy = 7.999837 bits per byte.
Optimum compression would reduce the size of this 1048576 byte file by 0 percent.
Chi square distribution for 1048576 samples is 237.02
Arithmetic mean value of data bytes is 127.3422 (127.5 = random)
Monte Carlo value for Pi is 3.143589568 (error 0.06 percent)

Compared to urandom with the same sampling:
Entropy = 7.999831 bits per byte.
Optimum compression would reduce the size of this 1048576 byte file by 0 percent.
Chi square distribution for 1048576 samples is 246.63
Arithmetic mean value of data bytes is 127.6347 (127.5 = random).
Monte Carlo value for Pi is 3.132465868 (error 0.29 percent).")
    (license license:bsd-3)))

haskell-9.2-cprng-aes

(define-public haskell-9.2-crypto-api-tests
  (package
    (name "haskell-9.2-crypto-api-tests")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-api-tests/crypto-api-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w3j43jdrlj28jryp18hc6q84nkl2yf4vs1hhgrsk7gb9kfyqjpl"))))
    (properties `((upstream-name . "crypto-api-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (home-page "http://trac.haskell.org/crypto-api/wiki")
    (synopsis "A test framework and KATs for cryptographic operations.")
    (description "A test framework for hash and cipher operations using
the crypto-api interface.  Known answer tests (KATs)
for common cryptographic algorithms are included.
Patches welcome (both adding KATs for more algorithms
or property tests for classes of algorithms).")
    (license license:bsd-3)))

haskell-9.2-crypto-api-tests

(define-public haskell-9.2-csp
  (package
    (name "haskell-9.2-csp")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/csp/csp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15ilx5ycvh12c71wza2d25cp4llvncxc9csmmisjcxwny5gpz1q8"))))
    (properties `((upstream-name . "csp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-nondeterminism)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/csp")
    (synopsis "Discrete constraint satisfaction problem (CSP) solver.")
    (description "Constraint satisfaction problem (CSP) solvers")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-csp

(define-public haskell-9.2-data-array-byte
  (package
    (name "haskell-9.2-data-array-byte")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-array-byte/data-array-byte-"
                    version ".tar.gz"))
              (sha256
               (base32
                "002n0af7q08q3fmgsc5b47s1clirxy0lrqglwxzhabg0nfhfrdhv"))))
    (properties `((upstream-name . "data-array-byte") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nma7gz7lhain6jvwb3w3s53716ss8ypkk93gxpsaaz824svvw9f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/data-array-byte")
    (synopsis "Compatibility layer for Data.Array.Byte")
    (description
     "Compatibility layer for [Data.Array.Byte](https://hackage.haskell.org/package/base/docs/Data-Array-Byte.html), providing boxed wrappers for @@ByteArray#@@ and @@MutableByteArray#@@ and relevant instances for GHC < 9.4. Include it into your Cabal file:

> build-depends: base
> if impl(ghc < 9.4)
>   build-depends: data-array-byte

and then @@import Data.Array.Byte@@ unconditionally.")
    (license license:bsd-3)))

haskell-9.2-data-array-byte

(define-public haskell-9.2-data-bword
  (package
    (name "haskell-9.2-data-bword")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-bword/data-bword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dcngqc0igqs68lplqzfg5rl2nj1iy4555g7swsxd8n7svkq0j6n"))))
    (properties `((upstream-name . "data-bword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-9.2-data-bword

(define-public haskell-9.2-data-tree-print
  (package
    (name "haskell-9.2-data-tree-print")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-tree-print/data-tree-print-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00jh37anim8qsn553467gmfhajcz1c61zrgh1ypkqsll0gc29vy3"))))
    (properties `((upstream-name . "data-tree-print") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0j24bzw0gs9zz22jp2iabpqyvyc4cg4c0y12cxiiskpndvspah2y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://github.com/lspitzner/data-tree-print")
    (synopsis "Print Data instances as a nested tree")
    (description
     "Provides functionality similar to that of the `Show` class: Taking some
arbitrary value and returning a String.

* Output is not intended to be valid haskell.

* Requires a `Data.Data.Data` instance instead of a `Text.Show` one.

* Output, if large, is often easier to parse than `show` output
due to the formatting as a nested tree.

* The user can adapt the behaviour at runtime using custom layouting
expressed via syb-style extension.")
    (license license:bsd-3)))

haskell-9.2-data-tree-print

(define-public haskell-9.2-diagrams-solve
  (package
    (name "haskell-9.2-diagrams-solve")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-solve/diagrams-solve-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09qqwcvbvd3a0j5fnp40dbzw0i3py9c7kgizj2aawajwbyjvpd17"))))
    (properties `((upstream-name . "diagrams-solve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dp61igq17l7hvhs3167skdi1vmlm773qrrmsqmj08951l4cgv0h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://diagrams.github.io")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-9.2-diagrams-solve

(define-public haskell-9.2-direct-sqlite
  (package
    (name "haskell-9.2-direct-sqlite")
    (version "2.3.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/direct-sqlite/direct-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bnq7gkia713w1kc6zhwclxsyxlg100i93qbrz59z18j0xwds683"))))
    (properties `((upstream-name . "direct-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-ffulltextsearch" "-furifilenames" "-fhaveusleep" "-fjson1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/IreneKnapp/direct-sqlite")
    (synopsis "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.")
    (description
     "This package is not very different from the other SQLite3 bindings out
there, but it fixes a few deficiencies I was finding.  As compared to
bindings-sqlite3, it is slightly higher-level, in that it supports
marshalling of data values to and from the database.  In particular,
it supports strings encoded as UTF8, and BLOBs represented as
ByteStrings.")
    (license license:bsd-3)))

haskell-9.2-direct-sqlite

(define-public haskell-9.2-doctest
  (package
    (name "haskell-9.2-doctest")
    (version "0.20.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doctest/doctest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00jbpqvcqxx1nmf41li947d9d3ifwchzzp37mlag68hgnza6z9a4"))))
    (properties `((upstream-name . "doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-code-page)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "`doctest` is a tool that checks [examples](https://www.haskell.org/haddock/doc/html/ch03s08.html#idm140354810775744)
and [properties](https://www.haskell.org/haddock/doc/html/ch03s08.html#idm140354810771856)
in Haddock comments.
It is similar in spirit to the [popular Python module with the same name](https://docs.python.org/3/library/doctest.html).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-9.2-doctest

(define-public haskell-9.2-drifter
  (package
    (name "haskell-9.2-drifter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/drifter/drifter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "079y7yzws7lghgazkc7qprz43q4bv0qjnxh7rmcrrwfs5acm1x34"))))
    (properties `((upstream-name . "drifter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fgl)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrewRademacher/drifter")
    (synopsis "Simple schema management for arbitrary databases.")
    (description
     "Simple support for migrating database schemas, which allows
haskell functions to be run as a part of the migration. Note
that this library isn't meant to be used directly, but rather
as a base library for a specific driver. For an example of a
functioning driver, you should check out <https://hackage.haskell.org/package/drifter-postgresql drifter-postgresql>.")
    (license license:expat)))

haskell-9.2-drifter

(define-public haskell-9.2-exact-pi
  (package
    (name "haskell-9.2-exact-pi")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exact-pi/exact-pi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xmc3vlzfccrn5szglnxx13akxw2xacgl40kqh0kiw82d58x47a4"))))
    (properties `((upstream-name . "exact-pi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-numtype-dk)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-9.2-exact-pi

(define-public haskell-9.2-fftw-ffi
  (package
    (name "haskell-9.2-fftw-ffi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fftw-ffi/fftw-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a0a28i54s1gjyf0lk96l512gm6i2rn6ac1hh76r3gk5n7ijbx7p"))))
    (properties `((upstream-name . "fftw-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildtools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-enumset)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hub.darcs.net/thielema/fftw-ffi/")
    (synopsis "Low-level interface to FFTW (Fast Fourier Transform)")
    (description "FFTW claims to be the fastest Fourier Transform in the West.
This is a low-level interface to @@libfftw@@.
We re-use the type classes from @@netlib-ffi@@.

See also package @@fft@@.")
    (license license:bsd-3)))

haskell-9.2-fftw-ffi

(define-public haskell-9.2-fusion-plugin
  (package
    (name "haskell-9.2-fusion-plugin")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fusion-plugin/fusion-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xzy7ml8wh63mza4am9rdd12qqn9r6ba6c0i9bv7bxp0nlzy7d6l"))))
    (properties `((upstream-name . "fusion-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://github.com/composewell/fusion-plugin")
    (synopsis "GHC plugin to make stream fusion more predictable.")
    (description
     "This plugin provides the programmer with a way to annotate certain
types using a 'Fuse' pragma from the
<https://hackage.haskell.org/package/fusion-plugin-types fusion-plugin-types>
package. The programmer would annotate the types that are to be
eliminated by fusion. During the simplifier phase the plugin goes
through the relevant bindings and if one of these types are found
inside a binding then that binding is marked to be inlined
irrespective of the size.

This plugin was primarily motivated by
<https://streamly.composewell.com streamly> but it can
be used in general.")
    (license license:asl2.0)))

haskell-9.2-fusion-plugin

(define-public haskell-9.2-ghc-source-gen
  (package
    (name "haskell-9.2-ghc-source-gen")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-source-gen/ghc-source-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhqsklibgiv51hs8mnrkn784rc5sxf5z8cfv8hf9jqlny50720f"))))
    (properties `((upstream-name . "ghc-source-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/ghc-source-gen#readme")
    (synopsis "Constructs Haskell syntax trees for the GHC API.")
    (description
     "@@ghc-source-gen@@ is a library for generating Haskell source code.
It uses the <https://hackage.haskell.org/package/ghc ghc> library
to support recent language extensions, and provides a simple, consistent
interface across several major versions of GHC.

To get started, take a look at the \"GHC.SourceGen\" module.

For more information, please see the <https://github.com/google/ghc-source-gen README>.")
    (license license:bsd-3)))

haskell-9.2-ghc-source-gen

(define-public haskell-9.2-ghc-typelits-knownnat
  (package
    (name "haskell-9.2-ghc-typelits-knownnat")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-knownnat/ghc-typelits-knownnat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b7rhnij3i74baqm7ban92sfdiscbjvrypfi6wwipkc8graii467"))))
    (properties `((upstream-name . "ghc-typelits-knownnat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://clash-lang.org/")
    (synopsis "Derive KnownNat constraints from other KnownNat constraints")
    (description
     "A type checker plugin for GHC that can derive \\\"complex\\\" @@KnownNat@@
constraints from other simple/variable @@KnownNat@@ constraints. i.e. without
this plugin, you must have both a @@KnownNat n@@ and a @@KnownNat (n+2)@@
constraint in the type signature of the following function:

@@
f :: forall n . (KnownNat n, KnownNat (n+2)) => Proxy n -> Integer
f _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))
@@

Using the plugin you can omit the @@KnownNat (n+2)@@ constraint:

@@
f :: forall n . KnownNat n => Proxy n -> Integer
f _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))
@@

The plugin can derive @@KnownNat@@ constraints for types consisting of:

* Type variables, when there is a corresponding @@KnownNat@@ constraint

* Type-level naturals

* Applications of the arithmetic expression: +,-,*,^

* Type functions, when there is either:

1. a matching given @@KnownNat@@ constraint; or

2. a corresponding @@KnownNat\\<N\\>@@ instance for the type function

To use the plugin, add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.KnownNat.Solver
@@

Pragma to the header of your file.")
    (license license:bsd-2)))

haskell-9.2-ghc-typelits-knownnat

(define-public haskell-9.2-gi-cairo-render
  (package
    (name "haskell-9.2-gi-cairo-render")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo-render/gi-cairo-render-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07h3k8bzb6qhk7x2v68dg5gsxxpjpr7k3vvh2fyqb9zj9rq8lyfc"))))
    (properties `((upstream-name . "gi-cairo-render") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcairo_pdf" "-fcairo_ps" "-fcairo_svg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "Cairo is a library to render high quality vector graphics. There
exist various backends that allows rendering to Gtk windows, PDF,
PS, PNG and SVG documents, amongst others.")
    (license license:bsd-3)))

haskell-9.2-gi-cairo-render

(define-public haskell-9.2-gnuplot
  (package
    (name "haskell-9.2-gnuplot")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gnuplot/gnuplot-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1glahh3si5bpazsklnpwxx4h4ivgb4wyngc032797zq1496fhhm3"))))
    (properties `((upstream-name . "gnuplot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-executepipe" "-f-executeshell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-accessor)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-data-accessor-transformers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Gnuplot")
    (synopsis "2D and 3D plots using gnuplot")
    (description
     "This is a wrapper to gnuplot
which lets you create 2D and 3D plots.

Start a simple session with @@cabal repl@@.
If not already loaded, call @@:module Graphics.Gnuplot.Simple@@
in order to load \"Graphics.Gnuplot.Simple\"
which is ready for use in GHCi.
It does not address all fancy gnuplot features
in order to stay simple.
For more sophisticated plots,
especially batch generated graphics,
I recommend \"Graphics.Gnuplot.Advanced\".
This module contains also an overview
of the hierarchy of objects.

Examples for using this interface can be found in the \"Demo\" module.
In order to compile this and install an example data file,
use the Cabal flag @@buildExamples@@:

> $ cabal install -fbuildExamples gnuplot

With the Cabal flags executePipe and executeShell
you can switch to more convenient
but probably less portable ways
of feeding gnuplot with a script.

Alternative packages: @@plot@@, @@HPlot@@, @@Chart@@, @@textPlot@@, @@easyplot@@")
    (license license:bsd-3)))

haskell-9.2-gnuplot

(define-public haskell-9.2-graphviz
  (package
    (name "haskell-9.2-graphviz")
    (version "2999.20.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphviz/graphviz-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l0zxgb938hh09qirggbaskq79mgj3s081cnr42y5vm1rp1jir2s"))))
    (properties `((upstream-name . "graphviz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-parsing")
       #:cabal-revision
       ("2" "110yp1h2jrswllnx2ks772g10v9h4vqxc07b33wfaksyim9769bp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fgl)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-polyparse)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wl-pprint-text)))
    (home-page "https://github.com/ivan-m/graphviz")
    (synopsis "Bindings to Graphviz for graph visualisation.")
    (description
     "This library provides bindings for the Dot language used by the
Graphviz (<http://graphviz.org/>) suite of programs for visualising
graphs, as well as functions to call those programs.

Main features of the graphviz library include:

* Almost complete coverage of all Graphviz attributes and syntax.

* Support for specifying clusters.

* The ability to use a custom node type.

* Functions for running a Graphviz layout tool with all specified
output types.

* The ability to not only generate but also parse Dot code with two
options: strict and liberal (in terms of ordering of statements).

* Functions to convert FGL graphs and other graph-like data structures
to Dot code - including support to group them into clusters - with a
high degree of customisation by specifying which attributes to use
and limited support for the inverse operation.

* Round-trip support for passing an FGL graph through Graphviz to
augment node and edge labels with positional information, etc.")
    (license license:bsd-3)))

haskell-9.2-graphviz

(define-public haskell-9.2-haskell-src
  (package
    (name "haskell-9.2-haskell-src")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src/haskell-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1spkhv83hy5v1lxs44l3w53vk8zj7gnx42c40hrkj4fcz6apdiwb"))))
    (properties `((upstream-name . "haskell-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dfjzq0sxxcalqxygp2svx4890qx8b4amad0xldwy1f4xrp3lsnb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code.")
    (license license:bsd-3)))

haskell-9.2-haskell-src

(define-public haskell-9.2-hdaemonize
  (package
    (name "haskell-9.2-hdaemonize")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hdaemonize/hdaemonize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "097fgjgskigy3grnd3ijzyhdq34vjmd9bjk2rscixi59j8j30vxd"))))
    (properties `((upstream-name . "hdaemonize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-hsyslog)))
    (home-page "http://github.com/unprolix/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description "Provides functions that help writing better UNIX daemons,
daemonize and serviced/serviced': daemonize does what
a daemon should do (forking and closing descriptors),
while serviced does that and more (syslog interface,
PID file writing, start-stop-restart command line
handling, dropping privileges).")
    (license license:bsd-3)))

haskell-9.2-hdaemonize

(define-public haskell-9.2-hint
  (package
    (name "haskell-9.2-hint")
    (version "0.9.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hint/hint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j7jzx8i1rc66xw4c6gf4kjv0a8ma96j25kfz6rzswik4vp5xmky"))))
    (properties `((upstream-name . "hint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://github.com/haskell-hint/hint")
    (synopsis "A Haskell interpreter built on top of the GHC API")
    (description
     "This library defines an Interpreter monad. It allows to load Haskell
modules, browse them, type-check and evaluate strings with Haskell
expressions and even coerce them into values. The library is thread-safe
and type-safe (even the coercion of expressions to values).
It is, essentially, a huge subset of the GHC API wrapped in a simpler
API.")
    (license license:bsd-3)))

haskell-9.2-hint

(define-public haskell-9.2-hjsmin
  (package
    (name "haskell-9.2-hjsmin")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-language-javascript)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (home-page "http://github.com/erikd/hjsmin")
    (synopsis "Haskell implementation of a javascript minifier")
    (description
     "Reduces size of javascript files by stripping out extraneous whitespace and
other syntactic elements, without changing the semantics.")
    (license license:bsd-3)))

haskell-9.2-hjsmin

(define-public haskell-9.2-hosc
  (package
    (name "haskell-9.2-hosc")
    (version "0.19.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hosc/hosc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08q218p1skqxwa7f55nsgmv9z8digf1c0f1wi6p562q6d4i044z7"))))
    (properties `((upstream-name . "hosc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "http://rohandrape.net/t/hosc")
    (synopsis "Haskell Open Sound Control")
    (description "@@hosc@@ implements a subset of the Open Sound Control
byte protocol, <http://opensoundcontrol.org/>.

See \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-hosc

(define-public haskell-9.2-hs-bibutils
  (package
    (name "haskell-9.2-hs-bibutils")
    (version "6.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-bibutils/hs-bibutils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnpy1v5rbii2iwlcc9psnww8pkirv9zl21s64cmbi6q7dv15g3n"))))
    (properties `((upstream-name . "hs-bibutils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://github.com/wilx/hs-bibutils")
    (synopsis "Haskell bindings to bibutils, the bibliography
conversion utilities.")
    (description "Haskell bindings to Chris Putnam's bibutils, a
library that interconverts between various
bibliography formats using a common MODS-format
XML intermediate.

hs-bibutils is available under the GNU GPL license. See
the LICENSE file for details.

For more details about bibutils, please check:
<http://sourceforge.net/p/bibutils/home/Bibutils/>.

The package release number refers to the release number of
the included bibutils library.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-hs-bibutils

(define-public haskell-9.2-hsdns
  (package
    (name "haskell-9.2-hsdns")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
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

haskell-9.2-hsdns

(define-public haskell-9.2-iproute
  (package
    (name "haskell-9.2-iproute")
    (version "1.7.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iproute/iproute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qvb4d7nw8f6j4s09cnpn6z1rdwcwknwklfrhsgivg7wg4aisxgi"))))
    (properties `((upstream-name . "iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-appar)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteorder)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "http://www.mew.org/~kazu/proj/iproute/")
    (synopsis "IP Routing Table")
    (description "IP Routing Table is a tree of IP ranges
to search one of them on the longest
match base. It is a kind of TRIE with one
way branching removed. Both IPv4 and IPv6
are supported.")
    (license license:bsd-3)))

haskell-9.2-iproute

(define-public haskell-9.2-json
  (package
    (name "haskell-9.2-json")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/json/json-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fjnd2r4gl2hfqx158db3cn3rsyin4ch7rf9scb2hcy90cy6l10c"))))
    (properties `((upstream-name . "json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-fparsec" "-fpretty" "-fgeneric" "-f-mapdict")
       #:cabal-revision
       ("1" "16fp0y95gaibjravzj1hxdkng1cr8zqjqzd14m48kf4jrq3npz6r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (home-page "https://hackage.haskell.org/package/json")
    (synopsis "Support for serialising Haskell to and from JSON")
    (description
     "JSON (JavaScript Object Notation) is a lightweight data-interchange
format. It is easy for humans to read and write. It is easy for
machines to parse and generate.  It is based on a subset of the
JavaScript Programming Language, Standard ECMA-262 3rd Edition -
December 1999.

This library provides a parser and pretty printer for converting
between Haskell values and JSON.")
    (license license:bsd-3)))

haskell-9.2-json

(define-public haskell-9.2-keep-alive
  (package
    (name "haskell-9.2-keep-alive")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/keep-alive/keep-alive-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sbkn9rkj8rv5gn2a4s46rfmxr46ya7l8bqbdp8p3xga79d42pyh"))))
    (properties `((upstream-name . "keep-alive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://github.com/3kyro/keep-alive#readme")
    (synopsis "TCP keep alive implementation")
    (description
     "This module allows you to set per-connection keep alive parameters on windows, linux and darwin enviroments.
For more information on keep alive signals see <https://en.wikipedia.org/wiki/Keepalive>.
See also <https://tldp.org/HOWTO/html_single/TCP-Keepalive-HOWTO/> for a linux specific implementation.")
    (license license:bsd-3)))

haskell-9.2-keep-alive

(define-public haskell-9.2-ki-unlifted
  (package
    (name "haskell-9.2-ki-unlifted")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ki-unlifted/ki-unlifted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nfa6g2qi791aqg0whdf02pzng01wvbcxvzy6yf5sa20c6fsqn4b"))))
    (properties `((upstream-name . "ki-unlifted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-ki)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (home-page "https://github.com/awkward-squad/ki")
    (synopsis "A lightweight structured-concurrency library")
    (description
     "A lightweight structured-concurrency library.

For a specialised variant of this API that does not use
@@<https://hackage.haskell.org/package/unliftio-core unliftio-core>@@, see
@@<https://hackage.haskell.org/package/ki ki>@@.")
    (license license:bsd-3)))

haskell-9.2-ki-unlifted

(define-public haskell-9.2-language-java
  (package
    (name "haskell-9.2-language-java")
    (version "0.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-java/language-java-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03hrj8hgyjmw2fvvk4ik30fdmbi3hndpkvf1bqcnpzqy5anwh58x"))))
    (properties `((upstream-name . "language-java") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fnbg9b8isyk8dpmggh736mms7a2m65956y1z15wds63imzhs2ik")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-9.2-language-java

(define-public haskell-9.2-leb128-cereal
  (package
    (name "haskell-9.2-leb128-cereal")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leb128-cereal/leb128-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a2zdm0zd7kpid3da5k5pifkyil048j5y4fvknbs96bky74yz95m"))))
    (properties `((upstream-name . "leb128-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/leb128-cereal")
    (synopsis "LEB128 and SLEB128 encoding")
    (description
     "This module implements encoding and decoding of 'Natural' and 'Integer'
values according to LEB128 and SLEB128. See
<https://en.wikipedia.org/wiki/LEB128> for a specification.

This package uses the @@cereal@@ package, but also provides direct encoding and
decoding to 'ByteString'.")
    (license license:expat)))

haskell-9.2-leb128-cereal

(define-public haskell-9.2-lpeg
  (package
    (name "haskell-9.2-lpeg")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lpeg/lpeg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19vvsvdw8l2zjwdcypnzw12vc9ycix92mkd6g3f6kx1i364z9hg1"))))
    (properties `((upstream-name . "lpeg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-rely-on-shared-lpeg-library")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-lua)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hslua.org/")
    (synopsis "LPeg – Parsing Expression Grammars For Lua")
    (description "This package contains the C sources of LPeg, as well
as some tiny Haskell helper to load the package.

<http://www.inf.puc-rio.br/~roberto/lpeg/>")
    (license license:expat)))

haskell-9.2-lpeg

(define-public haskell-9.2-lua-arbitrary
  (package
    (name "haskell-9.2-lua-arbitrary")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lua-arbitrary/lua-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01g2pkvy7yhcrk8p1d9xzmqv279ldgy9z5aa6xj5msbxrpxvbpma"))))
    (properties `((upstream-name . "lua-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-lua)))
    (home-page "https://hslua.org/")
    (synopsis "Arbitrary instances for Lua types.")
    (description "Provides instances for QuickCheck's \\\"Arbitrary\\\"
typeclass.")
    (license license:expat)))

haskell-9.2-lua-arbitrary

(define-public haskell-9.2-mason
  (package
    (name "haskell-9.2-mason")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mason/mason-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10z98igmpswwdfak4b42p5c9rx14fj9zi2j5jb3b194ihi82dnd7"))))
    (properties `((upstream-name . "mason") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://hackage.haskell.org/package/mason")
    (synopsis "Fast and extensible bytestring builder")
    (description
     "This package provides efficient implementation of bytestring builders.
See README.md for details")
    (license license:bsd-3)))

haskell-9.2-mason

(define-public haskell-9.2-matrices
  (package
    (name "haskell-9.2-matrices")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrices/matrices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k8x75k1vkalpmcblmfjqy7lq49nr5mznh134h3d0zqz0q5ky0gx"))))
    (properties `((upstream-name . "matrices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-9.2-matrices

(define-public haskell-9.2-midi
  (package
    (name "haskell-9.2-midi")
    (version "0.2.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/midi/midi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14dv5ihlk5jqmvd3b0wfk4nzk4phan5gx6fmvq616mrp6dsflx58"))))
    (properties `((upstream-name . "midi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-event-list)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-explicit-exception)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-monoid-transformer)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-negative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://wiki.haskell.org/MIDI")
    (synopsis "Handling of MIDI messages and files")
    (description
     "MIDI is the Musical Instrument Digital Interface.
The package contains definition of realtime and file MIDI messages,
reading and writing MIDI files,
and some definitions from the General MIDI standard.
It contains no sending and receiving of MIDI messages.
For this purpose see the @@alsa-seq@@, @@jack@@, @@PortMidi@@, @@hmidi@@ packages.
For music composition with MIDI output, see @@haskore@@.
Alternative packages are @@HCodecs@@, @@zmidi-core@@.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-midi

(define-public haskell-9.2-monad-par
  (package
    (name "haskell-9.2-monad-par")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par/monad-par-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a8m99g9x1ivch4vhksk7fdzygbil3d33w8gdqngxbmwdikdafl2"))))
    (properties `((upstream-name . "monad-par") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-chaselev" "-f-newgeneric")
       #:cabal-revision
       ("2" "1q4npp0vrsjpxk7n7rcf3lgqg1sf2qx628ciiw48al9y9xlznsaz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-abstract-deque)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-abstract-par)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "A library for parallel programming based on a monad")
    (description
     "The 'Par' monad offers a simple API for parallel programming.  The
library works for parallelising both pure and @@IO@@ computations,
although only the pure version is deterministic.  The default
implementation provides a work-stealing scheduler and supports
forking tasks that are much lighter weight than IO-threads.

For complete documentation see \"Control.Monad.Par\".

Some examples of use can be found in the @@examples/@@ directory of
the source package.

Other related packages:

* @@abstract-par@@ provides the type classes that abstract over different
implementations of the @@Par@@ monad.

* @@monad-par-extras@@ provides extra combinators and monad transformers layered on top of
the @@Par@@ monad.

Changes in 0.3.4 relative to 0.3:

* Fix bugs that cause \"thread blocked indefinitely on MVar\" crashes.

* Added \"Control.Monad.Par.IO\"")
    (license license:bsd-3)))

haskell-9.2-monad-par

(define-public haskell-9.2-mpi-hs
  (package
    (name "haskell-9.2-mpi-hs")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mpi-hs/mpi-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1d68py61h09qshzr3lx66cgs2f2kxzdmy3z35hsf96wi9aqz3fr5"))))
    (properties `((upstream-name . "mpi-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mpich-debian" "-f-mpich-macports" "-f-mpich-ubuntu" "-f-openmpi-debian" "-f-openmpi-macports" "-f-openmpi-ubuntu" "-fsystem-mpi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is
a widely used standard for distributed-memory programming on HPC
(High Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)
for C++, and [MPI for
Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the actual MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored via a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no system MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-mpi-hs

(define-public haskell-9.2-network-bsd
  (package
    (name "haskell-9.2-network-bsd")
    (version "2.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-bsd/network-bsd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kid0811lv4x761fd5gv6lsc8p5j2bn41rfd366pjb642p562jfr"))))
    (properties `((upstream-name . "network-bsd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1gd9a8j7fwg0jz0s6il5fk9sl0hm19ja1w56ix51wa0qi2h5x56d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://github.com/haskell/network-bsd")
    (synopsis "POSIX network database (<netdb.h>) API")
    (description
     "This package provides Haskell bindings to the
the [POSIX network database (netdb.h) API](http://pubs.opengroup.org/onlinepubs/009696699/basedefs/netdb.h.html).

=== Relationship to the @@network@@ package

The @@network@@ package version 2.* series provides \"Network.BSD\" but
it is removed starting with @@network@@ version 3.0.

This package provides the \"Network.BSD\" module split off from the
<https://hackage.haskell.org/package/network network package>.

If in addition to the @@network@@'s modules also \"Network.BSD\" is
necessary, add @@network-bsd@@ to your dependencies like so:

> library
>     build-depends: network     >= 2.7 && < 3.2
>                  , network-bsd >= 2.7 && < 2.9

I.e. you can control the version of the @@network@@ package
independently.

__NOTE__: Starting with @@network-bsd-2.8.1.0@@ the APIs of @@network@@
and @@network-bsd@@ evolve differently, and consequently the
versioning doesn't match up anymore! Moreover, also starting with
version @@network-bsd-2.8.1.0@@ this package requires @@network >= 3@@
in order to avoid module name clashes with @@network < 3@@'s
\"Network.BSD\" module.

However, @@network-bsd-2.7.0.0@@ and @@network-bsd-2.8.0.0@@ passes thru
the \"Network.BSD\" module from @@network-2.7.*@@ and @@network-2.8.*@@
respectively in a non-clashing way via Cabal's
<https://www.haskell.org/cabal/users-guide/developing-packages.html#pkg-field-library-reexported-modules reexported-modules>
feature while ensuring a well-defined
<https://pvp.haskell.org/ API versioning> of the observable API of
@@network-bsd@@. This is why the example above supporting a wide range
of @@network@@ versions works by including version 2.7.0.0 in the
required version range of @@network-bsd@@.")
    (license license:bsd-3)))

haskell-9.2-network-bsd

(define-public haskell-9.2-network-run
  (package
    (name "haskell-9.2-network-run")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-run/network-run-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w3dmwk03j4n01xkiq8m4sqa27bskh239mpw7m4ihjmkxqcwc5gl"))))
    (properties `((upstream-name . "network-run") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://hackage.haskell.org/package/network-run")
    (synopsis "Simple network runner library")
    (description "Simple functions to run network clients and servers.")
    (license license:bsd-3)))

haskell-9.2-network-run

(define-public haskell-9.2-poll
  (package
    (name "haskell-9.2-poll")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poll/poll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bllh4yr96p7k44bc10zyhdx2zdh3brl0im3gnn5a1m6irsx6j42"))))
    (properties `((upstream-name . "poll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05ghv8acp0gr86wlxsmjd0x6jaj981213ggg629hb78a95119f2q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-enumset)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "https://hackage.haskell.org/package/poll")
    (synopsis "Bindings to poll.h")
    (description
     "Poll functionality allows to wait on different FileDescriptors simultaneously.")
    (license license:bsd-3)))

haskell-9.2-poll

(define-public haskell-9.2-port-utils
  (package
    (name "haskell-9.2-port-utils")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://github.com/jfischoff/port-utils#readme")
    (synopsis "Utilities for creating and waiting on ports")
    (description
     "Utilities for creating and waiting on ports. . @@openFreePort@@ will create a socket bound to a random port (like @@warp@@'s @@openFreePort@@). . @@wait@@ will attempt to connect to given host and port repeatedly until successful. .")
    (license license:bsd-3)))

haskell-9.2-port-utils

(define-public haskell-9.2-postgresql-libpq-notify
  (package
    (name "haskell-9.2-postgresql-libpq-notify")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-libpq-notify/postgresql-libpq-notify-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06k63ix0d836w4x7q49m003wrxpbnnlvhmvbvk8mn9752xv55vkc"))))
    (properties `((upstream-name . "postgresql-libpq-notify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/postgresql-libpq-notify#readme")
    (synopsis "Minimal dependency PostgreSQL notifications library")
    (description
     "Minimal dependency PostgreSQL notifications library. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-postgresql-libpq-notify

(define-public haskell-9.2-pqueue
  (package
    (name "haskell-9.2-pqueue")
    (version "1.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pqueue/pqueue-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kl608jw0xz0n4ysw7p3cvlm1s71xrysw8862cddrzbr38bv8jvq"))))
    (properties `((upstream-name . "pqueue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/pqueue")
    (synopsis "Reliable, persistent, fast priority queues.")
    (description
     "A fast, reliable priority queue implementation based on a binomial heap.")
    (license license:bsd-3)))

haskell-9.2-pqueue

(define-public haskell-9.2-proto-lens
  (package
    (name "haskell-9.2-proto-lens")
    (version "0.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens/proto-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zbkwksmnpc5ivbhckg1kjivn1qbk9pz79vifyiydp90nxjh56fy"))))
    (properties `((upstream-name . "proto-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "A lens-based implementation of protocol buffers in Haskell.")
    (description
     "The proto-lens library provides an API for protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:

* Composable field accessors via lenses

* Simple field name resolution/overloading via type-level literals

* Type-safe reflection and encoding/decoding of messages via GADTs")
    (license license:bsd-3)))

haskell-9.2-proto-lens

(define-public haskell-9.2-quickcheck-higherorder
  (package
    (name "haskell-9.2-quickcheck-higherorder")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-higherorder/quickcheck-higherorder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17bnbq6hndlvfv2ryingw181vhv6ab5npkjxkxs0bijv654dca2h"))))
    (properties `((upstream-name . "quickcheck-higherorder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-sample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-test-fun)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Lysxia/quickcheck-higherorder#readme")
    (synopsis "QuickCheck extension for higher-order properties")
    (description
     "Enhancements for property-based testing of higher-order properties.

* Associate types to their representations with the
@@Constructible@@ class.
* @@Testable'@@ class,
variant of @@Testable@@ with an improved instance for @@(->)@@.
* Representation of higher-order functions (via test-fun).
* Testable equality @@TestEq@@.
* Explicit testable type of @@Equation@@.

See also README.")
    (license license:expat)))

haskell-9.2-quickcheck-higherorder

(define-public haskell-9.2-quote-quot
  (package
    (name "haskell-9.2-quote-quot")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quote-quot/quote-quot-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xsd5vs97dwp3wnz862mplakkryi44brr73aqrrv76svkj82bp37"))))
    (properties `((upstream-name . "quote-quot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/quote-quot#readme")
    (synopsis "Divide without division")
    (description
     "Generate routines for integer division, employing arithmetic
and bitwise operations only, which are __2.5x-3.5x faster__
than 'quot'. Divisors must be known in compile-time and be positive.")
    (license license:bsd-3)))

haskell-9.2-quote-quot

(define-public haskell-9.2-random-fu
  (package
    (name "haskell-9.2-random-fu")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-fu/random-fu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iz4b8742pshzsscy6pq39x4pndvyrydzrn968fzav9b1y6ib7d1"))))
    (properties `((upstream-name . "random-fu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4_2" "-fmtl2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-erf)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage002) haskell-9.2-rvar)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Random number generation")
    (description "Random number generation based on modeling random
variables in two complementary ways: first, by the
parameters of standard mathematical distributions and,
second, by an abstract type ('RVar') which can be
composed and manipulated monadically and sampled in
either monadic or \\\"pure\\\" styles.

The primary purpose of this library is to support
defining and sampling a wide variety of high quality
random variables.  Quality is prioritized over speed,
but performance is an important goal too.

In my testing, I have found it capable of speed
comparable to other Haskell libraries, but still
a fair bit slower than straight C implementations of
the same algorithms.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-random-fu

(define-public haskell-9.2-rrb-vector
  (package
    (name "haskell-9.2-rrb-vector")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konsumlamm/rrb-vector")
    (synopsis "Efficient RRB-Vectors")
    (description
     "An RRB-Vector is an efficient sequence data structure.
It supports fast indexing, iteration, concatenation and splitting.

== Comparison with [Data.Sequence](https://hackage.haskell.org/package/containers/docs/Data-Sequence.html)

@@Seq a@@ is a container with a very similar API. RRB-Vectors are generally faster for indexing and iteration,
while sequences are faster for access to the front/back (amortized \\(O(1)\\)).")
    (license license:bsd-3)))

haskell-9.2-rrb-vector

(define-public haskell-9.2-sample-frame-np
  (package
    (name "haskell-9.2-sample-frame-np")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sample-frame-np/sample-frame-np-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h02bn5zr13agpv2wg4sp6hjlid25ylny8xswrk42pzp0jsph8mn"))))
    (properties `((upstream-name . "sample-frame-np") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-sample-frame)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis
     "Orphan instances for types from sample-frame and numericprelude")
    (description
     "Orphan instances for types from @@sample-frame@@ package
and type classes from @@numeric-prelude@@.
Using this package instead defining custom orphan instances
saves you from conflicting instances.

This is used by packages @@synthesizer@@, @@synthesizer-alsa@@, @@synthesizer-llvm@@.")
    (license license:bsd-3)))

haskell-9.2-sample-frame-np

(define-public haskell-9.2-sendfile
  (package
    (name "haskell-9.2-sendfile")
    (version "0.7.11.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sendfile/sendfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i2i0w18l2ysambyylv93jzy0adiiqwwnhg7zagqb7p2srybxc3k"))))
    (properties `((upstream-name . "sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-portable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://github.com/Happstack/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-9.2-sendfile

(define-public haskell-9.2-silently
  (package
    (name "haskell-9.2-silently")
    (version "1.2.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/silently/silently-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wk3yci4r9v0vwyzylj3k07damz17jwc6n6imwqahf4lsapsz7ds"))))
    (properties `((upstream-name . "silently") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-nanospec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://github.com/hspec/silently")
    (synopsis "Prevent or capture writing to stdout and other handles.")
    (description
     "Prevent or capture writing to stdout, stderr, and other handles.")
    (license license:bsd-3)))

haskell-9.2-silently

(define-public haskell-9.2-sitemap-gen
  (package
    (name "haskell-9.2-sitemap-gen")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-xmlgen)))
    (home-page "https://github.com/prikhi/sitemap-gen#readme")
    (synopsis "Generate XML Sitemaps & Sitemap Indexes")
    (description
     "The @@sitemap-gen@@ package uses the @@xmlgen@@ package to generate XML
sitemaps that are compliant with the sitemaps.org XML schema.

See the \"Web.Sitemap.Gen\" module and the
<https://github.com/prikhi/sitemap-gen/blob/master/README.md README> file
for documentation & usage details.")
    (license license:bsd-3)))

haskell-9.2-sitemap-gen

(define-public haskell-9.2-skein
  (package
    (name "haskell-9.2-skein")
    (version "1.0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/skein/skein-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jdqdk0rz2wnvw735clnj8jh0a9rkrbqjg7vk3w6wczdql6cm0pq"))))
    (properties `((upstream-name . "skein") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-reference" "-f-force-endianness" "-f-big-endian")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (home-page "https://github.com/meteficha/skein")
    (synopsis
     "Skein, a family of cryptographic hash functions.  Includes Skein-MAC as well.")
    (description "Skein (<http://www.skein-hash.info/>) is a family of fast
secure cryptographic hash functions designed by Niels
Ferguson, Stefan Lucks, Bruce Schneier, Doug Whiting, Mihir
Bellare, Tadayoshi Kohno, Jon Callas and Jesse Walker.

This package uses bindings to the optimized C implementation
of Skein.  We provide a high-level interface (see module
\"Crypto.Skein\") to some of the Skein use cases.  We also
provide a low-level interface (see module
\"Crypto.Skein.Internal\") should you need to use Skein in a
different way.

Currently we have support for Skein as cryptographic hash
function as Skein as a message authentication code
(Skein-MAC).  For examples of how to use this package, see
\"Crypto.Skein\" module documentation.

This package includes Skein v1.3. Versions of this package
before 1.0.0 implemented Skein v1.1.")
    (license license:bsd-3)))

haskell-9.2-skein

(define-public haskell-9.2-socks
  (package
    (name "haskell-9.2-socks")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/socks/socks-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wvaxy3dkv97wrncjv1rxrmjr4014hgxz82kixvcwqdhidalfi3k"))))
    (properties `((upstream-name . "socks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-basement)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "http://github.com/vincenthz/hs-socks")
    (synopsis "Socks proxy (ver 5)")
    (description "Socks proxy (version 5) implementation.")
    (license license:bsd-3)))

haskell-9.2-socks

(define-public haskell-9.2-sox
  (package
    (name "haskell-9.2-sox")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sox/sox-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1ys6xm08gr3pvyrial2z1b3gvyd44b9510dpp4ifxqf882igkjgb"))))
    (properties `((upstream-name . "sox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-explicit-exception)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-sample-frame)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Sox")
    (synopsis "Play, write, read, convert audio signals using Sox")
    (description "This is a wrapper to Sox the Sound Exchanger
<http://sox.sourceforge.net/>
which lets you play, write, read and convert audio signals
in various formats, resolutions, and numbers of channels.

The functions call sox commands via the shell,
that is, the 'sox' and 'play' executables must be installed
and in the path to the executables must be set.

In the past this was part of the synthesizer package.")
    (license license:gpl3)))

haskell-9.2-sox

(define-public haskell-9.2-spdx
  (package
    (name "haskell-9.2-spdx")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/spdx/spdx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xrar0mzr7y02gw1hfabd6jyz31p3qz0jxp2mcs5kbhv0a3rc91m"))))
    (properties `((upstream-name . "spdx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/spdx")
    (synopsis "SPDX license expression language, Extras")
    (description
     "Cabal provides SPDX types. This package provides some extras.")
    (license license:bsd-3)))

haskell-9.2-spdx

(define-public haskell-9.2-splice
  (package
    (name "haskell-9.2-splice")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
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

haskell-9.2-splice

(define-public haskell-9.2-storablevector
  (package
    (name "haskell-9.2-storablevector")
    (version "0.2.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storablevector/storablevector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06fgxbnc5vwmiv7dxywj7ncjhmxv0wjs0bys5hza6mrwn3sw5r2w"))))
    (properties `((upstream-name . "storablevector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fseparatesyb")
       #:cabal-revision
       ("1" "10zazrk5fxhwmr5q2h8g0mgdgm1sd35268zjij0sv480v1znsy4i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-negative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unsafe)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Storable_Vector")
    (synopsis
     "Fast, packed, strict storable arrays with a list interface like ByteString")
    (description
     "Fast, packed, strict storable arrays
with a list interface,
a chunky lazy list interface with variable chunk size
and an interface for write access via the @@ST@@ monad.
This is much like @@bytestring@@ and @@binary@@
but can be used for every 'Foreign.Storable.Storable' type.
See also package
<http://hackage.haskell.org/package/vector>
with a similar intention.

We do not provide advanced fusion optimization,
since especially for lazy vectors
this would either be incorrect or not applicable.
However we provide fusion with lazy lists in the package
<http://hackage.haskell.org/package/storablevector-streamfusion>.")
    (license license:bsd-3)))

haskell-9.2-storablevector

(define-public haskell-9.2-structs
  (package
    (name "haskell-9.2-structs")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/structs/structs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wzbhsvix46aans0hdm11pvsigk1lxpdaha2sxslx0ip1xsdg0gk"))))
    (properties `((upstream-name . "structs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vpi14bc8x53dxzcyya39zr287kyfrjxiy5z5lwfkf63dmsrbd28")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-9.2-structs

(define-public haskell-9.2-systemd
  (package
    (name "haskell-9.2-systemd")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/systemd/systemd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fa65j996snrdq83kh3jzzs2dsf2ddsscx596p03ykgknz1q1f16"))))
    (properties `((upstream-name . "systemd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)))
    (home-page "https://github.com/erebe/systemd")
    (synopsis "Systemd facilities (Socket activation, Notify)")
    (description "A module for Systemd facilities.")
    (license license:bsd-3)))

haskell-9.2-systemd

(define-public haskell-9.2-tasty-kat
  (package
    (name "haskell-9.2-tasty-kat")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-kat/tasty-kat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14yvlpli6cv6bn3kh8mlfp4x1l6ns4fvmfv6hmj75cvxyzq029d7"))))
    (properties `((upstream-name . "tasty-kat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-9.2-tasty-kat

(define-public haskell-9.2-termbox-tea
  (package
    (name "haskell-9.2-termbox-tea")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termbox-tea/termbox-tea-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qck27chphmxm5zdrbz3njix5vkry5c5liybgvrx0745ymcd231w"))))
    (properties `((upstream-name . "termbox-tea") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-ki)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-termbox)))
    (home-page "https://github.com/termbox/termbox-haskell")
    (synopsis "termbox + The Elm Architecture")
    (description
     "This package provides an Elm Architecture interface to @@termbox@@ programs.

See also:

* @@<https://hackage.haskell.org/package/termbox-banana termbox-banana>@@ for a @@reactive-banana@@ FRP interface.")
    (license license:bsd-3)))

haskell-9.2-termbox-tea

(define-public haskell-9.2-terminal-progress-bar
  (package
    (name "haskell-9.2-terminal-progress-bar")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/terminal-progress-bar/terminal-progress-bar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "092yx9hal3xxcvpjwyqbfqww277l4gf83272pcnp3k6aj86a2756"))))
    (properties `((upstream-name . "terminal-progress-bar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (home-page "https://github.com/roelvandijk/terminal-progress-bar")
    (synopsis "A progress bar in the terminal")
    (description
     "A progress bar conveys the progress of a task. This package
implements a progress bar that is displayed in a terminal.

See the module 'System.ProgressBar' to get started or look at the
terminal-progress-bar-example package.

The animated progress bar depends entirely on the interpretation of
the carriage return character (\\'\\\\r\\'). If your terminal interprets
it as something else than \\\"move cursor to beginning of line\\\", the
animation won't work.")
    (license license:bsd-3)))

haskell-9.2-terminal-progress-bar

(define-public haskell-9.2-text-rope
  (package
    (name "haskell-9.2-text-rope")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-rope/text-rope-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12z7radm15mlfz5nrpii2dkjkiis05a88x923jipbhwwbs2j4i5i"))))
    (properties `((upstream-name . "text-rope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/text-rope")
    (synopsis "Text lines and ropes")
    (description
     "A wrapper around `Text` for fast line/column navigation and logarithmic concatenation.")
    (license license:bsd-3)))

haskell-9.2-text-rope

(define-public haskell-9.2-th-expand-syns
  (package
    (name "haskell-9.2-th-expand-syns")
    (version "0.4.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-expand-syns/th-expand-syns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "044h1hv4b0ihpwr9wndj55fa843cbzqp1difgj9wyy3mw925higm"))))
    (properties `((upstream-name . "th-expand-syns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.

As of version @@0.4.9.0@@, this library is a small shim on
top of the @@applySubstitution@@/@@resolveTypeSynonyms@@
functions from @@th-abstraction@@, so you may want to
consider using @@th-abstraction@@ instead.")
    (license license:bsd-3)))

haskell-9.2-th-expand-syns

(define-public haskell-9.2-th-extras
  (package
    (name "haskell-9.2-th-extras")
    (version "0.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-extras/th-extras-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jkwy2kqdqmq3qmfy76px2pm8idxgs18x1k1dzpsccq21ja27gq2"))))
    (properties `((upstream-name . "th-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (home-page "https://github.com/mokus0/th-extras")
    (synopsis "A grab bag of functions for use with Template Haskell")
    (description
     "A grab bag of functions for use with Template Haskell.

This is basically the place I put all my ugly CPP hacks to support
the ever-changing interface of the template haskell system by
providing high-level operations and making sure they work on as many
versions of Template Haskell as I can.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-th-extras

(define-public haskell-9.2-titlecase
  (package
    (name "haskell-9.2-titlecase")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/titlecase/titlecase-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k29br4ck9hpjq0w8md7i5kbh47svx74i2abv6ql2awxa0liqwz7"))))
    (properties `((upstream-name . "titlecase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-9.2-titlecase

(define-public haskell-9.2-type-errors
  (package
    (name "haskell-9.2-type-errors")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors/type-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ds1y5gjjgd2g3dsn8bfcviy6zv8nvmyaifysmb7ckggdfg3cdym"))))
    (properties `((upstream-name . "type-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-first-class-families)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)))
    (home-page "https://github.com/isovector/type-errors#readme")
    (synopsis "Tools for writing better type errors")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>")
    (license license:bsd-3)))

haskell-9.2-type-errors

(define-public haskell-9.2-unbound-generics
  (package
    (name "haskell-9.2-unbound-generics")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unbound-generics/unbound-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pbpcvkkn360l0f5m7q5piyagvxznghknzjpxc7znb35i3xqywl1"))))
    (properties `((upstream-name . "unbound-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-unbound-generics

(define-public haskell-9.2-units-parser
  (package
    (name "haskell-9.2-units-parser")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/units-parser/units-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdf8jqq03x20gj91faqir9vrdjq7cxpnypx7bi953vjg8fh2jfm"))))
    (properties `((upstream-name . "units-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14g8a4azsdxp86c0yddkws5yzszjmkw1y78x1i7pj20cgbfjnnn7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-multimap)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/units-parser")
    (synopsis "A parser for units of measure")
    (description
     "The @@units-parser@@ package provides a parser for unit expressions
with F#-style syntax, to support the @@units@@ package and other
packages providing type-level units of measure.")
    (license license:bsd-3)))

haskell-9.2-units-parser

(define-public haskell-9.2-vector-mmap
  (package
    (name "haskell-9.2-vector-mmap")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-mmap/vector-mmap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12l6ka6vgl5g193sycn3k6gr2q3k64jaq196p825vawh46qdsfg5"))))
    (properties `((upstream-name . "vector-mmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "http://github.com/pumpkin/vector-mmap")
    (synopsis "Memory map immutable and mutable vectors")
    (description "Memory map immutable and mutable vectors.")
    (license license:bsd-3)))

haskell-9.2-vector-mmap

(define-public haskell-9.2-vector-rotcev
  (package
    (name "haskell-9.2-vector-rotcev")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-rotcev/vector-rotcev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ch8r6v07qvczp7cn7l4hxy7pakj37hkx5vp7vz5yk3bcnjb1mqc"))))
    (properties `((upstream-name . "vector-rotcev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/rotcev")
    (synopsis "Vectors with O(1) reverse")
    (description
     "A wrapper for an arbitrary @@Vector@@ with O(1) @@reverse@@.
Instead of creating a copy, it just flips a flag, which inverts indexing.
Imagine it as a vector with a switch between little-endianness and big-endianness.")
    (license license:bsd-3)))

haskell-9.2-vector-rotcev

(define-public haskell-9.2-vector-split
  (package
    (name "haskell-9.2-vector-split")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-split/vector-split-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05mxkgcg5v2w0vnqq8z5s6aj0aqi7b55mh6knaafalpc1yjyxbml"))))
    (properties `((upstream-name . "vector-split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-9.2-vector-split

(define-public haskell-9.2-vivid-supercollider
  (package
    (name "haskell-9.2-vivid-supercollider")
    (version "0.4.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vivid-supercollider/vivid-supercollider-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jr132l3zgwxz3vnnqbm1ycms29izsbn6kdddq7204zz9y7hx96j"))))
    (properties `((upstream-name . "vivid-supercollider") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vivid-osc)))
    (home-page "https://hackage.haskell.org/package/vivid-supercollider")
    (synopsis "Implementation of SuperCollider server specifications")
    (description
     "An interface-agnostic implementation of specs for
SuperCollider server types and commands.
- Server Command Reference
- Synth Definition File Format

Note this is an in-progress (incomplete) implementation. Currently only the
server commands needed for the \\\"vivid\\\" package are supported.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-vivid-supercollider

(define-public haskell-9.2-weigh
  (package
    (name "haskell-9.2-weigh")
    (version "0.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/weigh/weigh-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13pbjr7fzqy3s9c1nd2jhfwzbpccmpfwdn7y46z9k2bfkch1jam9"))))
    (properties `((upstream-name . "weigh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y71p1fg2q9ig955b21fhfaipdamdrlzfl302prqz8g0sfcxvmfg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (home-page "https://github.com/fpco/weigh#readme")
    (synopsis "Measure allocations of a Haskell functions/values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-weigh

(define-public haskell-9.2-xor
  (package
    (name "haskell-9.2-xor")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xor/xor-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "05jwfrg4cm27ldj3dbl0y144njhiha9yiypirbhsg6lc1b36s3kh"))))
    (properties `((upstream-name . "xor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "02y2587racvd9ppmllivzzn6zvdm051i6sc795lshvdq24ivvh9q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-byteorder)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/xor")
    (synopsis "Efficient XOR masking")
    (description
     "This package provides efficient implementations of routines for applying <https://en.wikipedia.org/wiki/Bitwise_operation#XOR bitwise XOR> masks to binary data.

The currently supported operations (see \"Data.XOR\" API documentation for more details) are applying

* 8-bit  wide XOR masks or
* 32-bit wide XOR masks

to binary data represented by

* Strict @@ByteString@@s,
* Lazy @@ByteString@@s,
* @@ShortByteString@@s (i.e. @@ByteArray#@@s), or
* @@CStringLen@@ (i.e. @@Ptr@@s).

The performance is comparable to portable ISO C99 implementations but this library is implemented as pure Haskell and is thereby compatible with compile targets such as <https://github.com/ghcjs/ghcjs GHCJS>.")
    (license license:gpl2+)))

haskell-9.2-xor

(define-public haskell-9.2-yeshql-core
  (package
    (name "haskell-9.2-yeshql-core")
    (version "4.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yeshql-core/yeshql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rh6pn182h4cjsca7gbbaq3s25y6lmbwcfzsbm7452m9hrwm0vlf"))))
    (properties `((upstream-name . "yeshql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-convertible)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis "YesQL-style SQL database abstraction (core)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-9.2-yeshql-core

(define-public haskell-9.2-zigzag
  (package
    (name "haskell-9.2-zigzag")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zigzag/zigzag-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gy2hv4ggxfwrxg9v3qyxpfrm1j5sixckc2j3h37ckzsh5v06mga"))))
    (properties `((upstream-name . "zigzag") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04n4m74hlh0fpy7qbgmm0piblc5d54nnj7322wnw2yj50am7hbxc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/byteverse/zigzag")
    (synopsis "Zigzag encoding of integers into unsigned integers.")
    (description
     "Zigzag encoding is usually a precursor to a varint encoding such as LEB128.
It has the advantage that numbers nearer zero are represented with only the lower-order bits set.")
    (license license:bsd-3)))

haskell-9.2-zigzag

(define-public haskell-9.2-zio
  (package
    (name "haskell-9.2-zio")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zio/zio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15ka58l6xv3v4x5rcam75gq37mfcxjngm0frz9k0rmzqyf07l06k"))))
    (properties `((upstream-name . "zio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-unexceptionalio)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-unexceptionalio-trans)))
    (home-page "https://github.com/bbarker/haskell-zio#readme")
    (synopsis
     "App-centric Monad-transformer based on Scala ZIO (UIO + ReaderT + ExceptT).")
    (description
     "Please see the README on GitHub at <https://github.com/bbarker/haskell-zio#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-zio

(define-public haskell-9.2-zlib
  (package
    (name "haskell-9.2-zlib")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zlib/zlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nh4xsm3kgsg76jmkcphvy7hhslg9hx1s75mpsskhi2ksjd9ialy"))))
    (properties `((upstream-name . "zlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-non-blocking-ffi" "-f-pkg-config" "-f-bundled-c-zlib")
       #:cabal-revision
       ("1" "1z2dyphqmjb9akzqrqh8k82mfv416hqj82nz8mysidx09jgf7p4s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/zlib")
    (synopsis "Compression and decompression in the gzip and zlib formats")
    (description "This package provides a pure interface for compressing and
decompressing streams of data represented as lazy
'ByteString's. It uses the
<https://en.wikipedia.org/wiki/Zlib zlib C library>
so it has high performance. It supports the \\\"zlib\\\",
\\\"gzip\\\" and \\\"raw\\\" compression formats.

It provides a convenient high level API suitable for most
tasks and for the few cases where more control is needed it
provides access to the full zlib feature set.")
    (license license:bsd-3)))

haskell-9.2-zlib

