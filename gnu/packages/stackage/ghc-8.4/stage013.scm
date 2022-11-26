;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage013)
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
(define-public haskell-8.4-JuicyPixels-scale-dct
  (package
    (name "haskell-8.4-JuicyPixels-scale-dct")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-scale-dct/JuicyPixels-scale-dct-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04rhrmjnh12hh2nz04k245avgdcwqfyjnsbpcrz8j9328j41nf7p"))))
    (properties `((upstream-name . "JuicyPixels-scale-dct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("9" "130s6r1p7v0dhfk9q0kb5qlapccap3mbkjzn2y59r00n011rs6bi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-carray)
                  (@ (gnu packages stackage ghc-8.4 stage012) haskell-8.4-fft)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-8.4-JuicyPixels-scale-dct

(define-public haskell-8.4-OpenGL
  (package
    (name "haskell-8.4-OpenGL")
    (version "3.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenGL/OpenGL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19vxwvx2n8zq2klj176l25n2b64ybp0b8mhm4p46gvpcivz41fjc"))))
    (properties `((upstream-name . "OpenGL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-GLURaw)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ObjectName)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL graphics system")
    (description
     "A Haskell binding for the OpenGL graphics system (GL, version 4.6) and its
accompanying utility library (GLU, version 1.3).

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-8.4-OpenGL

(define-public haskell-8.4-asn1-encoding
  (package
    (name "haskell-8.4-asn1-encoding")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-encoding/asn1-encoding-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0adgbamyq0mj1l1hdq4zyyllay714bac1wl0rih3fv1z6vykp1hy"))))
    (properties `((upstream-name . "asn1-encoding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vsw8rd6fxd87rx3jyh3bb96sjd7ag0mrlylhkcmgaps2ma8sw5b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "http://github.com/vincenthz/hs-asn1")
    (synopsis "ASN1 data reader and writer in RAW, BER and DER forms")
    (description
     "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, and DER).")
    (license license:bsd-3)))

haskell-8.4-asn1-encoding

(define-public haskell-8.4-bifunctors
  (package
    (name "haskell-8.4-bifunctors")
    (version "5.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bifunctors/bifunctors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jn9rxg643xnlhrknmjz88nblcpsr45xwjkwwnn5nxpasa7m4d6l"))))
    (properties `((upstream-name . "bifunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/bifunctors/")
    (synopsis "Bifunctors")
    (description "Bifunctors.")
    (license license:bsd-3)))

haskell-8.4-bifunctors

(define-public haskell-8.4-blas-ffi
  (package
    (name "haskell-8.4-blas-ffi")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-ffi/blas-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "047qal272s1hc3pp7xy8vyq4dm80nvqin34zvl7wz09c0qrnnvyc"))))
    (properties `((upstream-name . "blas-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-netlib-ffi)
                  (@ (gnu packages maths) openblas)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://hub.darcs.net/thielema/blas-ffi/")
    (synopsis "Auto-generated interface to Fortran BLAS")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.

This is an automatically generated low-level interface.
We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS,
but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-8.4-blas-ffi

(define-public haskell-8.4-concurrency
  (package
    (name "haskell-8.4-concurrency")
    (version "1.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrency/concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "004h1wxdgqpxpk9vcvds759pn5qdp873b4bidakffxgh35nkxr68"))))
    (properties `((upstream-name . "concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-atomic-primops)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis
     "Typeclasses, functions, and data types for concurrency and STM.")
    (description
     "A typeclass abstraction over much of Control.Concurrent (and some
extras!). If you're looking for a general introduction to Haskell
concurrency, you should check out the excellent Parallel and
Concurrent Programming in Haskell, by Simon Marlow. If you are
already familiar with concurrent Haskell, just change all the
imports from Control.Concurrent.* to Control.Concurrent.Classy.* and
fix the type errors.")
    (license license:expat)))

haskell-8.4-concurrency

(define-public haskell-8.4-countable
  (package
    (name "haskell-8.4-countable")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/countable/countable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v0fdapdnzdqbkjhgkicx1njs3ybshk83h79fbgln13sd5pyp87r"))))
    (properties `((upstream-name . "countable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tasty-golden)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/AshleyYakeley/countable")
    (synopsis "Countable, Searchable, Finite, Empty classes")
    (description
     "* @@class Countable@@, for countable types

* @@class AtLeastOneCountable@@, for countable types that have at least one value

* @@class InfiniteCountable@@, for infinite countable types

* @@class Searchable@@, for types that can be searched over. This turns out to include some infinite types, see <http://math.andrej.com/2007/09/28/seemingly-impossible-functional-programs/>.

* @@class Finite@@, for finite types

* @@class Empty@@, for empty types

* @@data Nothing@@, an empty type

Some orphan instances:

* @@(Searchable a,Eq b) => Eq (a -> b)@@ / /

* @@(Finite t) => Foldable ((->) t)@@ / /

* @@(Finite a) => Traversable ((->) a)@@ / /

* @@(Show a,Finite a,Show b) => Show (a -> b)@@ / /")
    (license license:bsd-3)))

haskell-8.4-countable

(define-public haskell-8.4-cryptohash
  (package
    (name "haskell-8.4-cryptohash")
    (version "0.11.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash/cryptohash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yr2iyb779znj79j3fq4ky8l1y8a600a2x1fx9p5pmpwq5zq93y2"))))
    (properties `((upstream-name . "cryptohash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-cryptohash")
    (synopsis "collection of crypto hashes, fast, pure and practical")
    (description
     "DEPRECATED: this library is still fully functional, but please use cryptonite for new projects
and convert old one to use cryptonite. This is where things are at nowadays.

A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,
with performance close to the fastest implementations available in other languages.

The implementations are made in C with a haskell FFI wrapper that hide the C implementation.

Simple examples using the unified API:

> import Crypto.Hash
>
> sha1 :: ByteString -> Digest SHA1
> sha1 = hash
>
> hexSha3_512 :: ByteString -> String
> hexSha3_512 bs = show (hash bs :: Digest SHA3_512)

Simple examples using the module API:

> import qualified Crypto.Hash.SHA1 as SHA1
>
> main = putStrLn $ show $ SHA1.hash (Data.ByteString.pack [0..255])

> import qualified Crypto.Hash.SHA3 as SHA3
>
> main = putStrLn $ show $ digest
>   where digest = SHA3.finalize ctx
>         ctx    = foldl' SHA3.update iCtx (map Data.ByteString.pack [ [1,2,3], [4,5,6] ]
>         iCtx   = SHA3.init 224")
    (license license:bsd-3)))

haskell-8.4-cryptohash

(define-public haskell-8.4-cryptohash-cryptoapi
  (package
    (name "haskell-8.4-cryptohash-cryptoapi")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-cryptoapi/cryptohash-cryptoapi-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13h5f9pmcd0swa4asl7wzpf5lskpgjdqrmy1mqdc78gsxdj8cyki"))))
    (properties `((upstream-name . "cryptohash-cryptoapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/vincenthz/hs-cryptohash-cryptoapi")
    (synopsis "Crypto-api interfaces for cryptohash")
    (description "Crypto-api interfaces for cryptohash")
    (license license:bsd-3)))

haskell-8.4-cryptohash-cryptoapi

(define-public haskell-8.4-cryptonite-openssl
  (package
    (name "haskell-8.4-cryptonite-openssl")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite-openssl/cryptonite-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xj41354dx24rfh6i7av7qamvin34z4g6m1hxw1fc9jg4q41qkly"))))
    (properties `((upstream-name . "cryptonite-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-basement)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-kat)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/haskell-crypto/cryptonite-openssl")
    (synopsis "Crypto stuff using OpenSSL cryptographic library")
    (description
     "Crypto stuff using the OpenSSL cryptographic library as bindings")
    (license license:bsd-3)))

haskell-8.4-cryptonite-openssl

(define-public haskell-8.4-cubicbezier
  (package
    (name "haskell-8.4-cubicbezier")
    (version "0.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cubicbezier/cubicbezier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n17nr20skrds3b9gzy0v86jgnqz8zbds796n9cl0z6rh9bq5jf5"))))
    (properties `((upstream-name . "cubicbezier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("2" "1xv5qdrxz121s4mliz9gism8kp3abwb9ww1di0lch0s2d1q61sd0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-fast-math)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-integration)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-matrices)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-vector-space)))
    (home-page "https://hackage.haskell.org/package/cubicbezier")
    (synopsis "Efficient manipulating of 2D cubic bezier curves.")
    (description
     "This library supports efficient manipulating of 2D cubic bezier curves, for use in graphics or typography.  Supported features are:

Evaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.

It also supports polynomial root finding with Bernstein polynomials.

The module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"
contains general 2D geometry functions and transformations.")
    (license license:bsd-3)))

haskell-8.4-cubicbezier

(define-public haskell-8.4-cubicspline
  (package
    (name "haskell-8.4-cubicspline")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cubicspline/cubicspline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ycv395qskjw8xryzam6skc92m4iixf6065grvfh23avlsffsv2v"))))
    (properties `((upstream-name . "cubicspline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/cubicspline")
    (synopsis "Natural cubic spline interpolation.")
    (description "Natural cubic spline interpolation.")
    (license license:bsd-3)))

haskell-8.4-cubicspline

(define-public haskell-8.4-di-df1
  (package
    (name "haskell-8.4-di-df1")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-df1/di-df1-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1imk26njmr7hj56227yxgshjh4dicgr2c9bpc2m9nvsw2qbqslfh"))))
    (properties `((upstream-name . "di-df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-df1)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-di-core)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-di-handle)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-di-monad)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Write logs in the df1 format using the di logging framework")
    (description
     "Write logs in the df1 format using the di logging framework.")
    (license license:bsd-3)))

haskell-8.4-di-df1

(define-public haskell-8.4-dns
  (package
    (name "haskell-8.4-dns")
    (version "3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dns/dns-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1aa4zb9zkk244rndimrq8maxj9qrmz3rb13v9n8jblmp6ssk6d3v"))))
    (properties `((upstream-name . "dns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15jafrm919w4p23m7kpmyc1yvzpy88jcccycc00dza69d119zjdr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-auto-update)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/dns")
    (synopsis "DNS library in Haskell")
    (description
     "A thread-safe DNS library for both clients and servers written
in pure Haskell.")
    (license license:bsd-3)))

haskell-8.4-dns

(define-public haskell-8.4-epub-metadata
  (package
    (name "haskell-8.4-epub-metadata")
    (version "4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/epub-metadata/epub-metadata-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j839h7894l8hf846zmx0vx640ii3rgswr3jin690djrvwa3kbhr"))))
    (properties `((upstream-name . "epub-metadata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-compat-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://hub.darcs.net/dino/epub-metadata")
    (synopsis "Library for parsing epub document metadata")
    (description
     "Library for parsing and manipulating epub document metadata. Supports epub versions 2 and 3.
This library was constructed by studying the IDPF specifications for epub documents found here <http://www.idpf.org/epub/20/spec/OPF_2.0.1_draft.htm> and here <http://www.idpf.org/epub/30/spec/epub30-publications.html>")
    (license license:bsd-3)))

haskell-8.4-epub-metadata

(define-public haskell-8.4-exp-pairs
  (package
    (name "haskell-8.4-exp-pairs")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exp-pairs/exp-pairs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qsvly4klhk17r2pk60cf03dyz0cjc449fa2plqrlai9rl7xjfp6"))))
    (properties `((upstream-name . "exp-pairs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zbsjlj6wavz9ysfzjqb4ng7688crlfvsbyj4li84khc1jp71xj3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)))
    (home-page "https://github.com/Bodigrim/exp-pairs")
    (synopsis "Linear programming over exponent pairs")
    (description
     "Package implements an algorithm to minimize rational objective function over the set of exponent pairs")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-exp-pairs

(define-public haskell-8.4-flac
  (package
    (name "haskell-8.4-flac")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flac/flac-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0adc88h5dmazf9m2xah0qkcav3pm0l3jiy8wbg9fxjv1qpgv74jn"))))
    (properties `((upstream-name . "flac") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "0rwwq8qrxd497rd5m0kidz4v69frj72ds7a6zrdqigj5f5471rhd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012) haskell-8.4-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)))
    (home-page "https://github.com/mrkkrp/flac")
    (synopsis "Complete high-level binding to libFLAC")
    (description "Complete high-level binding to libFLAC.")
    (license license:bsd-3)))

haskell-8.4-flac

(define-public haskell-8.4-genvalidity-hspec
  (package
    (name "haskell-8.4-genvalidity-hspec")
    (version "0.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec/genvalidity-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05dgfivvsfcnrbdkvx7mssi14xsnxck8h2xasbqnn6xng3pc351v"))))
    (properties `((upstream-name . "genvalidity-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-8.4-genvalidity-hspec

(define-public haskell-8.4-getopt-generics
  (package
    (name "haskell-8.4-getopt-generics")
    (version "0.13.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/getopt-generics/getopt-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1202xsfvygd06h1d70v73ldwj32qv6sqadk5zl2979dgjx4841db"))))
    (properties `((upstream-name . "getopt-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/soenkehahn/getopt-generics#readme")
    (synopsis "Create command line interfaces with ease")
    (description "Create command line interfaces with ease")
    (license license:bsd-3)))

haskell-8.4-getopt-generics

(define-public haskell-8.4-ghc-typelits-extra
  (package
    (name "haskell-8.4-ghc-typelits-extra")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-extra/ghc-typelits-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dx6rk6lpklqqklj74mg92vjn66kkjfxp87hwazzlx9wai23r3cm"))))
    (properties `((upstream-name . "ghc-typelits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "Additional type-level operations on GHC.TypeLits.Nat")
    (description
     "Additional type-level operations on @@GHC.TypeLits.Nat@@:

* @@Max@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:max max>

* @@Min@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:min min>

* @@Div@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:div div>

* @@Mod@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:mod mod>

* @@FLog@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@floor (logBase x y)@@

* @@CLog@@: type-level equivalent of /the ceiling of/ <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@ceiling (logBase x y)@@

* @@Log@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
where the operation only reduces when @@floor (logBase b x) ~ ceiling (logBase b x)@@

* @@GCD@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:gcd gcd>

* @@LCM@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:lcm lcm>

And a custom solver for the above operations defined in
@@GHC.TypeLits.Extra.Solver@@ as a GHC type-checker plugin. To use the plugin,
add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver
@@

pragma to the header of your file.")
    (license license:bsd-2)))

haskell-8.4-ghc-typelits-extra

(define-public haskell-8.4-github-webhooks
  (package
    (name "haskell-8.4-github-webhooks")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-webhooks/github-webhooks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pvif863yi6qxwjd43insjvrzizaz78b3kf8l13rmy3irjlqljh8"))))
    (properties `((upstream-name . "github-webhooks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-deepseq-generics)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/onrock-eng/github-webhooks#readme")
    (synopsis "Aeson instances for GitHub Webhook payloads.")
    (description
     "Complete instances for decoding GitHub Webhook payloads (using @@aeson@@). See the README at <https://github.com/onrock-eng/github-webhooks#readme> for examples.")
    (license license:expat)))

haskell-8.4-github-webhooks

(define-public haskell-8.4-greskell
  (package
    (name "haskell-8.4-greskell")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell/greskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ka4iqfyr03dj2kw22h1gik70cfhhvn870w9q9fd42n2k794snbz"))))
    (properties `((upstream-name . "greskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hint-test" "-f-server-test" "-f-server-behavior-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-doctest-discover)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-greskell-core)
                  (@ (gnu packages stackage ghc-8.4 stage012) haskell-8.4-hint)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell binding for Gremlin graph query language")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is the main entry point of greskell family.
It re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,
and adds some useful functions to it.")
    (license license:bsd-3)))

haskell-8.4-greskell

(define-public haskell-8.4-groundhog
  (package
    (name "haskell-8.4-groundhog")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog/groundhog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09d0n91cd0bvmrik4ail2svbh7l8vp5va0344jzvy1g2ancy0yj0"))))
    (properties `((upstream-name . "groundhog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/lykahb/groundhog")
    (synopsis "Type-safe datatype-database mapping library.")
    (description
     "This library maps your datatypes to a relational model, in a way similar to what ORM libraries do in object-oriented programming. The mapping can be configured to work with almost any schema. Groundhog supports schema migrations, composite keys, advanced expressions in queries, and much more. See tutorial <https://www.fpcomplete.com/user/lykahb/groundhog> and examples <https://github.com/lykahb/groundhog/tree/master/examples> on GitHub.")
    (license license:bsd-3)))

haskell-8.4-groundhog

(define-public haskell-8.4-happstack-server
  (package
    (name "haskell-8.4-happstack-server")
    (version "7.5.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-server/happstack-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0agxmrf2njd3whvgw4in0ixgss1qlmi6cdi9fglhs7nhykpkgllk"))))
    (properties `((upstream-name . "happstack-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate_haskell" "-fnetwork-uri")
       #:cabal-revision
       ("1" "15ira63nilqyq9ggl2jy5ip26aprw79sv5k1hp9n4wp9byhzzyjw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-html)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-sendfile)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-threads)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-time-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://happstack.com")
    (synopsis "Web related tools and services.")
    (description
     "Happstack Server provides an HTTP server and a rich set of functions for routing requests, handling query parameters, generating responses, working with cookies, serving files, and more. For in-depth documentation see the Happstack Crash Course <http://happstack.com/docs/crashcourse/index.html>")
    (license license:bsd-3)))

haskell-8.4-happstack-server

(define-public haskell-8.4-hashing
  (package
    (name "haskell-8.4-hashing")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashing/hashing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "044lyj8kyhrm8xs1v3z60g9zh8wdc1nvf79qvans1w6ndjfa3975"))))
    (properties `((upstream-name . "hashing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1rwl68jiivw7f2f5cg73sr3dawlbmklnwyiwivrcsihrg4b1z1lq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/wangbj/hashing")
    (synopsis "A pure haskell library implements several hash algorithms.")
    (description
     "hashing is a pure haskell hash library, supported hash algorithm: SHA1\\/SHA224\\/SHA256\\/SHA384\\/SHA512
MD5 and Whirlpool.

It provides a simple interface 'hash' and 'hashLazy' to compute a hash value Based on the type signature.

Performance wise it only has 1\\/5 - 1\\/15 of native C implementations, or 'cryptonite'.

Compare to other pure hash libraries such as PureMD5/SHA, it provides a simpler interface,
implements more algorithms, and has less dependencies.")
    (license license:expat)))

haskell-8.4-hashing

(define-public haskell-8.4-haskell-src-exts
  (package
    (name "haskell-8.4-haskell-src-exts")
    (version "1.20.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts/haskell-src-exts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a74s4zarxdvhnflkxy13pawbfcdhyrb6gkdx0si8spv66knhgj3"))))
    (properties `((upstream-name . "haskell-src-exts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1v42lbm80vnfn5xz12l97dy4wmf1yjxzbq9x0hna81y9pqxm5bl3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tasty-golden)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)))
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

haskell-8.4-haskell-src-exts

(define-public haskell-8.4-higher-leveldb
  (package
    (name "haskell-8.4-higher-leveldb")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/higher-leveldb/higher-leveldb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wmgz2aqz0vg0fnnigpg27gnzs9i6slyn6lb41myv6m20j0j5z1a"))))
    (properties `((upstream-name . "higher-leveldb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-leveldb-haskell)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)))
    (home-page "https://github.com/jeremyjh/higher-leveldb")
    (synopsis "A rich monadic API for working with leveldb databases.")
    (description "A rich monadic API for working with leveldb databases.")
    (license license:bsd-3)))

haskell-8.4-higher-leveldb

(define-public haskell-8.4-hmatrix-gsl
  (package
    (name "haskell-8.4-hmatrix-gsl")
    (version "0.19.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-gsl/hmatrix-gsl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v6dla426x4ywaq59jm89ql1i42n39iw6z0j378xwb676v9kfxhm"))))
    (properties `((upstream-name . "hmatrix-gsl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-onlygsl" "-f-disable-default-paths")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages maths) gsl)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numerical computation")
    (description
     "Purely functional interface to selected numerical computations,
internally implemented using GSL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hmatrix-gsl

(define-public haskell-8.4-hmatrix-gsl-stats
  (package
    (name "haskell-8.4-hmatrix-gsl-stats")
    (version "0.4.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-gsl-stats/hmatrix-gsl-stats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gslgk58lzin43cvbpivhw7nrn9qyaa6qwhy1z9ypvyal5p8n3sa"))))
    (properties `((upstream-name . "hmatrix-gsl-stats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-onlygsl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages maths) gsl)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "http://code.haskell.org/hmatrix-gsl-stats")
    (synopsis "GSL Statistics interface")
    (description
     "Purely functional interface for statistics based on hmatrix and GSL

Relieves the burden of alloc/free routines and is otherwise essentially 1:1

Documentation can be found at <http://www.gnu.org/software/gsl/manual/>

The vector type is Data.Vector.Storable from the 'vector' package.")
    (license license:bsd-3)))

haskell-8.4-hmatrix-gsl-stats

(define-public haskell-8.4-hmatrix-morpheus
  (package
    (name "haskell-8.4-hmatrix-morpheus")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-morpheus/hmatrix-morpheus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19q52n5j1n5db7b2pv0iabh1xygpybgiszswginab5khc01fxwzj"))))
    (properties `((upstream-name . "hmatrix-morpheus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-openblas")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page
     "https://github.com/aligusnet/morpheus/tree/master/hmatrix-morpheus")
    (synopsis "Low-level machine learning auxiliary functions.")
    (description
     "Purely functional interface to morpheus based on hmatrix.
Morpheus library contains a bunch of cache line aware numerical algorithms
suitable for using as a low-level primitives to build machine learning applications.

Examples are in \"Numeric.Morpheus\" module.")
    (license license:bsd-3)))

haskell-8.4-hmatrix-morpheus

(define-public haskell-8.4-hreader
  (package
    (name "haskell-8.4-hreader")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hreader/hreader-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fkxk9sz9hnnacnsv8dq7xb0sfq0b9abch6ky1zsnhxkb7004ara"))))
    (properties `((upstream-name . "hreader") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kz3yzah7m4c2r9yaawhljcgb579masx3lx4mrr4lmqy39kmsvcb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-hset)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://bitbucket.org/s9gf4ult/hreader")
    (synopsis "Generalization of MonadReader and ReaderT using hset")
    (description "")
    (license license:bsd-3)))

haskell-8.4-hreader

(define-public haskell-8.4-hsebaysdk
  (package
    (name "haskell-8.4-hsebaysdk")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsebaysdk/hsebaysdk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00c9vwlmx4i2a436ajznv1bwaqj5lgq05gpc928vn59v27gx0f07"))))
    (properties `((upstream-name . "hsebaysdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/creichert/hsebaysdk")
    (synopsis "Haskell eBay SDK")
    (description "eBay API wrapper in Haskell.
See the git repository for example usages.")
    (license license:bsd-3)))

haskell-8.4-hsebaysdk

(define-public haskell-8.4-http-client-openssl
  (package
    (name "haskell-8.4-http-client-openssl")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-openssl/http-client-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ahh2b34cwkmspwg8zilf2llmayf03p33z2gsw455wkhgfbhshcn"))))
    (properties `((upstream-name . "http-client-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-proxy")
       #:cabal-revision
       ("1" "0l2a036ypx1kyfr99fggnrb1kv6x8mp53pxzklka2ccggvl6khx3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "http-client backend using the OpenSSL library.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-8.4-http-client-openssl

(define-public haskell-8.4-http-streams
  (package
    (name "haskell-8.4-http-streams")
    (version "0.8.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-streams/http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18vxd35n7s3z4gjvad94bknc8z1w9d7ccgphnhsxlz5cackizmxq"))))
    (properties `((upstream-name . "http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-common)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-openssl-streams)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/afcowie/http-streams/")
    (synopsis "An HTTP client using io-streams")
    (description
     "/Overview/

An HTTP client, using the Snap Framework's 'io-streams' library to
hande the streaming IO. The API is optimized for ease of use for the
rather common case of code needing to query web services and deal with
the result.

The library is exported in a single module; see \"Network.Http.Client\"
for full documentation.")
    (license license:bsd-3)))

haskell-8.4-http-streams

(define-public haskell-8.4-jni
  (package
    (name "haskell-8.4-jni")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jni/jni-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1z71vp8qskymgd4bjv8wxxjn34n49m28vnph0p0wbxgpz2wpn4hz"))))
    (properties `((upstream-name . "jni") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-choice)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-cpphs)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-inline-c)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages java) openjdk)))
    (home-page "https://github.com/tweag/inline-java/tree/master/jni#readme")
    (synopsis "Complete JNI raw bindings.")
    (description "Please see README.md.")
    (license license:bsd-3)))

haskell-8.4-jni

(define-public haskell-8.4-lame
  (package
    (name "haskell-8.4-lame")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lame/lame-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j35zpfhppb09m6h23awxgsawisvgsnrw7d99f5z3xq2bjihjq5k"))))
    (properties `((upstream-name . "lame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("4" "0r364limqm570a8xd82wwpcvmcx2j7nfndg5kad022vz2v5n0smz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-htaglib)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage012) haskell-8.4-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) lame)
                             (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/lame")
    (synopsis "Fairly complete high-level binding to LAME encoder")
    (description "Fairly complete high-level binding to LAME encoder.")
    (license license:bsd-3)))

haskell-8.4-lame

(define-public haskell-8.4-lapack-ffi
  (package
    (name "haskell-8.4-lapack-ffi")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi/lapack-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11759avf0kzkqy4s24kn556j93l10x28njpg6h14y915pdl35dyl"))))
    (properties `((upstream-name . "lapack-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-netlib-ffi)
                  (@ (gnu packages maths) lapack)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://hub.darcs.net/thielema/lapack-ffi/")
    (synopsis "Auto-generated interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

This is an automatically generated low-level wrapper.
We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS,
but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-8.4-lapack-ffi

(define-public haskell-8.4-lifted-base
  (package
    (name "haskell-8.4-lifted-base")
    (version "0.2.3.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-base/lifted-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i8p8d3rkdh21bhgjjh32vd7qqjr7jq7p59qds0aw2kmargsjd61"))))
    (properties `((upstream-name . "lifted-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/basvandijk/lifted-base")
    (synopsis "lifted IO operations from the base library")
    (description
     "@@lifted-base@@ exports IO operations from the base library lifted to
any instance of 'MonadBase' or 'MonadBaseControl'.

Note that not all modules from @@base@@ are converted yet. If
you need a lifted version of a function from @@base@@, just
ask me to add it or send me a patch.

The package includes a copy of the @@monad-peel@@ testsuite written
by Anders Kaseorg The tests can be performed using @@cabal test@@.")
    (license license:bsd-3)))

haskell-8.4-lifted-base

(define-public haskell-8.4-list-t
  (package
    (name "haskell-8.4-list-t")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/list-t/list-t-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08wjng9d1sqjqc6pgq2lh84gcaabqmrslm3slc0rvaxh1lvasv6s"))))
    (properties `((upstream-name . "list-t") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/nikita-volkov/list-t")
    (synopsis "ListT done right")
    (description "A correct implementation of the list monad-transformer.
Useful for basic streaming.")
    (license license:expat)))

haskell-8.4-list-t

(define-public haskell-8.4-llvm-hs-pretty
  (package
    (name "haskell-8.4-llvm-hs-pretty")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/llvm-hs-pretty/llvm-hs-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1715x7wggllp445kkb6f2pkc87qw504yvl2adzz2i4fz8jzm1jhd"))))
    (properties `((upstream-name . "llvm-hs-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-llvm-hs)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-llvm-hs-pure)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tasty-golden)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/llvm-hs/llvm-hs-pretty")
    (synopsis "A pretty printer for LLVM IR. ")
    (description
     "A pretty printer for the LLVM AST types provided by llvm-hs.")
    (license license:expat)))

haskell-8.4-llvm-hs-pretty

(define-public haskell-8.4-log-base
  (package
    (name "haskell-8.4-log-base")
    (version "0.7.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-base/log-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06rzvh3g294hpwpxw2syvywrw3rms1chjxqhki8b97ml1nlfnrs0"))))
    (properties `((upstream-name . "log-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hdvbzmajcj651fr8ilppjhmkj5nfyybmyijd8p0s7vbhn9b670r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monad-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/scrive/log")
    (synopsis "Structured logging solution (base package)")
    (description "A library that provides a way to record structured log
messages. Use this package in conjunction with
'log-elasticsearch' or 'log-postgres', depending
on which back end you need.")
    (license license:bsd-3)))

haskell-8.4-log-base

(define-public haskell-8.4-markdown-unlit
  (package
    (name "haskell-8.4-markdown-unlit")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown-unlit/markdown-unlit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gy79vr85vcp13rdjh0hz7zv6daqqffww4j0cqn2lpjjh9xhsbg7"))))
    (properties `((upstream-name . "markdown-unlit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-stringbuilder)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/sol/markdown-unlit#readme")
    (synopsis "Literate Haskell support for Markdown")
    (description
     "Documentation is here: <https://github.com/sol/markdown-unlit#readme>")
    (license license:expat)))

haskell-8.4-markdown-unlit

(define-public haskell-8.4-monad-extras
  (package
    (name "haskell-8.4-monad-extras")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-extras/monad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2gr2iy8vqw71blbigmgdxnzjw6jv09n38np0k65lcp3b2xfcyz"))))
    (properties `((upstream-name . "monad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "http://github.com/jwiegley/monad-extras")
    (synopsis "Extra utility functions for working with monads")
    (description "")
    (license license:bsd-3)))

haskell-8.4-monad-extras

(define-public haskell-8.4-monad-journal
  (package
    (name "haskell-8.4-monad-journal")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-journal/monad-journal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b05l40832ck44m52izj2lxw0ghi0ip4isb4377vb0b010hc42p2"))))
    (properties `((upstream-name . "monad-journal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "http://github.com/phaazon/monad-journal")
    (synopsis "Pure logger typeclass and monad transformer")
    (description "This package provides a typeclass for logging in
pure code, or more generally, in any kind of
context. You can do whatever you want with
logs, especially get them, clear them or even
sink them through 'IO' if you're logging in
@@(MonadIO m) => m@@.")
    (license license:bsd-3)))

haskell-8.4-monad-journal

(define-public haskell-8.4-monad-recorder
  (package
    (name "haskell-8.4-monad-recorder")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-recorder/monad-recorder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05d27h3lx7p4qzby8jrxf6wj5z69s11pgpbkdacxrag0v8vynqq8"))))
    (properties `((upstream-name . "monad-recorder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "http://github.com/harendra-kumar/monad-recorder")
    (synopsis "Record and replay the results of monadic actions")
    (description "A monad transformer and class that allows recording
the results of monadic actions and replay them later.
Inspired by the logging implementation in the transient
package by Alberto G. Corona. Related packages:

* https://hackage.haskell.org/package/transient
* https://hackage.haskell.org/package/Workflow")
    (license license:expat)))

haskell-8.4-monad-recorder

(define-public haskell-8.4-monad-unlift
  (package
    (name "haskell-8.4-monad-unlift")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-unlift/monad-unlift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03zf2nd00ds12rrbp3qn7pr9vaw1npzswrzcnhc1k0p436366pjb"))))
    (properties `((upstream-name . "monad-unlift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/fpco/monad-unlift")
    (synopsis "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license license:expat)))

haskell-8.4-monad-unlift

(define-public haskell-8.4-multistate
  (package
    (name "haskell-8.4-multistate")
    (version "0.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multistate/multistate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s9fs29ki3l1df0ddi04ckbich1xid413sm2zx59aqp92dfpimvm"))))
    (properties `((upstream-name . "multistate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/lspitzner/multistate")
    (synopsis "like mtl's ReaderT / WriterT / StateT, but more than one
contained value/type.")
    (description
     "When using multiple Read\\/Write\\/State transformers in the same monad stack,
it becomes necessary to lift the operations in order to affect a specific
transformer.
Using heterogeneous lists (and all kinds of GHC extensions magic),
this package provides transformers that remove that necessity:
MultiReaderT\\/MultiWriterT\\/MultiStateT\\/MultiRWST can contain a
heterogeneous list of values.

See the <https://github.com/lspitzner/multistate README> for
a longer description.")
    (license license:bsd-3)))

haskell-8.4-multistate

(define-public haskell-8.4-netlib-carray
  (package
    (name "haskell-8.4-netlib-carray")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-carray/netlib-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vxyffhpayyxwak36b9i7gw35gz61ym9lxnhk45l0h4js3v05iwv"))))
    (properties `((upstream-name . "netlib-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-carray)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-netlib-ffi)))
    (home-page "http://hub.darcs.net/thielema/netlib-carray/")
    (synopsis "Helper modules for CArray wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-carray@@ and @@lapack-carray@@.")
    (license license:bsd-3)))

haskell-8.4-netlib-carray

(define-public haskell-8.4-network-ip
  (package
    (name "haskell-8.4-network-ip")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-ip/network-ip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zjy232pamkd3977cyaq5w5r6ksbpqpgzzlds15zrahjccirs9gf"))))
    (properties `((upstream-name . "network-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-data-dword)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-endian)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-data-serializer)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-data-textual)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-text-printer)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-type-hint)))
    (home-page "https://github.com/mvv/network-ip")
    (synopsis "Internet Protocol data structures")
    (description "This package provides Internet Protocol data structures")
    (license license:bsd-3)))

haskell-8.4-network-ip

(define-public haskell-8.4-pg-transact
  (package
    (name "haskell-8.4-pg-transact")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-transact/pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zf9mfhpknaa0vggv60gpkfr0ak51n1xbw5lfqx8l8p1kqv3d0jr"))))
    (properties `((upstream-name . "pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "Another postgresql-simple transaction monad")
    (description "Another postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-8.4-pg-transact

(define-public haskell-8.4-pipes-safe
  (package
    (name "haskell-8.4-pipes-safe")
    (version "2.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-safe/pipes-safe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "160qba0r8lih186qfrpvnx1m2j632x5b7n1x53mif9aag41n9w8p"))))
    (properties `((upstream-name . "pipes-safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1crpzg72nahmffw468d31l23bw3wgi0p3w7ad2pv3jxhy1432c71")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://hackage.haskell.org/package/pipes-safe")
    (synopsis "Safety for the pipes ecosystem")
    (description
     "This package adds resource management and exception handling to the @@pipes@@
ecosystem.

Notable features include:

* /Resource Safety/: Guarantee finalization using @@finally@@, @@bracket@@ and
more

* /Exception Safety/: Even against asynchronous exceptions!

* /Laziness/: Only acquire resources when you need them

* /Promptness/: Finalize resources early when you are done with them

* /Native Exception Handling/: Catch and resume from exceptions inside pipes

* /No Buy-in/: Mix resource-safe pipes with unmanaged pipes using @@hoist@@")
    (license license:bsd-3)))

haskell-8.4-pipes-safe

(define-public haskell-8.4-postgresql-transactional
  (package
    (name "haskell-8.4-postgresql-transactional")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-transactional/postgresql-transactional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lsyaj19ihn93fz8hhlqsslskcr5dbilyg14pplz4cab2cg2lc7r"))))
    (properties `((upstream-name . "postgresql-transactional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://hackage.haskell.org/package/postgresql-transactional")
    (synopsis "a transactional monad on top of postgresql-simple")
    (description
     "This package is a simple monadic wrapper around the SQL primitives
provided by the postgresql-simple package. It provides simple and
predictable semantics for database options, enforces awareness of
Postgres's transactional nature at API boundaries, and obviates
the need for SQL boilerplate in transactional queries.")
    (license license:expat)))

haskell-8.4-postgresql-transactional

(define-public haskell-8.4-prettyprinter-ansi-terminal
  (package
    (name "haskell-8.4-prettyprinter-ansi-terminal")
    (version "1.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-ansi-terminal/prettyprinter-ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ha6vz707qzb5ky7kdsnw2zgphg2dnxrpbrxy8gaw119vwhb9q6k"))))
    (properties `((upstream-name . "prettyprinter-ansi-terminal")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis "ANSI terminal backend for the »prettyprinter« package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.4-prettyprinter-ansi-terminal

(define-public haskell-8.4-prettyprinter-compat-annotated-wl-pprint
  (package
    (name "haskell-8.4-prettyprinter-compat-annotated-wl-pprint")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-annotated-wl-pprint/prettyprinter-compat-annotated-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zpmpbpnyxqswfb7gdj0kwz7hw606fj1iwkpl1qv0xcxk6n9n99c"))))
    (properties `((upstream-name . "prettyprinter-compat-annotated-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0vzi7id60pfj35xp61akzvfx9x6py45r5b8343i48ljpir91rvgw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Prettyprinter compatibility module for previous users of the annotated-wl-pprint package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.4-prettyprinter-compat-annotated-wl-pprint

(define-public haskell-8.4-prettyprinter-compat-wl-pprint
  (package
    (name "haskell-8.4-prettyprinter-compat-wl-pprint")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-wl-pprint/prettyprinter-compat-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17jj8m9s3cp1s1szpy67g7wni9ssid78jqksh3aym7p6ci81y8km"))))
    (properties `((upstream-name . "prettyprinter-compat-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0cb1i1hmr6wl8lacy3w822h273lapqhp537snxgbmhf9xvfckbpr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Prettyprinter compatibility module for previous users of the wl-pprint package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.4-prettyprinter-compat-wl-pprint

(define-public haskell-8.4-protocol-radius
  (package
    (name "haskell-8.4-protocol-radius")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-radius/protocol-radius-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cd1qr5c2s25136lljqj2xfl8anrrc6m1yf8dpscjil2y4r27629"))))
    (properties `((upstream-name . "protocol-radius") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/protocol-radius")
    (synopsis "parser and printer for radius protocol packet")
    (description "This package provides
parser and printer for radius protocol packet.")
    (license license:bsd-3)))

haskell-8.4-protocol-radius

(define-public haskell-8.4-rainbox
  (package
    (name "haskell-8.4-rainbox")
    (version "0.20.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbox/rainbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07xn8n2wyy7gfc7x725pa9p38m0bapbbk6zcbh31zd67zg962zwk"))))
    (properties `((upstream-name . "rainbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-lens-simple)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-rainbow)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-rainbox

(define-public haskell-8.4-resource-pool
  (package
    (name "haskell-8.4-resource-pool")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resource-pool/resource-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04mw8b9djb14zp4rdi6h7mc3zizh597ffiinfbr4m0m8psifw9w6"))))
    (properties `((upstream-name . "resource-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/bos/pool")
    (synopsis "A high-performance striped resource pooling implementation")
    (description "A high-performance striped pooling abstraction for managing
flexibly-sized collections of resources such as database
connections.")
    (license license:bsd-3)))

haskell-8.4-resource-pool

(define-public haskell-8.4-rio
  (package
    (name "haskell-8.4-rio")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rio/rio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1caxnqz0afbvs9pm4vrap2jmickf24l4bjqbmxlyvvvjla0wq8zc"))))
    (properties `((upstream-name . "rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "A standard library for Haskell")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio>")
    (license license:expat)))

haskell-8.4-rio

(define-public haskell-8.4-rounded
  (package
    (name "haskell-8.4-rounded")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rounded/rounded-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04abl192vq1xq7kf9fackcb17wjyxw4068fsks3pxm9dd4iymgls"))))
    (properties `((upstream-name . "rounded") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-hgmp)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-long-double)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)
                             (@ (gnu packages multiprecision) mpfr)))
    (home-page "https://github.com/ekmett/rounded")
    (synopsis
     "Correctly-rounded arbitrary-precision floating-point arithmetic")
    (description
     "This package provides numeric instances for MPFR that use
\\\"Implicit Configurations\\\" from
<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>
to choose a 'Rounding' and 'Precision'. For those that do not want to
use reflection, explicit instances are provided for common precisions
and for the built-in rounding modes.

This package should work correctly with GHC 7.10.1 or later.

>>> import Numeric.Rounded
>>> :set -XDataKinds
>>> exp pi :: Rounded TowardZero 512
23.140692632779269005729086367948547380266106242600211993445046409524342350690452783516971997067549219675952704801087773144428044414693835844717445879609842")
    (license license:bsd-3)))

haskell-8.4-rounded

(define-public haskell-8.4-selda-sqlite
  (package
    (name "haskell-8.4-selda-sqlite")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-sqlite/selda-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1473igqgjs5282rykqj1zg7420mfh3sbqy74nx1cwbm82j8shyy6"))))
    (properties `((upstream-name . "selda-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")
       #:cabal-revision
       ("2" "198pg9i0lfx3fwf7b7cw0x5kial6vbf0dqwh18jnh7na3pyn1jr6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-selda)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "SQLite backend for the Selda database EDSL.")
    (description "SQLite backend for the Selda database EDSL.")
    (license license:expat)))

haskell-8.4-selda-sqlite

(define-public haskell-8.4-servant-blaze
  (package
    (name "haskell-8.4-servant-blaze")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-blaze/servant-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "155f20pizgkhn0hczwpxwxw1i99h0l6kfwwhs2r6bmr305aqisj6"))))
    (properties `((upstream-name . "servant-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1cfla60vn4kk5gb7fawlp34jr2k6b2fprysq05561wdfv990x4bj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Blaze-html support for servant")
    (description "Servant support for blaze-html

'HTML' content type which will use `ToMarkup` class.")
    (license license:bsd-3)))

haskell-8.4-servant-blaze

(define-public haskell-8.4-servant-cassava
  (package
    (name "haskell-8.4-servant-cassava")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-cassava/servant-cassava-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03jnyghwa5kjbl5j55njmp7as92flw91zs9cgdvb4jrsdy85sb4v"))))
    (properties `((upstream-name . "servant-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0n4nbm0axa9qd805jb3gja2p2fiwvhjpvdi5rhlwh4shm9crppcy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant CSV content-type for cassava")
    (description "Servant CSV content-type for cassava.")
    (license license:bsd-3)))

haskell-8.4-servant-cassava

(define-public haskell-8.4-servant-streaming
  (package
    (name "haskell-8.4-servant-streaming")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-streaming/servant-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k2sgh7qhp54050k6xlz4zi5jf29xnar2iv02f4rg1k5fxjlh3cq"))))
    (properties `((upstream-name . "servant-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "04mc3k97sk0r90m8ca34gqpb2bz8yljp3j613xx7xz90sffqc1hq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)))
    (home-page "http://github.com/plow-technologies/servant-streaming#readme")
    (synopsis "Servant combinators for the 'streaming' package")
    (description
     "This package defines the 'StreamBody' and 'StreamResponse' combinators for use with the <https://hackage.haskell.org/package/streaming streaming> package.")
    (license license:bsd-3)))

haskell-8.4-servant-streaming

(define-public haskell-8.4-serversession-frontend-wai
  (package
    (name "haskell-8.4-serversession-frontend-wai")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession-frontend-wai/serversession-frontend-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rxifhjirhmhk1x14m6lvpv6dl32g179i4i3xi3dq59r7l716j0b"))))
    (properties `((upstream-name . "serversession-frontend-wai")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-serversession)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-session)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "wai-session bindings for serversession.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-wai>")
    (license license:expat)))

haskell-8.4-serversession-frontend-wai

(define-public haskell-8.4-singleton-nats
  (package
    (name "haskell-8.4-singleton-nats")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-nats/singleton-nats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wcwks2acnql5ihkjn2543hgdnlw049z8av8x5dp5r552fq6k0cg"))))
    (properties `((upstream-name . "singleton-nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)))
    (home-page "https://github.com/AndrasKovacs/singleton-nats")
    (synopsis
     "Unary natural numbers relying on the singletons infrastructure.")
    (description
     "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.")
    (license license:bsd-3)))

haskell-8.4-singleton-nats

(define-public haskell-8.4-sqlite-simple
  (package
    (name "haskell-8.4-sqlite-simple")
    (version "0.4.16.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple/sqlite-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pih3nbfczyb91smci2dg9p1wvjsqiv5f5y97q6vqzlns64a3lk0"))))
    (properties `((upstream-name . "sqlite-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "123bykwxl3p6918bjxv073ksf8k1hn6s0rlph934h18400n51fdf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Only)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-textual)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/nurpax/sqlite-simple")
    (synopsis "Mid-Level SQLite client library")
    (description
     "Mid-level SQLite client library, based on postgresql-simple.

Main documentation (with examples): <sqlite-simple/docs/Database-SQLite-Simple.html Database.SQLite.Simple>

You can view the project page at <http://github.com/nurpax/sqlite-simple>
for more information.")
    (license license:bsd-3)))

haskell-8.4-sqlite-simple

(define-public haskell-8.4-streaming-bytestring
  (package
    (name "haskell-8.4-streaming-bytestring")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-bytestring/streaming-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lsklavhk6wcsgjr2rcwkkv827gnd9spv4zwz5i5zf3njvy27my1"))))
    (properties `((upstream-name . "streaming-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming-bytestring")
    (synopsis "effectful byte steams, or: bytestring io done right.")
    (description
     "This is an implementation of effectful, memory-constrained
bytestrings (byte streams) and functions for streaming
bytestring manipulation, adequate for non-lazy-io.
Some examples of the use of byte streams to implement simple
shell progams can be found
<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 here>.
See also the illustrations of use with e.g. @@attoparsec@@,
@@aeson@@, @@http-client@@, @@zlib@@ etc. in the
<https://hackage.haskell.org/package/streaming-utils streaming-utils>
library.  Usage is as close as possible to that of @@ByteString@@
and lazy @@ByteString@@.

A @@ByteString IO ()@@ is the most natural representation of
an effectful stream of bytes arising chunkwise from a handle.
Indeed, the implementation follows the
details of @@Data.ByteString.Lazy@@ and @@Data.ByteString.Lazy.Char8@@
in unrelenting detail, omitting only transparently non-streaming
operations like @@reverse@@. It is just a question of replacing
the lazy bytestring type:

> data ByteString     = Empty   | Chunk Strict.ByteString ByteString

with the /minimal/ effectful variant:

> data ByteString m r = Empty r | Chunk Strict.ByteString (ByteString m r) | Go (m (ByteString m r))

(Constructors are necessarily hidden in internal modules in both the @@Lazy@@ and the @@Streaming@@.)

That's it. As a lazy bytestring is implemented internally
by a sort of list of strict bytestring chunks, a streaming bytestring is
simply implemented as a /producer/ or /generator/ of strict bytestring chunks.
Most operations are defined by simply adding a line to what we find in
@@Data.ByteString.Lazy@@. The only possible simplification would
involve specializing to @@IO@@, throughout - but this would e.g. block
the use of @@ResourceT@@ to manage handles and the like, and a number
of other convenient operations like @@copy@@, which permits one to
apply two operations simultaneously over the length of the byte stream.

Something like this alteration of type is of course obvious and mechanical, once the idea of
an effectful bytestring type is contemplated and lazy io is rejected.
Indeed it seems that this is the proper expression of what was
intended by lazy bytestrings to begin with. The documentation, after all,
reads

* \\\"A key feature of lazy ByteStrings is the means to manipulate large or
unbounded streams of data without requiring the entire sequence to be
resident in memory. To take advantage of this you have to write your
functions in a lazy streaming style, e.g. classic pipeline composition.
The default I/O chunk size is 32k, which should be good in most circumstances.\\\"

... which is very much the idea of this library: the default chunk size for
'hGetContents' and the like follows @@Data.ByteString.Lazy@@; operations
like @@lines@@ and @@append@@ and so on are tailored not to increase chunk size.

The present library is thus if you like nothing but /lazy bytestring done right/.
The authors of @@Data.ByteString.Lazy@@ must have supposed that
the directly monadic formulation of such their type
would necessarily make things slower. This appears to be a prejudice.
For example, passing a large file of short lines through
this benchmark transformation

> Lazy.unlines      . map    (\\bs -> \"!\"       <> Lazy.drop 5 bs)       . Lazy.lines
> Streaming.unlines . S.maps (\\bs -> chunk \"!\" >> Streaming.drop 5 bs)  . Streaming.lines

gives pleasing results like these

> $  time ./benchlines lazy >> /dev/null
> real	0m2.097s
> ...
> $  time ./benchlines streaming >> /dev/null
> real	0m1.930s

For a more sophisticated operation like

> Lazy.intercalate \"!\\n\"      . Lazy.lines
> Streaming.intercalate \"!\\n\" . Streaming.lines

we get results like these:

> time ./benchlines lazy >> /dev/null
> real	0m1.250s
> ...
> time ./benchlines streaming >> /dev/null
> real	0m1.531s

The pipes environment would express the latter as

> Pipes.intercalates (Pipes.yield \"!\\n\") . view Pipes.lines

meaning almost exactly what we mean above, but with results like this

>  time ./benchlines pipes >> /dev/null
>  real	0m6.353s

The difference, however, /is emphatically not intrinsic to pipes/;
it is just that
this library depends the @@streaming@@ library, which is used in place
of @@free@@ to express the
<http://www.haskellforall.com/2013/09/perfect-streaming-using-pipes-bytestring.html \"perfectly streaming\">
splitting and iterated division or \"chunking\" of byte streams.

These concepts belong to the ABCs of streaming; @@lines@@ is just
a textbook example, and it is of course handled correctly in
@@Data.ByteString.Lazy@@.
But the concepts are /catastrophically mishandled/ in /all/ streaming io libraries
other than pipes. Already the @@enumerator@@ and @@iteratee@@ libraries
were completely defeated by @@lines@@:
see e.g. the @@enumerator@@ implementation of
<http://hackage.haskell.org/package/enumerator-0.4.20/docs/Data-Enumerator-Text.html#v:splitWhen splitWhen and lines>.
This will concatenate strict text forever, if that's what is coming
in.  The rot spreads from there.
It is just a fact that in all of the general streaming io
frameworks other than pipes,it becomes torture to express elementary distinctions
that are transparently and immediately contained in any
idea of streaming whatsoever.

Though, as was said above, we barely alter signatures in @@Data.ByteString.Lazy@@
more than is required by the types, the point of view that emerges
is very much that of
@@pipes-bytestring@@ and @@pipes-group@@. In particular
we have these correspondences:

> Lazy.splitAt      :: Int -> ByteString              -> (ByteString, ByteString)
> Streaming.splitAt :: Int -> ByteString m r          -> ByteString m (ByteString m r)
> Pipes.splitAt     :: Int -> Producer ByteString m r -> Producer ByteString m (Producer ByteString m r)

and

> Lazy.lines      :: ByteString -> [ByteString]
> Streaming.lines :: ByteString m r -> Stream (ByteString m) m r
> Pipes.lines     :: Producer ByteString m r -> FreeT (Producer ByteString m) m r

where the @@Stream@@ type expresses the sequencing of @@ByteString m _@@ layers
with the usual \\'free monad\\' sequencing.

Interoperation with @@pipes-bytestring@@ uses this isomorphism:

> Streaming.ByteString.unfoldrChunks Pipes.next :: Monad m => Producer ByteString m r -> ByteString m r
> Pipes.unfoldr Streaming.ByteString.nextChunk  :: Monad m => ByteString m r -> Producer ByteString m r

Interoperation with @@io-streams@@ is thus:

> IOStreams.unfoldM Streaming.ByteString.unconsChunk :: ByteString IO () -> IO (InputStream ByteString)
> Streaming.ByteString.reread IOStreams.read         :: InputStream ByteString -> ByteString IO ()

and similarly for other rational streaming io libraries.

Problems and questions about the library can be put as issues on
the github page, or mailed to the
<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.

A tutorial module is in the works;
<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 here>,
for the moment,
is a sequence of simplified implementations of familiar shell utilities.
The same programs are implemented at the end of the excellent
<http://hackage.haskell.org/package/io-streams-1.3.2.0/docs/System-IO-Streams-Tutorial.html io-streams tutorial>.
It is generally much simpler; in some case simpler than what
you would write with lazy bytestrings.
<https://gist.github.com/michaelt/2dcea1ba32562c091357 Here>
is a simple GET request that returns a byte stream.
")
    (license license:bsd-3)))

haskell-8.4-streaming-bytestring

(define-public haskell-8.4-streaming-wai
  (package
    (name "haskell-8.4-streaming-wai")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-wai/streaming-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5gpxnpfz4hk7ypigdnq1w7h6wslzfpib1y3drj67fchqiiid1m"))))
    (properties `((upstream-name . "streaming-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "http://github.com/jb55/streaming-wai")
    (synopsis "Streaming Wai utilities")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-streaming-wai

(define-public haskell-8.4-streamly
  (package
    (name "haskell-8.4-streamly")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streamly/streamly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ssp66w8qbfbx9p6hdgvddp3d82i1b4b0n9jbji6cyvf7v8b7m1k"))))
    (properties `((upstream-name . "streamly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-diag" "-f-dev" "-f-examples" "-f-examples-sdl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-atomic-primops)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-heaps)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-lockfree-queue)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/composewell/streamly")
    (synopsis "Beautiful Streaming, Concurrent and Reactive Composition")
    (description
     "Streamly, short for streaming concurrently, provides monadic streams, with a
simple API, almost identical to standard lists, and an in-built support for
concurrency.  By using stream-style combinators on stream composition,
streams can be generated, merged, chained, mapped, zipped, and consumed
concurrently – providing a generalized high level programming framework
unifying streaming and concurrency. Controlled concurrency allows even
infinite streams to be evaluated concurrently.  Concurrency is auto scaled
based on feedback from the stream consumer.  The programmer does not have to
be aware of threads, locking or synchronization to write scalable concurrent
programs.

The basic streaming functionality of streamly is equivalent to that provided by
streaming libraries like
<https://hackage.haskell.org/package/vector vector>,
<https://hackage.haskell.org/package/streaming streaming>,
<https://hackage.haskell.org/package/pipes pipes>, and
<https://hackage.haskell.org/package/conduit conduit>.
In addition to providing streaming functionality, streamly subsumes the
functionality of list transformer libraries like @@pipes@@ or
<https://hackage.haskell.org/package/list-t list-t> and also the logic
programming library <https://hackage.haskell.org/package/logict logict>. On
the concurrency side, it subsumes the functionality of the
<https://hackage.haskell.org/package/async async> package. Because it
supports streaming with concurrency we can write FRP applications similar in
concept to <https://hackage.haskell.org/package/Yampa Yampa> or
<https://hackage.haskell.org/package/reflex reflex>.

For file IO, currently the library provides only one API to stream the lines
in the file as Strings.  Future versions will provide better streaming file
IO options.  Streamly interworks with the popular streaming libraries, see
the interworking section in \"Streamly.Tutorial\".

Why use streamly?

* /Simplicity/: Simple list like streaming API, if you know how to use lists
then you know how to use streamly. This library is built with simplicity
and ease of use as a primary design goal.
* /Concurrency/: Simple, powerful, and scalable concurrency.  Concurrency is
built-in, and not intrusive, concurrent programs are written exactly the
same way as non-concurrent ones.
* /Generality/: Unifies functionality provided by several disparate packages
(streaming, concurrency, list transformer, logic programming, reactive
programming) in a concise API.
* /Performance/: Streamly is designed for high performance. See
<https://github.com/composewell/streaming-benchmarks streaming-benchmarks>
for a comparison of popular streaming libraries on micro-benchmarks.

Where to find more information:

* @@README@@ shipped with the package for a quick overview
* \"Streamly.Tutorial\" module in the haddock documentation for a detailed introduction
* @@examples@@ directory in the package for some simple practical examples")
    (license license:bsd-3)))

haskell-8.4-streamly

(define-public haskell-8.4-triplesec
  (package
    (name "haskell-8.4-triplesec")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/triplesec/triplesec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qvhsn5l35mmm71j5g0kv955hfjyzywvwgnjfjl8illgf2g79f46"))))
    (properties `((upstream-name . "triplesec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "096ahldczaiz817a97pkjp1f2xrliz98gi2h4p2qim96vf4jxgdq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/SamProtas/hs-triplesec")
    (synopsis
     "TripleSec is a simple, triple-paranoid, symmetric encryption library")
    (description
     "Additional details about this protocol can be found at the official website: <https://keybase.io/triplesec>

A tutorial for how to use this library can be found in @@ Crypto.TripleSec.Tutorial @@")
    (license license:bsd-3)))

haskell-8.4-triplesec

(define-public haskell-8.4-wai-extra
  (package
    (name "haskell-8.4-wai-extra")
    (version "3.0.24.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-extra/wai-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ff4mzxqj3h5zn27q9pq0q89x087dy072z24bczn4irry0zzks21"))))
    (properties `((upstream-name . "wai-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")
       #:cabal-revision
       ("1" "16gcs6ppr46vkf534nqir1b9rf63yhxnvyjp8lvk5pawmavgg3j1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provides some basic WAI handlers and middleware.")
    (description
     "Provides basic WAI handler and middleware functionality:

* WAI Testing Framework

Hspec testing facilities and helpers for WAI.

* Event Source/Event Stream

Send server events to the client. Compatible with the JavaScript
EventSource API.

* Accept Override

Override the Accept header in a request. Special handling for the
_accept query parameter (which is used throughout WAI override the
Accept header).

* Add Headers

WAI Middleware for adding arbitrary headers to an HTTP request.

* Clean Path

Clean a request path to a canonical form.

* GZip Compression

Negotiate HTTP payload gzip compression.

* HTTP Basic Authentication

WAI Basic Authentication Middleware which uses Authorization header.

* JSONP

\\\"JSON with Padding\\\" middleware. Automatic wrapping of JSON
responses to convert into JSONP.

* Method Override / Post

Allows overriding of the HTTP request method via the _method query string
parameter.

* Request Logging

Request logging middleware for development and production environments

* Request Rewrite

Rewrite request path info based on a custom conversion rules.

* Stream Files

Convert ResponseFile type responses into ResponseStream type.

* Virtual Host

Redirect incoming requests to a new host based on custom rules.


API docs and the README are available at <http://www.stackage.org/package/wai-extra>.")
    (license license:expat)))

haskell-8.4-wai-extra

(define-public haskell-8.4-wai-middleware-caching-lru
  (package
    (name "haskell-8.4-wai-middleware-caching-lru")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching-lru/wai-middleware-caching-lru-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lr8vaail00g72dgdfcgjzdd1kqwi4n0jzl1ia7bjxxdym1chz9p"))))
    (properties `((upstream-name . "wai-middleware-caching-lru")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-lrucache)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-middleware-caching)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-lru#readme")
    (synopsis "Initial project template from stack")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-wai-middleware-caching-lru

(define-public haskell-8.4-wai-middleware-static
  (package
    (name "haskell-8.4-wai-middleware-static")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-static/wai-middleware-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z5yapcf8j9w71f2na30snmalsajlyi8an2f9qrjdmajabyykr0b"))))
    (properties `((upstream-name . "wai-middleware-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "17vq38dh7x1kqzfwla1s0rldd5hzm5mcrx49sjlzy8b66gd2n3ac")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-expiring-cache-map)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/scotty-web/wai-middleware-static")
    (synopsis "WAI middleware that serves requests to static files.")
    (description
     "WAI middleware that intercepts requests to static files and serves them
if they exist.

[WAI] <http://hackage.haskell.org/package/wai>")
    (license license:bsd-3)))

haskell-8.4-wai-middleware-static

(define-public haskell-8.4-wai-middleware-travisci
  (package
    (name "haskell-8.4-wai-middleware-travisci")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-travisci/wai-middleware-travisci-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a58mlgimr6137aiwcdxjk15zy3y58dds4zxffd3vvn0lkzg5jdv"))))
    (properties `((upstream-name . "wai-middleware-travisci") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0j1k2y75gwbny72zf5nrwzanh7sn2plscnrjd4hw5npccxi4dchx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/mitchellwrosen/wai-middleware-travisci")
    (synopsis
     "WAI middleware for authenticating webhook payloads from Travis CI")
    (description
     "This package provides a simple WAI middleware for authenticating webhook
payloads from @@travis-ci.com@@.")
    (license license:bsd-3)))

haskell-8.4-wai-middleware-travisci

(define-public haskell-8.4-wai-predicates
  (package
    (name "haskell-8.4-wai-predicates")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-predicates/wai-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hnpzf7zwizx67ql4fwpqj7xlgkn6c2ms8w4kjapmgxv8z8zdcxp"))))
    (properties `((upstream-name . "wai-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://gitlab.com/twittner/wai-predicates/")
    (synopsis "WAI request predicates")
    (description
     "Evaluate predicate functions against WAI requests and receive
metadata in addition to a success/failure indicator.
Predicates can be combined using logical connectives and the
metadata are passed on accordingly.

<http://hackage.haskell.org/package/wai-routing wai-routing>
extends the functionality of @@wai-predicates@@ with additional
predicates and predicated request routing.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-wai-predicates

(define-public haskell-8.4-wai-slack-middleware
  (package
    (name "haskell-8.4-wai-slack-middleware")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-slack-middleware/wai-slack-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pd61vxnfjdjzkvmwqfgf07a3nir3mnbr8qw2nzqa767s84i6i"))))
    (properties `((upstream-name . "wai-slack-middleware") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-8.4-wai-slack-middleware

(define-public haskell-8.4-zeromq4-haskell
  (package
    (name "haskell-8.4-zeromq4-haskell")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-haskell/zeromq4-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17q756mldxx9b8a2nx9lvjrgvbmgjbnp896sqcgnijq7wr751m2q"))))
    (properties `((upstream-name . "zeromq4-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages networking) zeromq)))
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

haskell-8.4-zeromq4-haskell

