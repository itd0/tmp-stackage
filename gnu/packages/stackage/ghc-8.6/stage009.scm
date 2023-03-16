;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage009)
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
(define-public haskell-8.6-GLURaw
  (package
    (name "haskell-8.6-GLURaw")
    (version "2.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLURaw/GLURaw-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i2xi35n5z0d372px9mh6cyhgg1m0cfaiy3fnspkf6kbn9fgsqxq"))))
    (properties `((upstream-name . "GLURaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-OpenGLRaw)
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

haskell-8.6-GLURaw

(define-public haskell-8.6-al
  (package
    (name "haskell-8.6-al")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/al/al-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1lpcdh2dak1r9lwd6irjs8p56p1fjphq58ixwjwbg9syl2rz7w4b"))))
    (properties `((upstream-name . "al") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-stdcall")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages audio) openal)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://github.com/phaazon/al")
    (synopsis "OpenAL 1.1 raw API.")
    (description "OpenAL is a minimalistic sound API that aims to provide
bare features for /spacialized audio/. The API looks like
the OpenGL one, thus the libs are pretty great together.
Up to now, no OpenAL extension is supported. You're highly
invited to contribute ;).
EAX is not supported yet either. It'll be embedded in
future releases, soon.
In order to build and install \"al\", you'll need to have
pkg-config installed.
For Ubuntu users, there might be a bug with pkg-config.
If the install fails, consider using @@cabal install al
your OpenAL setup is located to – you can help find that
with @@find / -name al.h@@.")
    (license license:bsd-3)))

haskell-8.6-al

(define-public haskell-8.6-alsa-mixer
  (package
    (name "haskell-8.6-alsa-mixer")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-mixer/alsa-mixer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00ny2p3276jilidjs44npc8zmbhynz3f2lpmlwwl6swwx5yijsnb"))))
    (properties `((upstream-name . "alsa-mixer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-alsa-core)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)))
    (home-page "https://github.com/ttuegel/alsa-mixer")
    (synopsis "Bindings to the ALSA simple mixer API.")
    (description
     "This package provides bindings to the ALSA simple mixer API.")
    (license license:bsd-3)))

haskell-8.6-alsa-mixer

(define-public haskell-8.6-blas-hs
  (package
    (name "haskell-8.6-blas-hs")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/blas-hs/blas-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11mhjvqjnap4lj70f6lxjrjrdlkw8gnmd1lz4cfkjawq4w4npq40"))))
    (properties `((upstream-name . "blas-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-netlib" "-f-no-accelerate" "-f-openblas" "-f-mkl" "-f-cblas")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/Rufflewind/blas-hs")
    (synopsis "Low-level Haskell bindings to Blas.")
    (description
     "This package provides a complete low-level binding to Blas via the foreign
function interface, allowing Haskell programs to take advantage of optimized
routines for vector and matrix operations in Haskell.

More information can be found at the
<https://github.com/Rufflewind/blas-hs repository>.")
    (license license:expat)))

haskell-8.6-blas-hs

(define-public haskell-8.6-bytes
  (package
    (name "haskell-8.6-bytes")
    (version "0.15.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "063il2vrn0p88r9gzndh4ijs0mxj37khkc9ym9bqdsv7ngk3b683"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("1" "0k05cszpxmdwgnbxhmlmmvsxkwlanvz8dn0p3f6bzs8qlv3kbhm7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-8.6-bytes

(define-public haskell-8.6-cassava-megaparsec
  (package
    (name "haskell-8.6-cassava-megaparsec")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-megaparsec/cassava-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q4skw98nzy6icmgpwqvgw0c5pqcgi25rf7nmwh2pksvv94pi3p3"))))
    (properties `((upstream-name . "cassava-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/stackbuilders/cassava-megaparsec")
    (synopsis "Megaparsec parser of CSV files that plays nicely with Cassava")
    (description
     "Megaparsec parser of CSV files that plays nicely with Cassava.")
    (license license:expat)))

haskell-8.6-cassava-megaparsec

(define-public haskell-8.6-cipher-aes128
  (package
    (name "haskell-8.6-cipher-aes128")
    (version "0.7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-aes128/cipher-aes128-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bafr5aa9mjfzdgc6gwapvb9g04pyh4lwhv2x2m1v3ljjglg9d1w"))))
    (properties `((upstream-name . "cipher-aes128") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test" "-f-halvm")
       #:cabal-revision
       ("1" "0miqp8jvgsqkgj5rxb2vjwa24ac5kdyy3b2cwxb9z0wk1ixk5ilm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/TomMD/cipher-aes128")
    (synopsis "AES and common modes using AES-NI when available.")
    (description
     "Cipher-aes128 is an implementation of AES and common modes of operation.  It borrows Hanquez's C AES code (see 'cipher-aes') but
is unique due to including compile-time detection of
NI compiler support, a slightly more functional interface
for GCM operations, exposure of 'Ptr' based operations via the .Internal module, and build-in crypto-api support.
Cipher-aes128 was originally developed as \"'cipher-aes' plus trampolines\", which has since been adopted into cipher-aes.")
    (license license:bsd-3)))

haskell-8.6-cipher-aes128

(define-public haskell-8.6-co-log-core
  (package
    (name "haskell-8.6-co-log-core")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-core/co-log-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfdjcbhd4mjj00fr2xk7g220kxz4jzbv84j32sqkjnrx49cziz0"))))
    (properties `((upstream-name . "co-log-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/kowainik/co-log")
    (synopsis "Composable Contravariant Comonadic Logging Library")
    (description
     "This package provides core types and functions to work with the @@LogAction@@ data type which is both simple and powerful.

@@
__newtype__ LogAction m msg = LogAction
\\    @{ unLogAction :: msg -> m ()
\\    @}
@@

The ideas behind this package are described in the following blog post:

* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)

See the following packages for different implementations based on @@co-log-core@@:

* [co-log](http://hackage.haskell.org/package/co-log): taggless final implementations.
* [co-log-polysemy](http://hackage.haskell.org/package/co-log-polysemy): extensible
effects implementation based on @@polysemy@@.")
    (license license:mpl2.0)))

haskell-8.6-co-log-core

(define-public haskell-8.6-configurator-export
  (package
    (name "haskell-8.6-configurator-export")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-export/configurator-export-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k42kdzrmci19w2wb6lswkf2g9fzmrwkn6yvvz694xy957pn5gcx"))))
    (properties `((upstream-name . "configurator-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-configurator)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://github.com/mstksg/configurator-export")
    (synopsis "Pretty printer and exporter for configurations from
the \"configurator\" library.")
    (description
     "Pretty printers and exporters for 'Config's from the
<http://hackage.haskell.org/package/configurator-0.3.0.0 configurator>
library, in \"Data.Configurator\".

All results are intended to be valid parsing files in the
configuration file syntax of the library.

For a full round trip:

> main = do
>   cfg <- load [Required \"config.cfg\"]
>   writeConf \"config.cfg\" cfg

This should load the config file, parse it, and then
re-export it, rewriting the original config file.  The
result should be an identical configuration file (with
keys potentially re-arranged and re-sorted, comments
removed, etc.)

See the \"Data.Configurator.Export\" module for more
details and ways to modify the output style.")
    (license license:bsd-3)))

haskell-8.6-configurator-export

(define-public haskell-8.6-courier
  (package
    (name "haskell-8.6-courier")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/courier/courier-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lrlqdxd19yj05hhvla1nc4a81rqkf2r4a6sffqlgqrxyd7ng7mc"))))
    (properties `((upstream-name . "courier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hslogger)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)))
    (home-page "http://github.com/hargettp/courier")
    (synopsis "A message-passing library for simplifying network applications")
    (description
     "Inspired by Erlang's simple message-passing facilities, courier provides roughly similar
capabilities. Applications simply create one or more endpoints,
bind each to a transport using a given name, then can freely
send / receive messages to other endpoints just by referencing the name each endpoint
bound to its transport.

A primary driver of this package's design is separation of concerns: many algorithms
(especially for distributed applications) depend upon a message-passing foundation,
but the algorithms are sufficiently complex that the details of how those messages
are transmitted among nodes are best hidden away and solved separately from
the distributed algorithm itself.  With this in mind, this package aims
to provide a variety of transports as well as support for common communication
idioms (e.g., in order message delivery, selective out of order message delivery,
synchronous RPC, etc.).

Applications may process messages in the order received at an endpoint, or use
selective message reception to process the first message arriving at an endpoint
that also matches a provided selection function. Through selective message reception,
applications may approximate the style of an Erlang application, and enjoy better
composability of message reception with multiple independent dispatch routines or
message pumps.")
    (license license:expat)))

haskell-8.6-courier

(define-public haskell-8.6-crc32c
  (package
    (name "haskell-8.6-crc32c")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/crc32c/crc32c-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y008mi1livbm6rpc4rj4nnrkwqqm7xk92sdf14r5iqwj8nnh209"))))
    (properties `((upstream-name . "crc32c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/leptonyu/crc32c#readme")
    (synopsis "Haskell bindings for crc32c")
    (description "")
    (license license:bsd-3)))

haskell-8.6-crc32c

(define-public haskell-8.6-crypto-api-tests
  (package
    (name "haskell-8.6-crypto-api-tests")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://trac.haskell.org/crypto-api/wiki")
    (synopsis "A test framework and KATs for cryptographic operations.")
    (description "A test framework for hash and cipher operations using
the crypto-api interface.  Known answer tests (KATs)
for common cryptographic algorithms are included.
Patches welcome (both adding KATs for more algorithms
or property tests for classes of algorithms).")
    (license license:bsd-3)))

haskell-8.6-crypto-api-tests

(define-public haskell-8.6-cuda
  (package
    (name "haskell-8.6-cuda")
    (version "0.10.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cuda/cuda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10lyyc652ic3m4r5agszpv2r99y9fnsdwahb5pd4qiga770v45vp"))))
    (properties `((upstream-name . "cuda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1nw135pd2ab3mmyq3xmkxynzfb54qr7a8xssq5ivrk83yzvs87im")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)))
    (home-page "https://github.com/tmcdonell/cuda")
    (synopsis "FFI binding to the CUDA interface for programming NVIDIA GPUs")
    (description
     "The CUDA library provides a direct, general purpose C-like SPMD programming
model for NVIDIA graphics cards (G8x series onwards). This is a collection
of bindings to allow you to call and control, although not write, such
functions from Haskell-land. You will need to install the CUDA driver and
developer toolkit.

<http://developer.nvidia.com/cuda-downloads>

The setup script will look for your CUDA installation by checking, in the
following order:

1. The @@CUDA_PATH@@ environment variable

2. Searching for @@nvcc@@ on the @@PATH@@

3. Checking at @@\\/usr\\/local\\/cuda@@

4. @@CUDA_PATH_Vx_y@@ environment variable, for recent CUDA toolkit versions x.y

This library provides bindings to both the CUDA Driver and Runtime APIs. To
get started, see one of:

* \"Foreign.CUDA.Driver\" (a short tutorial is available here)

* \"Foreign.CUDA.Runtime\"

Tested with library versions up to CUDA-10.1. See also the
<https://travis-ci.org/tmcdonell/cuda travis-ci.org> build matrix for
version compatibility.

[/NOTES:/]

The setup script for this package requires at least Cabal-1.24. To upgrade,
execute one of:

* cabal users: @@cabal install Cabal --constraint=\"Cabal >= 1.24\"@@

* stack users: @@stack setup --upgrade-cabal@@

Due to an interaction between GHC-8 and unified virtual address spaces in
CUDA, this package does not currently work with GHCi on ghc-8.0.1 (compiled
programs should work). See the following for more details:

* <https://github.com/tmcdonell/cuda/issues/39>

* <https://ghc.haskell.org/trac/ghc/ticket/12573>

The bug should be fixed in ghc-8.0.2 and beyond.

For additional notes on installing on Windows, see:

* <https://github.com/tmcdonell/cuda/blob/master/WINDOWS.md>
")
    (license license:bsd-3)))

haskell-8.6-cuda

(define-public haskell-8.6-cue-sheet
  (package
    (name "haskell-8.6-cue-sheet")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cue-sheet/cue-sheet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0papll3xcq2ipmya61jr71gf3zx2swmys829x5sbz7lv6abj9r3i"))))
    (properties `((upstream-name . "cue-sheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("4" "0990qf5qbzf54is8wp06bccbl19qbbk849lmq0pdy94rrg1kn07a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/mrkkrp/cue-sheet")
    (synopsis "Support for construction, rendering, and parsing of CUE sheets")
    (description
     "Support for construction, rendering, and parsing of CUE sheets.")
    (license license:bsd-3)))

haskell-8.6-cue-sheet

(define-public haskell-8.6-data-default
  (package
    (name "haskell-8.6-data-default")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default/data-default-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04d5n8ybmcxba9qb6h389w9zfq1lvj81b82jh6maqp6pkhkmvydh"))))
    (properties `((upstream-name . "data-default") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-data-default-instances-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-data-default-instances-old-locale)))
    (home-page "https://hackage.haskell.org/package/data-default")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-8.6-data-default

(define-public haskell-8.6-derulo
  (package
    (name "haskell-8.6-derulo")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/derulo/derulo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ph4szgn009asgcpd6rzdach41jzyrwilk4x9vnrqk3mjk36zxy5"))))
    (properties `((upstream-name . "derulo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/tfausak/derulo#readme")
    (synopsis "Parse and render JSON simply.")
    (description "Derulo parses and renders JSON simply.")
    (license license:expat)))

haskell-8.6-derulo

(define-public haskell-8.6-dimensional
  (package
    (name "haskell-8.6-dimensional")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dimensional/dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i4k7m134w3pczj8qllc59djdhisj92z78qrzap9v0f4rx8jb8r9"))))
    (properties `((upstream-name . "dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "10xkgwjb9kqa95jck3b9wa3sz6vcb2lkygfmcqqz6hz6j65l79r8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-exact-pi)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-numtype-dk)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/bjornbm/dimensional/")
    (synopsis "Statically checked physical dimensions,
using Type Families and Data Kinds.")
    (description
     "Dimensional is a library providing data types for performing arithmetic
with physical quantities and units. Information about the physical
dimensions of the quantities and units is embedded in their types and the
validity of operations is verified by the type checker at compile time.
The boxing and unboxing of numerical values as quantities is done by
multiplication and division with units. The library is designed to, as
far as is practical, enforce/encourage best practices of unit usage.
Version 1 of the dimensional package differs from earlier version in that
the dimension tracking is implemented using Closed Type Families and Data Kinds
rather than functional dependencies. This enables a number of features, including
improved support for unit names and quantities with statically-unknown dimensions.
Requires GHC 8.0 or later.")
    (license license:bsd-3)))

haskell-8.6-dimensional

(define-public haskell-8.6-distributive
  (package
    (name "haskell-8.6-distributive")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributive/distributive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnayzzb4vk8rhh9gzhdpd9f64366k4vmbhximavmqqmp3cv2jbp"))))
    (properties `((upstream-name . "distributive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")
       #:cabal-revision
       ("1" "16dajmf8p96zj44l9a34qz284rzq8yl1m1y9241lmk1rlbv5xcwa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "http://github.com/ekmett/distributive/")
    (synopsis "Distributive functors -- Dual to Traversable")
    (description "Distributive functors -- Dual to @@Traversable@@")
    (license license:bsd-3)))

haskell-8.6-distributive

(define-public haskell-8.6-doctest-driver-gen
  (package
    (name "haskell-8.6-doctest-driver-gen")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-driver-gen/doctest-driver-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xkq9fpdm8ayjwf2lypkfnh1w08zimvhf27ffn71hfckd5nw4h2q"))))
    (properties `((upstream-name . "doctest-driver-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/Hexirp/doctest-driver-gen#readme")
    (synopsis "Generate driver file for doctest's cabal integration")
    (description "doctest-driver-gen is a doctest's driver file generator.
It lets you automatically generate driver file for
doctest's cabal integration.")
    (license license:bsd-3)))

haskell-8.6-doctest-driver-gen

(define-public haskell-8.6-dunai
  (package
    (name "haskell-8.6-dunai")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dunai/dunai-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07bkjp7z5lbm6466nc99p4ngiqkh5mgbczwl7rflxzis4w1vm997"))))
    (properties `((upstream-name . "dunai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-hlint" "-f-test-doc-coverage")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/ivanperez-keera/dunai")
    (synopsis
     "Generalised reactive framework supporting classic, arrowized and monadic FRP.")
    (description
     "Dunai is a DSL for strongly-typed CPS-based composable transformations.

Dunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are
transformations defined by a function @@unMSF :: MSF m a b -> a -> m (b, MSF m a b)@@
that executes one step of a simulation, and produces an output in a monadic
context, and a continuation to be used for future steps.

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
Classic FRP, and plain reactive programming. Arrowized and applicative
syntax are both supported.

For a very detailed introduction to MSFs, see:
<http://dl.acm.org/citation.cfm?id=2976010>
(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).")
    (license license:bsd-3)))

haskell-8.6-dunai

(define-public haskell-8.6-dunai-core
  (package
    (name "haskell-8.6-dunai-core")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dunai-core/dunai-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p8161m671dgf13q0rnpp797nymdxpi5nf6xl9mh9zj495libbzz"))))
    (properties `((upstream-name . "dunai-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/turion/dunai-core")
    (synopsis
     "Generalised reactive framework supporting classic, arrowized and monadic FRP.
(Core library fork.)")
    (description
     "Dunai is a DSL for strongly-typed CPS-based composable transformations.

Dunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are
transformations defined by a function @@unMSF :: MSF m a b -> a -> m (b, MSF m a b)@@
that executes one step of a simulation, and produces an output in a monadic
context, and a continuation to be used for future steps.

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
Classic FRP, and plain reactive programming. Arrowized and applicative
syntax are both supported.

For a very detailed introduction to MSFs, see:
<http://dl.acm.org/citation.cfm?id=2976010>
(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).")
    (license license:bsd-3)))

haskell-8.6-dunai-core

(define-public haskell-8.6-duration
  (package
    (name "haskell-8.6-duration")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/duration/duration-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18qjn97njhra7brps58rl44vyc0hmfc83prgm519q7dyf3159cd0"))))
    (properties `((upstream-name . "duration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/ryota-ka/duration#readme")
    (synopsis "A tiny compile-time time utility library inspired by zeit/ms")
    (description
     "A tiny compile-time time utility library inspired by zeit/ms")
    (license license:bsd-3)))

haskell-8.6-duration

(define-public haskell-8.6-elerea
  (package
    (name "haskell-8.6-elerea")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
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

haskell-8.6-elerea

(define-public haskell-8.6-email-validate
  (package
    (name "haskell-8.6-email-validate")
    (version "2.3.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/email-validate/email-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ar3cfjia3x11chb7w60mi7hp5djanms883ddk875l6lifr2lyqf"))))
    (properties `((upstream-name . "email-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "https://github.com/Porges/email-validate-hs")
    (synopsis "Email address validation")
    (description "Validating an email address string against RFC 5322")
    (license license:bsd-3)))

haskell-8.6-email-validate

(define-public haskell-8.6-exomizer
  (package
    (name "haskell-8.6-exomizer")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exomizer/exomizer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lngwbwgmh6dvskambn35ncrni7cxlychwbircb6srhjdm1lvhll"))))
    (properties `((upstream-name . "exomizer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)))
    (home-page "https://github.com/alexkazik/exomizer#readme")
    (synopsis "Compression and decompression in the exomizer format")
    (description
     "This package provides a pure interface for compressing and decompressing data represented as strict @@ByteStrings@@.

Only the @@raw@@, @@mem@@ and @@level@@ compressions are supported.

This library uses the @@exomizer 2.0.10@@.

@@exomizer@@ is created by Magnus Lind (magli143@@gmail.com) https://bitbucket.org/magli143/exomizer/wiki/Home")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-exomizer

(define-public haskell-8.6-fft
  (package
    (name "haskell-8.6-fft")
    (version "0.1.8.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fft/fft-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hjv3r09imb2ypgbz3qj9hf4f36v977z38gdcad3qa0334qdin1f"))))
    (properties `((upstream-name . "fft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fbase4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-carray)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ix-shapable)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-8.6-fft

(define-public haskell-8.6-fixed-vector
  (package
    (name "haskell-8.6-fixed-vector")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19846sgjlsv7qy9nm9l4p2wdms5kvx6y9wm5ffz1hw7h77qy8ryw"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-filemanip)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://hackage.haskell.org/package/fixed-vector")
    (synopsis "Generic vectors with statically known size.")
    (description
     "Generic library for vectors with statically known
size. Implementation is based on
<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>
Same functions could be used to work with both ADT based vector like

> data Vec3 a = a a a

Tuples are vectors too:

>>> sum (1,2,3)
6

Vectors which are represented internally by arrays are provided by
library. Both boxed and unboxed arrays are supported.

Library is structured as follows:

* Data.Vector.Fixed
Generic API. It's suitable for both ADT-based vector like Complex
and array-based ones.

* Data.Vector.Fixed.Cont
Continuation based vectors. Internally all functions use them.

* Data.Vector.Fixed.Mutable
Type classes for array-based implementation and API for working with
mutable state.

* Data.Vector.Fixed.Unboxed
Unboxed vectors.

* Data.Vector.Fixed.Boxed
Boxed vector which can hold elements of any type.

* Data.Vector.Fixed.Storable
Unboxed vectors of Storable  types.

* Data.Vector.Fixed.Primitive
Unboxed vectors based on pritimive package.")
    (license license:bsd-3)))

haskell-8.6-fixed-vector

(define-public haskell-8.6-flow
  (package
    (name "haskell-8.6-flow")
    (version "1.0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flow/flow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00pfsyfn7wpgghsw9xgakrxa3n04lizfhrxkg9jbyw0gvd5w6hi9"))))
    (properties `((upstream-name . "flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/tfausak/flow#readme")
    (synopsis "Write more understandable Haskell.")
    (description
     "Flow provides operators for writing more understandable Haskell.")
    (license license:expat)))

haskell-8.6-flow

(define-public haskell-8.6-from-sum
  (package
    (name "haskell-8.6-from-sum")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/from-sum/from-sum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rdsynimmq81y3g5c8z9yvlqhsl99hnvjq4wvdci5ql788cq4m81"))))
    (properties `((upstream-name . "from-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/cdepillabout/from-sum")
    (synopsis "Combinators for working with Maybe and Either")
    (description
     "Provides many functions for working with 'Maybe' and 'Either', including canonical 'fromMaybeM' and 'fromEitherM' functions.  Please see @@README.md@@.")
    (license license:bsd-3)))

haskell-8.6-from-sum

(define-public haskell-8.6-fused-effects
  (package
    (name "haskell-8.6-fused-effects")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fused-effects/fused-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6y34x29w31lzqlj7xf9sld9dmh3q1f0rl3zfmzd4kpp2ybc965"))))
    (properties `((upstream-name . "fused-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-inspection-testing)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (home-page "https://github.com/fused-effects/fused-effects")
    (synopsis "A fast, flexible, fused effect system.")
    (description
     "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.")
    (license license:bsd-3)))

haskell-8.6-fused-effects

(define-public haskell-8.6-genvalidity-property
  (package
    (name "haskell-8.6-genvalidity-property")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-property/genvalidity-property-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zayycx62226w54rvkxwhvqhznsr33dk3ds55yyqrfqbnhvph1s9"))))
    (properties `((upstream-name . "genvalidity-property") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard properties for functions on `Validity` types")
    (description "Standard properties for functions on `Validity` types")
    (license license:expat)))

haskell-8.6-genvalidity-property

(define-public haskell-8.6-genvalidity-time
  (package
    (name "haskell-8.6-genvalidity-time")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rhsifwsjvqd5sn9f05ihn9k04qwmnm2wn44fg9a6pq07vc5rcrf"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-genvalidity-time

(define-public haskell-8.6-ghci-hexcalc
  (package
    (name "haskell-8.6-ghci-hexcalc")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghci-hexcalc/ghci-hexcalc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kjkx8w1rq1fkzl0ffvp71xjb2q5pmlgnm19g0avim7isrjy87kh"))))
    (properties `((upstream-name . "ghci-hexcalc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/takenobu-hs/ghci-hexcalc")
    (synopsis "GHCi as a Hex Calculator interactive")
    (description
     "This package defines operations for an interactive hex-caluclator using GHCi.
This is a simple and casual interactive tool like Perl and Excel
for daily work.")
    (license license:bsd-3)))

haskell-8.6-ghci-hexcalc

(define-public haskell-8.6-hmatrix
  (package
    (name "haskell-8.6-hmatrix")
    (version "0.20.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hmatrix/hmatrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sqy1aci5zfagkb34mz3xdil7cl96z4b4cx28cha54vc5sx1lhpg"))))
    (properties `((upstream-name . "hmatrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-openblas" "-f-disable-default-paths")
       #:cabal-revision
       ("2" "0c4j7abkngyf7i882cpirlk11azma5mccw9cv5rcbc9cbvy2wddv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numeric Linear Algebra")
    (description
     "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.

Standard interface: \"Numeric.LinearAlgebra\".

Safer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".

Code examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>")
    (license license:bsd-3)))

haskell-8.6-hmatrix

(define-public haskell-8.6-hsshellscript
  (package
    (name "haskell-8.6-hsshellscript")
    (version "3.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsshellscript/hsshellscript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d66gsm7s2j4f60cjca6fsddg4i1m3l6rcyq29ywskifhfaxbgvx"))))
    (properties `((upstream-name . "hsshellscript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "http://www.volker-wysk.de/hsshellscript/")
    (synopsis "Haskell for Unix shell scripting tasks")
    (description "A Haskell-library for tasks which are usually done in
shell scripts. This includes parsing command line
arguments; dealing with paths; some commands for dealing
with files; calling external programs and subroutines as
separate processes; pipes and redirection of input and
output; and error handling.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-hsshellscript

(define-public haskell-8.6-http-date
  (package
    (name "haskell-8.6-http-date")
    (version "0.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-date/http-date-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09slbzqayjnqqz9zybk7slgzvizgplikqgg4b2flzgks91466k0g"))))
    (properties `((upstream-name . "http-date") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1za6cjv6hk9357n874jxhh962brcmvgflc07013598wqs6psya9b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)))
    (home-page "https://hackage.haskell.org/package/http-date")
    (synopsis "HTTP Date parser/formatter")
    (description "Fast parser and formatter for HTTP Date")
    (license license:bsd-3)))

haskell-8.6-http-date

(define-public haskell-8.6-human-readable-duration
  (package
    (name "haskell-8.6-human-readable-duration")
    (version "0.2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/human-readable-duration/human-readable-duration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06yw7bab1hk8287d2zdg45m46pgp87fivh0cb2x1nxivvn1qfs6c"))))
    (properties `((upstream-name . "human-readable-duration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page
     "https://gitlab.esy.fun/yogsototh/human-readable-duration#readme")
    (synopsis "Provide duration helper")
    (description
     "This is a minimal Haskell library to display duration.

> let duration = 2 * ms + 3 * oneSecond + 2 * minute + 33*day + 2*year
> humanReadableDuration duration
> -- will return: \"2 years 33 days 2 min 3s 2ms\"
> getYears duration
> -- will return 2
> getDays duration
> -- will return 763
> getMs duration
> -- will return 65923323002")
    (license license:bsd-3)))

haskell-8.6-human-readable-duration

(define-public haskell-8.6-hyphenation
  (package
    (name "haskell-8.6-hyphenation")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyphenation/hyphenation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09c9xpygjnq7kqcaybls91s7g1cv40rg54dn9w1svk973h0lgyii"))))
    (properties `((upstream-name . "hyphenation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-embed")
       #:cabal-revision
       ("3" "0krjvrk5hzcs101b5h95ai51wwq1fj04q1ryn63j1qmj22jpn4ki")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ekmett/hyphenation")
    (synopsis "Configurable Knuth-Liang hyphenation")
    (description
     "Configurable Knuth-Liang hyphenation

Uses the UTF8 encoded hyphenation patterns provided by
hyph-utf8 from
<http://www.ctan.org/tex-archive/language/hyph-utf8>

Usage:

>>> hyphenate english_US \"supercalifragilisticexpialadocious\"
[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]

>>> hyphenate english_US \"hyphenation\"
[\"hy\",\"phen\",\"ation\"]

>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"
[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]")
    (license license:bsd-2)))

haskell-8.6-hyphenation

(define-public haskell-8.6-io-streams-haproxy
  (package
    (name "haskell-8.6-io-streams-haproxy")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams-haproxy/io-streams-haproxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dcn5hd4fiwyq7m01r6fi93vfvygca5s6mz87c78m0zyj29clkmp"))))
    (properties `((upstream-name . "io-streams-haproxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0wib2mz6ifnixrcp9s1pkd00v9q7dvyka1z7zqc3pgif47hr1dbw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "HAProxy protocol 1.5 support for io-streams")
    (description
     "HAProxy protocol version 1.5 support (see
<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications
using io-streams. The proxy protocol allows information about a networked
peer (like remote address and port) to be propagated through a forwarding
proxy that is configured to speak this protocol.")
    (license license:bsd-3)))

haskell-8.6-io-streams-haproxy

(define-public haskell-8.6-iproute
  (package
    (name "haskell-8.6-iproute")
    (version "1.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/iproute/iproute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k2qzdw36qp9qs2j0bxsn95ymk3wpjvw6s5c1535aw677gw19bad"))))
    (properties `((upstream-name . "iproute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-appar)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteorder)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)))
    (home-page "http://www.mew.org/~kazu/proj/iproute/")
    (synopsis "IP Routing Table")
    (description "IP Routing Table is a tree of IP ranges
to search one of them on the longest
match base. It is a kind of TRIE with one
way branching removed. Both IPv4 and IPv6
are supported.")
    (license license:bsd-3)))

haskell-8.6-iproute

(define-public haskell-8.6-lapack-ffi-tools
  (package
    (name "haskell-8.6-lapack-ffi-tools")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi-tools/lapack-ffi-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hk54psm066acgn24mw5dbbhz4a0nqvyks75302cabijbp524gdh"))))
    (properties `((upstream-name . "lapack-ffi-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1h5chlb66ycg96ab56hwqr4qk82l19gq1pg1zfzhfdl5byg24fln")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-pathtype)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://hub.darcs.net/thielema/lapack-ffi-tools/")
    (synopsis "Generator for Haskell interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

The program in this package generates the modules
for the packages @@blas-ffi@@, @@blas-comfort-array@@, @@blas-carray@@,
@@lapack-ffi@@, @@lapack-comfort-array@@, @@lapack-carray@@
from the FORTRAN source files.")
    (license license:bsd-3)))

haskell-8.6-lapack-ffi-tools

(define-public haskell-8.6-lca
  (package
    (name "haskell-8.6-lca")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lca/lca-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0kj3zsmzckczp51w70x1aqayk2fay4vcqwz8j6sdv0hdw1d093ca"))))
    (properties `((upstream-name . "lca") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "http://github.com/ekmett/lca/")
    (synopsis
     "O(log n) persistent online lowest common ancestor search without preprocessing")
    (description
     "This package provides a reference implementation of my skew binary random access algorithm for performing an /online/ lowest common ancestor search (and online level ancestor search) in logarithmic time without preprocessing. This improves the previous known asymptotic bound for both of these problems from /O(h)/ to /O(log h)/, where /h/ is the height of the tree. Mostly importantly this bound is completely independent of the width or overall size of the tree, enabling you to calculate lowest common ancestors in a distributed fashion with good locality.

While /offline/ algorithms exist for both of these algorithms that that provide /O(1)/ query time, they all require at least /O(n)/ preprocessing, where /n/ is the size of the entire tree, and so are less suitable for LCA search in areas such as revision control where the tree is constantly updated, or distributed computing where the tree may be too large to fit in any one computer's memory.

Slides are available from

<http://www.slideshare.net/ekmett/skewbinary-online-lowest-common-ancestor-search>")
    (license license:bsd-3)))

haskell-8.6-lca

(define-public haskell-8.6-main-tester
  (package
    (name "haskell-8.6-main-tester")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/main-tester/main-tester-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hkqllckiq74mhnd76jd0cv5az6n0cf70xncy9r1jkip9s9za1ng"))))
    (properties `((upstream-name . "main-tester") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-doctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "https://gitlab.com/igrep/main-tester#readme")
    (synopsis
     "Capture stdout/stderr/exit code, and replace stdin of your main function.")
    (description "See README.md for detail.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-main-tester

(define-public haskell-8.6-megaparsec-tests
  (package
    (name "haskell-8.6-megaparsec-tests")
    (version "7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec-tests/megaparsec-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11kwf122bq38qvkpvhb1pkqzbv7yk9wi7klmg9yvls29x66shiyq"))))
    (properties `((upstream-name . "megaparsec-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "087r77bm475g51y1fxwz3yz7a7c80r3qrdj0ngm1hp6sgxmgna43")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Test utilities and the test suite of Megaparsec")
    (description "Test utilities and the test suite of Megaparsec.")
    (license license:bsd-2)))

haskell-8.6-megaparsec-tests

(define-public haskell-8.6-microlens-process
  (package
    (name "haskell-8.6-microlens-process")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-process/microlens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0grnqs0b76la48ql6amrjnqfkgcb0rcq3s2xqs2czjg2jgp3zw5r"))))
    (properties `((upstream-name . "microlens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "01p3glv58jhiw6znjba247r6d6b63illnjfx26yxlqk2bhib90ap")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)))
    (home-page "https://github.com/emilypi/lens-process/tree/master/microlens")
    (synopsis "Micro-optics for the process library")
    (description
     "'microlens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-8.6-microlens-process

(define-public haskell-8.6-monad-control
  (package
    (name "haskell-8.6-monad-control")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
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

haskell-8.6-monad-control

(define-public haskell-8.6-monad-control-aligned
  (package
    (name "haskell-8.6-monad-control-aligned")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://github.com/athanclark/monad-control#readme")
    (synopsis
     "Just like monad-control, except less efficient, and the monadic state terms are all * -> *")
    (description "")
    (license license:bsd-3)))

haskell-8.6-monad-control-aligned

(define-public haskell-8.6-netlib-ffi
  (package
    (name "haskell-8.6-netlib-ffi")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0q5psp0gi0il6yz99sxmq7x3m7axwzh2qbimcvqbw623zbzgycyg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
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

haskell-8.6-netlib-ffi

(define-public haskell-8.6-network-byte-order
  (package
    (name "haskell-8.6-network-byte-order")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-byte-order/network-byte-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wm59kdvxcjhsl1y1ajmj8w8nq6qdvin6933n374za39lhkb13f9"))))
    (properties `((upstream-name . "network-byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "038vq38h0f55qk8q85ry8rgwd1i5ljwzr3cqayhnzm2vvcy13wi8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-8.6-network-byte-order

(define-public haskell-8.6-openssl-streams
  (package
    (name "haskell-8.6-openssl-streams")
    (version "1.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openssl-streams/openssl-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rplym6ayydkpr7x9mw3l13p0vzzfzzxw244d7sd3jcvaxpv0rmr"))))
    (properties `((upstream-name . "openssl-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "125bxb2axgpcq7rrpamfq0yz017i0ks9zsykh6hn0ifw3lxj1k29")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/openssl-streams")
    (synopsis "OpenSSL network support for io-streams.")
    (description
     "The openssl-streams library contains io-streams routines for secure
networking using OpenSSL (by way of HsOpenSSL).")
    (license license:bsd-3)))

haskell-8.6-openssl-streams

(define-public haskell-8.6-password
  (package
    (name "haskell-8.6-password")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password/password-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n96n9kiiij6pf587y21v39c2zh9r4n4yd6n2k8km770k3bg1skr"))))
    (properties `((upstream-name . "password") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-scrypt)))
    (home-page "https://github.com/cdepillabout/password/password#readme")
    (synopsis
     "plain-text password and hashed password datatypes and functions")
    (description
     "A library providing types for working with plain-text and hashed passwords, generally for web applications.")
    (license license:bsd-3)))

haskell-8.6-password

(define-public haskell-8.6-pipes-csv
  (package
    (name "haskell-8.6-pipes-csv")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-csv/pipes-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cv8vb5jm95h3jqm4xhndgijcivmcxdjppvcs88bpjbfspfzb1cl"))))
    (properties `((upstream-name . "pipes-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-hunit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/pipes-csv")
    (synopsis "Fast, streaming csv parser")
    (description
     "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`")
    (license license:expat)))

haskell-8.6-pipes-csv

(define-public haskell-8.6-posix-paths
  (package
    (name "haskell-8.6-posix-paths")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/posix-paths/posix-paths-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibycc7z3gm6jr83cgsqwa7hkky2ldfqqd30ickgq6vn2rkp8fbj"))))
    (properties `((upstream-name . "posix-paths") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://hackage.haskell.org/package/posix-paths")
    (synopsis "POSIX filepath/directory functionality")
    (description
     "This package gives access to certain POSIX-based Filepath/Directory
services.

The package is not supported under Windows (except under Cygwin).")
    (license license:bsd-3)))

haskell-8.6-posix-paths

(define-public haskell-8.6-profiterole
  (package
    (name "haskell-8.6-profiterole")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profiterole/profiterole-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wfj8rmcablya94shhrnx2dbk3pfbhvdv6mk6946fyjfy32di266"))))
    (properties `((upstream-name . "profiterole") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-ghc-prof)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (home-page "https://github.com/ndmitchell/profiterole#readme")
    (synopsis "Restructure GHC profile reports")
    (description
     "Given a GHC profile output, this tool generates alternative views on the data,
which are typically more concise and may reveal new insights.")
    (license license:bsd-3)))

haskell-8.6-profiterole

(define-public haskell-8.6-prometheus-client
  (package
    (name "haskell-8.6-prometheus-client")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-client/prometheus-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i1kbc9hxqnqiqkvfygc6h5fmqmrqwlq1wbslq65md5d41bl37i7"))))
    (properties `((upstream-name . "prometheus-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "Haskell client library for http://prometheus.io.")
    (description "Haskell client library for http://prometheus.io.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-prometheus-client

(define-public haskell-8.6-qrcode-juicypixels
  (package
    (name "haskell-8.6-qrcode-juicypixels")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-juicypixels/qrcode-juicypixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14cjf8gykh22ps5i8sh5im2m4sq81kgz4cdxmqyc9rpidqh763wk"))))
    (properties `((upstream-name . "qrcode-juicypixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-qrcode-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "Converts a qrcode-core image to JuicyPixels")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-juicypixels#readme>")
    (license license:expat)))

haskell-8.6-qrcode-juicypixels

(define-public haskell-8.6-rainbow
  (package
    (name "haskell-8.6-rainbow")
    (version "0.30.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbow/rainbow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1isy1xfgsp25x0254gmqkakc185g87wil3n19w5s1rn3bfq1w0my"))))
    (properties `((upstream-name . "rainbow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-lens-simple)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-rainbow

(define-public haskell-8.6-read-env-var
  (package
    (name "haskell-8.6-read-env-var")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/read-env-var/read-env-var-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p5pw1y6wcq03bdixircf6bb9qjq2aci6bvpmqwfi360dwbwiwq3"))))
    (properties `((upstream-name . "read-env-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)))
    (home-page "https://github.com/cdepillabout/read-env-var#readme")
    (synopsis "Functions for safely reading environment variables.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-read-env-var

(define-public haskell-8.6-regex-with-pcre
  (package
    (name "haskell-8.6-regex-with-pcre")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-with-pcre/regex-with-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19vn5w4vhgxv9s6nhlmj4xl8pa16d1a2ygxxyd5b0qg3q27vvisk"))))
    (properties `((upstream-name . "regex-with-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-regex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-regex-pcre-text)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, omprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-8.6-regex-with-pcre

(define-public haskell-8.6-relational-query
  (package
    (name "haskell-8.6-relational-query")
    (version "0.12.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query/relational-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0768cw6c5chzdcwshjjniysik5d1yj7zvhwncqnn0wgy4gp6kzjv"))))
    (properties `((upstream-name . "relational-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-names-th)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-persistable-record)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-sql-words)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-reify-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Typeful, Modular, Relational, algebraic query engine")
    (description "This package contiains typeful relation structure and
relational-algebraic query building DSL which can
translate into SQL query.

Supported query features are below:

- Type safe query building
- Restriction, Join, Aggregation
- Modularized relations
- Typed placeholders")
    (license license:bsd-3)))

haskell-8.6-relational-query

(define-public haskell-8.6-salve
  (package
    (name "haskell-8.6-salve")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salve/salve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hgcyincccib0v671kd8qybgf8q9m0n8lcrpj37pgq9wzq6x34sm"))))
    (properties `((upstream-name . "salve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/tfausak/salve#readme")
    (synopsis "Semantic version numbers and constraints.")
    (description
     "Salve provides semantic version (SemVer) numbers and constraints (ranges).")
    (license license:expat)))

haskell-8.6-salve

(define-public haskell-8.6-serialise
  (package
    (name "haskell-8.6-serialise")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serialise/serialise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17m1xs3hdvbkba1b8qjcv58drhl2wgvjkp7a2m38mkwn6xxvpg1k"))))
    (properties `((upstream-name . "serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime15")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cborg)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-half)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A binary serialisation library for Haskell values.")
    (description
     "This package (formerly @@binary-serialise-cbor@@) provides pure, efficient
serialization of Haskell values directly into @@ByteString@@s for storage or
transmission purposes. By providing a set of type class instances, you can
also serialise any custom data type you have as well.

The underlying binary format used is the 'Concise Binary Object
Representation', or CBOR, specified in RFC 7049. As a result,
serialised Haskell values have implicit structure outside of the
Haskell program itself, meaning they can be inspected or analyzed
without custom tools.

An implementation of the standard bijection between CBOR and JSON is provided
by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility for
working with CBOR data.")
    (license license:bsd-3)))

haskell-8.6-serialise

(define-public haskell-8.6-shake-language-c
  (package
    (name "haskell-8.6-shake-language-c")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-language-c/shake-language-c-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0smbshksjw114m09n5i1ynkhibvd9kix9n7h696p75g40ka7k6"))))
    (properties `((upstream-name . "shake-language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-fclabels)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-shake)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/samplecount/shake-language-c")
    (synopsis "Utilities for cross-compiling with Shake")
    (description
     "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @@C@@, @@C++@@ and @@ObjC@@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-shake-language-c

(define-public haskell-8.6-singletons
  (package
    (name "haskell-8.6-singletons")
    (version "2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons/singletons-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0izi487dpn5dx5yzm0bqrrjj2fcy6y6jyk81848yq4i8fcx0mc10"))))
    (properties `((upstream-name . "singletons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c2rsqasmbp9yrrg0w7phphdaiw4qwn48409g14rqw72pdpbg2fz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-th-desugar)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A framework for generating singleton types")
    (description
     "This library generates singleton types, promoted functions, and singleton
functions using Template Haskell. It is useful for programmers who wish
to use dependently typed programming techniques. The library was originally
presented in /Dependently Typed Programming with Singletons/, published
at the Haskell Symposium, 2012.
(<https://cs.brynmawr.edu/~rae/papers/2012/singletons/paper.pdf>)
Version 1.0 and onwards works a lot harder to promote functions. See the
paper published at Haskell Symposium, 2014:
<https://cs.brynmawr.edu/~rae/papers/2014/promotion/promotion.pdf>.")
    (license license:bsd-3)))

haskell-8.6-singletons

(define-public haskell-8.6-skein
  (package
    (name "haskell-8.6-skein")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
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

haskell-8.6-skein

(define-public haskell-8.6-streaming
  (package
    (name "haskell-8.6-streaming")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
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

haskell-8.6-streaming

(define-public haskell-8.6-tasty
  (package
    (name "haskell-8.6-tasty")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qpn0avpw4w1qq5r2gwh2piipj0llqq6ylagr3xnqiraq6mhg8cc"))))
    (properties `((upstream-name . "tasty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock")
       #:cabal-revision
       ("1" "1425x99bz9wcjzdgb37qnfscyjlsnm6ppvvjsfiqpvvnqhd9fr7m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-wcwidth)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.6-tasty

(define-public haskell-8.6-tasty-discover
  (package
    (name "haskell-8.6-tasty-discover")
    (version "4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-discover/tasty-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ghxrjkqp4w6i47pvdsd25zs6sj10rw4ybkf0pxr598l8qw5nv5y"))))
    (properties `((upstream-name . "tasty-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)))
    (home-page "http://git.coop/lwm/tasty-discover")
    (synopsis "Test discovery for the tasty framework.")
    (description
     "Automatic test discovery and runner for the tasty framework.
Prefix your test case names and tasty-discover will discover, collect and run them. All popular test libraries are covered. Configure once and then just write your tests. Avoid forgetting to add test modules to your Cabal/Hpack files. Tasty ingredients are included along with various configuration options for different use cases. Please see the `README.md` below for how to get started.")
    (license license:expat)))

haskell-8.6-tasty-discover

(define-public haskell-8.6-tasty-notests
  (package
    (name "haskell-8.6-tasty-notests")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qpn0avpw4w1qq5r2gwh2piipj0llqq6ylagr3xnqiraq6mhg8cc"))))
    (properties `((upstream-name . "tasty") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock")
       #:cabal-revision
       ("1" "1425x99bz9wcjzdgb37qnfscyjlsnm6ppvvjsfiqpvvnqhd9fr7m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-wcwidth)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.6-tasty-notests

(define-public haskell-8.6-termbox
  (package
    (name "haskell-8.6-termbox")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/termbox/termbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04y1wj65c6nhv08jd83ihvph45fs5279px4ivm5cinnz5m721jqg"))))
    (properties `((upstream-name . "termbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)))
    (home-page "https://github.com/mitchellwrosen/termbox")
    (synopsis "termbox bindings")
    (description
     "This package provides a thin wrapper around @@termbox v1.1.2@@, a simple C
library for writing text-based user interfaces: <https://github.com/nsf/termbox>

The full source of @@termbox v1.1.2@@ (1000 lines of C) is bundled; you do
not need to install any system packages to use this library.")
    (license license:bsd-3)))

haskell-8.6-termbox

(define-public haskell-8.6-throttle-io-stream
  (package
    (name "haskell-8.6-throttle-io-stream")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-say)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-stm-chans)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/mtesseract/throttle-io-stream#readme")
    (synopsis "Throttler between arbitrary IO producer and consumer functions")
    (description
     "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.")
    (license license:bsd-3)))

haskell-8.6-throttle-io-stream

(define-public haskell-8.6-type-errors
  (package
    (name "haskell-8.6-type-errors")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors/type-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d1fi4ij18q39rpibc056mgvly75zqixkba4l8bn307c62f50k8p"))))
    (properties `((upstream-name . "type-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ig8qd2g8rd5n78039xhbq7n8r514f8kvbh0mgajav2a5lp549s1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-first-class-families)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)))
    (home-page "https://github.com/isovector/type-errors#readme")
    (synopsis "Tools for writing better type errors")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>")
    (license license:bsd-3)))

haskell-8.6-type-errors

(define-public haskell-8.6-type-errors-pretty
  (package
    (name "haskell-8.6-type-errors-pretty")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors-pretty/type-errors-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xp72vsmqamgg9k8w7pimy6q3dn73ammg7zda98a0hb4q9pdcrml"))))
    (properties `((upstream-name . "type-errors-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/chshersh/type-errors-pretty")
    (synopsis "Combinators for writing pretty type errors easily")
    (description
     "This library provides replacements for the @@ErrorMessage@@ constructors to
write the text of custom error messages easily.")
    (license license:mpl2.0)))

haskell-8.6-type-errors-pretty

(define-public haskell-8.6-type-level-kv-list
  (package
    (name "haskell-8.6-type-level-kv-list")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-level-kv-list/type-level-kv-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wvxgxp7rlqbf2crcpb9pbzl3k47i7pc16ih4zfwgv88j7jk5w2g"))))
    (properties `((upstream-name . "type-level-kv-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "https://github.com/arowM/type-level-kv-list#readme")
    (synopsis "A module for hash map like object with type level keys.")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-type-level-kv-list

(define-public haskell-8.6-uniprot-kb
  (package
    (name "haskell-8.6-uniprot-kb")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniprot-kb/uniprot-kb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hh6fnnmr6i4mgli07hgaagswdipa0p3ckr3jzzfcw4y5x98036l"))))
    (properties `((upstream-name . "uniprot-kb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1g4qds20lwsbn5hqrgbhb4yd5w5vx2gkw47mjvxr8z8nj20g2pii")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)))
    (home-page "https://github.com/biocad/uniprot-kb#readme")
    (synopsis "UniProt-KB format parser")
    (description
     "Specification implementation of https://web.expasy.org/docs/userman.html")
    (license license:bsd-3)))

haskell-8.6-uniprot-kb

(define-public haskell-8.6-unix-time
  (package
    (name "haskell-8.6-unix-time")
    (version "0.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unix-time/unix-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02fyh298lm8jsg52i3z0ikazwz477ljqjmhnqr2d88grmn5ky8qr"))))
    (properties `((upstream-name . "unix-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)))
    (home-page "https://hackage.haskell.org/package/unix-time")
    (synopsis "Unix time parser/formatter and utilities")
    (description "Fast parser\\/formatter\\/utilities for Unix time")
    (license license:bsd-3)))

haskell-8.6-unix-time

(define-public haskell-8.6-unliftio-streams
  (package
    (name "haskell-8.6-unliftio-streams")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-streams/unliftio-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qp78c610anqpgpd13pz24x68kcpc69z2wjrz6a3qixvqjvp72bw"))))
    (properties `((upstream-name . "unliftio-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/unliftio-streams")
    (synopsis "Generalization of io-streams to MonadUnliftIO")
    (description "Generalization of io-streams to MonadUnliftIO.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-unliftio-streams

(define-public haskell-8.6-validity-uuid
  (package
    (name "haskell-8.6-validity-uuid")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-uuid/validity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4z9q8m07ssrg6a4lj7501kjnbp9hazg3gyfwrbdbrw7p7jjd9l"))))
    (properties `((upstream-name . "validity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for uuid")
    (description "")
    (license license:expat)))

haskell-8.6-validity-uuid

(define-public haskell-8.6-vector-space
  (package
    (name "haskell-8.6-vector-space")
    (version "0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-space/vector-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17676s2f8i45dj5gk370nc8585aylah7m34nbf34al7r1492y2qc"))))
    (properties `((upstream-name . "vector-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-Boolean)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-MemoTrie)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-NumInstances)))
    (home-page "https://hackage.haskell.org/package/vector-space")
    (synopsis "Vector & affine spaces, linear maps, and derivatives")
    (description
     "/vector-space/ provides classes and generic operations for vector
spaces and affine spaces.  It also defines a type of infinite towers
of generalized derivatives.  A generalized derivative is a linear
transformation rather than one of the common concrete representations
(scalars, vectors, matrices, ...).

/Warning/: this package depends on type families working fairly well,
requiring GHC version at least 6.9.

Project wiki page: <http://haskell.org/haskellwiki/vector-space>

&#169; 2008-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.6-vector-space

