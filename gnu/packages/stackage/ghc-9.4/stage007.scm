;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage007)
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
(define-public haskell-9.4-ChasingBottoms
  (package
    (name "haskell-9.4-ChasingBottoms")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
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

haskell-9.4-ChasingBottoms

(define-public haskell-9.4-Earley
  (package
    (name "haskell-9.4-Earley")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Earley/Earley-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "169qjicjj09wg879vp86ali4rrqpw0ikazvdi3i1qi6pl3yvqq0y"))))
    (properties `((upstream-name . "Earley") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-ListLike)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-9.4-Earley

(define-public haskell-9.4-GLFW-b
  (package
    (name "haskell-9.4-GLFW-b")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-bindings-GLFW)))
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

haskell-9.4-GLFW-b

(define-public haskell-9.4-HStringTemplate
  (package
    (name "haskell-9.4-HStringTemplate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://hackage.haskell.org/package/HStringTemplate")
    (synopsis "StringTemplate implementation in Haskell.")
    (description "A port of the Java library by Terrence Parr.")
    (license license:bsd-3)))

haskell-9.4-HStringTemplate

(define-public haskell-9.4-HsOpenSSL
  (package
    (name "haskell-9.4-HsOpenSSL")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
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

haskell-9.4-HsOpenSSL

(define-public haskell-9.4-RefSerialize
  (package
    (name "haskell-9.4-RefSerialize")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/RefSerialize/RefSerialize-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cmvab3yakazhgij3x8s871r9wf8ixkwmb52k88rcgclmfqmxch5"))))
    (properties `((upstream-name . "RefSerialize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stringsearch)))
    (home-page "https://hackage.haskell.org/package/RefSerialize")
    (synopsis
     "Write to and read from ByteStrings maintaining internal memory references")
    (description
     "Read, Show and Binary instances do not check for internal data references to the same address.
As a result, the data is duplicated when serialized. This is a waste of space in the filesystem
and  also a waste of serialization time. but the worst consequence is that, when the serialized data is read,
it allocates multiple copies for the same object when referenced multiple times. Because multiple referenced
data is very typical in a pure language such is Haskell, this means that the resulting data loose the beatiful
economy of space and processing time that referential transparency permits.

In this release:

Compatibility with older versions of bytestring that have no 'toStrict' call

deserialization is much, much faster by using the stringsearch package

See \"Data.RefSerialize\" for details")
    (license license:bsd-3)))

haskell-9.4-RefSerialize

(define-public haskell-9.4-STMonadTrans
  (package
    (name "haskell-9.4-STMonadTrans")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-STMonadTrans

(define-public haskell-9.4-alsa-pcm
  (package
    (name "haskell-9.4-alsa-pcm")
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
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-alsa-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-sample-frame)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-storable-record)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (PCM audio).")
    (description
     "This package provides access to ALSA realtime audio signal input and output.
For MIDI support see alsa-seq.")
    (license license:bsd-3)))

haskell-9.4-alsa-pcm

(define-public haskell-9.4-asn1-encoding
  (package
    (name "haskell-9.4-asn1-encoding")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "ASN1 data reader and writer in RAW, BER and DER forms")
    (description
     "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, and DER).")
    (license license:bsd-3)))

haskell-9.4-asn1-encoding

(define-public haskell-9.4-async-extra
  (package
    (name "haskell-9.4-async-extra")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-extra/async-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hyc27mphjpc7m9khs47ch0q6j6hy2hmibk82vzrfmc3rfjxa1hd"))))
    (properties `((upstream-name . "async-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (home-page "https://github.com/agrafix/async-extra#readme")
    (synopsis "Useful concurrent combinators")
    (description "Various concurrent combinators")
    (license license:expat)))

haskell-9.4-async-extra

(define-public haskell-9.4-atomic-counter
  (package
    (name "haskell-9.4-atomic-counter")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-counter/atomic-counter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vrggycr9jbnrx2gz71rfqrldmf6417kx5sp2w5g238iv6a3m9p1"))))
    (properties `((upstream-name . "atomic-counter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sergv/atomic-counter")
    (synopsis "Mutable counters that can be modified with atomic operatinos")
    (description
     "This package defines Counter type that can be safely modified
concurrently from multiple threads. The supports only few operations,
namely read, write, add, subtract and a few bitwise ones like or, and, xor.

Most common use case is having a shared counter that multiple threads increment.")
    (license license:asl2.0)))

haskell-9.4-atomic-counter

(define-public haskell-9.4-attoparsec
  (package
    (name "haskell-9.4-attoparsec")
    (version "0.14.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec/attoparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v4yjz4qi8bwhbyavqxlhsfb1iv07v10gxi64khmsmi4hvjpycrz"))))
    (properties `((upstream-name . "attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("3" "1ciz49yg6zcaf5dvh5wp3kv92jxa23pblggfldbmy5q54dr5nish")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/haskell/attoparsec")
    (synopsis "Fast combinator parsing for bytestrings and text")
    (description
     "A fast parser combinator library, aimed particularly at dealing
efficiently with network protocols and complicated text/binary
file formats.")
    (license license:bsd-3)))

haskell-9.4-attoparsec

(define-public haskell-9.4-backtracking
  (package
    (name "haskell-9.4-backtracking")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primes)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/backtracking")
    (synopsis "A backtracking monad")
    (description
     "This library provides a backtracking monad following Spivey's paper \"Algebras for combinatorial search\".")
    (license license:bsd-3)))

haskell-9.4-backtracking

(define-public haskell-9.4-barbies
  (package
    (name "haskell-9.4-barbies")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jcpetruzza/barbies#readme")
    (synopsis "Classes for working with types that can change clothes.")
    (description
     "Types that are parametric on a functor are like Barbies that have an outfit for each role. This package provides the basic abstractions to work with them comfortably.")
    (license license:bsd-3)))

haskell-9.4-barbies

(define-public haskell-9.4-basic-prelude
  (package
    (name "haskell-9.4-basic-prelude")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/basic-prelude/basic-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yckmnvm6i4vw0mykj4fzl4ldsf67v8d2h0vp1bakyj84n4myx8h"))))
    (properties `((upstream-name . "basic-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/snoyberg/basic-prelude#readme")
    (synopsis
     "An enhanced core prelude; a common foundation for alternate preludes.")
    (description
     "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
    (license license:expat)))

haskell-9.4-basic-prelude

(define-public haskell-9.4-bin
  (package
    (name "haskell-9.4-bin")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bin/bin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0idm2ix4wv1ppr3fjvd8xdlbkhk6lq4rvfs9dv615lmds4gbzm72"))))
    (properties `((upstream-name . "bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "052i9qfb037p71fhzl38ly51jkk9q6klb1cb07a0cv2ja5nzrjgn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-boring)
                  (@ (gnu packages stackage ghc-9.4 stage002) haskell-9.4-dec)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-fin)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-some)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Bin: binary natural numbers.")
    (description
     "This package provides /binary natural numbers/ (\"Data.Bin\");
also utilities to work on the type level with @@DataKinds@@ (\"Data.Type.Bin\").

@@
data Bin
\\    = BZ       -- ^ zero
\\    | BP BinP  -- ^ non-zero

data BinP
\\    = BE       -- ^ one
\\    | B0 BinP  -- ^ double
\\    | B1 BinP  -- ^ double plus 1
@@

There are /ordinals/ in \"Data.Bin.Pos\" module, as well as
fixed width integers in \"Data.Wrd\".

Another implementation is at <https://hackage.haskell.org/package/nat>,
this differs in naming, and provides promoted variant.")
    (license license:gpl2+)))

haskell-9.4-bin

(define-public haskell-9.4-blaze-markup
  (package
    (name "haskell-9.4-blaze-markup")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast markup combinator library for Haskell")
    (description
     "Core modules of a blazingly fast markup combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.4-blaze-markup

(define-public haskell-9.4-brotli
  (package
    (name "haskell-9.4-brotli")
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
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
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

haskell-9.4-brotli

(define-public haskell-9.4-bytes
  (package
    (name "haskell-9.4-bytes")
    (version "0.17.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06kqqk19qjhrwdqi6pyd1lwqfnj2sw3b3s49lc5vr2fmv8gg8mdw"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0frs6ag93kmg2fw3vd686czx8g7h9qmdn1ip6wdk96d94ap0fz9i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-binary-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-9.4-bytes

(define-public haskell-9.4-cabal-install-solver
  (package
    (name "haskell-9.4-cabal-install-solver")
    (version "3.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-install-solver/cabal-install-solver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rzzi3jx5ivxy43vdg460fsbn1p2v5br1havcara65vmqgv6j8yz"))))
    (properties `((upstream-name . "cabal-install-solver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-debug-expensive-assertions" "-f-debug-conflict-sets" "-f-debug-tracetree")
       #:cabal-revision
       ("1" "1g487j20pj03pc10yaha18v73wh3ackxjgfpfqaj7xznqcbm5xwm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-edit-distance)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "The command-line interface for Cabal and Hackage.")
    (description
     "The solver component used in cabal-install command-line program")
    (license license:bsd-3)))

haskell-9.4-cabal-install-solver

(define-public haskell-9.4-carray
  (package
    (name "haskell-9.4-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ix-shapable)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-9.4-carray

(define-public haskell-9.4-cereal-unordered-containers
  (package
    (name "haskell-9.4-cereal-unordered-containers")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-unordered-containers/cereal-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gwg67r8z2jzlnks4pki9lwy4hghpynlrmd504mrnw28ahfmp9wn"))))
    (properties `((upstream-name . "cereal-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/metrix-ai/cereal-unordered-containers ")
    (synopsis "Integration of \"cereal\" and \"unordered-containers\"")
    (description "")
    (license license:expat)))

haskell-9.4-cereal-unordered-containers

(define-public haskell-9.4-chan
  (package
    (name "haskell-9.4-chan")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chan/chan-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ks74njh8fj9dh8qhydwjyqdx8lrdj5fif455cxfshvdbwhcnvwj"))))
    (properties `((upstream-name . "chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)))
    (home-page "https://github.com/athanclark/chan#readme")
    (synopsis "Some extra kit for Chans")
    (description
     "Please see the README on Github at <https://github.com/athanclark/chan#readme>")
    (license license:bsd-3)))

haskell-9.4-chan

(define-public haskell-9.4-charset
  (package
    (name "haskell-9.4-charset")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/charset/charset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12wrphd5j1asb3n6awbph4n695mfmnzk6yzggrp387hx960qfkyb"))))
    (properties `((upstream-name . "charset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/charset")
    (synopsis
     "Fast unicode character sets based on complemented PATRICIA tries")
    (description
     "Fast unicode character sets based on complemented PATRICIA tries.")
    (license license:bsd-3)))

haskell-9.4-charset

(define-public haskell-9.4-concurrent-output
  (package
    (name "haskell-9.4-concurrent-output")
    (version "1.10.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-output/concurrent-output-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12dmpjdiv3y1jnljvsbx258plzjvsjnizn25csmy7w4scfbrjl0b"))))
    (properties `((upstream-name . "concurrent-output") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)))
    (home-page "https://hackage.haskell.org/package/concurrent-output")
    (synopsis "Ungarble output from several threads or commands")
    (description
     "Lets multiple threads and external processes concurrently output to the
console, without it getting all garbled up.

Built on top of that is a way of defining multiple output regions,
which are automatically laid out on the screen and can be individually
updated by concurrent threads. Can be used for progress displays etc.

<<https://joeyh.name/code/concurrent-output/demo2.gif>>")
    (license license:bsd-2)))

haskell-9.4-concurrent-output

(define-public haskell-9.4-cookie
  (package
    (name "haskell-9.4-cookie")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-9.4-cookie

(define-public haskell-9.4-cprng-aes
  (package
    (name "haskell-9.4-cprng-aes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cipher-aes)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-crypto-random)))
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

haskell-9.4-cprng-aes

(define-public haskell-9.4-crypto-api-tests
  (package
    (name "haskell-9.4-crypto-api-tests")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (home-page "http://trac.haskell.org/crypto-api/wiki")
    (synopsis "A test framework and KATs for cryptographic operations.")
    (description "A test framework for hash and cipher operations using
the crypto-api interface.  Known answer tests (KATs)
for common cryptographic algorithms are included.
Patches welcome (both adding KATs for more algorithms
or property tests for classes of algorithms).")
    (license license:bsd-3)))

haskell-9.4-crypto-api-tests

(define-public haskell-9.4-csp
  (package
    (name "haskell-9.4-csp")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-nondeterminism)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/csp")
    (synopsis "Discrete constraint satisfaction problem (CSP) solver.")
    (description "Constraint satisfaction problem (CSP) solvers")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-csp

(define-public haskell-9.4-data-array-byte
  (package
    (name "haskell-9.4-data-array-byte")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-data-array-byte

(define-public haskell-9.4-data-bword
  (package
    (name "haskell-9.4-data-bword")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-9.4-data-bword

(define-public haskell-9.4-data-default-instances-case-insensitive
  (package
    (name "haskell-9.4-data-default-instances-case-insensitive")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-case-insensitive/data-default-instances-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d0a0y3fgq820brwbad58xsz1imxfjsiwg9s9h577l6ri9q3a0a3"))))
    (properties `((upstream-name . "data-default-instances-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w8k7zjxwbj1y2acxadg956pfpf7y70jc23wgjivqvafbv69ra25")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instance for CI type from case-insensitive package.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance (Default s, FoldCase s) => Default (CI s) where
>     def = mk def")
    (license license:bsd-3)))

haskell-9.4-data-default-instances-case-insensitive

(define-public haskell-9.4-data-default-instances-unordered-containers
  (package
    (name "haskell-9.4-data-default-instances-unordered-containers")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-unordered-containers/data-default-instances-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1gap1afpyixz2amw1bfsdrc5rsxvksapz9h9vi4qgxj3mag0mk"))))
    (properties `((upstream-name . "data-default-instances-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ghfz68s70jrkz91qhnawc4bq3ylmqxg849d49zxckzg0pk7jbpw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for unordered-containers.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance Default (HashMap k v) where
>     def = empty
>
> instance Default (HashSet a) where
>     def = empty")
    (license license:bsd-3)))

haskell-9.4-data-default-instances-unordered-containers

(define-public haskell-9.4-diagrams-solve
  (package
    (name "haskell-9.4-diagrams-solve")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://diagrams.github.io")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-9.4-diagrams-solve

(define-public haskell-9.4-direct-sqlite
  (package
    (name "haskell-9.4-direct-sqlite")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
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

haskell-9.4-direct-sqlite

(define-public haskell-9.4-doctest
  (package
    (name "haskell-9.4-doctest")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-code-page)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-paths)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "`doctest` is a tool that checks [examples](https://www.haskell.org/haddock/doc/html/ch03s08.html#idm140354810775744)
and [properties](https://www.haskell.org/haddock/doc/html/ch03s08.html#idm140354810771856)
in Haddock comments.
It is similar in spirit to the [popular Python module with the same name](https://docs.python.org/3/library/doctest.html).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-9.4-doctest

(define-public haskell-9.4-doctest-parallel
  (package
    (name "haskell-9.4-doctest-parallel")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-parallel/doctest-parallel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "121ql1pygbs1cars5mva7lxa96aq0fhn27n3vnn5zqrvdypn3ys4"))))
    (properties `((upstream-name . "doctest-parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-code-page)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-paths)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/martijnbastiaan/doctest-parallel#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<https://docs.python.org/3/library/doctest.html>).

Documentation is at <https://github.com/martijnbastiaan/doctest-parallel#readme>.")
    (license license:expat)))

haskell-9.4-doctest-parallel

(define-public haskell-9.4-drifter
  (package
    (name "haskell-9.4-drifter")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-drifter

(define-public haskell-9.4-dynamic-state
  (package
    (name "haskell-9.4-dynamic-state")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dynamic-state/dynamic-state-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0drmlb3cvx0blsnqrxzdylpff5jxvpazsy1bxq2szcp70gghpmf4"))))
    (properties `((upstream-name . "dynamic-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/dynamic-state")
    (synopsis "Optionally serializable dynamic state keyed by type")
    (description "Optionally serializable dynamic state keyed by type")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-dynamic-state

(define-public haskell-9.4-ekg-core
  (package
    (name "haskell-9.4-ekg-core")
    (version "0.1.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-core/ekg-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04nv6iwzrb63fs97ixb0amj8p6zhabg3ggbrg4nbkq7xjhmkz0a5"))))
    (properties `((upstream-name . "ekg-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05h0jz42s1d3bjcvzbp3dv5rvil4ar244mdqdvzbf60z848ppygl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-core")
    (synopsis "Tracking of system metrics")
    (description "This library lets you defined and track system metrics.")
    (license license:bsd-3)))

haskell-9.4-ekg-core

(define-public haskell-9.4-every
  (package
    (name "haskell-9.4-every")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/every/every-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rc0g5rn8hzglm2b4biaf8jvj5kb2j1s5vsxnm24q2gvrvjg03sx"))))
    (properties `((upstream-name . "every") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)))
    (home-page "https://github.com/athanclark/every#readme")
    (synopsis "Run a process every so often.")
    (description "")
    (license license:bsd-3)))

haskell-9.4-every

(define-public haskell-9.4-exact-pi
  (package
    (name "haskell-9.4-exact-pi")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-numtype-dk)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-9.4-exact-pi

(define-public haskell-9.4-expiring-cache-map
  (package
    (name "haskell-9.4-expiring-cache-map")
    (version "0.0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/expiring-cache-map/expiring-cache-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fb47hsn06ybn2yzw7r6pjkmvvfpbdx7wjhbpxcywilbjyac4fqf"))))
    (properties `((upstream-name . "expiring-cache-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k5wqilafxp3ksqb7qy90cwipk0db568f15amn3mnf9krc1qjabg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://codeberg.org/elblake/expiring-cache-map")
    (synopsis "General purpose simple caching.")
    (description
     "A simple general purpose shared state cache map with automatic expiration
of values, for caching the results of accessing a resource such as reading
a file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"
and \"Data.HashMap.Strict\", respectively.")
    (license license:bsd-3)))

haskell-9.4-expiring-cache-map

(define-public haskell-9.4-fftw-ffi
  (package
    (name "haskell-9.4-fftw-ffi")
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
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-enumset)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hub.darcs.net/thielema/fftw-ffi/")
    (synopsis "Low-level interface to FFTW (Fast Fourier Transform)")
    (description "FFTW claims to be the fastest Fourier Transform in the West.
This is a low-level interface to @@libfftw@@.
We re-use the type classes from @@netlib-ffi@@.

See also package @@fft@@.")
    (license license:bsd-3)))

haskell-9.4-fftw-ffi

(define-public haskell-9.4-filelock
  (package
    (name "haskell-9.4-filelock")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filelock/filelock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06a44i7a956d7xkk2na4090xj2a7b7a228pk4spmccs4x20ymssh"))))
    (properties `((upstream-name . "filelock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)))
    (home-page "http://github.com/takano-akio/filelock")
    (synopsis "Portable interface to file locking (flock / LockFileEx)")
    (description "This package provides an interface to Windows and Unix
file locking functionalities.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-filelock

(define-public haskell-9.4-fusion-plugin
  (package
    (name "haskell-9.4-fusion-plugin")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
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

haskell-9.4-fusion-plugin

(define-public haskell-9.4-ghc-typelits-knownnat
  (package
    (name "haskell-9.4-ghc-typelits-knownnat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-ghc-typelits-knownnat

(define-public haskell-9.4-gi-cairo-render
  (package
    (name "haskell-9.4-gi-cairo-render")
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
                  (@ (gnu packages stackage ghc-9.4 stage004) haskell-9.4-c2hs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "Cairo is a library to render high quality vector graphics. There
exist various backends that allows rendering to Gtk windows, PDF,
PS, PNG and SVG documents, amongst others.")
    (license license:bsd-3)))

haskell-9.4-gi-cairo-render

(define-public haskell-9.4-gnuplot
  (package
    (name "haskell-9.4-gnuplot")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-accessor)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-data-accessor-transformers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
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

haskell-9.4-gnuplot

(define-public haskell-9.4-graphviz
  (package
    (name "haskell-9.4-graphviz")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-polyparse)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-wl-pprint-text)))
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

haskell-9.4-graphviz

(define-public haskell-9.4-gtk2hs-buildtools
  (package
    (name "haskell-9.4-gtk2hs-buildtools")
    (version "0.13.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk2hs-buildtools/gtk2hs-buildtools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fcm0v32hm9j908nyziia16ahb181y9hqppsy18clx2prvj480rv"))))
    (properties `((upstream-name . "gtk2hs-buildtools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclosuresignals")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Tools to build the Gtk2Hs suite of User Interface libraries.")
    (description "This package provides a set of helper programs necessary to
build the Gtk2Hs suite of libraries. These tools include
a modified c2hs binding tool that is used to generate
FFI declarations, a tool to build a type hierarchy that
mirrors the C type hierarchy of GObjects found in glib,
and a generator for signal declarations that are used
to call back from C to Haskell. These tools are not needed
to actually run Gtk2Hs programs.")
    (license license:gpl2)))

haskell-9.4-gtk2hs-buildtools

(define-public haskell-9.4-haskell-src
  (package
    (name "haskell-9.4-haskell-src")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code.")
    (license license:bsd-3)))

haskell-9.4-haskell-src

(define-public haskell-9.4-hdaemonize
  (package
    (name "haskell-9.4-hdaemonize")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hsyslog)))
    (home-page "http://github.com/unprolix/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description "Provides functions that help writing better UNIX daemons,
daemonize and serviced/serviced': daemonize does what
a daemon should do (forking and closing descriptors),
while serviced does that and more (syslog interface,
PID file writing, start-stop-restart command line
handling, dropping privileges).")
    (license license:bsd-3)))

haskell-9.4-hdaemonize

(define-public haskell-9.4-hinotify
  (package
    (name "haskell-9.4-hinotify")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hinotify/hinotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06pqfikfa61i45g92b65br83kplwmizqkm42yp8d0ddgmq0b21qk"))))
    (properties `((upstream-name . "hinotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)))
    (home-page "https://github.com/kolmodin/hinotify")
    (synopsis "Haskell binding to inotify")
    (description
     "This library provides a wrapper to the Linux Kernel's inotify feature,
allowing applications to subscribe to notifications when a file is
accessed or modified.")
    (license license:bsd-3)))

haskell-9.4-hinotify

(define-public haskell-9.4-hjsmin
  (package
    (name "haskell-9.4-hjsmin")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hjsmin/hjsmin-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "146d4b9k11msqf1q12rzh5bfdrqddkcgsf42w6wpkzfdlhskid2d"))))
    (properties `((upstream-name . "hjsmin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-language-javascript)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "http://github.com/erikd/hjsmin")
    (synopsis "Haskell implementation of a javascript minifier")
    (description
     "Reduces size of javascript files by stripping out extraneous whitespace and
other syntactic elements, without changing the semantics.")
    (license license:bsd-3)))

haskell-9.4-hjsmin

(define-public haskell-9.4-horizontal-rule
  (package
    (name "haskell-9.4-horizontal-rule")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/horizontal-rule/horizontal-rule-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1anpf8qgiyvx1fvycr01sz9ak8zxdrarqw32m0kybxs3xhw15myy"))))
    (properties `((upstream-name . "horizontal-rule") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)))
    (home-page "https://github.com/ExtremaIS/hr-haskell#readme")
    (synopsis "horizontal rule for the terminal")
    (description
     "This package provides a utility for displaying a horizontal rule in a
terminal.  Please see the README on GitHub at
<https://github.com/ExtremaIS/hr-haskell#readme>.")
    (license license:expat)))

haskell-9.4-horizontal-rule

(define-public haskell-9.4-hosc
  (package
    (name "haskell-9.4-hosc")
    (version "0.20")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hosc/hosc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17pvv6rgl74ymq7pazxqia19smsga53kkg5h1i1dgfpikrmq7fz9"))))
    (properties `((upstream-name . "hosc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "http://rohandrape.net/t/hosc")
    (synopsis "Haskell Open Sound Control")
    (description
     "Haskell library implementing the Open Sound Control protocol")
    (license license:gpl3)))

haskell-9.4-hosc

(define-public haskell-9.4-hpp
  (package
    (name "haskell-9.4-hpp")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpp/hpp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0xmnnmw2h4rf0bffncbhy8ja005wfr54cgsnqnc5vsqnl3dmvdlp"))))
    (properties `((upstream-name . "hpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/acowley/hpp")
    (synopsis "A Haskell pre-processor")
    (description "See the README for usage examples")
    (license license:bsd-3)))

haskell-9.4-hpp

(define-public haskell-9.4-hs-bibutils
  (package
    (name "haskell-9.4-hs-bibutils")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
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

haskell-9.4-hs-bibutils

(define-public haskell-9.4-hsdns
  (package
    (name "haskell-9.4-hsdns")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
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

haskell-9.4-hsdns

(define-public haskell-9.4-html-entity-map
  (package
    (name "haskell-9.4-html-entity-map")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entity-map/html-entity-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1l1pbmrfmh44v9cc9ka01bx9xm1x4jabbl675fc5c57v1h0dlq"))))
    (properties `((upstream-name . "html-entity-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "1776z73bs1v8z3qwpjvqqmzdlj6gm8qba93f41irhn7swdppfq72")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/mrkkrp/html-entity-map")
    (synopsis "Map from HTML5 entity names to the corresponding Unicode text")
    (description
     "Map from HTML5 entity names to the corresponding Unicode text.")
    (license license:bsd-3)))

haskell-9.4-html-entity-map

(define-public haskell-9.4-http-common
  (package
    (name "haskell-9.4-http-common")
    (version "0.8.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-common/http-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpbnfac0fqa5r670ggwm4kq3cmz9jpaw9bx40j9w9qiw6xi4i28"))))
    (properties `((upstream-name . "http-common") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/aesiniath/http-common")
    (synopsis "Common types for HTTP clients and servers")
    (description
     "/Overview/

Base types used by a variety of HTTP clients and servers. See http-streams
\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full
documentation. You can import @@Network.Http.Types@@ if you like, but both
http-streams and pipes-http re-export this package's types and functions.")
    (license license:bsd-3)))

haskell-9.4-http-common

(define-public haskell-9.4-http-media
  (package
    (name "haskell-9.4-http-media")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-media/http-media-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lww5cxrc9jlvzsysjv99lca33i4rb7cll66p3c0rdpmvz8pk0ir"))))
    (properties `((upstream-name . "http-media") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "1sm8bnrqvwkj7f60x4s8vfsj6lfi0knq38im35x88wk8s9whg6jd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "https://github.com/zmthy/http-media")
    (synopsis "Processing HTTP Content-Type and Accept headers")
    (description
     "This library is intended to be a comprehensive solution to parsing and
selecting quality-indexed values in HTTP headers.  It is capable of
parsing both media types and language parameters from the Accept and
Content header families, and can be extended to match against other
accept headers as well.  Selecting the appropriate header value is
achieved by comparing a list of server options against the
quality-indexed values supplied by the client.

In the following example, the Accept header is parsed and then matched
against a list of server options to serve the appropriate media using
'mapAcceptMedia':

> getHeader >>= maybe send406Error sendResourceWith . mapAcceptMedia
>     [ (\"text/html\",        asHtml)
>     , (\"application/json\", asJson)
>     ]

Similarly, the Content-Type header can be used to produce a parser for
request bodies based on the given content type with 'mapContentMedia':

> getContentType >>= maybe send415Error readRequestBodyWith . mapContentMedia
>     [ (\"application/json\", parseJson)
>     , (\"text/plain\",       parseText)
>     ]

The API is agnostic to your choice of server.")
    (license license:expat)))

haskell-9.4-http-media

(define-public haskell-9.4-immortal-queue
  (package
    (name "haskell-9.4-immortal-queue")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/immortal-queue/immortal-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14a0sy4j0b0x2l8j4ajqizjkzrgbicavy3k5xzz349cvy3dq6fz7"))))
    (properties `((upstream-name . "immortal-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-immortal)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/prikhi/immortal-queue#readme")
    (synopsis "Build a pool of queue-processing worker threads.")
    (description
     "@@immortal-queue@@ is a library for build an asynchronous worker pool that
processes action from a generic queue. You can use any thread-safe datatype
with a push and pop like a @@TQueue@@ or a @@persistent@@ database table.

The worker pool is configured by building an @@ImmortalQueue@@ type, which
describes how to push and pop from the queue as well as how to process
items and handle errors.

For a simple usage example using a TQueue, see the module documentation.
For a more complex example that uses a @@persistent@@ database as a queue,
see
<https://github.com/Southern-Exposure-Seed-Exchange/southernexposure.com/blob/develop/server/src/Workers.hs Southern Exposure's website code>.")
    (license license:bsd-3)))

haskell-9.4-immortal-queue

(define-public haskell-9.4-inbox
  (package
    (name "haskell-9.4-inbox")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/inbox/inbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f4jrkgrziq10xx344avpxyxxizxrhk8mwr127a5m6gr7vyqimak"))))
    (properties `((upstream-name . "inbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-error-or)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/inbox#readme")
    (synopsis "Inbox for asychronous messages")
    (description "Facilitates testing of asynchronous behavior")
    (license license:bsd-3)))

haskell-9.4-inbox

(define-public haskell-9.4-indexed-traversable-instances
  (package
    (name "haskell-9.4-indexed-traversable-instances")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-traversable-instances/indexed-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c60vhf47y8ln33scyvwiffg24dvhm4aavya624vbqjr7l3fapl9"))))
    (properties `((upstream-name . "indexed-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-OneTuple)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page
     "https://hackage.haskell.org/package/indexed-traversable-instances")
    (synopsis
     "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex")
    (description
     "This package provides extra instances for type-classes in the [indexed-traversable](https://hackage.haskell.org/package/indexed-traversable) package.

The intention is to keep this package minimal;
it provides instances that formely existed in @@lens@@ or @@optics-extra@@.
We recommend putting other instances directly into their defining packages.
The @@indexed-traversable@@ package is light, having only GHC boot libraries
as its dependencies.")
    (license license:bsd-2)))

haskell-9.4-indexed-traversable-instances

(define-public haskell-9.4-infinite-list
  (package
    (name "haskell-9.4-infinite-list")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/infinite-list/infinite-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0imayklahbpsiciflwvwj3fxjhg461lw6x4515wxr39hgpb18di1"))))
    (properties `((upstream-name . "infinite-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-inspection-testing)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/infinite-list")
    (synopsis "Infinite lists")
    (description "Modern lightweight library for infinite lists with fusion:

* API similar to \"Data.List\".
* No non-boot dependencies.
* Top performance, driven by fusion.
* Avoid dangerous instances like `Foldable`.
* Use `NonEmpty` where applicable.
* Use `Word` for indices.
* Be lazy, but not too lazy.

@@
@{\\-# LANGUAGE PostfixOperators #-\\@}
import Data.List.Infinite (Infinite(..), (...), (....))
import qualified Data.List.Infinite as Inf
@@")
    (license license:bsd-3)))

haskell-9.4-infinite-list

(define-public haskell-9.4-intern
  (package
    (name "haskell-9.4-intern")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intern/intern-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00c74apc2ap1pjxmzk1c975zzqrc94p69l7v1fvfakv87mbrg8j0"))))
    (properties `((upstream-name . "intern") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1jd429wyh11py7yd95zgaqf3djwvmqznslanlp7jcbrv8ag3dyg8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/intern/")
    (synopsis "Efficient hash-consing for arbitrary data types")
    (description "Efficient hash-consing for arbitrary data types.")
    (license license:bsd-3)))

haskell-9.4-intern

(define-public haskell-9.4-intset-imperative
  (package
    (name "haskell-9.4-intset-imperative")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intset-imperative/intset-imperative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hlh154dlyb0m8alf2zpb4qvsnpnmccmb5jkyhj2fmhg6y3r2m5f"))))
    (properties `((upstream-name . "intset-imperative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/hverr/haskell-intset-imperative#readme")
    (synopsis "An imperative integer set written in Haskell.")
    (description
     "An imperative integer set written in Haskell.

Read <https://deliquus.com/posts/2018-07-30-imperative-programming-in-haskell.html> for more information.")
    (license license:bsd-3)))

haskell-9.4-intset-imperative

(define-public haskell-9.4-io-memoize
  (package
    (name "haskell-9.4-io-memoize")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-memoize/io-memoize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ga85wdvz67jjx8qh6f687kfikcrfmp7winn13v6na7vlaqs2ly7"))))
    (properties `((upstream-name . "io-memoize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)))
    (home-page "https://github.com/DanBurton/io-memoize")
    (synopsis "Memoize IO actions")
    (description
     "Transform an IO action into a similar IO action
that performs the original action only once.

You can choose to perform the original action
in one of two ways:

(1) lazily (might never be performed)

(2) eagerly (concurrently performed)

Special thanks to shachaf and headprogrammingczar from #haskell irc
for helping me reason about the behavior of this library.")
    (license license:bsd-3)))

haskell-9.4-io-memoize

(define-public haskell-9.4-iproute
  (package
    (name "haskell-9.4-iproute")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-appar)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteorder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "http://www.mew.org/~kazu/proj/iproute/")
    (synopsis "IP Routing Table")
    (description "IP Routing Table is a tree of IP ranges
to search one of them on the longest
match base. It is a kind of TRIE with one
way branching removed. Both IPv4 and IPv6
are supported.")
    (license license:bsd-3)))

haskell-9.4-iproute

(define-public haskell-9.4-islink
  (package
    (name "haskell-9.4-islink")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/islink/islink-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mxfs8k0znc7v2iynjnhr4k5c9as4ip37ybvxnvjfqy4dld9rgyg"))))
    (properties `((upstream-name . "islink") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/redneb/islink")
    (synopsis "Check if an HTML element is a link")
    (description
     "This package provides a function that checks whether a particular
combination of an HTML tag name and an attribute corresponds to an HTML
element that links to an external resource. For example, the combination
of the tag @@img@@ and the attribute @@src@@ is an external link whereas
the combination @@div@@ and @@style@@ is not. This is particularly useful
for web scraping.")
    (license license:bsd-3)))

haskell-9.4-islink

(define-public haskell-9.4-json
  (package
    (name "haskell-9.4-json")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
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

haskell-9.4-json

(define-public haskell-9.4-keep-alive
  (package
    (name "haskell-9.4-keep-alive")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://github.com/3kyro/keep-alive#readme")
    (synopsis "TCP keep alive implementation")
    (description
     "This module allows you to set per-connection keep alive parameters on windows, linux and darwin enviroments.
For more information on keep alive signals see <https://en.wikipedia.org/wiki/Keepalive>.
See also <https://tldp.org/HOWTO/html_single/TCP-Keepalive-HOWTO/> for a linux specific implementation.")
    (license license:bsd-3)))

haskell-9.4-keep-alive

(define-public haskell-9.4-ki-unlifted
  (package
    (name "haskell-9.4-ki-unlifted")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-ki)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/awkward-squad/ki")
    (synopsis "A lightweight structured-concurrency library")
    (description
     "A lightweight structured-concurrency library.

For a specialised variant of this API that does not use
@@<https://hackage.haskell.org/package/unliftio-core unliftio-core>@@, see
@@<https://hackage.haskell.org/package/ki ki>@@.")
    (license license:bsd-3)))

haskell-9.4-ki-unlifted

(define-public haskell-9.4-language-java
  (package
    (name "haskell-9.4-language-java")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-9.4-language-java

(define-public haskell-9.4-leb128-cereal
  (package
    (name "haskell-9.4-leb128-cereal")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-leb128-cereal

(define-public haskell-9.4-logict
  (package
    (name "haskell-9.4-logict")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logict/logict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mpv50ifb3x9vfmgi1p9piwcgz8d19x0wdj789wxyhxwjpr6v4py"))))
    (properties `((upstream-name . "logict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/Bodigrim/logict#readme")
    (synopsis "A backtracking logic-programming monad.")
    (description
     "Adapted from the paper
<http://okmij.org/ftp/papers/LogicT.pdf Backtracking, Interleaving, and Terminating Monad Transformers>
by Oleg Kiselyov, Chung-chieh Shan, Daniel P. Friedman, Amr Sabry.")
    (license license:bsd-3)))

haskell-9.4-logict

(define-public haskell-9.4-lpeg
  (package
    (name "haskell-9.4-lpeg")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-lua)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://hslua.org/")
    (synopsis "LPeg – Parsing Expression Grammars For Lua")
    (description "This package contains the C sources of LPeg, as well
as some tiny Haskell helper to load the package.

<http://www.inf.puc-rio.br/~roberto/lpeg/>")
    (license license:expat)))

haskell-9.4-lpeg

(define-public haskell-9.4-lua-arbitrary
  (package
    (name "haskell-9.4-lua-arbitrary")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-lua)))
    (home-page "https://hslua.org/")
    (synopsis "Arbitrary instances for Lua types.")
    (description "Provides instances for QuickCheck's \\\"Arbitrary\\\"
typeclass.")
    (license license:expat)))

haskell-9.4-lua-arbitrary

(define-public haskell-9.4-lukko
  (package
    (name "haskell-9.4-lukko")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lukko/lukko-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07xb926kixqv5scqdl8w34z42zjzdpbq06f0ha3f3nm3rxhgn3m8"))))
    (properties `((upstream-name . "lukko") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fofd-locking")
       #:cabal-revision
       ("3" "1a6spmbiv3ias40sjrnsxfgr1d5mwg039a2q7113zb7i9n6c1m7g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-singleton-bool)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://hackage.haskell.org/package/lukko")
    (synopsis "File locking")
    (description
     "This package provides access to platform dependent file locking APIs:

* <https://www.gnu.org/software/libc/manual/html_node/Open-File-Description-Locks.html Open file descriptor locking> on Linux (\"Lukko.OFD\")
* BSD-style @@flock(2)@@ locks on UNIX platforms (\"Lukko.FLock\")
* Windows locking via <https://docs.microsoft.com/en-us/windows/win32/api/fileapi/nf-fileapi-lockfilee LockFileEx> (\"Lukko.Windows\")
* No-op locking, which throws exceptions (\"Lukko.NoOp\")
* \"Lukko\" module exports the best option for the target platform with uniform API.

There are alternative file locking packages:

* \"GHC.IO.Handle.Lock\" in @@base >= 4.10@@ is good enough for most use cases.
However, uses only 'Handle's so these locks cannot be used for intra-process locking.
(You should use e.g. 'MVar' in addition).

* <https://hackage.haskell.org/package/filelock filelock> doesn't support OFD locking.

/Lukko/ means lock in Finnish.

Submodules \"Lukko.OFD\", \"Lukko.Windows\" etc are available based on following conditions.

@@
if os(windows)
\\  cpp-options: -DHAS_WINDOWS_LOCK

elif (os(linux) && flag(ofd-locking))
\\  cpp-options: -DHAS_OFD_LOCKING
\\  cpp-options: -DHAS_FLOCK

elif !(os(solaris) || os(aix))
\\  cpp-options: -DHAS_FLOCK
@@

\"Lukko.FLock\" is available on not (Windows or Solaris or AIX).
\"Lukko.NoOp\" is always available.")
    (license license:gpl2+)))

haskell-9.4-lukko

(define-public haskell-9.4-matrices
  (package
    (name "haskell-9.4-matrices")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-9.4-matrices

(define-public haskell-9.4-megaparsec
  (package
    (name "haskell-9.4-megaparsec")
    (version "9.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec/megaparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01b05s3chlidz48lrwlyffw712vy4hlfijlh4wj9lq0fdy2b1z0r"))))
    (properties `((upstream-name . "megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Monadic parser combinators")
    (description
     "This is an industrial-strength monadic parser combinator library.
Megaparsec is a feature-rich package that tries to find a nice balance
between speed, flexibility, and quality of parse errors.")
    (license license:bsd-2)))

haskell-9.4-megaparsec

(define-public haskell-9.4-memcache
  (package
    (name "haskell-9.4-memcache")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/memcache/memcache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sbfzmdq0rqzrvrjk7yzkn0mfadbz3dxj1d9n8f3s9mz3s8bv328"))))
    (properties `((upstream-name . "memcache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/dterei/memcache-hs")
    (synopsis "A memcached client library.")
    (description
     "A client library for a Memcached cluster. Memcached is an in-memory key-value
store typically used as a distributed and shared cache. Clients connect to a
group of Memcached servers and perform out-of-band caching for things like
SQL results, rendered pages, or third-party APIs.

It supports the binary Memcached protocol and SASL authentication. No support
for the ASCII protocol is provided. It supports connecting to a single, or a
cluster of Memcached servers. When connecting to a cluser, consistent hashing
is used for routing requests to the appropriate server. Timeouts, retrying
failed operations, and failover to a different server are all supported.

Complete coverage of the Memcached protocol is provided except for multi-get
and other pipelined operations.

Basic usage is:

> import qualified Database.Memcache.Client as M
>
> mc <- M.newClient [M.ServerSpec \"localhost\" \"11211\" M.NoAuth] M.def
> M.set mc \"key\" \"value\" 0 0
> v <- M.get mc \"key\"

You should only need to import 'Database.Memcache.Client', but for now other
modules are exposed.")
    (license license:bsd-3)))

haskell-9.4-memcache

(define-public haskell-9.4-mfsolve
  (package
    (name "haskell-9.4-mfsolve")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mfsolve/mfsolve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "190dszcnvy5j5bs3n0kya8a9nq0vdhrpgpndjpsxw7x70y3hc9d2"))))
    (properties `((upstream-name . "mfsolve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0938ji6l1bx787lxcw6rzjwskm9vxm615cvx7hxpbwp0hbxrj5sa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mtl-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-9.4-mfsolve

(define-public haskell-9.4-microlens-platform
  (package
    (name "haskell-9.4-microlens-platform")
    (version "0.4.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-platform/microlens-platform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13s6m07whp3h05vqm2hz3qv5ai51ll6q4s3kf8nr3pif6wxqbisy"))))
    (properties `((upstream-name . "microlens-platform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-ghc)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + all batteries included (best for apps)")
    (description
     "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @@Lens.Micro.Platform@@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @@Vector@@, @@Text@@, and @@HashMap@@.

The minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.4-microlens-platform

(define-public haskell-9.4-midi
  (package
    (name "haskell-9.4-midi")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-event-list)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-explicit-exception)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-monoid-transformer)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-negative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
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

haskell-9.4-midi

(define-public haskell-9.4-monad-par
  (package
    (name "haskell-9.4-monad-par")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-abstract-deque)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-abstract-par)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)))
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

haskell-9.4-monad-par

(define-public haskell-9.4-mpi-hs
  (package
    (name "haskell-9.4-mpi-hs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004) haskell-9.4-c2hs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
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

haskell-9.4-mpi-hs

(define-public haskell-9.4-network-bsd
  (package
    (name "haskell-9.4-network-bsd")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
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

haskell-9.4-network-bsd

(define-public haskell-9.4-network-run
  (package
    (name "haskell-9.4-network-run")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://hackage.haskell.org/package/network-run")
    (synopsis "Simple network runner library")
    (description "Simple functions to run network clients and servers.")
    (license license:bsd-3)))

haskell-9.4-network-run

(define-public haskell-9.4-perfect-hash-generator
  (package
    (name "haskell-9.4-perfect-hash-generator")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/perfect-hash-generator/perfect-hash-generator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gxrba5lpwzifjg5glld6nj54xhvajm4b6cg88cs64iqnwhh2chi"))))
    (properties `((upstream-name . "perfect-hash-generator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-ordlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sorted-list)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/kostmo/perfect-hash-generator#readme")
    (synopsis "Perfect minimal hashing implementation in native Haskell")
    (description
     "A <https://en.wikipedia.org/wiki/Perfect_hash_function perfect hash function> for a set @@S@@ is a hash function that maps distinct elements in @@S@@ to a set of integers, with __no collisions__. A <https://en.wikipedia.org/wiki/Perfect_hash_function#Minimal_perfect_hash_function minimal perfect hash function> is a perfect hash function that maps @@n@@ keys to @@n@@ __consecutive__ integers, e.g. the numbers from @@0@@ to @@n-1@@.

In contrast with the <https://hackage.haskell.org/package/PerfectHash PerfectHash package>, which is a binding to a C-based library, this package is a fully-native Haskell implementation.

It is intended primarily for generating C code for embedded applications (compare to @@<https://www.gnu.org/software/gperf/manual/gperf.html#Search-Structures gperf>@@). The output of this tool is a pair of arrays that can be included in generated C code for __<https://en.wikipedia.org/wiki/C_dynamic_memory_allocation allocation-free> hash tables__.

Though conceivably this data structure could be used directly in Haskell applications as a read-only hash table, it is not recommened, as lookups are about 10x slower than <https://hackage.haskell.org/package/unordered-containers/docs/Data-HashMap-Strict.html#t:HashMap HashMap>.

This implementation was adapted from <http://stevehanov.ca/blog/index.php?id=119 Steve Hanov's Blog>.

= Usage
The library is written generically to hash both strings and raw integers according to the <http://isthe.com/chongo/tech/comp/fnv/ FNV-1a algorithm>. Integers are split by octets before hashing.

> import Data.PerfectHash.Construction (createMinimalPerfectHash)
> import qualified Data.Map as Map
>
> tuples = [
>    (1000, 1)
>  , (5555, 2)
>  , (9876, 3)
>  ]
>
> lookup_table = createMinimalPerfectHash $ Map.fromList tuples

Generation of C code based on the arrays in @@lookup_table@@ is left as an exercise to the reader. Algorithm documentation in the \"Data.PerfectHash.Hashing\" and \"Data.PerfectHash.Lookup\" modules will be helpful.

= Demo
See the @@hash-perfectly-strings-demo@@ and @@hash-perfectly-ints-demo@@, as well as the test suite, for working examples.

> $ stack build
> $ stack exec hash-perfectly-strings-demo")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-perfect-hash-generator

(define-public haskell-9.4-pipes-concurrency
  (package
    (name "haskell-9.4-pipes-concurrency")
    (version "2.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-concurrency/pipes-concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1waf70qqakz9car35c1nxb0bdjniq46lfk1vmxdjrp76ri2gzd7f"))))
    (properties `((upstream-name . "pipes-concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08gvb94g8fxj41wgrz68f5ccrc9ahdjv5n7v24iclgl731k9cq71")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://hackage.haskell.org/package/pipes-concurrency")
    (synopsis "Concurrency for the pipes ecosystem")
    (description
     "This library provides light-weight concurrency primitives for
pipes, with the following features:

* /Simple API/: Use only five functions

* /Deadlock Safety/: Automatically avoid concurrency deadlocks

* /Flexibility/: Build many-to-many and cyclic communication topologies

* /Dynamic Graphs/: Add or remove readers and writers at any time

Import \"Pipes.Concurrent\" to use the library.

Read \"Pipes.Concurrent.Tutorial\" for a tutorial.")
    (license license:bsd-3)))

haskell-9.4-pipes-concurrency

(define-public haskell-9.4-poll
  (package
    (name "haskell-9.4-poll")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-enumset)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
    (home-page "https://hackage.haskell.org/package/poll")
    (synopsis "Bindings to poll.h")
    (description
     "Poll functionality allows to wait on different FileDescriptors simultaneously.")
    (license license:bsd-3)))

haskell-9.4-poll

(define-public haskell-9.4-port-utils
  (package
    (name "haskell-9.4-port-utils")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://github.com/jfischoff/port-utils#readme")
    (synopsis "Utilities for creating and waiting on ports")
    (description
     "Utilities for creating and waiting on ports. . @@openFreePort@@ will create a socket bound to a random port (like @@warp@@'s @@openFreePort@@). . @@wait@@ will attempt to connect to given host and port repeatedly until successful. .")
    (license license:bsd-3)))

haskell-9.4-port-utils

(define-public haskell-9.4-postgresql-libpq-notify
  (package
    (name "haskell-9.4-postgresql-libpq-notify")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/postgresql-libpq-notify#readme")
    (synopsis "Minimal dependency PostgreSQL notifications library")
    (description
     "Minimal dependency PostgreSQL notifications library. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-postgresql-libpq-notify

(define-public haskell-9.4-pqueue
  (package
    (name "haskell-9.4-pqueue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/pqueue")
    (synopsis "Reliable, persistent, fast priority queues.")
    (description
     "A fast, reliable priority queue implementation based on a binomial heap.")
    (license license:bsd-3)))

haskell-9.4-pqueue

(define-public haskell-9.4-prettyprinter-combinators
  (package
    (name "haskell-9.4-prettyprinter-combinators")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-combinators/prettyprinter-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6338w6cd7fsib00zs8dk16b4mxfa1vswg5bmkzafas1db6qbcg"))))
    (properties `((upstream-name . "prettyprinter-combinators")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0kvfw63g2a6mn4sk3lf8i7g469gz5xazlniivbxxan91gcg7rfb2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bimap)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/sergv/prettyprinter-combinators")
    (synopsis "Some useful combinators for the prettyprinter package")
    (description
     "Various utilities that make writing Pretty instances easier.

Notable utilites include automatic deriving of Pretty instance via
Generic, Data, or Show instance.")
    (license license:asl2.0)))

haskell-9.4-prettyprinter-combinators

(define-public haskell-9.4-proto-lens
  (package
    (name "haskell-9.4-proto-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-lens-family)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "A lens-based implementation of protocol buffers in Haskell.")
    (description
     "The proto-lens library provides an API for protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:

* Composable field accessors via lenses

* Simple field name resolution/overloading via type-level literals

* Type-safe reflection and encoding/decoding of messages via GADTs")
    (license license:bsd-3)))

haskell-9.4-proto-lens

(define-public haskell-9.4-protobuf
  (package
    (name "haskell-9.4-protobuf")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf/protobuf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x99rf8hl5kcldj9fj6z22fxffv3wic5k6wmipnrayp9jj6zzyx9"))))
    (properties `((upstream-name . "protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/alphaHeavy/protobuf")
    (synopsis "Google Protocol Buffers via GHC.Generics")
    (description
     "Google Protocol Buffers via GHC.Generics.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
Google uses Protocol Buffers for almost all of its internal RPC protocols and file formats.

This library supports a useful subset of Google Protocol Buffers message specifications
in a Haskell. No preprocessor or additional build steps are required for message encoding and decoding.

Record specifications are built by defining records with specially defined fields that
capture most of the Protocol Buffers specification language.
")
    (license license:bsd-3)))

haskell-9.4-protobuf

(define-public haskell-9.4-psqueues
  (package
    (name "haskell-9.4-psqueues")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-psqueues

(define-public haskell-9.4-quickcheck-higherorder
  (package
    (name "haskell-9.4-quickcheck-higherorder")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-test-fun)))
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

haskell-9.4-quickcheck-higherorder

(define-public haskell-9.4-quote-quot
  (package
    (name "haskell-9.4-quote-quot")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/quote-quot#readme")
    (synopsis "Divide without division")
    (description
     "Generate routines for integer division, employing arithmetic
and bitwise operations only, which are __2.5x-3.5x faster__
than 'quot'. Divisors must be known in compile-time and be positive.")
    (license license:bsd-3)))

haskell-9.4-quote-quot

(define-public haskell-9.4-random-fu
  (package
    (name "haskell-9.4-random-fu")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-erf)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage002) haskell-9.4-rvar)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-random-fu

(define-public haskell-9.4-regex
  (package
    (name "haskell-9.4-regex")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nzyfkqmclmawmphvksvm9l64awqgnypic4xplc2s9sjcj4h814a"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, comprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-9.4-regex

(define-public haskell-9.4-rope-utf16-splay
  (package
    (name "haskell-9.4-rope-utf16-splay")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rope-utf16-splay/rope-utf16-splay-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vjz5xdmy5kimh8h11shsc9ki6348ccmpy5ps8nzjarsmk6g32f1"))))
    (properties `((upstream-name . "rope-utf16-splay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ollef/rope-utf16-splay")
    (synopsis "Ropes optimised for updating using UTF-16 code units and
row/column pairs.")
    (description "Ropes optimised for updating using UTF-16 code units and
row/column pairs.  This implementation uses splay trees
instead of the usual finger trees. According to my
benchmarks, splay trees are faster in most situations.")
    (license license:bsd-3)))

haskell-9.4-rope-utf16-splay

(define-public haskell-9.4-safe-decimal
  (package
    (name "haskell-9.4-safe-decimal")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-decimal/safe-decimal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q7l8rj5hhkxxhmmibcm0by7psvkw9lj82zd48slyfikmsdm9bdw"))))
    (properties `((upstream-name . "safe-decimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/fpco/safe-decimal#readme")
    (synopsis
     "Safe and very efficient arithmetic operations on fixed decimal point numbers")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/safe-decimal#readme>")
    (license license:bsd-3)))

haskell-9.4-safe-decimal

(define-public haskell-9.4-sample-frame-np
  (package
    (name "haskell-9.4-sample-frame-np")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-sample-frame)))
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

haskell-9.4-sample-frame-np

(define-public haskell-9.4-semigroupoids
  (package
    (name "haskell-9.4-semigroupoids")
    (version "5.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoids/semigroupoids-"
                    version ".tar.gz"))
              (sha256
               (base32
                "169pjrm7lxjxrqj5q1iyl288bx5nj8n0pf2ri1cclxccqnvcsibd"))))
    (properties `((upstream-name . "semigroupoids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-fcontravariant" "-fdistributive" "-fcomonad" "-ftagged" "-funordered-containers")
       #:cabal-revision
       ("1" "063xzbp4p93kbaygn26rzs4wmwf01mcj7d4qfsiwf39gd0wkf2dc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/semigroupoids")
    (synopsis "Semigroupoids: Category sans id")
    (description
     "Provides a wide array of (semi)groupoids and operations for working with them.

A 'Semigroupoid' is a 'Category' without the requirement of identity arrows for every object in the category.

A 'Category' is any 'Semigroupoid' for which the Yoneda lemma holds.

When working with comonads you often have the @@\\<*\\>@@ portion of an @@Applicative@@, but
not the @@pure@@. This was captured in Uustalu and Vene's \\\"Essence of Dataflow Programming\\\"
in the form of the @@ComonadZip@@ class in the days before @@Applicative@@. Apply provides a weaker invariant, but for the comonads used for data flow programming (found in the streams package), this invariant is preserved. Applicative function composition forms a semigroupoid.

Similarly many structures are nearly a comonad, but not quite, for instance lists provide a reasonable 'extend' operation in the form of 'tails', but do not always contain a value.

We describe the relationships between the type classes defined in this package
and those from `base` (and some from `contravariant`) in the diagram below.
Thick-bordered nodes correspond to type classes defined in this package;
thin-bordered ones correspond to type classes from elsewhere. Solid edges
indicate a subclass relationship that actually exists; dashed edges indicate a
subclass relationship that /should/ exist, but currently doesn't.

<<https://raw.githubusercontent.com/ekmett/semigroupoids/master/img/classes.svg Relationships among type classes from this package and others>>

Apply, Bind, and Extend (not shown) give rise the Static, Kleisli and Cokleisli semigroupoids respectively.

This lets us remove many of the restrictions from various monad transformers
as in many cases the binding operation or @@\\<*\\>@@ operation does not require them.

Finally, to work with these weaker structures it is beneficial to have containers
that can provide stronger guarantees about their contents, so versions of 'Traversable'
and 'Foldable' that can be folded with just a 'Semigroup' are added.")
    (license license:bsd-2)))

haskell-9.4-semigroupoids

(define-public haskell-9.4-sendfile
  (package
    (name "haskell-9.4-sendfile")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://github.com/Happstack/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-9.4-sendfile

(define-public haskell-9.4-silently
  (package
    (name "haskell-9.4-silently")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-nanospec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://github.com/hspec/silently")
    (synopsis "Prevent or capture writing to stdout and other handles.")
    (description
     "Prevent or capture writing to stdout, stderr, and other handles.")
    (license license:bsd-3)))

haskell-9.4-silently

(define-public haskell-9.4-sitemap-gen
  (package
    (name "haskell-9.4-sitemap-gen")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-xmlgen)))
    (home-page "https://github.com/prikhi/sitemap-gen#readme")
    (synopsis "Generate XML Sitemaps & Sitemap Indexes")
    (description
     "The @@sitemap-gen@@ package uses the @@xmlgen@@ package to generate XML
sitemaps that are compliant with the sitemaps.org XML schema.

See the \"Web.Sitemap.Gen\" module and the
<https://github.com/prikhi/sitemap-gen/blob/master/README.md README> file
for documentation & usage details.")
    (license license:bsd-3)))

haskell-9.4-sitemap-gen

(define-public haskell-9.4-skein
  (package
    (name "haskell-9.4-skein")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
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

haskell-9.4-skein

(define-public haskell-9.4-socket
  (package
    (name "haskell-9.4-socket")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/socket/socket-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gd0rw6mpzlimvcn3jiw7l0q9h4l3rhfr2n5hhg6k0bkklqp6rbr"))))
    (properties `((upstream-name . "socket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07n19jbgn6459v13l7x55x8l73d48jrn48dcf4402hnyab1mzhr5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lpeterse/haskell-socket")
    (synopsis "An extensible socket library.")
    (description "This library is a minimal cross-platform interface for
BSD style networking.")
    (license license:expat)))

haskell-9.4-socket

(define-public haskell-9.4-socks
  (package
    (name "haskell-9.4-socks")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "http://github.com/vincenthz/hs-socks")
    (synopsis "Socks proxy (ver 5)")
    (description "Socks proxy (version 5) implementation.")
    (license license:bsd-3)))

haskell-9.4-socks

(define-public haskell-9.4-sox
  (package
    (name "haskell-9.4-sox")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-explicit-exception)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-sample-frame)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
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

haskell-9.4-sox

(define-public haskell-9.4-special-values
  (package
    (name "haskell-9.4-special-values")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/special-values/special-values-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kkdw2c4d2hha99v9f89ahmifjxp7fxmxyfwq9a8xk6s0h9xs51w"))))
    (properties `((upstream-name . "special-values") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vv5gydjd65jniifl3mnch8bzvpvdahi913gsa3kv5zijwhad699")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/minad/special-values#readme")
    (synopsis "Typeclass providing special values")
    (description
     "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.")
    (license license:expat)))

haskell-9.4-special-values

(define-public haskell-9.4-splice
  (package
    (name "haskell-9.4-splice")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
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

haskell-9.4-splice

(define-public haskell-9.4-storablevector
  (package
    (name "haskell-9.4-storablevector")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-negative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unsafe)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
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

haskell-9.4-storablevector

(define-public haskell-9.4-strict
  (package
    (name "haskell-9.4-strict")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strict/strict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hb24a09c3agsq7sdv8r2b2jc2f4g1blg2xvj4cfadynib0apxnz"))))
    (properties `((upstream-name . "strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fassoc")
       #:cabal-revision
       ("4" "0pdzqhy7z70m8gxcr54jf04qhncl1jbvwybigb8lrnxqirs5l86n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-assoc)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)))
    (home-page "https://github.com/haskell-strict/strict")
    (synopsis "Strict data types and String IO.")
    (description
     "This package provides strict versions of some standard Haskell data
types (pairs, Maybe and Either). It also contains strict IO operations.

It is common knowledge that lazy datastructures can lead to space-leaks.
This problem is particularly prominent, when using lazy datastructures to
store the state of a long-running application in memory. One common
solution to this problem is to use @@seq@@ and its variants in every piece of
code that updates your state. However a much easier solution is to use
fully strict types to store such state values. By \\\"fully strict types\\\" we
mean types for whose values it holds that, if they are in weak-head normal
form, then they are also in normal form. Intuitively, this means that
values of fully strict types cannot contain unevaluated thunks.

To define a fully strict datatype, one typically uses the following recipe.

1. Make all fields of every constructor strict; i.e., add a bang to
all fields.

2. Use only strict types for the fields of the constructors.

The second requirement is problematic as it rules out the use of
the standard Haskell 'Maybe', 'Either', and pair types. This library
solves this problem by providing strict variants of these types and their
corresponding standard support functions and type-class instances.

Note that this library does currently not provide fully strict lists.
They can be added if they are really required. However, in many cases one
probably wants to use unboxed or strict boxed vectors from the 'vector'
library (<http://hackage.haskell.org/package/vector>) instead of strict
lists.  Moreover, instead of @@String@@s one probably wants to use strict
@@Text@@ values from the @@text@@ library
(<http://hackage.haskell.org/package/text>).

This library comes with batteries included; i.e., mirror functions and
instances of the lazy versions in @@base@@. It also includes instances for
type-classes from the @@deepseq@@, @@binary@@, and @@hashable@@ packages.")
    (license license:bsd-3)))

haskell-9.4-strict

(define-public haskell-9.4-structs
  (package
    (name "haskell-9.4-structs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-9.4-structs

(define-public haskell-9.4-svg-builder
  (package
    (name "haskell-9.4-svg-builder")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-builder/svg-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k420f497lzkymmxin88ql6ib8dziic43avykv31yq65rgrf7l2g"))))
    (properties `((upstream-name . "svg-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1cprm8ya1rdid4pz1dk6692mv0kqkaxrsqaxg83bca5z4dkgqi2z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/diagrams/svg-builder.git")
    (synopsis "DSL for building SVG.")
    (description "Fast, easy to write SVG.")
    (license license:bsd-3)))

haskell-9.4-svg-builder

(define-public haskell-9.4-systemd
  (package
    (name "haskell-9.4-systemd")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://github.com/erebe/systemd")
    (synopsis "Systemd facilities (Socket activation, Notify)")
    (description "A module for Systemd facilities.")
    (license license:bsd-3)))

haskell-9.4-systemd

(define-public haskell-9.4-systemd-socket-activation
  (package
    (name "haskell-9.4-systemd-socket-activation")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/systemd-socket-activation/systemd-socket-activation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1shqkxa8wgnx3bndy3qgykb4l0jsrp4qpwahgy9r6n98a1idbx0v"))))
    (properties `((upstream-name . "systemd-socket-activation")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (home-page "https://github.com/typeclasses/systemd-socket-activation")
    (synopsis "Let systemd bind the server's socket for you")
    (description
     "\"Socket activation\" is the a feature of systemd. We use it for web
servers, to avoid the momentary downtime that otherwise occurs while restarting
processes. Because the socket is manged by systemd, not by our process, the
socket remains even while our process is down. Requests to the socket are queued
until our process comes back up to respond.")
    (license license:expat)))

haskell-9.4-systemd-socket-activation

(define-public haskell-9.4-tasty-kat
  (package
    (name "haskell-9.4-tasty-kat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-9.4-tasty-kat

(define-public haskell-9.4-termbox-tea
  (package
    (name "haskell-9.4-termbox-tea")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-ki)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-termbox)))
    (home-page "https://github.com/termbox/termbox-haskell")
    (synopsis "termbox + The Elm Architecture")
    (description
     "This package provides an Elm Architecture interface to @@termbox@@ programs.

See also:

* @@<https://hackage.haskell.org/package/termbox-banana termbox-banana>@@ for a @@reactive-banana@@ FRP interface.")
    (license license:bsd-3)))

haskell-9.4-termbox-tea

(define-public haskell-9.4-terminal-progress-bar
  (package
    (name "haskell-9.4-terminal-progress-bar")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)))
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

haskell-9.4-terminal-progress-bar

(define-public haskell-9.4-text-latin1
  (package
    (name "haskell-9.4-text-latin1")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-latin1/text-latin1-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wxbv6m567n3330baw2k0xxd50nhn2k6w3lgmpk6zq7x1jp84x3c"))))
    (properties `((upstream-name . "text-latin1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-checked)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "https://github.com/mvv/text-latin1")
    (synopsis "Latin-1 (including ASCII) utility functions")
    (description
     "This package provides various functions over the ASCII ang Latin-1
portions of the 'Char' and 'Word8' data types.")
    (license license:bsd-3)))

haskell-9.4-text-latin1

(define-public haskell-9.4-text-rope
  (package
    (name "haskell-9.4-text-rope")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/text-rope")
    (synopsis "Text lines and ropes")
    (description
     "A wrapper around `Text` for fast line/column navigation and logarithmic concatenation.")
    (license license:bsd-3)))

haskell-9.4-text-rope

(define-public haskell-9.4-text-short
  (package
    (name "haskell-9.4-text-short")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-short/text-short-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nid00c1rg5c1z7l9mwk3f2izc2sps2mip2hl30q985dwb6wcpm3"))))
    (properties `((upstream-name . "text-short") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-asserts")
       #:cabal-revision
       ("2" "0lkh1sl8vx11vjjkxs2fz3jmmw1fp1f2k74q2acz6nywi4ifp5n2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/text-short")
    (synopsis "Memory-efficient representation of Unicode text strings")
    (description
     "This package provides the 'ShortText' type which is suitable for keeping many short strings in memory. This is similiar to how 'ShortByteString' relates to 'ByteString'.

The main difference between 'Text' and 'ShortText' is that 'ShortText' doesn't support zero-copy slicing (thereby saving 2 words), and, compared to text-1.*, that it uses UTF-8 instead of UTF-16 internally. Consequently, the memory footprint of a (boxed) 'ShortText' value is 4 words (2 words when unboxed) plus the length of the UTF-8 encoded payload.")
    (license license:bsd-3)))

haskell-9.4-text-short

(define-public haskell-9.4-th-expand-syns
  (package
    (name "haskell-9.4-th-expand-syns")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.

As of version @@0.4.9.0@@, this library is a small shim on
top of the @@applySubstitution@@/@@resolveTypeSynonyms@@
functions from @@th-abstraction@@, so you may want to
consider using @@th-abstraction@@ instead.")
    (license license:bsd-3)))

haskell-9.4-th-expand-syns

(define-public haskell-9.4-these-optics
  (package
    (name "haskell-9.4-these-optics")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/these-optics/these-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06jxv320a8f94zjjsqrh072vz2dkzhwgcmpbdy1prgvypiynm4zd"))))
    (properties `((upstream-name . "these-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02xvfk8n40k6r595g8khcnxy1z2jhi2lfmfpi7m0ayrq7il0rls5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Optics for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-9.4-these-optics

(define-public haskell-9.4-time-compat
  (package
    (name "haskell-9.4-time-compat")
    (version "1.9.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-compat/time-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "103b3vpn277kkccv6jv54b2wpi5c00mpb01ndl9w4y4nxc0bn1xd"))))
    (properties `((upstream-name . "time-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("5" "0ryv5p2hgq5a6iyvh2r30sdlr7jn70cw8ypw5sc0hwbb1pxf2kfx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/time-compat")
    (synopsis "Compatibility package for time")
    (description
     "This packages tries to compat as much of @@time@@ features as possible.

/TODO:/

* Difference type @@ParseTime@@ and @@FormatTime@@ instances are missing.

* Formatting varies depending on underlying @@time@@ version

* @@dayFractionToTimeOfDay@@ on extreme values")
    (license license:bsd-3)))

haskell-9.4-time-compat

(define-public haskell-9.4-titlecase
  (package
    (name "haskell-9.4-titlecase")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-9.4-titlecase

(define-public haskell-9.4-tmapchan
  (package
    (name "haskell-9.4-tmapchan")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapchan/tmapchan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q0ia2p8c5ac91n5l3wk6rfmvj93lb9027p9rfq77lydwv1b8vg8"))))
    (properties `((upstream-name . "tmapchan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/athanclark/tmapchan#readme")
    (synopsis
     "An insert-ordered multimap (indexed FIFO) which consumes values as you lookup")
    (description "")
    (license license:bsd-3)))

haskell-9.4-tmapchan

(define-public haskell-9.4-tostring
  (package
    (name "haskell-9.4-tostring")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tostring/tostring-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c95a1vjnnn3bwdz8v5hv7q2sbzn23ban3hcwqmwhmzc9ba019zg"))))
    (properties `((upstream-name . "tostring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1h3cdngxmcxs3bssxmp67s0nipblv0kidq4wr72ln3l090k0ynz0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "https://hackage.haskell.org/package/tostring")
    (synopsis "The ToString class")
    (description "A type class for converting text types to String.")
    (license license:bsd-3)))

haskell-9.4-tostring

(define-public haskell-9.4-tuple
  (package
    (name "haskell-9.4-tuple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-OneTuple)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-9.4-tuple

(define-public haskell-9.4-unbound-generics
  (package
    (name "haskell-9.4-unbound-generics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
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

haskell-9.4-unbound-generics

(define-public haskell-9.4-unboxed-ref
  (package
    (name "haskell-9.4-unboxed-ref")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxed-ref/unboxed-ref-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gvpp35mzx6ydwhwqdv319pl4yw7g4pyayciry83lnh3a3asisv4"))))
    (properties `((upstream-name . "unboxed-ref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "https://github.com/winterland1989/unboxed-ref")
    (synopsis "Fast unboxed references for ST and IO monad")
    (description "Fast unboxed references for ST and IO monad")
    (license license:bsd-3)))

haskell-9.4-unboxed-ref

(define-public haskell-9.4-uniplate
  (package
    (name "haskell-9.4-uniplate")
    (version "1.6.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniplate/uniplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lis5qcb5j7yzd1cqjaqpb6bmkyjfb7l4nhk3ykmcma4513cjxz7"))))
    (properties `((upstream-name . "uniplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rvvzmi43gbrww0f17dzchm3g61zvm97arrfa5raljqb1mbibdy8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/ndmitchell/uniplate#readme")
    (synopsis "Help writing simple, concise and fast generic operations.")
    (description
     "Uniplate is library for writing simple and concise generic operations.
Uniplate has similar goals to the original Scrap Your Boilerplate work,
but is substantially simpler and faster.

To get started with Uniplate you should import one of the three following
modules:

* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.
Most users should start by importing this module.

* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"
with substantially higher performance (around 5 times), but requires writing
instance declarations.

* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined
by Uniplate. Both the above two modules re-export this module.

In addition, some users may want to make use of the following modules:

* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.

* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.

* \"Data.Generics.Compos\" - users transitioning from the Compos library.

* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @@Data@@ and @@Direct@@
to avoid getting instance conflicts.")
    (license license:bsd-3)))

haskell-9.4-uniplate

(define-public haskell-9.4-uniq-deep
  (package
    (name "haskell-9.4-uniq-deep")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniq-deep/uniq-deep-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0281yfiv6qmq1q5pvrvf6qg4nwzzav6rvb4mcdzqshsrbw9n12ig"))))
    (properties `((upstream-name . "uniq-deep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/ncaq/uniq-deep#readme")
    (synopsis "uniq-deep")
    (description
     "alternative of unix uniq command. 'uniq-deep' detect repeated lines unless they are adjacent.")
    (license license:expat)))

haskell-9.4-uniq-deep

(define-public haskell-9.4-units-parser
  (package
    (name "haskell-9.4-units-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-multimap)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/units-parser")
    (synopsis "A parser for units of measure")
    (description
     "The @@units-parser@@ package provides a parser for unit expressions
with F#-style syntax, to support the @@units@@ package and other
packages providing type-level units of measure.")
    (license license:bsd-3)))

haskell-9.4-units-parser

(define-public haskell-9.4-uuid
  (package
    (name "haskell-9.4-uuid")
    (version "1.3.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/uuid/uuid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r05h16gd7fgfpq9iz43jcn9jzrgfa0gk4cv1xy0p4rli66rb1gq"))))
    (properties `((upstream-name . "uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "06j1hk4alypnwd4v55w6lfm1jrsaqh85k350qmymw0sqbrd9rmx3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-network-info)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)))
    (home-page "https://github.com/haskell-hvr/uuid")
    (synopsis
     "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
     "This library is useful for creating, comparing, parsing and
printing Universally Unique Identifiers.

See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-9.4-uuid

(define-public haskell-9.4-vault
  (package
    (name "haskell-9.4-vault")
    (version "0.3.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vault/vault-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "181ksk1yixjg0jiggw5jvm8am8m8c7lim4xaixf8qnaqvxm6namc"))))
    (properties `((upstream-name . "vault") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuseghc")
       #:cabal-revision
       ("2" "1bjwv3nv8jfhrdxa5kn3gvgxmyalpq7592bvyl7bpvcc7bbkfkf3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/HeinrichApfelmus/vault")
    (synopsis "a persistent store for values of arbitrary types")
    (description
     "A /vault/ is a persistent store for values of arbitrary types.
It's like having first-class access to the storage space behind IORefs.

The data structure is analogous to a bank vault,
where you can access different bank boxes with different keys;
hence the name.

Also provided is a /locker/ type, representing a store for a single element.")
    (license license:bsd-3)))

haskell-9.4-vault

(define-public haskell-9.4-vector-mmap
  (package
    (name "haskell-9.4-vector-mmap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-mmap)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "http://github.com/pumpkin/vector-mmap")
    (synopsis "Memory map immutable and mutable vectors")
    (description "Memory map immutable and mutable vectors.")
    (license license:bsd-3)))

haskell-9.4-vector-mmap

(define-public haskell-9.4-vector-rotcev
  (package
    (name "haskell-9.4-vector-rotcev")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/rotcev")
    (synopsis "Vectors with O(1) reverse")
    (description
     "A wrapper for an arbitrary @@Vector@@ with O(1) @@reverse@@.
Instead of creating a copy, it just flips a flag, which inverts indexing.
Imagine it as a vector with a switch between little-endianness and big-endianness.")
    (license license:bsd-3)))

haskell-9.4-vector-rotcev

(define-public haskell-9.4-vector-split
  (package
    (name "haskell-9.4-vector-split")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-split/vector-split-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y2imndpyx15jmiajhabi34522jcayrz05zrxiv1srj4fssz56bd"))))
    (properties `((upstream-name . "vector-split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-9.4-vector-split

(define-public haskell-9.4-vivid-supercollider
  (package
    (name "haskell-9.4-vivid-supercollider")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vivid-osc)))
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

haskell-9.4-vivid-supercollider

(define-public haskell-9.4-weigh
  (package
    (name "haskell-9.4-weigh")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (home-page "https://github.com/fpco/weigh#readme")
    (synopsis "Measure allocations of a Haskell functions/values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-weigh

(define-public haskell-9.4-xmlbf
  (package
    (name "haskell-9.4-xmlbf")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlbf/xmlbf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zqim6cz8wlvhzxpk5q8wk69a6vm4z9j0pyr1jkhd495gphzkysy"))))
    (properties `((upstream-name . "xmlbf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-selective)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (description
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-xmlbf

(define-public haskell-9.4-xor
  (package
    (name "haskell-9.4-xor")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-byteorder)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
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

haskell-9.4-xor

(define-public haskell-9.4-yeshql-core
  (package
    (name "haskell-9.4-yeshql-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-convertible)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis "YesQL-style SQL database abstraction (core)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-9.4-yeshql-core

(define-public haskell-9.4-zeromq4-haskell
  (package
    (name "haskell-9.4-zeromq4-haskell")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-haskell/zeromq4-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sznvz842ycbd73y8q09s6hs4i3yj1b5qm00n06f69p1i5jrkgnk"))))
    (properties `((upstream-name . "zeromq4-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages networking) zeromq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/zeromq-haskell/")
    (synopsis "Bindings to ZeroMQ 4.x")
    (description
     "The 0MQ lightweight messaging kernel is a library which extends
the standard socket interfaces with features traditionally provided
by specialised messaging middleware products.

0MQ sockets provide an abstraction of asynchronous message queues,
multiple messaging patterns, message filtering (subscriptions),
seamless access to multiple transport protocols and more.

This library provides the Haskell language binding to 0MQ >= 4.x")
    (license license:expat)))

haskell-9.4-zeromq4-haskell

(define-public haskell-9.4-zigzag
  (package
    (name "haskell-9.4-zigzag")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/byteverse/zigzag")
    (synopsis "Zigzag encoding of integers into unsigned integers.")
    (description
     "Zigzag encoding is usually a precursor to a varint encoding such as LEB128.
It has the advantage that numbers nearer zero are represented with only the lower-order bits set.")
    (license license:bsd-3)))

haskell-9.4-zigzag

(define-public haskell-9.4-zio
  (package
    (name "haskell-9.4-zio")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-unexceptionalio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unexceptionalio-trans)))
    (home-page "https://github.com/bbarker/haskell-zio#readme")
    (synopsis
     "App-centric Monad-transformer based on Scala ZIO (UIO + ReaderT + ExceptT).")
    (description
     "Please see the README on GitHub at <https://github.com/bbarker/haskell-zio#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.4-zio

(define-public haskell-9.4-zlib
  (package
    (name "haskell-9.4-zlib")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
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

haskell-9.4-zlib

