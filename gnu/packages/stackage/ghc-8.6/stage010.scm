;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage010)
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
(define-public haskell-8.6-JuicyPixels-scale-dct
  (package
    (name "haskell-8.6-JuicyPixels-scale-dct")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-carray)
                  (@ (gnu packages stackage ghc-8.6 stage009) haskell-8.6-fft)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-8.6-JuicyPixels-scale-dct

(define-public haskell-8.6-OpenGL
  (package
    (name "haskell-8.6-OpenGL")
    (version "3.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenGL/OpenGL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "069fg8jcxqq2z9iikynd8vi3jxm2b5y3qywdh4bdviyzab3zy1as"))))
    (properties `((upstream-name . "OpenGL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1nhlswxgxn8l1ysjq3fp3w5pvx6651d33036i8dlbqygzrn6iwmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-GLURaw)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ObjectName)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://wiki.haskell.org/OpenGL")
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

haskell-8.6-OpenGL

(define-public haskell-8.6-X11
  (package
    (name "haskell-8.6-X11")
    (version "1.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/X11/X11-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0gg6852mrlgl8zng1j84fismz7k81jr5fk92glgkscf8q6ryg0bm"))))
    (properties `((upstream-name . "X11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
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

haskell-8.6-X11

(define-public haskell-8.6-ascii-progress
  (package
    (name "haskell-8.6-ascii-progress")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-progress/ascii-progress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0glixkmqk7zz4g88sfrqfrdxd4na0krlwr50m2dkra091jwacgvy"))))
    (properties `((upstream-name . "ascii-progress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-concurrent-output)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "https://github.com/yamadapc/haskell-ascii-progress")
    (synopsis "A simple progress bar for the console.")
    (description
     "A simple Haskell progress bar for the console. Heavily borrows from TJ
Holowaychuk's Node.JS project
<https://github.com/tj/node-progress progress>

<https://github.com/yamadapc/haskell-ascii-progress github>")
    (license license:expat)))

haskell-8.6-ascii-progress

(define-public haskell-8.6-bcrypt
  (package
    (name "haskell-8.6-bcrypt")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bcrypt/bcrypt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vzwf9g6mvn4v1cn1m0axjyi2l0glnvv8c49v1j51dm7xn41fcz4"))))
    (properties `((upstream-name . "bcrypt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)))
    (home-page "https://hackage.haskell.org/package/bcrypt")
    (synopsis "Haskell bindings to the bcrypt password hash")
    (description
     "Haskell bindings to the bcrypt password hash.

Unlike other bindings already in existence, this package is designed to allow users to work directly with password hash strings that include information about the hashing algorithm, strength, and salt. This approach allows hashed passwords to be stored in a single field that can also be used by non-Haskell applications, and makes it easy to implement a policy of updating passwords hashed to an old policy next time the plaintext password is available.

Version 1.1.3 of the OpenWall C source for bcrypt is included in this package (<http://www.openwall.com/crypt/>). The only modification is that the flag which enables the use of assembler has been disabled.
Announcements about hs-bcrypt (including security announcements) will be sent to https://groups.google.com/forum/#!forum/hs-bcrypt-announce/join - if you use this library please consider subscribing. This mailing list is moderated and is expected to have a very low volume of mail traffic.")
    (license license:bsd-3)))

haskell-8.6-bcrypt

(define-public haskell-8.6-bits
  (package
    (name "haskell-8.6-bits")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bits/bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q5grjma421qiwjkwvnsakd4hxnf02bavfinky2skfhqvg63hkav"))))
    (properties `((upstream-name . "bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("2" "0zcxzi3afs2vxmm2mc9l65br5qym2ah9q3671f4ckzn0h0hcqw2n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-bytes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives.")
    (license license:bsd-3)))

haskell-8.6-bits

(define-public haskell-8.6-blas-ffi
  (package
    (name "haskell-8.6-blas-ffi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-ffi/blas-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zmw1x37ayssplj8w01ivfyh2jjg906c389cjah4hpn5dpb7p9w5"))))
    (properties `((upstream-name . "blas-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
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

haskell-8.6-blas-ffi

(define-public haskell-8.6-check-email
  (package
    (name "haskell-8.6-check-email")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/check-email/check-email-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wkz853ikr4yns2z12rnzprb98q4b8li1n6lmx5v6m0vgx1a9hw"))))
    (properties `((upstream-name . "check-email") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-email-validate)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages base) glibc)))
    (home-page "https://github.com/qoelet/check-email#readme")
    (synopsis "Confirm whether an email is valid and probably existant.")
    (description
     "See README at <https://github.com/qoelet/check-email#readme>")
    (license license:bsd-3)))

haskell-8.6-check-email

(define-public haskell-8.6-chiphunk
  (package
    (name "haskell-8.6-chiphunk")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chiphunk/chiphunk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03mjx286kbxnnsalqii7fbq3zgdbdsb2mr6x334jffif801sjmbq"))))
    (properties `((upstream-name . "chiphunk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-vector-space)))
    (home-page "https://github.com/CthulhuDen/chiphunk#readme")
    (synopsis "Haskell bindings for Chipmunk2D physics engine")
    (description
     "Please see the README on GitHub at <https://github.com/CthulhuDen/chiphunk#readme>")
    (license license:bsd-3)))

haskell-8.6-chiphunk

(define-public haskell-8.6-clientsession
  (package
    (name "haskell-8.6-clientsession")
    (version "0.9.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clientsession/clientsession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6h4ykj16mpf7nlw2iqn2ji0p8g1fn5ni0s7yqaili6vv2as5ar"))))
    (properties `((upstream-name . "clientsession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-cipher-aes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cprng-aes)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-setenv)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-skein)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "http://github.com/yesodweb/clientsession/tree/master")
    (synopsis "Securely store session data in a client-side cookie.")
    (description "Achieves security through AES-CTR encryption and
Skein-MAC-512-256 authentication.  Uses Base64
encoding to avoid any issues with characters.")
    (license license:expat)))

haskell-8.6-clientsession

(define-public haskell-8.6-comonad
  (package
    (name "haskell-8.6-comonad")
    (version "5.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/comonad/comonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1blgp2nm9cvnsdi2bmkmly5m0gz91npjvf1i5j4pnx6imhbb1kvp"))))
    (properties `((upstream-name . "comonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-fcontainers" "-fdistributive")
       #:cabal-revision
       ("1" "19744zfb5nd90a3xnhl7fx9aik39nwwx9sf7k9aahrcplwlvbwgx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://github.com/ekmett/comonad/")
    (synopsis "Comonads")
    (description "Comonads.")
    (license license:bsd-3)))

haskell-8.6-comonad

(define-public haskell-8.6-concurrency
  (package
    (name "haskell-8.6-concurrency")
    (version "1.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrency/concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16zg4c2x2ym7crvrimzp8jr3mw6qlbdzkfmv1h6smjp3bn8qxf06"))))
    (properties `((upstream-name . "concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
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

haskell-8.6-concurrency

(define-public haskell-8.6-cubicspline
  (package
    (name "haskell-8.6-cubicspline")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/cubicspline")
    (synopsis "Natural cubic spline interpolation.")
    (description "Natural cubic spline interpolation.")
    (license license:bsd-3)))

haskell-8.6-cubicspline

(define-public haskell-8.6-cublas
  (package
    (name "haskell-8.6-cublas")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cublas/cublas-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s47wrmlb35dpym4dz3688qx8m166i2a9d8pqnfdzxy67zv98g1f"))))
    (properties `((upstream-name . "cublas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009) haskell-8.6-cuda)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-half)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
    (home-page "https://hackage.haskell.org/package/cublas")
    (synopsis "FFI bindings to the CUDA BLAS library")
    (description
     "The cuBLAS library is an implementation of BLAS (Basic Linear Algebra
Subprograms) for NVIDIA GPUs. This package provides FFI bindings to the
functions of the cuBLAS library. You will need to install the CUDA driver
and developer toolkit:

<http://developer.nvidia.com/cuda-downloads>

See the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix
for tested CUDA library versions.")
    (license license:bsd-3)))

haskell-8.6-cublas

(define-public haskell-8.6-cufft
  (package
    (name "haskell-8.6-cufft")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cufft/cufft-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cf11ia4i19bpbs0wzkz2hqzc22hh2dvbn8m5frnwild83zal4n3"))))
    (properties `((upstream-name . "cufft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009) haskell-8.6-cuda)))
    (home-page "https://github.com/robeverest/cufft")
    (synopsis "Haskell bindings for the CUFFT library")
    (description
     "This library contains FFI bindings to the CUFFT library, which provides
highly optimised, FFTW compatible, Fast-Fourier Transform (FFT)
implementations for NVIDIA GPUs. The cuFFT library is part of the CUDA
developer toolkit.

<http://developer.nvidia.com/cuda-downloads>

See the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix
for tested CUDA library versions.")
    (license license:bsd-3)))

haskell-8.6-cufft

(define-public haskell-8.6-cusparse
  (package
    (name "haskell-8.6-cusparse")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cusparse/cusparse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y6qnxfdcw3ik3mjp4410846pq1l628d02bdasll1xd4r4r87vh6"))))
    (properties `((upstream-name . "cusparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009) haskell-8.6-cuda)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-half)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
    (home-page "https://hackage.haskell.org/package/cusparse")
    (synopsis "FFI bindings to the CUDA Sparse BLAS library")
    (description
     "The cuSPARSE library contains a set of basic linear algebra subroutines for
handling sparse matrices on NVIDIA GPUs. Sparse vectors and matrices are
those where the majority of elements are zero. Sparse BLAS routines are
specifically implemented to take advantage of this sparsity. This package
provides FFI bindings to the functions of the cuSPARSE library. You will
need to install the CUDA driver and developer toolkit:

<http://developer.nvidia.com/cuda-downloads>

See the <https://travis-ci.org/tmcdonell/cusparse travis-ci.org> build matrix
for tested CUDA library versions.")
    (license license:bsd-3)))

haskell-8.6-cusparse

(define-public haskell-8.6-decidable
  (package
    (name "haskell-8.6-decidable")
    (version "0.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/decidable/decidable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rsgwmvbx4mip26pihhmv6rssn23q8la22qxqj73i60863fkkwbj"))))
    (properties `((upstream-name . "decidable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-singletons)))
    (home-page "https://github.com/mstksg/decidable#readme")
    (synopsis "Combinators for manipulating dependently-typed predicates.")
    (description
     "This library provides combinators and typeclasses for working and manipulating
type-level predicates in Haskell, which are represented as matchable type-level
functions @@k ~> Type@@ from the @@singletons@@ library.  See \"Data.Type.Predicate\"
for a good starting point, and the documentation for 'Predicate' on how to
define predicates.")
    (license license:bsd-3)))

haskell-8.6-decidable

(define-public haskell-8.6-fixed-vector-hetero
  (package
    (name "haskell-8.6-fixed-vector-hetero")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector-hetero/fixed-vector-hetero-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1446xsj030xr7zry2pqq0yxv4f0j46jmpisfmp357jb0n9l5kwm3"))))
    (properties `((upstream-name . "fixed-vector-hetero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "003p9np323pbyd800c2s1mhka471vypcyhkfifsqwhv5pmd61pnj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-fixed-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Generic heterogeneous vectors")
    (description "Generic heterogeneous vectors")
    (license license:bsd-3)))

haskell-8.6-fixed-vector-hetero

(define-public haskell-8.6-genvalidity-hspec
  (package
    (name "haskell-8.6-genvalidity-hspec")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec/genvalidity-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cp0scxrkqmpscndxa68a1ij26i86qvblvb5fipwwyky76xhjsgg"))))
    (properties `((upstream-name . "genvalidity-hspec") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-8.6-genvalidity-hspec

(define-public haskell-8.6-group-by-date
  (package
    (name "haskell-8.6-group-by-date")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/group-by-date/group-by-date-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lz2ygmzxanrcnhzpqcxi1fqh75c349fcrkd13jgih10zkgk86jh"))))
    (properties `((upstream-name . "group-by-date") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-filemanip)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hsshellscript)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-pathtype)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/group-by-date/")
    (synopsis "Shell command for grouping files by dates into folders")
    (description
     "This program is intended for grouping photography images by date
into a hierarchy of date related folders.

If you have a folder of photographies, say @@photos@@,
you may run

> group-by-date -r photos

The program will emit a Bash script like this one:

> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0001.jpeg 2017/2017-06/2017-06-28
> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0002.jpeg 2017/2017-06/2017-06-28
> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0003.jpeg 2017/2017-06/2017-06-28

You can inspect the script and if you like it, you can run it:

> group-by-date -r photos | bash

If you want a different command,
say copying with preservation of modification time, you can call

> group-by-date --command='cp -p' -r photos

Alternatively, you can run the actions immediately,
that is, without a Bash script:

> group-by-date --mode=move -r photos
> group-by-date --mode=copy -r photos

You can also change the target directory structure
using the @@--format@@ option.
You can list all options and default values using @@--help@@.

Attention:
Media for photographies is often formatted with FAT.
This may yield trouble with respect to timezones.")
    (license license:bsd-3)))

haskell-8.6-group-by-date

(define-public haskell-8.6-hledger-lib
  (package
    (name "haskell-8.6-hledger-lib")
    (version "1.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-lib/hledger-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6qp01cak6spnpldm01czlm6i5a2alw47w76875l2nagrc4rfp2"))))
    (properties `((upstream-name . "hledger-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-Decimal)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-cassava-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-easytest)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mtl-compat)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-tabular)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-uglymemo)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://hledger.org")
    (synopsis
     "Core data types, parsers and functionality for the hledger accounting tools")
    (description
     "This is a reusable library containing hledger's core functionality.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-hledger-lib

(define-public haskell-8.6-hmatrix-gsl
  (package
    (name "haskell-8.6-hmatrix-gsl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages maths) gsl)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numerical computation")
    (description
     "Purely functional interface to selected numerical computations,
internally implemented using GSL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-hmatrix-gsl

(define-public haskell-8.6-hmatrix-gsl-stats
  (package
    (name "haskell-8.6-hmatrix-gsl-stats")
    (version "0.4.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-gsl-stats/hmatrix-gsl-stats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cq049sj3q5r06x7i35hqrkf2jc4p4kfi9zv0jmi2vp7w4644i5q"))))
    (properties `((upstream-name . "hmatrix-gsl-stats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-onlygsl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages maths) gsl)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
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

haskell-8.6-hmatrix-gsl-stats

(define-public haskell-8.6-hmatrix-morpheus
  (package
    (name "haskell-8.6-hmatrix-morpheus")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
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

haskell-8.6-hmatrix-morpheus

(define-public haskell-8.6-hreader
  (package
    (name "haskell-8.6-hreader")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-hset)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://bitbucket.org/s9gf4ult/hreader")
    (synopsis "Generalization of MonadReader and ReaderT using hset")
    (description "")
    (license license:bsd-3)))

haskell-8.6-hreader

(define-public haskell-8.6-intervals
  (package
    (name "haskell-8.6-intervals")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intervals/intervals-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00vyxf3ba9d7aas3npfapr53w71fslgh69fczjb25axr66fvzqww"))))
    (properties `((upstream-name . "intervals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("4" "1qx3q0v13l1zaln9zdk8chxpxhshbz5x0vqm0qda7d1kpv7h6a7r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)))
    (home-page "http://github.com/ekmett/intervals")
    (synopsis "Interval Arithmetic")
    (description
     "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.

We do not control the rounding mode of the end points of the interval when
using floating point arithmetic, so be aware that in order to get precise
containment of the result, you will need to use an underlying type with
both lower and upper bounds like 'CReal'")
    (license license:bsd-3)))

haskell-8.6-intervals

(define-public haskell-8.6-lapack-ffi
  (package
    (name "haskell-8.6-lapack-ffi")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
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

haskell-8.6-lapack-ffi

(define-public haskell-8.6-lens-typelevel
  (package
    (name "haskell-8.6-lens-typelevel")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-typelevel/lens-typelevel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lsdp6rgacsa13fppa2dfn2nz8cdrvj5clmlshzrv1h0423hfgbp"))))
    (properties `((upstream-name . "lens-typelevel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-singletons)))
    (home-page "https://github.com/mstksg/lens-typelevel#readme")
    (synopsis "Type-level lenses using singletons")
    (description
     "Type-level lenses using singletons and its defunctionalization system,
implemented using the same van Laarhoven encoding as the /lens/ package.
See README for more information.")
    (license license:bsd-3)))

haskell-8.6-lens-typelevel

(define-public haskell-8.6-lifted-base
  (package
    (name "haskell-8.6-lifted-base")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
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

haskell-8.6-lifted-base

(define-public haskell-8.6-monad-extras
  (package
    (name "haskell-8.6-monad-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "http://github.com/jwiegley/monad-extras")
    (synopsis "Extra utility functions for working with monads")
    (description "")
    (license license:bsd-3)))

haskell-8.6-monad-extras

(define-public haskell-8.6-monad-journal
  (package
    (name "haskell-8.6-monad-journal")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "http://github.com/phaazon/monad-journal")
    (synopsis "Pure logger typeclass and monad transformer")
    (description "This package provides a typeclass for logging in
pure code, or more generally, in any kind of
context. You can do whatever you want with
logs, especially get them, clear them or even
sink them through 'IO' if you're logging in
@@(MonadIO m) => m@@.")
    (license license:bsd-3)))

haskell-8.6-monad-journal

(define-public haskell-8.6-monad-unlift
  (package
    (name "haskell-8.6-monad-unlift")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/fpco/monad-unlift")
    (synopsis "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license license:expat)))

haskell-8.6-monad-unlift

(define-public haskell-8.6-multistate
  (package
    (name "haskell-8.6-multistate")
    (version "0.8.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/multistate/multistate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hypksjacpjgpkgvjn76fd5rgdz7hi6ri36ihdy0bdhpi83jnhn5"))))
    (properties `((upstream-name . "multistate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
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

haskell-8.6-multistate

(define-public haskell-8.6-netlib-carray
  (package
    (name "haskell-8.6-netlib-carray")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-carray/netlib-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rh4m4xxwm8n0577khqa2cx74hnwmgz94phq2rwhsdppg6dd2xx5"))))
    (properties `((upstream-name . "netlib-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18nniq616c9l65g6vxhs6w6yi9rcp8s8vid2v9v0r96i7x1a5g14")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-carray)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)))
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

haskell-8.6-netlib-carray

(define-public haskell-8.6-netlib-comfort-array
  (package
    (name "haskell-8.6-netlib-comfort-array")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-comfort-array/netlib-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v4p1l8gjqkxncjrp6bv664x6xs3y6n5h76pvgccsja5rammwbp3"))))
    (properties `((upstream-name . "netlib-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-comfort-array)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)))
    (home-page "http://hub.darcs.net/thielema/netlib-comfort-array/")
    (synopsis "Helper modules for comfort-array wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-comfort-array@@ and @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-8.6-netlib-comfort-array

(define-public haskell-8.6-nvvm
  (package
    (name "haskell-8.6-nvvm")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvvm/nvvm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00ggaycs5z2b617kgjv851ahrakd4v8w374qbym19r1ccrxkdhhb"))))
    (properties `((upstream-name . "nvvm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009) haskell-8.6-cuda)))
    (home-page "https://github.com/tmcdonell/nvvm")
    (synopsis "FFI bindings to NVVM")
    (description
     "The NVVM library compiles NVVM IR (a subset of LLVM IR) into PTX code which
can then be executed on NVIDIA GPUs. In contrast to the standard NVPTX target
built in to the LLVM toolchain, NVVM includes a set of proprietary
optimisations which are otherwise only available by compiling CUDA code with
the `nvcc` compiler.

The resulting PTX code can be loaded onto the GPU and executed using the
'cuda' package:

<https://hackage.haskell.org/package/cuda>

The NVVM library is a compiler component available a part of the CUDA toolkit:

<https://developer.nvidia.com/cuda-toolkit>

See the <https://travis-ci.org/tmcdonell/nvvm travis-ci.org> build matrix
for tested CUDA library versions.")
    (license license:bsd-3)))

haskell-8.6-nvvm

(define-public haskell-8.6-parser-combinators-tests
  (package
    (name "haskell-8.6-parser-combinators-tests")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parser-combinators-tests/parser-combinators-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m3xgdi1q3q638zfvgpdqyrhfq9abqwjripvbdx5z9rai4whzqmz"))))
    (properties `((upstream-name . "parser-combinators-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0adgbzpylvk9p7ylxynsdrmqhhbh5pm8ww1s3nz3czl79y8lhh47")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
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
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-megaparsec-tests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)))
    (home-page "https://github.com/mrkkrp/parser-combinators")
    (synopsis "Test suite of parser-combinators")
    (description "Test suite of parser-combinators.")
    (license license:bsd-3)))

haskell-8.6-parser-combinators-tests

(define-public haskell-8.6-pipes-safe
  (package
    (name "haskell-8.6-pipes-safe")
    (version "2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-safe/pipes-safe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10m6f52nahxwnl2zvgnbilllcvd3lpi0dxl3j6fk20lryjzmhyqc"))))
    (properties `((upstream-name . "pipes-safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
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

haskell-8.6-pipes-safe

(define-public haskell-8.6-polysemy
  (package
    (name "haskell-8.6-polysemy")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy/polysemy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y63vwrmmany62ci2sdd8kfmkrigk0vds2kjpxmyh9nsvw5fv576"))))
    (properties `((upstream-name . "polysemy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dump-core" "-ferror-messages")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-first-class-families)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-inspection-testing)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-type-errors)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-type-errors-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-unagi-chan)))
    (home-page "https://github.com/isovector/polysemy#readme")
    (synopsis "Higher-order, low-boilerplate, zero-cost free monads.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/polysemy#readme>")
    (license license:bsd-3)))

haskell-8.6-polysemy

(define-public haskell-8.6-process-extras
  (package
    (name "haskell-8.6-process-extras")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/process-extras/process-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klqgr37f1z2z6i0a9b0giapmq0p35l5k9kz1p7f0k1597w7agi9"))))
    (properties `((upstream-name . "process-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-ListLike)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/seereason/process-extras")
    (synopsis "Process extras")
    (description "Extends <http://hackage.haskell.org/package/process>.
Read process input and output as ByteStrings or
Text, or write your own ProcessOutput instance.
Lazy process input and output.  ProcessMaker class
for more flexibility in the process creation API.")
    (license license:expat)))

haskell-8.6-process-extras

(define-public haskell-8.6-pureMD5
  (package
    (name "haskell-8.6-pureMD5")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-crypto-api-tests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-pretty-hex)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/pureMD5")
    (synopsis
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports
the crypto-api class interface.")
    (license license:bsd-3)))

haskell-8.6-pureMD5

(define-public haskell-8.6-rank2classes
  (package
    (name "haskell-8.6-rank2classes")
    (version "1.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rank2classes/rank2classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sh2ks4qj3ksqs92rm8xzanpwc5ppml04s4mjzyngpgrihwi9924"))))
    (properties `((upstream-name . "rank2classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse-template-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)))
    (home-page "https://github.com/blamario/grampa/tree/master/rank2classes")
    (synopsis
     "standard type constructor class hierarchy, only with methods of rank 2 types")
    (description
     "A mirror image of the standard type constructor class hierarchy rooted in 'Functor', except with methods of rank 2
types and class instances of kind @@(k->*)->*@@. The classes enable generic handling of heterogenously typed data
structures and other neat tricks.")
    (license license:bsd-3)))

haskell-8.6-rank2classes

(define-public haskell-8.6-relational-schemas
  (package
    (name "haskell-8.6-relational-schemas")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-schemas/relational-schemas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yhgn2sjq7530s31fyyaxms5vnqwl03pwvsn0sm8f6yyzjvwm38b"))))
    (properties `((upstream-name . "relational-schemas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-relational-query)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "RDBMSs' schema templates for relational-query")
    (description
     "This package contains some RDBMSs' schema structure definitions.

Supported RDBMS schemas are below:

- IBM DB2
- PostgreSQL
- Microsoft SQLServer
- SQLite3
- Oracle
- MySQL")
    (license license:bsd-3)))

haskell-8.6-relational-schemas

(define-public haskell-8.6-resource-pool
  (package
    (name "haskell-8.6-resource-pool")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/bos/pool")
    (synopsis "A high-performance striped resource pooling implementation")
    (description "A high-performance striped pooling abstraction for managing
flexibly-sized collections of resources such as database
connections.")
    (license license:bsd-3)))

haskell-8.6-resource-pool

(define-public haskell-8.6-salak
  (package
    (name "haskell-8.6-salak")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salak/salak-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k6z2vjxg6za6rfhx1xgjdck7ainnsbhrvzav2ngwpvy8li5g02b"))))
    (properties `((upstream-name . "salak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "138c763crbfipcb9ss1lk3wx3482nm2v4zbm3k88h6jszxhmxvav")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-heaps)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/leptonyu/salak#readme")
    (synopsis "Configuration (re)Loader and Parser.")
    (description
     "This library defines a universal procedure to load configurations and parse properties, also supports reload configuration files.")
    (license license:expat)))

haskell-8.6-salak

(define-public haskell-8.6-scalpel-core
  (package
    (name "haskell-8.6-scalpel-core")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scalpel-core/scalpel-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "199g005ps5grjj3y7mxajck3ybyc60fs72p8jk859ji3svpqdfyn"))))
    (properties `((upstream-name . "scalpel-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-pointedlist)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel core provides a subset of the scalpel web scraping library that is
intended to have lightweight dependencies and to be free of all non-Haskell
dependencies.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-scalpel-core

(define-public haskell-8.6-simple-log
  (package
    (name "haskell-8.6-simple-log")
    (version "0.9.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-log/simple-log-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1038asbw9yi1wz3di0ggx62nazljh9m07dvf3lmjrvj1k8i7842w"))))
    (properties `((upstream-name . "simple-log") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hformat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-microlens-platform)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://github.com/mvoidex/simple-log")
    (synopsis "Simple log for Haskell")
    (description "Log library for Haskell")
    (license license:bsd-3)))

haskell-8.6-simple-log

(define-public haskell-8.6-singleton-nats
  (package
    (name "haskell-8.6-singleton-nats")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-nats/singleton-nats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xj5w6dszm832y90qxmwqnyiwpav30q199cjcdbdxr7q1d4klszi"))))
    (properties `((upstream-name . "singleton-nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-singletons)))
    (home-page "https://github.com/AndrasKovacs/singleton-nats")
    (synopsis
     "Unary natural numbers relying on the singletons infrastructure.")
    (description
     "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.")
    (license license:bsd-3)))

haskell-8.6-singleton-nats

(define-public haskell-8.6-streamly
  (package
    (name "haskell-8.6-streamly")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streamly/streamly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "141xc4c4ng0cxwlmjcw7v9a7wpi6kdidzwr4wify571ghql75gf2"))))
    (properties `((upstream-name . "streamly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-no-charts" "-f-no-fusion" "-f-streamk" "-f-examples" "-f-examples-sdl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-heaps)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-lockfree-queue)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
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
IO options.  Streamly interoperates with the popular streaming libraries, see
the interoperation section in \"Streamly.Tutorial\".

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
* /Performance/: Streamly is designed for high performance.
It employs stream fusion optimizations for best possible performance.
Serial peformance is equivalent to the venerable `vector` library in most
cases and even better in some cases. Concurrent performance is unbeatable.
See
<https://github.com/composewell/streaming-benchmarks streaming-benchmarks>
for a comparison of popular streaming libraries on micro-benchmarks.

Where to find more information:

* /Quick Overview/: <src/README.md README file> in the package
* /Detailed Tutorial/: \"Streamly.Tutorial\" module in the haddock documentation
* /Reference Documentation/: Haddock documentation for the respective modules
* /Examples/: <src/examples examples directory> in the package
* /Guides/: <src/docs docs directory> in the package, for documentation on
advanced topics, limitations, semantics of the library or on specific use
cases.
* <https://github.com/composewell/streaming-benchmarks Streaming Benchmarks>
* <https://github.com/composewell/concurrency-benchmarks Concurrency Benchmarks>")
    (license license:bsd-3)))

haskell-8.6-streamly

(define-public haskell-8.6-structured-cli
  (package
    (name "haskell-8.6-structured-cli")
    (version "2.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/structured-cli/structured-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sq72gyqg73d3nxfkv8bynyk30l3lw1vfmfw9jg4smmj2ix7n5a0"))))
    (properties `((upstream-name . "structured-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://gitlab.com/codemonkeylabs/structured-cli#readme")
    (synopsis "Application library for building interactive console CLIs")
    (description
     "This module provides the tools to build a complete \"structured\" CLI application, similar to those found in systems like Cisco IOS or console configuration utilities etc. It aims to be easy for implementors to use.")
    (license license:bsd-3)))

haskell-8.6-structured-cli

(define-public haskell-8.6-tasty-ant-xml
  (package
    (name "haskell-8.6-tasty-ant-xml")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-ant-xml/tasty-ant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13qqpl1prr9dda87dp45mqybay24n8rhxxgvpc9j34kh72g8j5qw"))))
    (properties `((upstream-name . "tasty-ant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (home-page "http://github.com/ocharles/tasty-ant-xml")
    (synopsis "Render tasty output to XML for Jenkins")
    (description
     "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.")
    (license license:bsd-3)))

haskell-8.6-tasty-ant-xml

(define-public haskell-8.6-tasty-expected-failure
  (package
    (name "haskell-8.6-tasty-expected-failure")
    (version "0.11.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-expected-failure/tasty-expected-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "175gdk1mkslcwjxajkbl4zmaigzf8h4svzd7va5qb519y0dxk28n"))))
    (properties `((upstream-name . "tasty-expected-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1r367zar3gdad99nh53z7pr1qcw640pkcdv8zgl1b162ds3sv6zz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://github.com/nomeata/tasty-expected-failure")
    (synopsis "Mark tasty tests as failure expected")
    (description
     "With the function 'Test.Tasty.ExpectedFailure.expectFail' in the provided module
\"Test.Tasty.ExpectedFailure\", you can mark that you expect test cases to fail,
and not to pass.

This can for example be used for test-driven development: Create the tests,
mark them with 'Test.Tasty.ExpectedFailure.expectFail', and you can still push
to the main branch, without your continuous integration branch failing.

Once someone implements the feature or fixes the bug (maybe unknowingly), the
test suite will tell him so, due to the now unexpectedly passing test, and he
can remove the 'Test.Tasty.ExpectedFailure.expectFail' marker.

The module also provides 'Test.Tasty.ExpectedFailure.ignoreTest' to avoid
running a test. Both funtions are implemented via the more general
'Test.Tasty.ExpectedFailure.wrapTest', which is also provided.")
    (license license:expat)))

haskell-8.6-tasty-expected-failure

(define-public haskell-8.6-tasty-hunit
  (package
    (name "haskell-8.6-tasty-hunit")
    (version "0.10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xvf5xs0r8xqkcg354klz4wyzwyzvinalyl6f4fnxwqmzrgch8s8"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.

Note that this package does not depend on HUnit but
implements the relevant subset of its API. The name is a
legacy of the early versions of tasty-hunit and of
test-framework-hunit, which did depend on HUnit.")
    (license license:expat)))

haskell-8.6-tasty-hunit

(define-public haskell-8.6-tasty-hunit-notests
  (package
    (name "haskell-8.6-tasty-hunit-notests")
    (version "0.10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xvf5xs0r8xqkcg354klz4wyzwyzvinalyl6f4fnxwqmzrgch8s8"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.

Note that this package does not depend on HUnit but
implements the relevant subset of its API. The name is a
legacy of the early versions of tasty-hunit and of
test-framework-hunit, which did depend on HUnit.")
    (license license:expat)))

haskell-8.6-tasty-hunit-notests

(define-public haskell-8.6-tasty-leancheck
  (package
    (name "haskell-8.6-tasty-leancheck")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-leancheck/tasty-leancheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06nki1l05hh5r0q2lkn4rmj0cl8hz7r7zc71r64fx2k9z65n5497"))))
    (properties `((upstream-name . "tasty-leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/rudymatela/tasty-leancheck#readme")
    (synopsis "LeanCheck support for the Tasty test framework.")
    (description
     "LeanCheck support for the Tasty test framework.

This package can be used to incorporate LeanCheck tests into Tasty test
suites by means of the @@Test.Tasty.LeanCheck.testProperty@@ function.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.6-tasty-leancheck

(define-public haskell-8.6-tasty-program
  (package
    (name "haskell-8.6-tasty-program")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-program/tasty-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i19b1pps1hwqs7djx859ddcdmqfzgyzyi72db62jw03bynmbcjc"))))
    (properties `((upstream-name . "tasty-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/jstolarek/tasty-program")
    (synopsis
     "Use tasty framework to test whether a program executes correctly")
    (description
     "This package provides a function that extends
<http://hackage.haskell.org/package/tasty tasty> testing
framework with capability to test whether an external
program runs successfully. This package is inspired by
<http://hackage.haskell.org/package/test-framework-program test-framework-program>
package by Adam Wick.
tasty-program provides basic functionality of
running a program with specified set of command
line parameters, and optionally a working
directory, and checking the exit code. Program's
output and error streams are ignored.")
    (license license:bsd-3)))

haskell-8.6-tasty-program

(define-public haskell-8.6-tasty-quickcheck-notests
  (package
    (name "haskell-8.6-tasty-quickcheck-notests")
    (version "0.10.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "098zyfl5958zikaqfyam75hv5l46pks5bnp3r7533bbmr4a60cpq"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.6-tasty-quickcheck-notests

(define-public haskell-8.6-ttl-hashtables
  (package
    (name "haskell-8.6-ttl-hashtables")
    (version "1.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ttl-hashtables/ttl-hashtables-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14ammgggkfmc4divr1zykjadad5fzgspjnzpjfdzj3vwm1rf5gwv"))))
    (properties `((upstream-name . "ttl-hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "17pkzci2nqi0d4zcpyxcv5l1hn7m04h2kwqjgqm7kc2c3p620qv3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-failable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://hackage.haskell.org/package/ttl-hashtables")
    (synopsis
     "Extends hashtables so that entries added can be expired after a TTL")
    (description
     "This library extends fast mutable hashtables so that entries added can be expired after a given TTL (time to live). This TTL can be specified as a default property of the table or on a per entry basis.")
    (license license:bsd-3)))

haskell-8.6-ttl-hashtables

(define-public haskell-8.6-vector-th-unbox
  (package
    (name "haskell-8.6-vector-th-unbox")
    (version "0.2.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-th-unbox/vector-th-unbox-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q8dqnbv1c2gi7jjdhqj14abj1vik23ki6lq4iz2sz18yc7q69fi"))))
    (properties `((upstream-name . "vector-th-unbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11qhhir9cdy3x7pd0z0xk8vi4nzr9fn9q3ggwbhhc43jglngw1x7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/vector-th-unbox")
    (synopsis "Deriver for Data.Vector.Unboxed using Template Haskell")
    (description
     "A Template Haskell deriver for unboxed vectors, given a pair of coercion
functions to and from some existing type with an Unbox instance.

Refer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.")
    (license license:bsd-3)))

haskell-8.6-vector-th-unbox

