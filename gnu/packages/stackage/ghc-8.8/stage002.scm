;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage002)
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
(define-public haskell-8.8-ENIG
  (package
    (name "haskell-8.8-ENIG")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ENIG/ENIG-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zv6dybsnj3kssiyyg69lxyj5wvi5qjx0xp7skg362xzqmi97ch3"))))
    (properties `((upstream-name . "ENIG") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/QuietJoon/ENIG#readme")
    (synopsis "Auto Korean conjugator/adjustor/adopter/converter")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>")
    (license license:bsd-3)))

haskell-8.8-ENIG

(define-public haskell-8.8-Ebnf2ps
  (package
    (name "haskell-8.8-Ebnf2ps")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Ebnf2ps/Ebnf2ps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jrbxanhp81n3nabdw5s1gh8a78hy4bgnv5slqzrkj6n47bygk0f"))))
    (properties `((upstream-name . "Ebnf2ps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)))
    (home-page "https://github.com/FranklinChen/Ebnf2ps")
    (synopsis "Peter's Syntax Diagram Drawing Tool")
    (description "Ebnf2ps generates nice looking syntax diagrams in EPS
and FIG format from EBNF specifications and from yacc,
bison, and Happy input grammars. The diagrams can be
immediatedly included in TeX/LaTeX documents and in
texts created with other popular document preparation
systems.")
    (license license:bsd-3)))

haskell-8.8-Ebnf2ps

(define-public haskell-8.8-FontyFruity
  (package
    (name "haskell-8.8-FontyFruity")
    (version "0.5.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FontyFruity/FontyFruity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16hafvgfmxjv6bl67f3691n2ci3k89pbh0296vfwf9jk7ah5psrd"))))
    (properties `((upstream-name . "FontyFruity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (home-page "https://hackage.haskell.org/package/FontyFruity")
    (synopsis "A true type file format loader")
    (description "A haskell Truetype file parser.

You can load a font file and extract some curves to be
drawed with a library like Rasterific .")
    (license license:bsd-3)))

haskell-8.8-FontyFruity

(define-public haskell-8.8-GLFW-b
  (package
    (name "haskell-8.8-GLFW-b")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-bindings-GLFW)))
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

haskell-8.8-GLFW-b

(define-public haskell-8.8-HTTP
  (package
    (name "haskell-8.8-HTTP")
    (version "4000.3.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTTP/HTTP-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "150m5v125s4jrxzl85jhnh69kp4mjyzhkqp0c1k087008f73csqd"))))
    (properties `((upstream-name . "HTTP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mtl1" "-f-warn-as-error" "-f-conduit10" "-f-warp-tests" "-fnetwork-uri")
       #:cabal-revision
       ("2" "1rkazrbxfpx7bhp6fhgx97j58i4ccyp8bxjgdhr33cpv1b2cza9b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (home-page "https://github.com/haskell/HTTP")
    (synopsis "A library for client-side HTTP")
    (description
     "The HTTP package supports client-side web programming in Haskell. It lets you set up
HTTP connections, transmitting requests and processing the responses coming back, all
from within the comforts of Haskell. It's dependent on the network package to operate,
but other than that, the implementation is all written in Haskell.

A basic API for issuing single HTTP requests + receiving responses is provided. On top
of that, a session-level abstraction is also on offer  (the @@BrowserAction@@ monad);
it taking care of handling the management of persistent connections, proxies,
state (cookies) and authentication credentials required to handle multi-step
interactions with a web server.

The representation of the bytes flowing across is extensible via the use of a type class,
letting you pick the representation of requests and responses that best fits your use.
Some pre-packaged, common instances are provided for you (@@ByteString@@, @@String@@).

Here's an example use:

>
>    do
>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")
>              -- fetch document and return it (as a 'String'.)
>      fmap (take 100) (getResponseBody rsp)
>
>    do
>      (_, rsp)
>         <- Network.Browser.browse $ do
>               setAllowRedirects True -- handle HTTP redirects
>               request $ getRequest \"http://www.haskell.org/\"
>      return (take 100 (rspBody rsp))

__Note:__ This package does not support HTTPS connections.
If you need HTTPS, take a look at the following packages:

* <http://hackage.haskell.org/package/http-streams http-streams>

* <http://hackage.haskell.org/package/http-client http-client> (in combination with
<http://hackage.haskell.org/package/http-client-tls http-client-tls>)

* <http://hackage.haskell.org/package/req req>

* <http://hackage.haskell.org/package/wreq wreq>
")
    (license license:bsd-3)))

haskell-8.8-HTTP

(define-public haskell-8.8-HUnit-approx
  (package
    (name "haskell-8.8-HUnit-approx")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HUnit-approx/HUnit-approx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brblqpz002jzql9wgzxk5zlfglmkv91s8gcfd6992xv539jfhsa"))))
    (properties `((upstream-name . "HUnit-approx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)))
    (home-page "https://github.com/goldfirere/HUnit-approx")
    (synopsis "Approximate equality for floating point numbers with HUnit")
    (description
     "This package exports combinators useful in comparing floating-point numbers
in HUnit tests, by using approximate equality.")
    (license license:bsd-3)))

haskell-8.8-HUnit-approx

(define-public haskell-8.8-HsOpenSSL
  (package
    (name "haskell-8.8-HsOpenSSL")
    (version "0.11.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL/HsOpenSSL-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1np4yyiq4935p1vbf89m0ifkilzc6vzab9i8x7c21y9s7rsv4rj9"))))
    (properties `((upstream-name . "HsOpenSSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast-bignum" "-f-homebrew-openssl" "-f-macports-openssl" "-f-use-pkg-config" "-f-old-locale")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/vshabanov/HsOpenSSL")
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

haskell-8.8-HsOpenSSL

(define-public haskell-8.8-JuicyPixels
  (package
    (name "haskell-8.8-JuicyPixels")
    (version "3.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels/JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yj4jyf56r3c1r3v1lkx8i8ll0jl8g8y2yv87sa4hwgck52199gc"))))
    (properties `((upstream-name . "JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mmap")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-8.8-JuicyPixels

(define-public haskell-8.8-LibZip
  (package
    (name "haskell-8.8-LibZip")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/LibZip/LibZip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ps2psza80jz566c9k377cqn536g6jcbs558jkc60gra5lhf0dm6"))))
    (properties `((upstream-name . "LibZip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-bindings-libzip)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Bindings to libzip, a library for manipulating zip archives.")
    (description
     "libzip is a C library for reading, creating, and modifying zip archives.
This package allows to use it from Haskell code.")
    (license license:bsd-3)))

haskell-8.8-LibZip

(define-public haskell-8.8-QuickCheck
  (package
    (name "haskell-8.8-QuickCheck")
    (version "2.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuickCheck/QuickCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0426j43af8v3qmdjjqxivazsvr3a2brac8yw09vpgpjkb2m0nmkv"))))
    (properties `((upstream-name . "QuickCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplatehaskell")
       #:cabal-revision
       ("1" "0ynhx1n135b0zg539c9m7gp75dykm93pqqlp5xz2w4kmpxjp4vk3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-splitmix)))
    (home-page "https://github.com/nick8325/quickcheck")
    (synopsis "Automatic testing of Haskell programs")
    (description
     "QuickCheck is a library for random testing of program properties.
The programmer provides a specification of the program, in the form of
properties which functions should satisfy, and QuickCheck then tests that the
properties hold in a large number of randomly generated cases.
Specifications are expressed in Haskell, using combinators provided by
QuickCheck. QuickCheck provides combinators to define properties, observe the
distribution of test data, and define test data generators.

Most of QuickCheck's functionality is exported by the main \"Test.QuickCheck\"
module. The main exception is the monadic property testing library in
\"Test.QuickCheck.Monadic\".

If you are new to QuickCheck, you can try looking at the following resources:

* The <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>.
It's a bit out-of-date in some details and doesn't cover newer QuickCheck features,
but is still full of good advice.
* <https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>,
a detailed tutorial written by a user of QuickCheck.

The <https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>
companion package provides instances for types in Haskell Platform packages
at the cost of additional dependencies.")
    (license license:bsd-3)))

haskell-8.8-QuickCheck

(define-public haskell-8.8-SafeSemaphore
  (package
    (name "haskell-8.8-SafeSemaphore")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SafeSemaphore/SafeSemaphore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rpg9j6fy70i0b9dkrip9d6wim0nac0snp7qzbhykjkqlcvvgr91"))))
    (properties `((upstream-name . "SafeSemaphore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k61gqgfh6n3sj8ni8sfvpcm39nqc2msjfxk2pgmhfabvv48w5hv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://github.com/ChrisKuklewicz/SafeSemaphore")
    (synopsis "Much safer replacement for QSemN, QSem, and SampleVar")
    (description
     "This provides a much safer semaphore than the QSem, QSemN, SampleVar in base.
Those base modules are not exception safe and can be broken by killThread.
See <https://github.com/ChrisKuklewicz/SafeSemaphore> for more details.")
    (license license:bsd-3)))

haskell-8.8-SafeSemaphore

(define-public haskell-8.8-alternative-vector
  (package
    (name "haskell-8.8-alternative-vector")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alternative-vector/alternative-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cf7akvr9nac1483chh7rd3xp5i5zk78f245lw9ixj6v133lnis2"))))
    (properties `((upstream-name . "alternative-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/athanclark/alternative-vector#readme")
    (synopsis "Use vectors instead of lists for many and some")
    (description "")
    (license license:bsd-3)))

haskell-8.8-alternative-vector

(define-public haskell-8.8-ansi-wl-pprint
  (package
    (name "haskell-8.8-ansi-wl-pprint")
    (version "0.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-wl-pprint/ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b2fg8px98dzbaqyns10kvs8kn6cl1hdq5wb9saz40izrpkyicm7"))))
    (properties `((upstream-name . "ansi-wl-pprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("3" "1km10sx7ldyv1vfyljik1gqnrwl7bnq2s5m40w41gc930vm48891")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)))
    (home-page "http://github.com/ekmett/ansi-wl-pprint")
    (synopsis
     "The Wadler/Leijen Pretty Printer for colored ANSI terminal output")
    (description
     "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf).
It has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.")
    (license license:bsd-3)))

haskell-8.8-ansi-wl-pprint

(define-public haskell-8.8-ascii-case
  (package
    (name "haskell-8.8-ascii-case")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-case/ascii-case-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qs1rccslixsg4szgp7y98sqhhn0asp9qmk9vfrwdjfipmf3z72p"))))
    (properties `((upstream-name . "ascii-case") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ascii-char)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII letter case")
    (description
     "This package defines a @@Case@@ type that describes the two varieties of ASCII letter: capital and small.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii-case

(define-public haskell-8.8-ascii-group
  (package
    (name "haskell-8.8-ascii-group")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-group/ascii-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19l50ksqa7jdsl0pmrmy8q8jbgmb1j3hr63jjzys220f0agsgcwr"))))
    (properties `((upstream-name . "ascii-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ascii-char)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII character groups")
    (description
     "This package defines a @@Group@@ type that describes the two varieties of ASCII character, and provides some functions for classifying characters by group.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii-group

(define-public haskell-8.8-ascii-predicates
  (package
    (name "haskell-8.8-ascii-predicates")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-predicates/ascii-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dzrxqhq7vqplg4aanc4kindwpizv3d777ri81sj1m1zn3vzvrrq"))))
    (properties `((upstream-name . "ascii-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ascii-char)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Various categorizations of ASCII characters")
    (description
     "This package provides a variety of predicates on the ASCII character set.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii-predicates

(define-public haskell-8.8-ascii-superset
  (package
    (name "haskell-8.8-ascii-superset")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-superset/ascii-superset-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wanvb18h1jlf33f6zr7l1swvagdhw5w3554fsvjq1dm37nygd5m"))))
    (properties `((upstream-name . "ascii-superset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ascii-char)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Representing ASCII with refined supersets")
    (description
     "This package defines classes which describe what subset of a type is valid as ASCII, as well as a type constructor representing a value of a superset that is known to be valid ASCII.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii-superset

(define-public haskell-8.8-assert-failure
  (package
    (name "haskell-8.8-assert-failure")
    (version "0.1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/assert-failure/assert-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k8a7g82dsj50djpy2kvhnfljb3y9w9dx9mpymvn6hxd6rir4bpm"))))
    (properties `((upstream-name . "assert-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)))
    (home-page "https://github.com/Mikolaj/assert-failure")
    (synopsis "Syntactic sugar improving 'assert' and 'error'")
    (description "This library contains syntactic sugar that makes it easier
to write simple contracts with 'assert' and 'error'
and report the values that violate contracts.")
    (license license:bsd-3)))

haskell-8.8-assert-failure

(define-public haskell-8.8-atom-basic
  (package
    (name "haskell-8.8-atom-basic")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atom-basic/atom-basic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vkm5wfsgprs42qjzxchgrpxj3xalpg2zd79n9isvlxsp1krdgi4"))))
    (properties `((upstream-name . "atom-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (home-page "https://hackage.haskell.org/package/atom-basic")
    (synopsis "Basic Atom feed construction")
    (description
     "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a
relatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed
that can be used to generate feed or entry XML using the types of any
Haskell XML library. Please see the 'Web.Atom' module documentation for
more information.")
    (license license:bsd-3)))

haskell-8.8-atom-basic

(define-public haskell-8.8-attoparsec
  (package
    (name "haskell-8.8-attoparsec")
    (version "0.13.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec/attoparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cpgxc17lh4lnpblb3cimpq4ka23bf89q6yvd0jwk7klw5nwsrms"))))
    (properties `((upstream-name . "attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("2" "11hjmwpy9bcc0jcjg2wsy9v5yyszl4vjm63cjaaqv68ziafrg5q8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (home-page "https://github.com/bos/attoparsec")
    (synopsis "Fast combinator parsing for bytestrings and text")
    (description
     "A fast parser combinator library, aimed particularly at dealing
efficiently with network protocols and complicated text/binary
file formats.")
    (license license:bsd-3)))

haskell-8.8-attoparsec

(define-public haskell-8.8-basic-prelude
  (package
    (name "haskell-8.8-basic-prelude")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/snoyberg/basic-prelude#readme")
    (synopsis
     "An enhanced core prelude; a common foundation for alternate preludes.")
    (description
     "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
    (license license:expat)))

haskell-8.8-basic-prelude

(define-public haskell-8.8-binary-parsers
  (package
    (name "haskell-8.8-binary-parsers")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parsers/binary-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jmr9djkp9ndysly8g1najzy38xhjpflri5jkwlyfnd2vk9x74yi"))))
    (properties `((upstream-name . "binary-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (home-page "https://github.com/winterland1989/binary-parsers")
    (synopsis
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (description
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (license license:bsd-3)))

haskell-8.8-binary-parsers

(define-public haskell-8.8-blaze-textual
  (package
    (name "haskell-8.8-blaze-textual")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-textual/blaze-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bbcykkrlgdb6jaz72njriq9if6bzsx52jn26k093f5sn1d7jhhh"))))
    (properties `((upstream-name . "blaze-textual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-fnative" "-f-integer-simple")
       #:cabal-revision
       ("1" "1admqsfgi0zqfq77wlmy3yhiqwskhf6c24qlg0vx7vsvgzwafn8l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/bos/blaze-textual")
    (synopsis "Fast rendering of common datatypes")
    (description
     "A library for efficiently rendering Haskell datatypes to
bytestrings.

/Note/: if you use GHCi or Template Haskell, please see the
@@README@@ file for important details about building this package,
and other packages that depend on it:
<https://github.com/bos/blaze-textual#readme>")
    (license license:bsd-3)))

haskell-8.8-blaze-textual

(define-public haskell-8.8-both
  (package
    (name "haskell-8.8-both")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/both/both-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kdqz901fpdgggmkm9rpnpv7gma9c8d887bszhnz6xd3v96gg7xn"))))
    (properties `((upstream-name . "both") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001) haskell-8.8-zero)))
    (home-page "https://github.com/barrucadu/both")
    (synopsis "Like Maybe, but with a different Monoid instance.")
    (description
     "The Monoid instance for Maybe behaves like so:

> instance Monoid a => Monoid (Maybe a) where
>   mappend (Just x) (Just y) = Just $ x <> y
>   mappend (Just x) Nothing  = Just x
>   mappend Nothing  (Just y) = Just y
>   mappend Nothing  Nothing  = Nothing
>
>   mempty = Nothing

Both is a newtype wrapper around Maybe providing this instance:

> instance Monoid a => Monoid (Both a) where
>   mappend (Just x) (Just y) = Just $ x <> y
>   mappend _ _ = Nothing
>
>   mempty = Just mempty")
    (license license:expat)))

haskell-8.8-both

(define-public haskell-8.8-buffer-builder
  (package
    (name "haskell-8.8-buffer-builder")
    (version "0.2.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-builder/buffer-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n1zb12zm86rm3jqpdh7j15w6dd1mii0fmaihkdqm0b1rv2zm2dk"))))
    (properties `((upstream-name . "buffer-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/chadaustin/buffer-builder")
    (synopsis
     "Library for efficiently building up buffers, one piece at a time")
    (description
     "\"Data.BufferBuilder\" is an efficient library for incrementally building
up 'ByteString's, one chunk at a time.  Early benchmarks show it
is over twice as fast as ByteString Builder, primarily because
'BufferBuilder' is built upon an ST-style restricted monad and
mutable state instead of ByteString Builder's monoidal AST.

Internally, BufferBuilder is backed by a few C functions.
Examination of GHC's output shows nearly optimal code generation
with no intermediate thunks -- and thus, continuation passing and
its associated indirect jumps and stack traffic only occur when
BufferBuilder is asked to append a non-strict ByteString.

I benchmarked four approaches with a URL encoding benchmark:

* State monad, concatenating ByteStrings: 6.98 us

* State monad, ByteString Builder: 2.48 us

* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)

* C + FFI + ReaderT: 1.11 us

Using BufferBuilder is very simple:

> import qualified Data.BufferBuilder as BB
>
> let byteString = BB.runBufferBuilder $ do
>       BB.appendBS \"http\"
>       BB.appendChar8 '/'
>       BB.appendBS \"//\"

This package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers
and \"Data.BufferBuilder.Json\" for encoding data structures into JSON.")
    (license license:bsd-3)))

haskell-8.8-buffer-builder

(define-public haskell-8.8-byte-order
  (package
    (name "haskell-8.8-byte-order")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byte-order/byte-order-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nnq4qmqmkv61xcyxrh14s6hg7rbnjkna6mwlrqh1rr59pikn45w"))))
    (properties `((upstream-name . "byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-primitive-unaligned)))
    (home-page "https://github.com/andrewthad/byte-order")
    (synopsis "Portable big-endian and little-endian conversions")
    (description
     "This library provides an interface to portably work with byte
arrays whose contents are known to be of a fixed endianness.
There are two ways to use this module. See the `System.ByteOrder`
module for more documentation.")
    (license license:bsd-3)))

haskell-8.8-byte-order

(define-public haskell-8.8-category
  (package
    (name "haskell-8.8-category")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/category/category-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iya7q3b1z1bxv4amsibmc1lrmf7dng76nzcnanwy300jm1n42w7"))))
    (properties `((upstream-name . "category") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13yj1v414llr5cxdd5f3wdy75si2hj7f3k1f6w7kwj84gbrii5rr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001) haskell-8.8-alg)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-dual)))
    (home-page "https://hackage.haskell.org/package/category")
    (synopsis "Categorical types and classes")
    (description "")
    (license license:bsd-3)))

haskell-8.8-category

(define-public haskell-8.8-chan
  (package
    (name "haskell-8.8-chan")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)))
    (home-page "https://github.com/athanclark/chan#readme")
    (synopsis "Some extra kit for Chans")
    (description
     "Please see the README on Github at <https://github.com/athanclark/chan#readme>")
    (license license:bsd-3)))

haskell-8.8-chan

(define-public haskell-8.8-charset
  (package
    (name "haskell-8.8-charset")
    (version "0.3.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/charset/charset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gn0m96qpjww8hpp2g1as5yy0wcwy4iq73h3kz6g0yxxhcl5sh9x"))))
    (properties `((upstream-name . "charset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0zy53crlhmyg931prmjqc99s3273frgmcgnssx889mbvp7z9x7wq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/ekmett/charset")
    (synopsis
     "Fast unicode character sets based on complemented PATRICIA tries")
    (description
     "Fast unicode character sets based on complemented PATRICIA tries")
    (license license:bsd-3)))

haskell-8.8-charset

(define-public haskell-8.8-chaselev-deque
  (package
    (name "haskell-8.8-chaselev-deque")
    (version "0.5.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chaselev-deque/chaselev-deque-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2301faqkchkzrvbnganly341jilvg1fmx6lazgbs98cbazhn2d"))))
    (properties `((upstream-name . "chaselev-deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-abstract-deque)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
     "Chase & Lev work-stealing lock-free double-ended queues (deques).")
    (description
     "A queue that is push/pop on one end and pop-only on the other.  These are commonly
used for work-stealing.
This implementation derives directly from the pseudocode in the 2005 SPAA paper:

http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.170.1097&rep=rep1&type=pdf")
    (license license:bsd-3)))

haskell-8.8-chaselev-deque

(define-public haskell-8.8-chunked-data
  (package
    (name "haskell-8.8-chunked-data")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chunked-data/chunked-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16m7y7fwrirbjbqqcsfmr4yxa9qvfax6r7pw0zl9ky71ms0wa47p"))))
    (properties `((upstream-name . "chunked-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Typeclasses for dealing with various chunked data representations")
    (description
     "See docs and README at <http://www.stackage.org/package/chunked-data>")
    (license license:expat)))

haskell-8.8-chunked-data

(define-public haskell-8.8-cmark
  (package
    (name "haskell-8.8-cmark")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cmark/cmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p41z6z8dqxk62287lvhhg4ayy9laai9ljh4azsnzb029v6mbv0d"))))
    (properties `((upstream-name . "cmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://github.com/jgm/cmark-hs")
    (synopsis "Fast, accurate CommonMark (Markdown) parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/jgm/cmark libcmark>, the reference
parser for <http://commonmark.org CommonMark>, a fully
specified variant of Markdown. It includes sources for
libcmark (0.29.0) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-8.8-cmark

(define-public haskell-8.8-cmark-gfm
  (package
    (name "haskell-8.8-cmark-gfm")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-gfm/cmark-gfm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1skzdg1icmhn0zrkhbnba4200ymah8sd5msk4qfgawrk77zilw7f"))))
    (properties `((upstream-name . "cmark-gfm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")
       #:cabal-revision
       ("1" "1zmw1bipv2r5li1shnllv4c95r0mmgrr0c9fvj6wnm98y6kgacbf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://github.com/kivikakk/cmark-gfm-hs")
    (synopsis "Fast, accurate GitHub Flavored Markdown parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/github/cmark-gfm libcmark-gfm>, the reference
parser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully
specified variant of Markdown. It includes sources for
libcmark-gfm (0.29.0.gfm.0) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-8.8-cmark-gfm

(define-public haskell-8.8-colorize-haskell
  (package
    (name "haskell-8.8-colorize-haskell")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colorize-haskell/colorize-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v4spa6vw9igjpd1dr595z5raz5fr8f485q5w9imrv8spms46xh3"))))
    (properties `((upstream-name . "colorize-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-lexer)))
    (home-page "http://github.com/yav/colorize-haskell")
    (synopsis "Highligt Haskell source")
    (description "Highligt Haskell source")
    (license license:bsd-3)))

haskell-8.8-colorize-haskell

(define-public haskell-8.8-colourista
  (package
    (name "haskell-8.8-colourista")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colourista/colourista-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iglvl6k8vrq45h5r8r2ng575dgg30jfw1zq19zld72914mmvjdz"))))
    (properties `((upstream-name . "colourista") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)))
    (home-page "https://github.com/kowainik/colourista")
    (synopsis "Convenient interface for printing colourful messages")
    (description
     "Convenient interface for printing colourful messages based on the @@ansi-terminal@@ library.")
    (license license:mpl2.0)))

haskell-8.8-colourista

(define-public haskell-8.8-commutative
  (package
    (name "haskell-8.8-commutative")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commutative/commutative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0scrc0bwa3ggvhmhmj0pvi7q7sbm495nc8m30jjjcp5wbd26mg6c"))))
    (properties `((upstream-name . "commutative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-8.8-commutative

(define-public haskell-8.8-composition-extra
  (package
    (name "haskell-8.8-composition-extra")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composition-extra/composition-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0abipab6bx138rynpkh4daj53bv5yqbw94zfswysyq6iix529669"))))
    (properties `((upstream-name . "composition-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-composition)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)))
    (home-page "https://hackage.haskell.org/package/composition-extra")
    (synopsis "Combinators for unorthodox structure composition")
    (description "")
    (license license:bsd-3)))

haskell-8.8-composition-extra

(define-public haskell-8.8-contravariant-extras
  (package
    (name "haskell-8.8-contravariant-extras")
    (version "0.3.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant-extras/contravariant-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ikwzg0992j870yp0x2ssf4mv2hw2nml979apg493m72xnvr1jz9"))))
    (properties `((upstream-name . "contravariant-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-template-haskell-compat-v0208)))
    (home-page "https://github.com/nikita-volkov/contravariant-extras")
    (synopsis "Extras for the \"contravariant\" package")
    (description "")
    (license license:expat)))

haskell-8.8-contravariant-extras

(define-public haskell-8.8-convertible
  (package
    (name "haskell-8.8-convertible")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/convertible/convertible-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v18ap1mccnndgxmbfgyjdicg8jlss01bd5fq8a576dr0h4sgyg9"))))
    (properties `((upstream-name . "convertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildtests")
       #:cabal-revision
       ("1" "19rz01rlcflyljzkf47g5xs2w1blnji7s8vsh0wimil4c0wahazj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)))
    (home-page "http://hackage.haskell.org/package/convertible")
    (synopsis "Typeclasses and instances for converting between types")
    (description
     "convertible provides a typeclass with a single function
that is designed to help convert between different types: numeric
values, dates and times, and the like.  The conversions perform bounds
checking and return a pure Either value.  This means that you need
not remember which specific function performs the conversion you
desire.

Also included in the package are optional instances that provide
conversion for various numeric and time types, as well as utilities
for writing your own instances.

Finally, there is a function that will raise an exception on
bounds-checking violation, or return a bare value otherwise,
implemented in terms of the safer function described above.

Convertible is also used by HDBC 2.0 for handling marshalling of
data to and from databases.

Convertible is backed by an extensive test suite and passes tests
on GHC and Hugs.")
    (license license:bsd-3)))

haskell-8.8-convertible

(define-public haskell-8.8-ctrie
  (package
    (name "haskell-8.8-ctrie")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ctrie/ctrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0568v5m5k8dyqx5sfcr13mh1qay13m1wbcjszxiidvb5kz9sdqr0"))))
    (properties `((upstream-name . "ctrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/mcschroeder/ctrie")
    (synopsis "Non-blocking concurrent map")
    (description "A non-blocking concurrent map implementation based on
/lock-free concurrent hash tries/ (aka /Ctries/).")
    (license license:expat)))

haskell-8.8-ctrie

(define-public haskell-8.8-data-ascii
  (package
    (name "haskell-8.8-data-ascii")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-ascii/data-ascii-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03lxcybzamd1d5lrd1i9ygr5s094cr9ch2jdk5fx5hjg4bkigdds"))))
    (properties `((upstream-name . "data-ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Type-safe, bytestring-based ASCII values")
    (description "Type-safe, bytestring-based ASCII values.")
    (license license:bsd-3)))

haskell-8.8-data-ascii

(define-public haskell-8.8-derulo
  (package
    (name "haskell-8.8-derulo")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/derulo/derulo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rpxbg0g44813b0mlkifiav2w04wy56n1zlnqk5jcibdbmi6yagi"))))
    (properties `((upstream-name . "derulo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://hackage.haskell.org/package/derulo")
    (synopsis "Parse and render JSON simply.")
    (description "Derulo parses and renders JSON simply.")
    (license license:expat)))

haskell-8.8-derulo

(define-public haskell-8.8-dynamic-state
  (package
    (name "haskell-8.8-dynamic-state")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/dynamic-state")
    (synopsis "Optionally serializable dynamic state keyed by type")
    (description "Optionally serializable dynamic state keyed by type")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-dynamic-state

(define-public haskell-8.8-earcut
  (package
    (name "haskell-8.8-earcut")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/earcut/earcut-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nssl7n697rzwlfb5lq4kl64j4mrb4i19rp5kzjpmc7iin9fzxsf"))))
    (properties `((upstream-name . "earcut") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/reanimate/earcut")
    (synopsis "Binding to C++ earcut library.")
    (description "")
    (license license:isc)))

haskell-8.8-earcut

(define-public haskell-8.8-ekg-core
  (package
    (name "haskell-8.8-ekg-core")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-core")
    (synopsis "Tracking of system metrics")
    (description "This library lets you defined and track system metrics.")
    (license license:bsd-3)))

haskell-8.8-ekg-core

(define-public haskell-8.8-elerea
  (package
    (name "haskell-8.8-elerea")
    (version "2.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elerea/elerea-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10b68j3mr85sy2riyrq49l30zxpins5ygqhgn81phn9j1dk224lh"))))
    (properties `((upstream-name . "elerea") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://hackage.haskell.org/package/elerea")
    (synopsis "A minimalistic FRP library")
    (description
     "Elerea (Eventless reactivity) is a tiny discrete time FRP
implementation without the notion of event-based switching and
sampling, with first-class signals (time-varying values).  Reactivity
is provided through various higher-order constructs that also allow
the user to work with arbitrary time-varying structures containing
live signals.  Signals have precise and simple denotational
semantics.

Stateful signals can be safely generated at any time through a
monadic interface, while stateless combinators can be used in a
purely applicative style.  Elerea signals can be defined recursively,
and external input is trivial to attach.  The library comes in two
major variants:

* Simple: signals are plain discrete streams isomorphic to functions
over natural numbers;

* Param: adds a globally accessible input signal for convenience;

This is a minimal library that defines only some basic primitives,
and you are advised to install @@elerea-examples@@ as well to get an
idea how to build non-trivial systems with it.  The examples are
separated in order to minimise the dependencies of the core library.
The @@dow@@ package contains a full game built on top of the simple
variant.

The basic idea of the implementation is described in the WFLP 2010
paper /Efficient and Compositional Higher-Order Streams/
(<http://sgate.emt.bme.hu/documents/patai/publications/PataiWFLP2010.pdf>).

Additional contributions: Takano Akio, Mitsutoshi Aoe")
    (license license:bsd-3)))

haskell-8.8-elerea

(define-public haskell-8.8-emojis
  (package
    (name "haskell-8.8-emojis")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/emojis/emojis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1c6zkj9gmk1y90gbdrn50hyp7mw1mggzhnr2khqd728ryipw60ss"))))
    (properties `((upstream-name . "emojis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://github.com/jgm/emojis#readme")
    (synopsis "Conversion between emoji characters and their names.")
    (description "This package provides functions for converting
emoji names to emoji characters and vice versa.

How does it differ from the @@emoji@@ package?

-   It supports a fuller range of emojis, including all those
supported by GitHub
-   It supports lookup of emoji aliases from emoji
-   It uses Text rather than String
-   It has a lighter dependency footprint: in particular, it
does not require aeson
-   It does not require TemplateHaskell")
    (license license:bsd-3)))

haskell-8.8-emojis

(define-public haskell-8.8-every
  (package
    (name "haskell-8.8-every")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)))
    (home-page "https://github.com/athanclark/every#readme")
    (synopsis "Run a process every so often.")
    (description "")
    (license license:bsd-3)))

haskell-8.8-every

(define-public haskell-8.8-exception-mtl
  (package
    (name "haskell-8.8-exception-mtl")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-mtl/exception-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d51rsrcjy52d62f51hb6fdg0fj9b0qbv8hqf6523pndwsxbq4zc"))))
    (properties `((upstream-name . "exception-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-exception-transformers)))
    (home-page "https://hackage.haskell.org/package/exception-mtl")
    (synopsis "Exception monad transformer instances for mtl classes.")
    (description
     "This package provides exception monad transformer instances for
the classes defined by mtl.")
    (license license:bsd-3)))

haskell-8.8-exception-mtl

(define-public haskell-8.8-expiring-cache-map
  (package
    (name "haskell-8.8-expiring-cache-map")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://codeberg.org/elblake/expiring-cache-map")
    (synopsis "General purpose simple caching.")
    (description
     "A simple general purpose shared state cache map with automatic expiration
of values, for caching the results of accessing a resource such as reading
a file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"
and \"Data.HashMap.Strict\", respectively.")
    (license license:bsd-3)))

haskell-8.8-expiring-cache-map

(define-public haskell-8.8-filelock
  (package
    (name "haskell-8.8-filelock")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)))
    (home-page "http://github.com/takano-akio/filelock")
    (synopsis "Portable interface to file locking (flock / LockFileEx)")
    (description "This package provides an interface to Windows and Unix
file locking functionalities.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-filelock

(define-public haskell-8.8-flow
  (package
    (name "haskell-8.8-flow")
    (version "1.0.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flow/flow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zig5jwqflcs6akhxqkn9h7iwq7ypaz4cx7zwbqfy7sap6sdq2il"))))
    (properties `((upstream-name . "flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://hackage.haskell.org/package/flow")
    (synopsis "Write more understandable Haskell.")
    (description
     "Flow provides operators for writing more understandable Haskell.")
    (license license:expat)))

haskell-8.8-flow

(define-public haskell-8.8-freenect
  (package
    (name "haskell-8.8-freenect")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freenect/freenect-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n87sxf12kkpdlhdaw4pcb3dfl1qc3w7j5hh9crrchy0isasm9zw"))))
    (properties `((upstream-name . "freenect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages openkinect) libfreenect)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages openkinect) libfreenect)))
    (home-page "https://github.com/chrisdone/freenect")
    (synopsis "Interface to the Kinect device.")
    (description "Interface to the Kinect device. Currently supports
depth perception. (No video or audio.)")
    (license license:bsd-3)))

haskell-8.8-freenect

(define-public haskell-8.8-functor-classes-compat
  (package
    (name "haskell-8.8-functor-classes-compat")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/functor-classes-compat/functor-classes-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vrnl5crr7d2wsm4ryx26g98j23dpk7x5p31xrbnckd78i7zj4gg"))))
    (properties `((upstream-name . "functor-classes-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-transformers-1" "-fbase-transformers-2" "-fvector" "-fcontainers" "-funordered-containers")
       #:cabal-revision
       ("7" "0dagdnlb3wfrli6adpy4fjlgdc982pjgwcnq2sb7p3zm86ngi07v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/phadej/functor-classes-compat#readme")
    (synopsis "Data.Functor.Classes instances for core packages")
    (description "\"Data.Functor.Classes\" instances for core packages:

* containers

* vector

* unordered-containers")
    (license license:bsd-3)))

haskell-8.8-functor-classes-compat

(define-public haskell-8.8-gauge
  (package
    (name "haskell-8.8-gauge")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gauge/gauge-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19zmnyyx7x6gf95dphqi1118avcp7w01scq12qmvzhchg1kzs86m"))))
    (properties `((upstream-name . "gauge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fanalysis")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-basement)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-foundation)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/vincenthz/hs-gauge")
    (synopsis "small framework for performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.")
    (license license:bsd-3)))

haskell-8.8-gauge

(define-public haskell-8.8-generic-constraints
  (package
    (name "haskell-8.8-generic-constraints")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-constraints/generic-constraints-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1id341ih876qzq89cj6y3g87w4l3mfhv412l6czcs51r69s1770r"))))
    (properties `((upstream-name . "generic-constraints") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "https://github.com/yairchu/generic-constraints")
    (synopsis "Constraints via Generic")
    (description "Standalone deriving without boiler-plate")
    (license license:bsd-3)))

haskell-8.8-generic-constraints

(define-public haskell-8.8-ghc-events
  (package
    (name "haskell-8.8-ghc-events")
    (version "0.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-events/ghc-events-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b4d1h71czskm2vgbhkrkdkj5h218b34zn7pjhyp314wfqkmn935"))))
    (properties `((upstream-name . "ghc-events") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/ghc-events")
    (synopsis "Library and tool for parsing .eventlog files from GHC")
    (description "Parses .eventlog files emitted by GHC 6.12.1 and later.
Includes the ghc-events tool permitting, in particular,
to dump an event log file as text.")
    (license license:bsd-3)))

haskell-8.8-ghc-events

(define-public haskell-8.8-ghc-lib
  (package
    (name "haskell-8.8-ghc-lib")
    (version "8.10.3.20201220")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghc-lib/ghc-lib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04df1j997m48vjxkfcp07d9vsxgpqi315zvfri1y1qxdg5g4vlmb"))))
    (properties `((upstream-name . "ghc-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-alex)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-8.8-ghc-lib

(define-public haskell-8.8-ghc-parser
  (package
    (name "haskell-8.8-ghc-parser")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-parser/ghc-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pygg0538nah42ll0zai081y8hv8z7lwl0vr9l2k273i4fdif7hb"))))
    (properties `((upstream-name . "ghc-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-cpphs)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)))
    (home-page "https://github.com/gibiansky/IHaskell")
    (synopsis "Haskell source parser from GHC.")
    (description "")
    (license license:expat)))

haskell-8.8-ghc-parser

(define-public haskell-8.8-groom
  (package
    (name "haskell-8.8-groom")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groom/groom-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17g51p15209wwgq83clsd97xvy4kchbx8jzh74qgc9hvmz9s9d56"))))
    (properties `((upstream-name . "groom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)))
    (home-page "https://hackage.haskell.org/package/groom")
    (synopsis "Pretty printing for well-behaved Show
instances.")
    (description
     "Automatically derived Show instances are an easy way
to inspect data in your program.  However, for large
data-structures, the resulting output lacks
whitespace, making it unreadable.  Groom offers an
replacement to `show' called `groom' which attempts
to pretty-print the output of `show'.  For example:

> let x = parseExp \"foobar 1 [1,2]\"
> in do
>   putStrLn (show x)
>   putStrLn (groom x)

results in:

> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))
> ParseOk
>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))
>      (List [Lit (Int 1), Lit (Int 2)]))

Groom works only on Show instances that output valid
Haskell code; if Groom can't understand its input,
it will not make any changes.")
    (license license:bsd-3)))

haskell-8.8-groom

(define-public haskell-8.8-haskey-btree
  (package
    (name "haskell-8.8-haskey-btree")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskey-btree/haskey-btree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zkj4a5j2f7g9kann4f0ab27aq30v6yn8cyn9hn7mhc3gslrx9m"))))
    (properties `((upstream-name . "haskey-btree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/haskell-haskey/haskey-btree")
    (synopsis "B+-tree implementation in Haskell.")
    (description
     "This package provides two B+-tree implementations. The first one is a pure
B+-tree of a specific order, while the second one is an impure one backed
by a page allocator.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey-btree>")
    (license license:bsd-3)))

haskell-8.8-haskey-btree

(define-public haskell-8.8-hdaemonize
  (package
    (name "haskell-8.8-hdaemonize")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-hsyslog)))
    (home-page "http://github.com/unprolix/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description "Provides functions that help writing better UNIX daemons,
daemonize and serviced/serviced': daemonize does what
a daemon should do (forking and closing descriptors),
while serviced does that and more (syslog interface,
PID file writing, start-stop-restart command line
handling, dropping privileges).")
    (license license:bsd-3)))

haskell-8.8-hdaemonize

(define-public haskell-8.8-hinotify
  (package
    (name "haskell-8.8-hinotify")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)))
    (home-page "https://github.com/kolmodin/hinotify")
    (synopsis "Haskell binding to inotify")
    (description
     "This library provides a wrapper to the Linux Kernel's inotify feature,
allowing applications to subscribe to notifications when a file is
accessed or modified.")
    (license license:bsd-3)))

haskell-8.8-hinotify

(define-public haskell-8.8-hopenssl
  (package
    (name "haskell-8.8-hopenssl")
    (version "2.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenssl/hopenssl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wbnibaffpmk453jbvh95r1d1scz1ivkj59ddrbd3hf4iwr6rx4x"))))
    (properties `((upstream-name . "hopenssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-link-libz")
       #:cabal-revision
       ("1" "14bs0wjrqnnn1v8c4yznfzggvmgypm2lssgl0cr498kmp54if0lf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/peti/hopenssl")
    (synopsis "FFI Bindings to OpenSSL's EVP Digest Interface")
    (description
     "Foreign-function bindings to the <http://www.openssl.org/ OpenSSL library>.
Currently provides access to the messages digests MD5, DSS, DSS1,
RIPEMD160, and various SHA variants through the EVP digest interface.")
    (license license:bsd-3)))

haskell-8.8-hopenssl

(define-public haskell-8.8-hosc
  (package
    (name "haskell-8.8-hosc")
    (version "0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hosc/hosc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0340lldzim02ixj4n0smfwn20y5i0z7v0gqgbb0mdjs6c90rqhv6"))))
    (properties `((upstream-name . "hosc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
    (home-page "http://rohandrape.net/t/hosc")
    (synopsis "Haskell Open Sound Control")
    (description "@@hosc@@ implements a subset of the Open Sound Control
byte protocol, <http://opensoundcontrol.org/>.

See \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-hosc

(define-public haskell-8.8-hsdns
  (package
    (name "haskell-8.8-hsdns")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
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

haskell-8.8-hsdns

(define-public haskell-8.8-hset
  (package
    (name "haskell-8.8-hset")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hset/hset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0c7i1c2gdj1j3igfmyl3mhv2z875km7k6yjfh75a5b5f4q47lx5q"))))
    (properties `((upstream-name . "hset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-type-fun)))
    (home-page "https://bitbucket.org/s9gf4ult/hset")
    (synopsis "Primitive list with elements of unique types.")
    (description "")
    (license license:bsd-3)))

haskell-8.8-hset

(define-public haskell-8.8-hspec-expectations
  (package
    (name "haskell-8.8-hspec-expectations")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations/hspec-expectations-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vxl9zazbaapijr6zmcj72j9wf7ka1pirrjbwddwwddg3zm0g5l1"))))
    (properties `((upstream-name . "hspec-expectations") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-nanospec)))
    (home-page "https://github.com/hspec/hspec-expectations#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>")
    (license license:expat)))

haskell-8.8-hspec-expectations

(define-public haskell-8.8-html-entity-map
  (package
    (name "haskell-8.8-html-entity-map")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/mrkkrp/html-entity-map")
    (synopsis "Map from HTML5 entity names to the corresponding Unicode text")
    (description
     "Map from HTML5 entity names to the corresponding Unicode text.")
    (license license:bsd-3)))

haskell-8.8-html-entity-map

(define-public haskell-8.8-http-common
  (package
    (name "haskell-8.8-http-common")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-common/http-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pzi1h9qb6mpzkmv1bfa54vfzrp5jcdlbwj1i7qiricrwhqxh3dk"))))
    (properties `((upstream-name . "http-common") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/istathar/http-common")
    (synopsis "Common types for HTTP clients and servers")
    (description
     "/Overview/

Base types used by a variety of HTTP clients and servers. See http-streams
\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full
documentation. You can import @@Network.Http.Types@@ if you like, but both
http-streams and pipes-http re-export this package's types and functions.")
    (license license:bsd-3)))

haskell-8.8-http-common

(define-public haskell-8.8-http-media
  (package
    (name "haskell-8.8-http-media")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
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

haskell-8.8-http-media

(define-public haskell-8.8-hw-prim
  (package
    (name "haskell-8.8-hw-prim")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-prim/hw-prim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gqn7s0ki9x951n5whyh0pkcbbqz4kpcn80xxpsv1c0v34946xv7"))))
    (properties `((upstream-name . "hw-prim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")
       #:cabal-revision
       ("2" "14x1bijg1d8jdh963rxrlwzlqa1p1vh0bc7hjdysk8dzbrc7fbmv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-mmap)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-8.8-hw-prim

(define-public haskell-8.8-hxt-regex-xmlschema
  (package
    (name "haskell-8.8-hxt-regex-xmlschema")
    (version "9.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-regex-xmlschema/hxt-regex-xmlschema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c4jr0439f5yc05h7iz53fa47g6l2wrvqp6gvwf01mlqajk3nx7l"))))
    (properties `((upstream-name . "hxt-regex-xmlschema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-profile")
       #:cabal-revision
       ("1" "0vg9vnfjmq1ma6zwwv4yvfih6wbslksvsvy9b41i4f81l0hh7ia8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hxt-charproperties)))
    (home-page
     "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema")
    (synopsis
     "A regular expression library for W3C XML Schema regular expressions")
    (description
     "This library supports full W3C XML Schema regular expressions
inclusive all Unicode character sets and blocks.
The complete grammar can be found under <http://www.w3.org/TR/xmlschema11-2/#regexs>.
It is implemented by the technique of derivations of regular expressions.

The W3C syntax is extended to support not only union of regular sets,
but also intersection, set difference, exor.
Matching of subexpressions is also supported.

The library can be used for constricting lightweight scanners and tokenizers.
It is a standalone library, no external regex libraries are used.

Extensions in 9.2: The library does nor only support String's, but also
ByteString's and Text in strict and lazy variants")
    (license license:expat)))

haskell-8.8-hxt-regex-xmlschema

(define-public haskell-8.8-hybrid-vectors
  (package
    (name "haskell-8.8-hybrid-vectors")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hybrid-vectors/hybrid-vectors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mw69xjdncj6kqa2mvag8xc79y4jijnh2qg6ahrhifb4vxqw7ij1"))))
    (properties `((upstream-name . "hybrid-vectors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16wpgh7cxgmap5acyccbff02b2jvhqiad5m3fknribpbahvmkk88")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/ekmett/hybrid-vectors")
    (synopsis "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors")
    (description "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors.")
    (license license:bsd-3)))

haskell-8.8-hybrid-vectors

(define-public haskell-8.8-intern
  (package
    (name "haskell-8.8-intern")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intern/intern-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pbk804kq5p25ixrihhpfgy0fwj8i6cybxlhk42krzni7ad7gx4k"))))
    (properties `((upstream-name . "intern") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cjlmvg55nn9fd1f0jfmgy1rjys7gna3x3qknnpcmndq6vzg1mrl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/ekmett/intern/")
    (synopsis "Efficient hash-consing for arbitrary data types")
    (description "Efficient hash-consing for arbitrary data types.")
    (license license:bsd-3)))

haskell-8.8-intern

(define-public haskell-8.8-intset-imperative
  (package
    (name "haskell-8.8-intset-imperative")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/hverr/haskell-intset-imperative#readme")
    (synopsis "An imperative integer set written in Haskell.")
    (description
     "An imperative integer set written in Haskell.

Read <https://deliquus.com/posts/2018-07-30-imperative-programming-in-haskell.html> for more information.")
    (license license:bsd-3)))

haskell-8.8-intset-imperative

(define-public haskell-8.8-io-memoize
  (package
    (name "haskell-8.8-io-memoize")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)))
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

haskell-8.8-io-memoize

(define-public haskell-8.8-islink
  (package
    (name "haskell-8.8-islink")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

haskell-8.8-islink

(define-public haskell-8.8-iterable
  (package
    (name "haskell-8.8-iterable")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/iterable/iterable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "194718jpjwkv3ynlpgjlpvf0iqnj7dkd3zmci363gsa425i3vlbc"))))
    (properties `((upstream-name . "iterable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0aaxx554mm8xhi8ab9jn5r5a2wxg47hc5kiifjahpdfzq5kjnyvs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/BioHaskell/iterable")
    (synopsis "API for hierarchical multilevel collections.")
    (description
     "Two-argument typeclass that generalizes Foldable, Functor, and Traversable for monomorphic
multi-level collections. Transitive instances allow for folding and mapping over any
subordinate level of the hierarchy.

Main interface for hPDB library.

Contains convenience TemplateHaskell methods for generating Iterable instances that have Vector containers.")
    (license license:bsd-3)))

haskell-8.8-iterable

(define-public haskell-8.8-kind-generics-th
  (package
    (name "haskell-8.8-kind-generics-th")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics-th/kind-generics-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "014dzqs8n15vvj0vypd0ws1yxn1vy92gbk2zvi5m660wsgrj62aa"))))
    (properties `((upstream-name . "kind-generics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-kind-generics)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/kind-generics-th")
    (synopsis "Template Haskell support for generating `GenericK` instances")
    (description "This package provides Template Haskell functionality to
automatically derive @@GenericK@@ instances (from the
@@kind-generics@@ library).")
    (license license:bsd-3)))

haskell-8.8-kind-generics-th

(define-public haskell-8.8-language-haskell-extract
  (package
    (name "haskell-8.8-language-haskell-extract")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-haskell-extract/language-haskell-extract-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nxcs7g8a1sp91bzpy4cj6s31k5pvc3gvig04cbrggv5cvjidnhl"))))
    (properties `((upstream-name . "language-haskell-extract") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1chx4g8ngb1hpyh3r9rbl8rkjkm67klms4wmw3p1g2llg47vvqip")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)))
    (home-page "http://github.com/finnsson/template-helper")
    (synopsis "Module to automatically extract functions from the local code.")
    (description
     "@@language-haskell-extract@@ contains some useful helper functions on top of Template Haskell.

@@functionExtractor@@ extracts all functions after a regexp-pattern.

> foo = \"test\"
> boo = \"testing\"
> bar = $(functionExtractor \"oo$\")

will automagically extract the functions ending with @@oo@@ such as

> bar = [(\"foo\",foo), (\"boo\",boo)]

This can be useful if you wish to extract all functions beginning with test (for a test-framework)
or all functions beginning with wc (for a web service).

@@functionExtractorMap@@ works like @@functionsExtractor@@ but applies a function over all function-pairs.

This functions is useful if the common return type of the functions is a type class.

Example:

> secondTypeclassTest =
>   do let expected = [\"45\", \"88.8\", \"\\\"hej\\\"\"]
>          actual = $(functionExtractorMap \"^tc\" [|\\n f -> show f|] )
>      expected @@=? actual
>
> tcInt :: Integer
> tcInt = 45
>
> tcDouble :: Double
> tcDouble = 88.8
>
> tcString :: String
> tcString = \"hej\"")
    (license license:bsd-3)))

haskell-8.8-language-haskell-extract

(define-public haskell-8.8-lenz
  (package
    (name "haskell-8.8-lenz")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lenz/lenz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13yz9lxxll928knxjgvdxdbnv911pxkd9d5jly1hdnhyymahv6lf"))))
    (properties `((upstream-name . "lenz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0mzvvddl7wwa4z3rxwdwlaazv0wbg7lfynsab7lya6dzkw4nl7m4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-hs-functors)))
    (home-page "https://hackage.haskell.org/package/lenz")
    (synopsis "Van Laarhoven lenses")
    (description "")
    (license license:bsd-3)))

haskell-8.8-lenz

(define-public haskell-8.8-lockfree-queue
  (package
    (name "haskell-8.8-lockfree-queue")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lockfree-queue/lockfree-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "131s1w6bdd958pg42s2i62xvw4basagir45y3vhbvsp8p9a6lmra"))))
    (properties `((upstream-name . "lockfree-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-abstract-deque)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis "Michael and Scott lock-free queues.")
    (description
     "Michael and Scott queues are described in their PODC 1996 paper:

<http://dl.acm.org/citation.cfm?id=248052.248106>

These are single-ended concurrent queues based on a singlly linked
list and using atomic CAS instructions to swap the tail pointers.
As a well-known efficient algorithm they became the basis for Java's
@@ConcurrentLinkedQueue@@.")
    (license license:bsd-3)))

haskell-8.8-lockfree-queue

(define-public haskell-8.8-lrucache
  (package
    (name "haskell-8.8-lrucache")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lrucache/lrucache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11avhnjnb89rvn2s41jhh5r40zgp7r6kb5c0hcfiibpabqvv46pw"))))
    (properties `((upstream-name . "lrucache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)))
    (home-page "http://github.com/chowells79/lrucache")
    (synopsis "a simple, pure LRU cache")
    (description
     "This package contains a simple, pure LRU cache, implemented in
terms of \"Data.Map\".

It also contains a mutable IO wrapper providing atomic updates to
an LRU cache.")
    (license license:bsd-3)))

haskell-8.8-lrucache

(define-public haskell-8.8-math-functions
  (package
    (name "haskell-8.8-math-functions")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/math-functions/math-functions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13x4whrnacqvmprfi665n5nby8hqlz1pxrglsl81chyk0gy0l2p2"))))
    (properties `((upstream-name . "math-functions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsystem-expm1" "-fsystem-erf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/bos/math-functions")
    (synopsis "Collection of tools for numeric computations")
    (description
     "This library contain collection of various utilities for numerical
computing. So far there're special mathematical functions,
compensated summation algorithm, summation of series, root finding
for real functions, polynomial summation and Chebyshev
polynomials.")
    (license license:bsd-2)))

haskell-8.8-math-functions

(define-public haskell-8.8-maximal-cliques
  (package
    (name "haskell-8.8-maximal-cliques")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/maximal-cliques/maximal-cliques-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sbmykgb5lrd32rih09d8d0r5isz4nh5slfyd93dgln7ag3hb7bh"))))
    (properties `((upstream-name . "maximal-cliques") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/maximal-cliques")
    (synopsis "Enumerate all maximal cliques of a graph.")
    (description
     "Enumerate all maximal cliques of a graph. A clique is a set of nodes such that there is an edge between every node and every other node in the set. A maximal clique is a clique such that no node may be added while preserving the clique property.")
    (license license:bsd-3)))

haskell-8.8-maximal-cliques

(define-public haskell-8.8-megaparsec
  (package
    (name "haskell-8.8-megaparsec")
    (version "8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec/megaparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0633rqzrxzhq43z6i7ancncd633fm2b8755683si4v818r3cdmxm"))))
    (properties `((upstream-name . "megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Monadic parser combinators")
    (description
     "This is an industrial-strength monadic parser combinator library.
Megaparsec is a feature-rich package that tries to find a nice balance
between speed, flexibility, and quality of parse errors.")
    (license license:bsd-2)))

haskell-8.8-megaparsec

(define-public haskell-8.8-memory
  (package
    (name "haskell-8.8-memory")
    (version "0.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/memory/memory-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a9mxcddnqn4359hk59d6l2zbh0vp154yb5vs1a8jw4l38n8kzz3"))))
    (properties `((upstream-name . "memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_bytestring" "-fsupport_foundation" "-fsupport_basement" "-fsupport_deepseq")
       #:cabal-revision
       ("2" "0fd40y5byy4cq4x6m66zxadxbw96gzswplgfyvdqnjlasq28xw68")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-basement)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-foundation)))
    (home-page "https://github.com/vincenthz/hs-memory")
    (synopsis "memory and related abstraction stuff")
    (description
     "Chunk of memory, polymorphic byte array management and manipulation

* A polymorphic byte array abstraction and function similar to strict ByteString.

* Different type of byte array abstraction.

* Raw memory IO operations (memory set, memory copy, ..)

* Aliasing with endianness support.

* Encoding : Base16, Base32, Base64.

* Hashing : FNV, SipHash")
    (license license:bsd-3)))

haskell-8.8-memory

(define-public haskell-8.8-microlens-platform
  (package
    (name "haskell-8.8-microlens-platform")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-platform/microlens-platform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zlijw6ib9zf15n750qz6jlvj9l6sdf0d29w8nkflr2bspbvxn03"))))
    (properties `((upstream-name . "microlens-platform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-ghc)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + all batteries included (best for apps)")
    (description
     "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @@Lens.Micro.Platform@@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @@Vector@@, @@Text@@, and @@HashMap@@.

The minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.8-microlens-platform

(define-public haskell-8.8-monad-control
  (package
    (name "haskell-8.8-monad-control")
    (version "1.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-control/monad-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c92833gr6cadidjdp8mlznkpp8lyxl0w3y7d19y8yi3klc3843c"))))
    (properties `((upstream-name . "monad-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://github.com/basvandijk/monad-control")
    (synopsis
     "Lift control operations, like exception catching, through monad transformers")
    (description
     "This package defines the type class @@MonadBaseControl@@, a subset of
@@MonadBase@@ into which generic control operations such as @@catch@@ can be
lifted from @@IO@@ or any other base monad. Instances are based on monad
transformers in @@MonadTransControl@@, which includes all standard monad
transformers in the @@transformers@@ library except @@ContT@@.

See the <http://hackage.haskell.org/package/lifted-base lifted-base>
package which uses @@monad-control@@ to lift @@IO@@
operations from the @@base@@ library (like @@catch@@ or @@bracket@@) into any monad
that is an instance of @@MonadBase@@ or @@MonadBaseControl@@.

Note that this package is a rewrite of Anders Kaseorg's @@monad-peel@@
library. The main difference is that this package provides CPS style operators
and exploits the @@RankNTypes@@ and @@TypeFamilies@@ language extensions to
simplify and speedup most definitions.")
    (license license:bsd-3)))

haskell-8.8-monad-control

(define-public haskell-8.8-monad-control-aligned
  (package
    (name "haskell-8.8-monad-control-aligned")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-control-aligned/monad-control-aligned-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xhiw1g0p8zljhy8yz43ljnwhhqn6dwxqi06mdsfji365p9qzrs4"))))
    (properties `((upstream-name . "monad-control-aligned") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://github.com/athanclark/monad-control#readme")
    (synopsis
     "Just like monad-control, except less efficient, and the monadic state terms are all * -> *")
    (description "")
    (license license:bsd-3)))

haskell-8.8-monad-control-aligned

(define-public haskell-8.8-monad-coroutine
  (package
    (name "haskell-8.8-monad-coroutine")
    (version "0.9.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-coroutine/monad-coroutine-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rsxzry8qk5229vx4iw4jrzbbc82m80m1nlxlq73k5k20h9gzq0k"))))
    (properties `((upstream-name . "monad-coroutine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-monad-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://trac.haskell.org/SCC/wiki/monad-coroutine")
    (synopsis
     "Coroutine monad transformer for suspending and resuming monadic computations")
    (description
     "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and
to be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended
computation's resumption.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-monad-coroutine

(define-public haskell-8.8-monad-memo
  (package
    (name "haskell-8.8-monad-memo")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-memo/monad-memo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fqdqqv6gp14vf2kkac34bbn3vaxq80yjz2dgp6n89dcfdkc9y0n"))))
    (properties `((upstream-name . "monad-memo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/EduardSergeev/monad-memo")
    (synopsis "Memoization monad transformer")
    (description
     "Memoization monad transformer supporting most of the standard monad transformers and a range of memoization cache types: from default pure maps to extremely fast mutable vectors

To add memoization behaviour to a monadic function:

1) Add 'Control.Monad.Memo.memo' combinator at the point when memoization is required (i.e. recursive call)

>import Control.Monad.Memo
>
>fibm 0 = return 0
>fibm 1 = return 1
>fibm n = do
>  n1 <- memo fibm (n-1)
>  n2 <- memo fibm (n-2)
>  return (n1+n2)

2) Use appropriate /*eval*/ or /*run*/ function to evaluate resulting `MonadMemo` monad:

>startEvalMemo (fibm 100)

See detailed description and examples: \"Control.Monad.Memo\"")
    (license license:bsd-3)))

haskell-8.8-monad-memo

(define-public haskell-8.8-monad-resumption
  (package
    (name "haskell-8.8-monad-resumption")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-resumption/monad-resumption-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hc9dbqhd609lzn79c25zwhm55262i9yip16ag9rysxv6rxbshml"))))
    (properties `((upstream-name . "monad-resumption") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)))
    (home-page "https://github.com/igraves/monad-resumption#readme")
    (synopsis "Resumption and reactive resumption monads for Haskell.")
    (description
     "This package contains the definitions of Resumption and Reactive Resumption Monads.")
    (license license:bsd-3)))

haskell-8.8-monad-resumption

(define-public haskell-8.8-netlib-ffi
  (package
    (name "haskell-8.8-netlib-ffi")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-ffi/netlib-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0irf5gc9kw3pjb339nrzylr1ldz8fhgmpkji26dm3w18vkwic411"))))
    (properties `((upstream-name . "netlib-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/netlib-ffi/")
    (synopsis "Helper modules for FFI to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-ffi@@ and @@lapack-ffi@@.")
    (license license:bsd-3)))

haskell-8.8-netlib-ffi

(define-public haskell-8.8-network-bsd
  (package
    (name "haskell-8.8-network-bsd")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
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

haskell-8.8-network-bsd

(define-public haskell-8.8-network-transport-composed
  (package
    (name "haskell-8.8-network-transport-composed")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport-composed/network-transport-composed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2rwl1hwbp87kvnhfc6h0v2zy1hbfgrz0wx1vicd9m76nzbynx3"))))
    (properties `((upstream-name . "network-transport-composed")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network-transport)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Compose network transports")
    (description "")
    (license license:bsd-3)))

haskell-8.8-network-transport-composed

(define-public haskell-8.8-operational-class
  (package
    (name "haskell-8.8-operational-class")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/operational-class/operational-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02z766b5a6fa7dgmw3qa1xryijf2im9n79gnjq0m5pd2hv5vja4b"))))
    (properties `((upstream-name . "operational-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-operational)))
    (home-page "https://github.com/srijs/haskell-operational-class")
    (synopsis "MonadProgram typeclass for the operational package")
    (description "")
    (license license:expat)))

haskell-8.8-operational-class

(define-public haskell-8.8-optics-extra
  (package
    (name "haskell-8.8-optics-extra")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-extra/optics-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16n64dyii8b9w1prc73qwfjhinzixckd1xlmb4x8i1jlw2dbz5d1"))))
    (properties `((upstream-name . "optics-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-indexed-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/optics-extra")
    (synopsis "Extra utilities and instances for optics-core")
    (description
     "This package provides extra definitions and instances that extend the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package,
without incurring too many dependencies.  See the
@@<https://hackage.haskell.org/package/optics optics>@@ package for more
documentation.")
    (license license:bsd-3)))

haskell-8.8-optics-extra

(define-public haskell-8.8-optics-th
  (package
    (name "haskell-8.8-optics-th")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-th/optics-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12hij9b5gqq1gdh7zbv09dsqbf9pr7wf2ywjnbf319sn20cn8fv8"))))
    (properties `((upstream-name . "optics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/optics-th")
    (synopsis "Optics construction using TemplateHaskell")
    (description
     "This package is part of the @@<https://hackage.haskell.org/package/optics optics>@@
package family.  It provides machinery to construct optics using @@TemplateHaskell@@.

See the @@template-haskell-optics@@ package for optics to work with @@template-haskell@@ types.")
    (license license:bsd-3)))

haskell-8.8-optics-th

(define-public haskell-8.8-pcre-light
  (package
    (name "haskell-8.8-pcre-light")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-light/pcre-light-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lqvsmc6bfhdv6igm3fmw8nklyhw3j3jsl0s1k6r3fhb6ambzxhn"))))
    (properties `((upstream-name . "pcre-light") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old_base" "-f-use-pkg-config")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Daniel-Diaz/pcre-light")
    (synopsis
     "Portable regex library for Perl 5 compatible regular expressions")
    (description
     "A small, efficient and portable regex library for Perl 5 compatible regular expressions

The PCRE library is a set of functions that implement regular
expression pattern matching using the same syntax and semantics as Perl 5.

If installation fails reporting that you are missing the prce C library, try installing
the @@libpcre3-dev@@ package (linux) or @@brew install pcre@@ (MacOS).
")
    (license license:bsd-3)))

haskell-8.8-pcre-light

(define-public haskell-8.8-polynomials-bernstein
  (package
    (name "haskell-8.8-polynomials-bernstein")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polynomials-bernstein/polynomials-bernstein-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qkhvid0xgr7223mg2r5crxprwl0yrwqdy8zwkkl0fjkj7kz4l39"))))
    (properties `((upstream-name . "polynomials-bernstein") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/polynomials-bernstein")
    (synopsis "A solver for systems of polynomial equations in bernstein form")
    (description
     "This library defines an optimized type for representing polynomials
in Bernstein form, as well as instances of numeric classes and other
manipulation functions, and a solver of systems of polynomial
equations in this form.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-polynomials-bernstein

(define-public haskell-8.8-port-utils
  (package
    (name "haskell-8.8-port-utils")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
    (home-page "https://github.com/jfischoff/port-utils#readme")
    (synopsis "Utilities for creating and waiting on ports")
    (description
     "Utilities for creating and waiting on ports. . @@openFreePort@@ will create a socket bound to a random port (like @@warp@@'s @@openFreePort@@). . @@wait@@ will attempt to connect to given host and port repeatedly until successful. .")
    (license license:bsd-3)))

haskell-8.8-port-utils

(define-public haskell-8.8-print-console-colors
  (package
    (name "haskell-8.8-print-console-colors")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/print-console-colors/print-console-colors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12x1lbn8daq996pipnqd8g6mjpg85zj85zygbs547m9r27gf6j88"))))
    (properties `((upstream-name . "print-console-colors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)))
    (home-page "https://github.com/cdepillabout/print-console-colors#readme")
    (synopsis "Print all ANSI console colors")
    (description
     "Print all ANSI console colors.


<<https://raw.githubusercontent.com/cdepillabout/print-console-colors/master/img/example.png>>

This is convenient when you are trying to set your console colors,
for example when configuring <https://github.com/cdepillabout/termonad Termonad>.

For installation and usage instructions, see the
<https://github.com/cdepillabout/print-console-colors README>.")
    (license license:bsd-3)))

haskell-8.8-print-console-colors

(define-public haskell-8.8-protobuf
  (package
    (name "haskell-8.8-protobuf")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

haskell-8.8-protobuf

(define-public haskell-8.8-protolude
  (package
    (name "haskell-8.8-protolude")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protolude/protolude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vkrj1fxbndkmsja9d80k4q5c48gwdbjlnzx3iag02dlj05j34hi"))))
    (properties `((upstream-name . "protolude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1bwjfwpqc8j221hv9d4c0nfn0lls68nphfhmp70zhl0hcfz02v7c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mtl-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://github.com/sdiehl/protolude")
    (synopsis "A small prelude.")
    (description "A sensible set of defaults for writing custom Preludes.")
    (license license:expat)))

haskell-8.8-protolude

(define-public haskell-8.8-pureMD5
  (package
    (name "haskell-8.8-pureMD5")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pureMD5/pureMD5-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zdilz41cla2ck7mcw1a9702gyg2abq94mqahr4vci9sbs53bwxy"))))
    (properties `((upstream-name . "pureMD5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-crypto-api)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
    (home-page "https://hackage.haskell.org/package/pureMD5")
    (synopsis
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports
the crypto-api class interface.")
    (license license:bsd-3)))

haskell-8.8-pureMD5

(define-public haskell-8.8-rando
  (package
    (name "haskell-8.8-rando")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rando/rando-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cvwmp4882xdavfzhg5hwssddg0wjgwh8jxpd3251plf96jz9f4f"))))
    (properties `((upstream-name . "rando") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-tf-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/rando")
    (synopsis "Easy-to-use randomness for livecoding")
    (description
     "Easy-to-use randomness for livecoding.

The goal is to provide the simplest possible experience, e.g.

> >>> import Rando

> >>> pickOne [\"lemon\", \"lime\", \"strawberry\"]
> \"lime\" :: IO String

> >>> flipCoin
> True

> >>> shuffle [1..5]
> [2,4,1,3,5]

This library is in flux: names will change, types will change, functions
will appear and disappear and move between modules!")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-rando

(define-public haskell-8.8-random-shuffle
  (package
    (name "haskell-8.8-random-shuffle")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-shuffle/random-shuffle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0586bnlh0g2isc44jbjvafkcl4yw6lp1db8x6vr0pza0y08l8w2j"))))
    (properties `((upstream-name . "random-shuffle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-MonadRandom)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "https://hackage.haskell.org/package/random-shuffle")
    (synopsis "Random shuffle implementation.")
    (description
     "Random shuffle implementation, on immutable lists.
Based on `perfect shuffle' implementation by Oleg Kiselyov,
available on http://okmij.org/ftp/Haskell/perfect-shuffle.txt")
    (license license:bsd-3)))

haskell-8.8-random-shuffle

(define-public haskell-8.8-raw-strings-qq
  (package
    (name "haskell-8.8-raw-strings-qq")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/raw-strings-qq/raw-strings-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lxy1wy3awf52968iy5y9r5z4qgnn2sxkdrh7js3m9gadb11w09f"))))
    (properties `((upstream-name . "raw-strings-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://github.com/23Skidoo/raw-strings-qq")
    (synopsis "Raw string literals for Haskell.")
    (description
     "A quasiquoter for raw string literals - that is, string literals that don't
recognise the standard escape sequences (such as @@\\'\\\\n\\'@@). Basically, they
make your code more readable by freeing you from the responsibility to
escape backslashes. They are useful when working with regular expressions,
DOS/Windows paths and markup languages (such as XML).

See @@examples/RawRegex.hs@@ for a usage example.")
    (license license:bsd-3)))

haskell-8.8-raw-strings-qq

(define-public haskell-8.8-re2
  (package
    (name "haskell-8.8-re2")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/re2/re2-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0slrbgpqccnxywy0aqlg65w6kzvfiqsf0n273m8cv3c32wvkw8nb"))))
    (properties `((upstream-name . "re2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages regex) re2)))
    (home-page "https://github.com/rblaze/haskell-re2#readme")
    (synopsis "Bindings to the re2 regular expression library")
    (description
     "re2 is a regular expression library offering predictable run-time and
memory consumption. This package is a binding to re2.

Supported expression syntax is documented at
<https://github.com/google/re2/>

>$ ghci -XOverloadedStrings
>ghci> import Regex.RE2
>
>ghci> find \"\\\\w+\" \"hello world\"
>Just (Match [Just \"hello\"])
>
>ghci> find \"\\\\w+$\" \"hello world\"
>Just (Match [Just \"world\"])
>
>ghci> find \"^\\\\w+$\" \"hello world\"
>Nothing")
    (license license:expat)))

haskell-8.8-re2

(define-public haskell-8.8-records-sop
  (package
    (name "haskell-8.8-records-sop")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/records-sop/records-sop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "120kb6z4si5wqkahbqxqhm3qb8xpc9ivwg293ymz8a4ri1hdr0a5"))))
    (properties `((upstream-name . "records-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0492a3cabdl5ccncc7lk7bvh55in4hzm345fl3xpidp9jx6mv1x4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generics-sop)))
    (home-page "https://hackage.haskell.org/package/records-sop")
    (synopsis "Record subtyping and record utilities with generics-sop")
    (description "This library provides utilities for working with labelled
single-constructor record types via generics-sop.

It also provides functions to safely cast between record
types if the target type has a subset of the fields (with
the same names) of the source type.")
    (license license:bsd-3)))

haskell-8.8-records-sop

(define-public haskell-8.8-regex
  (package
    (name "haskell-8.8-regex")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02hxgy5ck3h5pwd5gzs4565qbql8457cjdbbc2yrk236qzc1qa8x"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
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

haskell-8.8-regex

(define-public haskell-8.8-regex-compat
  (package
    (name "haskell-8.8-regex-compat")
    (version "0.95.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-compat/regex-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01l44zrfpqb4k1rrzd1j18hn6922xhrl9h7s0hjfs363dx3hxj8z"))))
    (properties `((upstream-name . "regex-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1d2k9zj51rhy695vlx6cfcmik6a0yyk5kl6aza7nqsqc6zwhidif")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)))
    (home-page "https://hackage.haskell.org/package/regex-compat")
    (synopsis "Replaces/Enhances \"Text.Regex\"")
    (description
     "One module compat layer over <//hackage.haskell.org/package/regex-posix regex-posix> to replace \"Text.Regex\".

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.8-regex-compat

(define-public haskell-8.8-regex-compat-tdfa
  (package
    (name "haskell-8.8-regex-compat-tdfa")
    (version "0.95.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-compat-tdfa/regex-compat-tdfa-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p90fn90yhp7fvljjdqjp41cszidcfz4pw7fwvzyx4739b98x8sg"))))
    (properties `((upstream-name . "regex-compat-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "19jq1ic29mxfhrwxqxb4844cz0hc0bkyjbkjm3m4dinv13sv3sps")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)))
    (home-page "http://hub.darcs.net/shelarcy/regex-compat-tdfa")
    (synopsis "Unicode Support version of Text.Regex, using regex-tdfa")
    (description "One module layer over regex-tdfa to replace Text.Regex.

regex-compat can't use Unicode characters correctly because
of using regex-posix. This is not good for Unicode users.

I modified regex-compat to use regex-tdfa for solving today's
problem.")
    (license license:bsd-3)))

haskell-8.8-regex-compat-tdfa

(define-public haskell-8.8-relude
  (package
    (name "haskell-8.8-relude")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relude/relude-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gx1h3656wz80v72acqky88iv7a2shinfv6apzzyjxii8lc22jf7"))))
    (properties `((upstream-name . "relude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/kowainik/relude")
    (synopsis
     "Safe, performant, user-friendly and lightweight Haskell Standard Library")
    (description
     "@@__relude__@@ is an alternative prelude library. If you find the default
@@Prelude@@ unsatisfying, despite its advantages, consider using @@relude@@
instead.

== Relude goals and design principles
* __Productivity.__ You can be more productive with a \"non-standard\" standard
library, and @@relude@@ helps you with writing safer and more
efficient code faster.

* __Total programming__. Usage of [/partial functions/](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)
can lead to unexpected bugs and runtime exceptions in pure
code. The types of partial functions lie about their behaviour. And
even if it is not always possible to rely only on total functions,
@@relude@@ strives to encourage best-practices and reduce the
chances of introducing a bug.

+---------------------------------+--------------------------------------------+
| __Partial__                     | __Total__                                  |
+=================================+============================================+
| @@head :: [a] -> a@@              | @@head :: NonEmpty a -> a@@                  |
+---------------------------------+--------------------------------------------+
| @@tail :: [a] -> [a]@@            | @@tail :: NonEmpty a -> [a]@@                |
+---------------------------------+--------------------------------------------+
| @@read :: Read a => String -> a@@ | @@readMaybe :: Read a => String -> Maybe a@@ |
+---------------------------------+--------------------------------------------+
| @@fromJust :: Maybe a -> a@@      | @@fromMaybe :: a -> Maybe a -> a@@           |
+---------------------------------+--------------------------------------------+

* __Type-safety__. We use the /\"make invalid states unrepresentable\"/ motto as one
of our guiding principles. If it is possible, we express this concept through the
types.
/Example:/ @@ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @@

* __Performance.__ We prefer @@Text@@ over @@[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@@,
use space-leaks-free functions (e.g. our custom performant @@sum@@ and @@product@@),
introduce @@\\@{\\-\\# INLINE \\#\\-\\@}@@ and @@\\@{\\-\\# SPECIALIZE \\#\\-\\@}@@ pragmas where
appropriate, and make efficient container types
(e.g. @@Map@@, @@HashMap@@, @@Set@@) more accesible.

* __Minimalism__ (low number of dependencies). We don not force users of
@@relude@@ to stick to any specific lens or text formatting or logging
library. Where possible, @@relude@@ depends only on boot libraries.
The [Dependency graph](https://raw.githubusercontent.com/kowainik/relude/master/relude-dependency-graph.png)
of @@relude@@ can give you a clearer picture.

* __Convenience__. Despite minimalism, we want to bring commonly used
types and functions into scope, and make available functions easier
to use. Some examples of conveniences:

1. No need to import types like @@NonEmpty@@, @@Text@@, @@Set@@, @@Reader[T]@@, @@MVar@@, @@STM@@

2. Functions like @@liftIO@@, @@fromMaybe@@, @@sortWith@@ are avaiable by default as well

3. @@IO@@ actions are lifted to @@MonadIO@@

* __Excellent documentation.__

1. Tutorial

2. Migration guide from @@Prelude@@

3. Haddock for every function with examples tested by
[doctest](http://hackage.haskell.org/package/doctest).

4. Documentation regarding [internal module structure](http://hackage.haskell.org/package/relude/docs/Relude.html)

5. @@relude@@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @@[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@@

* __User-friendliness.__ Anyone should be able to quickly migrate to @@relude@@. Only
some basic familiarity with the common libraries like @@text@@ and @@containers@@
should be enough (but not necessary).

* __Exploration.__ We have space to experiment with new ideas and proposals
without introducing breaking changes. @@relude@@ uses the approach with
@@Extra.*@@ modules which are not exported by default. The chosen approach makes it quite
easy for us to provide new functionality without breaking anything and let
the users decide to use it or not.")
    (license license:expat)))

haskell-8.8-relude

(define-public haskell-8.8-runmemo
  (package
    (name "haskell-8.8-runmemo")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/runmemo/runmemo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12fn0lsil0rj0pj0ixzppsdw2fmj0cnzci4fh11z9rcggwbz6pms"))))
    (properties `((upstream-name . "runmemo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-data-memocombinators)))
    (home-page "https://github.com/DanBurton/runmemo")
    (synopsis "A simple memoization helper library")
    (description
     "This library encourages you to do memoization
in three separate steps:

(1) Create a memoizable function

(2) Create or select an appropriate memoizer

(3) Run the memoizer on the memoizable function

Let's start with the first.
When you create a memoizable function,
you should use the @@self@@ convention,
which is that the first input to the function is @@self@@,
and all recursive calls are replaced with @@self@@.
One common convention that goes well with the @@self@@ convention
is using a helper function @@go@@, like so:

@@
fib :: Memoizable (Integer -> Integer)
fib self = go
\\  where go 0 = 1
\\        go 1 = 1
\\        go n = self (n-1) + self (n-2)
@@

Now for the second. For this example,
we need a Memoizer that can handle an @@Integer@@ input,
and an @@Integer@@ output. @@Data.MemoCombinators@@ provides
@@integral@@, which handles any @@Integral@@ input, and
any output. @@Data.MemoUgly@@ provides @@memo@@,
which can memoize any function @@a -> b@@, given an @@Ord@@ instance
for @@a@@.

Third, let's run our memoizers!
Since we have decoupled the definition of the memoized function
from its actual memoization, we can create multiple
memoized versions of the same function if we so desire.

@@
import qualified Data.MemoUgly as Ugly
import qualified Data.MemoCombinators as MC

fibUgly :: Integer -> Integer
fibUgly = runMemo Ugly.memo fib

fibMC :: Integer -> Integer
fibMC = runMemo MC.integral fib
@@

You could easily do the same with @@Data.MemoTrie.memo@@,
@@Data.Function.Memoize.memoize@@, etc.

Using this technique, you can create local memoized functions
whose memo tables are garbage collected as soon as
they are no longer needed.")
    (license license:bsd-3)))

haskell-8.8-runmemo

(define-public haskell-8.8-salve
  (package
    (name "haskell-8.8-salve")
    (version "1.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salve/salve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01i74s62kp9gbwj4jwphvn8z7gsbryczx5gn9a6cd92r29393bkm"))))
    (properties `((upstream-name . "salve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://hackage.haskell.org/package/salve")
    (synopsis "Semantic version numbers and constraints.")
    (description
     "Salve provides semantic version (SemVer) numbers and constraints (ranges).")
    (license license:expat)))

haskell-8.8-salve

(define-public haskell-8.8-sendfile
  (package
    (name "haskell-8.8-sendfile")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
    (home-page "http://hub.darcs.net/stepcut/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-8.8-sendfile

(define-public haskell-8.8-seqalign
  (package
    (name "haskell-8.8-seqalign")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/seqalign/seqalign-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01a3fhymyp7279hym03zzz6qkh5h47nq5y1xglar0n46imjr98af"))))
    (properties `((upstream-name . "seqalign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/seqalign")
    (synopsis "Sequence Alignment")
    (description
     "FFI wrappers for global and local string alignment functions")
    (license license:bsd-3)))

haskell-8.8-seqalign

(define-public haskell-8.8-shell-escape
  (package
    (name "haskell-8.8-shell-escape")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-escape/shell-escape-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jms5hdl8zrpxwypq9998798krspclivprirrcq59r179alrng72"))))
    (properties `((upstream-name . "shell-escape") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/solidsnack/shell-escape")
    (synopsis "Shell escaping library.")
    (description
     "Shell escaping library, offering both Bourne shell and Bash style escaping
of ByteStrings.")
    (license license:bsd-3)))

haskell-8.8-shell-escape

(define-public haskell-8.8-skein
  (package
    (name "haskell-8.8-skein")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-crypto-api)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
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

haskell-8.8-skein

(define-public haskell-8.8-socks
  (package
    (name "haskell-8.8-socks")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-basement)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
    (home-page "http://github.com/vincenthz/hs-socks")
    (synopsis "Socks proxy (ver 5)")
    (description "Socks proxy (version 5) implementation.")
    (license license:bsd-3)))

haskell-8.8-socks

(define-public haskell-8.8-special-values
  (package
    (name "haskell-8.8-special-values")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (home-page "https://github.com/minad/special-values#readme")
    (synopsis "Typeclass providing special values")
    (description
     "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.")
    (license license:expat)))

haskell-8.8-special-values

(define-public haskell-8.8-speculate
  (package
    (name "haskell-8.8-speculate")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speculate/speculate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01ahb1g7f19qxf8lz9afxbf2inywrsqkawx784gx3af1wlzj61d9"))))
    (properties `((upstream-name . "speculate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-express)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)))
    (home-page "https://github.com/rudymatela/speculate#readme")
    (synopsis "discovery of properties about Haskell functions")
    (description
     "Speculate automatically discovers laws about Haskell functions.
Give Speculate a bunch of Haskell functions and it will discover laws like:

* equations, such as @@ id x == x @@;

* inequalities, such as @@ 0 <= x * x @@;

* conditional equations, such as @@ x \\<= 0  ==\\>  x + abs x == 0 @@.")
    (license license:bsd-3)))

haskell-8.8-speculate

(define-public haskell-8.8-splice
  (package
    (name "haskell-8.8-splice")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
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

haskell-8.8-splice

(define-public haskell-8.8-stb-image-redux
  (package
    (name "haskell-8.8-stb-image-redux")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stb-image-redux/stb-image-redux-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01xm1vlyfmnnvr5vy9ry7cjwv9ffip0s4zlxcyvfnsgja08l5ni4"))))
    (properties `((upstream-name . "stb-image-redux") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/typedrat/stb-image-redux#readme")
    (synopsis "Image loading and writing microlibrary")
    (description
     "See <https://github.com/typedrat/stb-image-redux/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-8.8-stb-image-redux

(define-public haskell-8.8-streaming
  (package
    (name "haskell-8.8-streaming")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming/streaming-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qpxz9hkk31k64w98pdnz8qjgxvcznzfwc8d7pvakrnf3zp8w05l"))))
    (properties `((upstream-name . "streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming")
    (synopsis "an elementary streaming prelude and general stream type.")
    (description
     "This package contains two modules, <http://hackage.haskell.org/package/streaming/docs/Streaming.html Streaming>
and <http://hackage.haskell.org/package/streaming/docs/Streaming-Prelude.html Streaming.Prelude>.
The principal module, <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming-Prelude.html Streaming.Prelude>, exports an elementary streaming prelude focused on
a simple \\\"source\\\" or \\\"producer\\\" type, namely @@Stream (Of a) m r@@.
This is a sort of effectful version of
@@([a],r)@@ in which successive elements of type @@a@@ arise from some sort of monadic
action before the succession ends with a value of type @@r@@.
Everything in the library is organized to make
programming with this type as simple as possible,
by the simple expedient of making it as close to @@Prelude@@
and @@Data.List@@ as possible. Thus for example
the trivial program

> >>> S.sum $ S.take 3 (S.readLn :: Stream (Of Int) IO ())
> 1<Enter>
> 2<Enter>
> 3<Enter>
> 6 :> ()

sums the first three valid integers from user input. Similarly,

> >>> S.stdoutLn $ S.map (map toUpper) $ S.take 2 S.stdinLn
> hello<Enter>
> HELLO
> world!<Enter>
> WORLD!

upper-cases the first two lines from stdin as they arise,
and sends them to stdout. And so on,
with filtering, mapping, breaking, chunking, zipping, unzipping, replicating
and so forth:
we program with streams of @@Int@@s or @@String@@s directly as
if they constituted something like a list. That's because streams really do constitute something
like a list, and the associated operations can mostly have the same names.
(A few, like @@reverse@@, don't stream and thus disappear;
others like @@unzip@@ are here given properly streaming formulation for the first time.)
And we everywhere
oppose \\\"extracting a pure list from IO\\\",
which is the origin of typical Haskell memory catastrophes.
Basically any case where you are
tempted to use @@mapM@@, @@replicateM@@, @@traverse@@ or @@sequence@@
with Haskell lists, you would do better to use something like
@@Stream (Of a) m r@@. The type signatures are a little fancier, but
the programs themselves are mostly the same. /In fact, they are mostly simpler./ Thus,
consider the trivial demo program mentioned in
<http://stackoverflow.com/questions/24068399/haskell-performance-of-iorefs this SO question>

> main = mapM newIORef [1..10^8::Int] >>= mapM readIORef >>= mapM_ print

The new user notices that this exhausts memory, and worries about the efficiency of Haskell @@IORefs@@.
But of course it exhausts memory! Look what it says!
The problem is immediately cured by writing

> main = S.print $ S.mapM readIORef $ S.mapM newIORef $ S.each [1..10^8::Int]

which really does what the other program was meant to do,
uses no more memory than @@hello-world@@, /and is simpler anyway/, since it
doesn't involve the detour of \\\"extracting a list from IO\\\". Almost
every use of list @@mapM@@, @@replicateM@@, @@traverse@@ and @@sequence@@ produces
this problem on a smaller scale. People get used to it, as if it were
characteristic of Haskell programs to use a lot of memory. But in truth
\\\"extracting a list or sequence from IO\\\" is mostly just bad practice pure and simple.
Of course, @@mapM@@, @@replicateM@@, @@traverse@@ and @@sequence@@ make sense for lists,
under certain conditions! But @@unsafePerformIO@@ also makes sense under
certain conditions.

The <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming.html Streaming> module exports the general type,
@@Stream f m r@@, which can be used to stream successive distinct
steps characterized by /any/
functor @@f@@, though we are mostly interested in organizing computations
of the form @@Stream (Of a) m r@@. The streaming-IO libraries have
various devices for dealing
with effectful variants of @@[a]@@ or @@([a],r)@@ in which the emergence of
successive elements somehow depends on IO. But it is only with
the general type @@Stream f m r@@, or some equivalent,
that one can envisage (for example) the connected streaming of their
sorts of stream - as one makes lists of lists in the Haskell
@@Prelude@@ and @@Data.List@@. One needs some such type if we are
to express properly streaming equivalents of e.g.

> group :: Ord a => [a] -> [[a]]
> chunksOf :: Int -> [a] -> [[a]]
> lines :: [Char] -> [[Char]] -- but similarly with byte streams, etc.

to mention a few obviously desirable operations.
(This is explained more elaborately in the <https://hackage.haskell.org/package/streaming#readme readme> below.)

One could of course throw something
like the present @@Stream@@ type on top of a prior stream concept: this is how @@pipes@@ and
@@pipes-group@@ (which are very much our model here) use @@FreeT@@.
But once one grasps the iterable stream concept needed to express
those functions then one will also see that,
with it, one is /already/ in possession of a complete
elementary streaming library - since one possesses @@Stream ((,) a) m r@@
or equivalently @@Stream (Of a) m r@@. This
is the type of a \\'generator\\' or \\'producer\\' or \\'source\\' or whatever
you call an effectful stream of items.
/The present Streaming.Prelude is thus the simplest streaming library that can replicate anything like the API of the Prelude and Data.List/.

The emphasis of the library is on interoperation; for
the rest its advantages are: extreme simplicity, re-use of
intuitions the user has gathered from mastery of @@Prelude@@ and
@@Data.List@@, and a total and systematic rejection of type synonyms.
The two conceptual pre-requisites are some
comprehension of monad transformers and some familiarity
with \\'rank 2 types\\'. It is hoped that experimentation with this
simple material, starting with the ghci examples in @@Streaming.Prelude@@,
will give people who are new to these concepts some
intuition about their importance. The most fundamental purpose of the
library is to express elementary streaming ideas without reliance on
a complex framework, but in a way that integrates transparently with
the rest of Haskell, using ideas - e.g. rank 2 types, which are here
implicit or explicit in most mapping - that the user can carry elsewhere,
rather than chaining her understanding to the curiosities of
a so-called streaming IO framework (as necessary as that is for certain purposes.)

See the
<https://hackage.haskell.org/package/streaming#readme readme>
below for further explanation, including the examples linked there.
Elementary usage can be divined from the ghci examples in
@@Streaming.Prelude@@ and perhaps from this rough beginning of a
<https://github.com/michaelt/streaming-tutorial/blob/master/tutorial.md tutorial>.
Note also the
<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>
and
<https://hackage.haskell.org/package/streaming-utils streaming utils>
packages. Questions about usage can be put
raised on StackOverflow with the tag @@[haskell-streaming]@@,
or as an issue on Github, or on the
<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>
(the package understands itself as part of the pipes \\'ecosystem\\'.)

The simplest form of interoperation with
<http://hackage.haskell.org/package/pipes pipes>
is accomplished with this isomorphism:

> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r
> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r

Interoperation with
<http://hackage.haskell.org/package/io-streams io-streams>
is thus:

> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()
> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)

With
<http://hackage.haskell.org/package/conduit conduit>
one might use, e.g.:

> Conduit.unfoldM Streaming.uncons                        :: Stream (Of a) m () -> Source m a
> \\str -> Streaming.mapM_ Conduit.yield (hoist lift str)  :: Stream (Of o) m r  -> ConduitM i o m r
> \\src -> hoist lift str $$ Conduit.mapM_ Streaming.yield :: Source m a         -> Stream (Of a) m ()

These conversions should never be more expensive than a single @@>->@@ or @@=$=@@.
The simplest interoperation with regular Haskell lists is provided by, say

> Streaming.each                                 :: [a]               -> Stream (Of a) m ()
> Streaming.toList_                              :: Stream (Of a) m r -> m [a]

The latter of course accumulates the whole list in memory, and is mostly what we are trying
to avoid. Every use of @@Prelude.mapM f@@ should be reconceived as using the
composition @@Streaming.toList_ . Streaming.mapM f . Streaming.each@@ with a view to
considering whether the accumulation required by @@Streaming.toList_@@ is really necessary.

Here are the results of some
<https://gist.github.com/michaelt/96606bbf05b29bf43a05aba081dc9bd4#file-benchmachines-hs microbenchmarks>
based on the
<https://github.com/ekmett/machines/blob/master/benchmarks/Benchmarks.hs benchmarks>
included in the machines package:

<<http://i.imgur.com/YbQtlXm.png>>

Because these are microbenchmarks for individual functions,
they represent a sort of \\\"worst case\\\"; many other factors can influence
the speed of a complex program.
")
    (license license:bsd-3)))

haskell-8.8-streaming

(define-public haskell-8.8-streaming-commons
  (package
    (name "haskell-8.8-streaming-commons")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-commons/streaming-commons-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pc13vz4n0a8lrvc2ck3r3ph10819n9pysklwqabg83q92zl0s9h"))))
    (properties `((upstream-name . "streaming-commons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-use-bytestring-builder")
       #:cabal-revision
       ("2" "08sdpw5v4k3zxnyk9b68b6ln811zm2dy152g7xzyz00vcawcg1nh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/streaming-commons")
    (synopsis
     "Common lower-level functions needed by various streaming data libraries")
    (description
     "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.")
    (license license:expat)))

haskell-8.8-streaming-commons

(define-public haskell-8.8-string-qq
  (package
    (name "haskell-8.8-string-qq")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-qq/string-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wfxkw4x6j6jq9nd82k83g2k3hskpsvk1dp4cpkshvjr4wg9qny8"))))
    (properties `((upstream-name . "string-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://hackage.haskell.org/package/string-qq")
    (synopsis
     "QuasiQuoter for non-interpolated strings, texts and bytestrings.")
    (description
     "QuasiQuoter for non-interpolated strings, texts and bytestrings, useful for writing multi-line IsString literals.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-string-qq

(define-public haskell-8.8-svg-builder
  (package
    (name "haskell-8.8-svg-builder")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/diagrams/svg-builder.git")
    (synopsis "DSL for building SVG.")
    (description "Fast, easy to write SVG.")
    (license license:bsd-3)))

haskell-8.8-svg-builder

(define-public haskell-8.8-syb
  (package
    (name "haskell-8.8-syb")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/syb/syb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0077vxzyi9ppbphi2ialac3p376k49qly1kskdgf57wdwix9qjp0"))))
    (properties `((upstream-name . "syb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rgxzwnbwawi8visnpq74s51n0qi9rzgnxsm2bdmi4vwfn3lb6w0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
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

haskell-8.8-syb

(define-public haskell-8.8-systemd
  (package
    (name "haskell-8.8-systemd")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)))
    (home-page "https://github.com/erebe/systemd")
    (synopsis "Systemd facilities (Socket activation, Notify)")
    (description "A module for Systemd facilities.")
    (license license:bsd-3)))

haskell-8.8-systemd

(define-public haskell-8.8-tardis
  (package
    (name "haskell-8.8-tardis")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tardis/tardis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd54pff1n6ds5jqa98qrby06d3ziw2rhb3j5lvw4mahsynsnwp6"))))
    (properties `((upstream-name . "tardis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1mbxzp2wwmils8ccqfp56g3zwwa9j9nr296zv0mr0cx49krw1s1h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)))
    (home-page "https://github.com/DanBurton/tardis")
    (synopsis "Bidirectional state monad transformer")
    (description
     "A Tardis is a combination of both a forwards and a backwards
state transformer, providing two state values that \\\"travel\\\"
in opposite directions.

A detailed description of what a Tardis is and how to use it
can be found in the documentation for Control.Monad.Tardis.")
    (license license:bsd-3)))

haskell-8.8-tardis

(define-public haskell-8.8-tce-conf
  (package
    (name "haskell-8.8-tce-conf")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tce-conf/tce-conf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18i6mphwjh61h8p2kzkj2aaq6l61n4lgpz7d89r17va1p4xq8ldh"))))
    (properties `((upstream-name . "tce-conf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "http://hub.darcs.net/dino/tce-conf")
    (synopsis "Very simple config file reading")
    (description
     "This package contains modules for runtime reading of very simple config files of the `key=value` style or as a Haskell data structure to be deserialized with `Read`. The modules support files with blank lines and simple single-line comments, but nothing else.")
    (license license:bsd-3)))

haskell-8.8-tce-conf

(define-public haskell-8.8-tensorflow-test
  (package
    (name "haskell-8.8-tensorflow-test")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tensorflow-test/tensorflow-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z2anh5ikjpsb1sjfn290bcf5rcxsmzb0gwdk9czdnlmx3fig0ip"))))
    (properties `((upstream-name . "tensorflow-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/tensorflow/haskell#readme")
    (synopsis "Some common functions for test suites.")
    (description "This package provides common utility functions for the
TensorFlow test suites.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-tensorflow-test

(define-public haskell-8.8-terminal-progress-bar
  (package
    (name "haskell-8.8-terminal-progress-bar")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-terminal-size)))
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

haskell-8.8-terminal-progress-bar

(define-public haskell-8.8-text-latin1
  (package
    (name "haskell-8.8-text-latin1")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-checked)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/mvv/text-latin1")
    (synopsis "Latin-1 (including ASCII) utility functions")
    (description
     "This package provides various functions over the ASCII ang Latin-1
portions of the 'Char' and 'Word8' data types.")
    (license license:bsd-3)))

haskell-8.8-text-latin1

(define-public haskell-8.8-thread-local-storage
  (package
    (name "haskell-8.8-thread-local-storage")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-local-storage/thread-local-storage-"
                    version ".tar.gz"))
              (sha256
               (base32
                "152j8r7rfixkjrh1ynv2s0586bl65cpy47frhsikd40q64bf0j6n"))))
    (properties `((upstream-name . "thread-local-storage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/rrnewton/thread-local-storage")
    (synopsis "Several options for thread-local-storage (TLS) in Haskell.")
    (description
     "
Thread-local storage, or TLS, is an important ingredient in many
algorithms and data structures.

The GHC compiler does not provide a built-in notion of TLS either
at the IO-thread or OS thread level.  This package provides a few
different implementations of a simple TLS API.

All exported public modules provide exactly the same interface with
different implementations.  Run the included criterion benchmark
suite to ascertain which performs the best on your platform.

Example criterion benchmark data can be found here (from an Intel Ivy-Bridge i7-3770 desktop):
<http://www.cs.indiana.edu/~rrnewton/datasets/xmen_tls_report.html>")
    (license license:bsd-3)))

haskell-8.8-thread-local-storage

(define-public haskell-8.8-throttle-io-stream
  (package
    (name "haskell-8.8-throttle-io-stream")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/throttle-io-stream/throttle-io-stream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13icrx3nrgidnb7j3ixqz93rcsc63qmczkvjyg74pjrb0rlsi5z8"))))
    (properties `((upstream-name . "throttle-io-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stm-chans)))
    (home-page "https://github.com/mtesseract/throttle-io-stream#readme")
    (synopsis "Throttler between arbitrary IO producer and consumer functions")
    (description
     "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.")
    (license license:bsd-3)))

haskell-8.8-throttle-io-stream

(define-public haskell-8.8-through-text
  (package
    (name "haskell-8.8-through-text")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/through-text/through-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kdl36n98kajaa7v7js2sy8bi09p8rrxmlfcclcfc1l92bd2aclk"))))
    (properties `((upstream-name . "through-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1h55jhl5igpli19qirk0wv5gl7ihhw0glbha18xpghfz2z6fjwl3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)))
    (home-page "https://www.github.com/bergmark/through-text")
    (synopsis
     "Convert textual types through Text without needing O(n^2) instances.")
    (description
     "Convert textual types through Text without needing O(n^2) instances.

See the README for more information: <https://github.com/bergmark/through-text/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.8-through-text

(define-public haskell-8.8-tile
  (package
    (name "haskell-8.8-tile")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tile/tile-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w35rhrpjs39xbcg2i635jxdkbp4nhkzrrnl9p3bz85yc1iiiv8m"))))
    (properties `((upstream-name . "tile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)))
    (home-page "https://github.com/caneroj1/tile#readme")
    (synopsis "Slippy map tile functionality.")
    (description "Tile/lonlat conversion utilities for slippy maps.")
    (license license:bsd-3)))

haskell-8.8-tile

(define-public haskell-8.8-tmapchan
  (package
    (name "haskell-8.8-tmapchan")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/athanclark/tmapchan#readme")
    (synopsis
     "An insert-ordered multimap (indexed FIFO) which consumes values as you lookup")
    (description "")
    (license license:bsd-3)))

haskell-8.8-tmapchan

(define-public haskell-8.8-topograph
  (package
    (name "haskell-8.8-topograph")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/topograph/topograph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sd2gyirkdgwcll76zxw954wdsyxzajn59xa9zk55fbrsm6w24cv"))))
    (properties `((upstream-name . "topograph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "05pkc4byw9xqz4048sdlk24h311kw41nr18f3vs1p1vssyy10g36")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/phadej/topograph")
    (synopsis "Directed acyclic graphs.")
    (description
     "Directed acyclic graphs can be sorted topographically.
Existence of topographic ordering allows writing many graph algorithms efficiently.
And many graphs, e.g. most dependency graphs are acyclic!

There are some algorithms built-in: dfs, transpose, transitive closure,
transitive reduction...
Some algorithms even become not-so-hard to implement, like a longest path!")
    (license license:bsd-3)))

haskell-8.8-topograph

(define-public haskell-8.8-tostring
  (package
    (name "haskell-8.8-tostring")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://hackage.haskell.org/package/tostring")
    (synopsis "The ToString class")
    (description "A type class for converting text types to String.")
    (license license:bsd-3)))

haskell-8.8-tostring

(define-public haskell-8.8-transformers-bifunctors
  (package
    (name "haskell-8.8-transformers-bifunctors")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-bifunctors/transformers-bifunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01s8516m9cybx5gqxk8g00fnkbwpfi5vrm1pgi62pxk1cgbx699w"))))
    (properties `((upstream-name . "transformers-bifunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vjyk2ldwfi2pkvk79p37ii5xgg1399kxqhkq3l4wvag4j5p4afs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)))
    (home-page "https://github.com/jacobstanley/transformers-bifunctors")
    (synopsis "Bifunctors over monad transformers.")
    (description "Bifunctors over monad transformers.")
    (license license:bsd-3)))

haskell-8.8-transformers-bifunctors

(define-public haskell-8.8-ttrie
  (package
    (name "haskell-8.8-ttrie")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttrie/ttrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s2a3zr99n0k8l847jcpzpi9vz8z69jjgxqd28b0p6jmi7llyi2h"))))
    (properties `((upstream-name . "ttrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "http://github.com/mcschroeder/ttrie")
    (synopsis "Contention-free STM hash map")
    (description
     "A contention-free STM hash map.
\\\"Contention-free\\\" means that the map will never cause spurious conflicts.
A transaction operating on the map will only ever have to retry if
another transaction is operating on the same key at the same time.

This is an implementation of the /transactional trie/,
which is basically a /lock-free concurrent hash trie/ lifted into STM.
For a detailed discussion, including an evaluation of its performance,
see Chapter 4 of <https://github.com/mcschroeder/thesis my master's thesis>.")
    (license license:expat)))

haskell-8.8-ttrie

(define-public haskell-8.8-tuple-sop
  (package
    (name "haskell-8.8-tuple-sop")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generics-sop)))
    (home-page "https://github.com/Ferdinand-vW/tuple-sop#readme")
    (synopsis "functions on n-ary tuples using generics-sop")
    (description
     "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-tuple-sop

(define-public haskell-8.8-type-map
  (package
    (name "haskell-8.8-type-map")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-map/type-map-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zakl5bdzwng1r0x384w066zhwgwcf24s6jsm6d4zsx7xmngzmr5"))))
    (properties `((upstream-name . "type-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "184jzydzkm8qa3wbfzx173yjhydss9fnki0g81dp4yij90lr1qf9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/Lysxia/type-map")
    (synopsis "Type-indexed maps")
    (description
     "Maps where keys are types and values can have types depending on their keys.")
    (license license:expat)))

haskell-8.8-type-map

(define-public haskell-8.8-typerep-map
  (package
    (name "haskell-8.8-typerep-map")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typerep-map/typerep-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j7f7k0knpdsh41p0bzg7yv32nz684s3vrxc8pig5ckmmadc4mh4"))))
    (properties `((upstream-name . "typerep-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/kowainik/typerep-map")
    (synopsis "Efficient implementation of a dependent map with types as keys")
    (description
     "A dependent map from type representations to values of these types.

Here is an illustration of such a map:

>     TMap
> ---------------
>  Int  -> 5
>  Bool -> True
>  Char -> 'x'

In addition to @@TMap@@, we provide @@TypeRepMap@@ parametrized by a
@@vinyl@@-style interpretation. This data structure is equivalent to @@DMap
TypeRep@@, but with significantly more efficient lookups.")
    (license license:mpl2.0)))

haskell-8.8-typerep-map

(define-public haskell-8.8-tzdata
  (package
    (name "haskell-8.8-tzdata")
    (version "0.1.20190911.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tzdata/tzdata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "156mq401xbrx325bc745va2nh7r5ybi01nlrwavm0gxijfs0i4b9"))))
    (properties `((upstream-name . "tzdata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/nilcons/haskell-tzdata")
    (synopsis "Time zone database (as files and as a module)")
    (description
     "The goal of this package is to distribute the standard Time Zone
Database in a cabal package, so that it can be used in Haskell
programs uniformly on all platforms.

This package currently ships the @@2019c@@ version of the time zone
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

haskell-8.8-tzdata

(define-public haskell-8.8-unagi-chan
  (package
    (name "haskell-8.8-unagi-chan")
    (version "0.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unagi-chan/unagi-chan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15fnk9x4fd2ryp31fjfrwm8k61m3a0qyb95m4065zc0yi0jyacp2"))))
    (properties `((upstream-name . "unagi-chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-compare-benchmarks")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://hackage.haskell.org/package/unagi-chan")
    (synopsis "Fast concurrent queues with a Chan-like API, and more")
    (description
     "This library provides implementations of concurrent FIFO queues (for both
general boxed and primitive unboxed values) that are fast, perform well
under contention, and offer a Chan-like interface. The library may be of
limited usefulness outside of x86 architectures where the fetch-and-add
instruction is not available.

We export several variations of our design; some support additional
functionality while others try for lower latency by removing features or
making them more restrictive (e.g. in the @@Unboxed@@ variants).

- @@Unagi@@: a general-purpose near drop-in replacement for @@Chan@@.

- @@Unagi.Unboxed@@: like @@Unagi@@ but specialized for primitive types; this
may perform better if a queue grows very large.

- @@Unagi.Bounded@@: a bounded variant with blocking and non-blocking writes,
and other functionality where a notion of the queue's capacity is
required.

- @@Unagi.NoBlocking@@: lowest latency implementations for when blocking
reads aren't required.

- @@Unagi.NoBlocking.Unboxed@@: like @@Unagi.NoBlocking@@ but for primitive
types.

Some of these may be deprecated in the future if they are found to provide
little performance benefit, or no unique features; you should benchmark and
experiment with them for your use cases, and please submit pull requests
for additions to the benchmark suite that reflect what you find.

Here is an example benchmark measuring the time taken to concurrently write
and read 100,000 messages, with work divided amongst increasing number of
readers and writers, comparing against the top-performing queues in the
standard libraries. The inset graph shows a zoomed-in view on the
implementations here.

<<http://i.imgur.com/J5rLUFn.png>>
")
    (license license:bsd-3)))

haskell-8.8-unagi-chan

(define-public haskell-8.8-unboxed-ref
  (package
    (name "haskell-8.8-unboxed-ref")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "https://github.com/winterland1989/unboxed-ref")
    (synopsis "Fast unboxed references for ST and IO monad")
    (description "Fast unboxed references for ST and IO monad")
    (license license:bsd-3)))

haskell-8.8-unboxed-ref

(define-public haskell-8.8-uniq-deep
  (package
    (name "haskell-8.8-uniq-deep")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniq-deep/uniq-deep-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r0gq0mlnl9wdn3v0pdq3vnwn6r4pzc6j7ssha93lms9380kl4nx"))))
    (properties `((upstream-name . "uniq-deep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/ncaq/uniq-deep#readme")
    (synopsis "uniq-deep")
    (description
     "alternative of unix uniq command. 'uniq-deep' detect repeated lines unless they are adjacent.")
    (license license:expat)))

haskell-8.8-uniq-deep

(define-public haskell-8.8-universe-instances-base
  (package
    (name "haskell-8.8-universe-instances-base")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-base/universe-instances-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17g4xf7zcxd9a2am0p401b0l87ynxwpm3c2lqc4vmw4sz071kccb"))))
    (properties `((upstream-name . "universe-instances-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "03g5vpmmymfjx4p1l2v275vn2dknb7m91wmh01aw8f26224f7sjw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from the base package")
    (description
     "__DEPRECATED:__ instances are moved to @@universe-base@@ package
@@universe-base@@ package provides instances for types from GHC-boot libraries.")
    (license license:bsd-3)))

haskell-8.8-universe-instances-base

(define-public haskell-8.8-universe-instances-trans
  (package
    (name "haskell-8.8-universe-instances-trans")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-trans/universe-instances-trans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dp37rb61g5mqj4kfkgi6zxcjhrm9npz197sksqwg1skgjdgbbn6"))))
    (properties `((upstream-name . "universe-instances-trans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0fyhcfkriq4zcvqrr33x5ywxxmpyjjy0bz78pq2x38vpgqagiz4p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Universe instances for types from the transformers and mtl packages")
    (description
     "__DEPRECATED:__ instances are moved to @@universe-base@@ package

@@universe-base@@ package provides instances for types from GHC-boot libraries.")
    (license license:bsd-3)))

haskell-8.8-universe-instances-trans

(define-public haskell-8.8-universe-reverse-instances
  (package
    (name "haskell-8.8-universe-reverse-instances")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-reverse-instances/universe-reverse-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pdmv146ap0dh38mxhjf11jx3fbr9im7mc0zxb3bsnwpfrv1kfqd"))))
    (properties `((upstream-name . "universe-reverse-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1zkpcipbzhxricr94pkhn4cqmjcnsxx301kxarx798qr9il37qzw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Instances of standard classes that are made possible by enumerations")
    (description
     "For example this package provides a @@Eq (a -> b)@@ instance:

@@
instance (Finite a, Eq b) => Eq (a -> b) where
f == g = and [f x == g x | x <- universeF]
@@")
    (license license:bsd-3)))

haskell-8.8-universe-reverse-instances

(define-public haskell-8.8-universe-some
  (package
    (name "haskell-8.8-universe-some")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-some/universe-some-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c9pdk682xdzscq77c006x052c9jizpgja3xk0ym8n421h0k8zlh"))))
    (properties `((upstream-name . "universe-some") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1m02p2lrk46a26s8ghvls3airdassdf6yy2i2arn4vm1ndzqywy2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-some)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for Some from some")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This package adds

@@
class UniverseSome f where universeSome :: [Some f]
class UniverseSome f => FiniteSome f where universeFSome :: [Some f]; universeFSome = universe
@@

classes.")
    (license license:bsd-3)))

haskell-8.8-universe-some

(define-public haskell-8.8-uuid
  (package
    (name "haskell-8.8-uuid")
    (version "1.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/uuid/uuid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09xhk42yhxvqmka0iqrv3338asncz8cap3j0ic0ps896f2581b6z"))))
    (properties `((upstream-name . "uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "06w8i9hi9ha84nmj6fcj44apzv61m3ryc0a1yxxqq5n8vznk2iya")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-info)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uuid-types)))
    (home-page "https://github.com/hvr/uuid")
    (synopsis
     "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
     "This library is useful for creating, comparing, parsing and
printing Universally Unique Identifiers.

See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-8.8-uuid

(define-public haskell-8.8-vault
  (package
    (name "haskell-8.8-vault")
    (version "0.3.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vault/vault-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0na31n56p6713az0vfhdrv53n03bb3yrnyszf3vxsjlgvrax472v"))))
    (properties `((upstream-name . "vault") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-fuseghc")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

haskell-8.8-vault

(define-public haskell-8.8-vector-algorithms
  (package
    (name "haskell-8.8-vector-algorithms")
    (version "0.8.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-algorithms/vector-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fxg6w0vh5g2vzw4alajj9ywdijfn9nyx28hbckhmwwbfxb6l5vn"))))
    (properties `((upstream-name . "vector-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-fbench" "-fproperties" "-f-llvm")
       #:cabal-revision
       ("2" "0i55aqh2kfswmzvkyls1vlzlg3gvh1ydhksx9w7circ8ffj6lrg0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/erikd/vector-algorithms/")
    (synopsis "Efficient algorithms for vector arrays")
    (description
     "Efficient algorithms for sorting vector arrays. At some stage
other vector algorithms may be added.")
    (license license:bsd-3)))

haskell-8.8-vector-algorithms

(define-public haskell-8.8-vector-binary-instances
  (package
    (name "haskell-8.8-vector-binary-instances")
    (version "0.2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-binary-instances/vector-binary-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04n5cqm1v95pw1bp68l9drjkxqiy2vswxdq0fy1rqcgxisgvji9r"))))
    (properties `((upstream-name . "vector-binary-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ia9i7q7jrk3ab3nq2368glr69vl6fwvh42zlwvdmxn4xd861qfx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/bos/vector-binary-instances")
    (synopsis "Instances of Data.Binary for vector")
    (description
     "Instances for Binary for the types defined in the vector package,
making it easy to serialize vectors to and from disk. We use the
generic interface to vectors, so all vector types are supported.
Specific instances are provided for unboxed, boxed and storable
vectors.

To serialize a vector:

> *Data.Vector.Binary> let v = Data.Vector.fromList [1..10]
> *Data.Vector.Binary> v
> fromList [1,2,3,4,5,6,7,8,9,10] :: Data.Vector.Vector
> *Data.Vector.Binary> encode v
> Chunk \"\\NUL\\NUL\\NUL\\NUL\\NUL...\\NUL\\NUL\\NUL\\t\\NUL\\NUL\\NUL\\NUL\\n\" Empty

Which you can in turn compress before writing to disk:

> compress . encode $ v
> Chunk \"\\US\\139\\b\\NUL\\NUL\\N...\\229\\240,\\254:\\NUL\\NUL\\NUL\" Empty

Try the cereal-vector package if you are looking for Data.Serialize
instances.")
    (license license:bsd-3)))

haskell-8.8-vector-binary-instances

(define-public haskell-8.8-vector-buffer
  (package
    (name "haskell-8.8-vector-buffer")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-buffer/vector-buffer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16zxc2d25qd15nankhc974ax7q3y72mg5a77v5jsfrw291brnnlv"))))
    (properties `((upstream-name . "vector-buffer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/vector-buffer")
    (synopsis "A buffer compatible with Data.Vector.*")
    (description
     "A buffer type that can easily be converted to a Data.Vector.Storable vector
from the vector package and compatible with hmatrix.

Elements are pushed into the buffer.  When the buffer is converted to a read-only
vector, the last-pushed element occurs at the end.

Monadic map functions also operate so that the last-pushed element is treated last.")
    (license license:bsd-3)))

haskell-8.8-vector-buffer

(define-public haskell-8.8-vector-builder
  (package
    (name "haskell-8.8-vector-builder")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-builder/vector-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ww0l52p8s6gmh985adnjbvm1vrqpqbm08qdcrvxwhhcqmxgv6m3"))))
    (properties `((upstream-name . "vector-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/nikita-volkov/vector-builder")
    (synopsis "Vector builder")
    (description
     "An API for efficient and convenient construction of vectors.
It provides the composable `Builder` abstraction, which has instances of the `Monoid` and `Semigroup` classes.

[Usage]

First you use the `Builder` abstraction to specify the structure of the vector.
Then you execute the builder to actually produce the vector.

[Example]

The following code shows how you can efficiently concatenate different datastructures into a single immutable vector:

>
>import qualified Data.Vector as A
>import qualified VectorBuilder.Builder as B
>import qualified VectorBuilder.Vector as C
>
>
>myVector :: A.Vector a -> [a] -> a -> A.Vector a
>myVector vector list element =
>  C.build builder
>  where
>    builder =
>      B.vector vector <>
>      B.foldable list <>
>      B.singleton element")
    (license license:expat)))

haskell-8.8-vector-builder

(define-public haskell-8.8-webrtc-vad
  (package
    (name "haskell-8.8-webrtc-vad")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webrtc-vad/webrtc-vad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lylc3axcamrmjaarx3aacbjc9d0rkhmdgq1g2pc5j0lsf8ndk49"))))
    (properties `((upstream-name . "webrtc-vad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/webrtc-vad")
    (synopsis "Easy voice activity detection")
    (description
     "A simple library wrapping WebRTC's voice activity detection engine.")
    (license license:expat)))

haskell-8.8-webrtc-vad

(define-public haskell-8.8-witherable-class
  (package
    (name "haskell-8.8-witherable-class")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/witherable-class/witherable-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jb8yq9i0rlbmcd5rbg95m2w26zbmi7iwph5v7wghiari751r2bp"))))
    (properties `((upstream-name . "witherable-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/witherable-class")
    (synopsis "Witherable = Traversable + Filterable")
    (description "")
    (license license:bsd-3)))

haskell-8.8-witherable-class

(define-public haskell-8.8-yjsvg
  (package
    (name "haskell-8.8-yjsvg")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yjsvg/yjsvg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zif4sqrd7kv1546vcp1q78bb8k94mkiqxh7glix6gvv7gabfdzp"))))
    (properties `((upstream-name . "yjsvg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HaXml)))
    (home-page "https://hackage.haskell.org/package/yjsvg")
    (synopsis "make SVG string from Haskell data")
    (description
     "> import Text.XML.YJSVG
> main = putStrLn $ showSVG 500 750 [ (\"\", Line 30 40 100 200 \"yellow\" 10) ]

etc")
    (license license:bsd-3)))

haskell-8.8-yjsvg

(define-public haskell-8.8-zasni-gerna
  (package
    (name "haskell-8.8-zasni-gerna")
    (version "0.0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zasni-gerna/zasni-gerna-"
                    version ".tar.gz"))
              (sha256
               (base32
                "131lfik05gkr7mqnxf2ibbv5nxjy2x76r5mpvwgzj06nq4v9n527"))))
    (properties `((upstream-name . "zasni-gerna") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-papillon)))
    (home-page "https://skami.iocikun.jp/haskell/packages/zasni-gerna")
    (synopsis "lojban parser (zasni gerna)")
    (description "lojban zasni gerna parser")
    (license license:bsd-3)))

haskell-8.8-zasni-gerna

