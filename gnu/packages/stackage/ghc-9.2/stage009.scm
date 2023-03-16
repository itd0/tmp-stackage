;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage009)
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
(define-public haskell-9.2-GLUT
  (package
    (name "haskell-9.2-GLUT")
    (version "2.7.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLUT/GLUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vdkfj4wjzigdpzgr5l001y9wkhwgl00mclr26gf93kps14fkymn"))))
    (properties `((upstream-name . "GLUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-OpenGL)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-OpenGLRaw)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL Utility Toolkit")
    (description
     "A Haskell binding for the OpenGL Utility Toolkit, a window system independent
toolkit for writing OpenGL programs. For more information about the C library
on which this binding is based, please see:
<http://www.opengl.org/resources/libraries/glut/>.")
    (license license:bsd-3)))

haskell-9.2-GLUT

(define-public haskell-9.2-JuicyPixels-scale-dct
  (package
    (name "haskell-9.2-JuicyPixels-scale-dct")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-carray)
                  (@ (gnu packages stackage ghc-9.2 stage008) haskell-9.2-fft)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-9.2-JuicyPixels-scale-dct

(define-public haskell-9.2-MissingH
  (package
    (name "haskell-9.2-MissingH")
    (version "1.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MissingH/MissingH-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c92fdv32nq51kfdizi3lpxmnvscsgk6marfzaycd7k05aka8byb"))))
    (properties `((upstream-name . "MissingH") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--ge-3_0_0")
       #:cabal-revision
       ("2" "11d922r06p00gcgzhb29hhjkq8ajy1xbqdiwdpbmhp2ar7fw7g9l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-regex-compat)))
    (home-page "https://hackage.haskell.org/package/MissingH")
    (synopsis "Large utility library")
    (description
     "@@MissingH@@ is a library of all sorts of utility functions for Haskell
programmers.  It is written in pure Haskell and thus should be
extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-9.2-MissingH

(define-public haskell-9.2-OneTuple
  (package
    (name "haskell-9.2-OneTuple")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OneTuple/OneTuple-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vry21z449ph9k61l5zm7mfmdwkwszxqdlawlhvwrd1gsn13d1cq"))))
    (properties `((upstream-name . "OneTuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0g4siv8s6dlrdsivap2qy6ig08y5bjbs93jk192zmgkp8iscncpw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/OneTuple")
    (synopsis "Singleton Tuple")
    (description
     "This package is a compatibility package for a singleton data type

> data Solo a = Solo a

Note: it's not a @@newtype@@

@@Solo@@ is available in @@base-4.16@@ (GHC-9.2).")
    (license license:bsd-3)))

haskell-9.2-OneTuple

(define-public haskell-9.2-OpenAL
  (package
    (name "haskell-9.2-OpenAL")
    (version "1.7.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenAL/OpenAL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "167qgbls1439wbckva281cf61bclkca0krbbi4451l7qjinm8fil"))))
    (properties `((upstream-name . "OpenAL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ObjectName)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-OpenGL)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages audio) openal)))
    (home-page "https://github.com/haskell-openal/ALUT")
    (synopsis "A binding to the OpenAL cross-platform 3D audio API")
    (description
     "A Haskell binding for the OpenAL cross-platform 3D audio API,
appropriate for use with gaming applications and many other
types of audio applications.

On Windows, this package works well with the \\\"OpenAL Soft\\\" binary
distribution from <http://kcat.strangesoft.net/openal.html>.
Type \\'cabal install --extra-lib-dirs=\\<DIR\\>\\' where \\<DIR\\> is the
directory where libOpenAL32.dll.a is located (must be an absolute path).
Then rename soft_oal.dll to OpenAL32.dll and put it somewhere in
the PATH. I found that c:\\\\Windows\\\\ worked.

This package has also been tested on GNU/Linux and iOS.")
    (license license:bsd-3)))

haskell-9.2-OpenAL

(define-public haskell-9.2-RSA
  (package
    (name "haskell-9.2-RSA")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/RSA/RSA-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hchsqrxpfw7mqrqwscfy8ig1w2di6w3nxpzi873w0gibv2diibj"))))
    (properties `((upstream-name . "RSA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-SHA)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-RSA

(define-public haskell-9.2-alerts
  (package
    (name "haskell-9.2-alerts")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alerts/alerts-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14fyckdwwhp786z2gg6m92xmz0rbvqwalj0bylqagi9n295ni74f"))))
    (properties `((upstream-name . "alerts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alx741/alerts#readme")
    (synopsis "Alert messages for web applications")
    (description "Alert messages for web applications:

* Bootstrap 3

* Bootstrap 4

* Foundation 5

* Bulma")
    (license license:bsd-3)))

haskell-9.2-alerts

(define-public haskell-9.2-async
  (package
    (name "haskell-9.2-async")
    (version "2.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/async/async-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09d7w3krfhnmf9dp6yffa9wykinhw541wibnjgnlyv77w1dzhka8"))))
    (properties `((upstream-name . "async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bench")
       #:cabal-revision
       ("3" "023y75hfcvmjicmq5kxw55h2y729cysh1wlkggmwnv9jr307sdj6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/simonmar/async")
    (synopsis "Run IO operations asynchronously and wait for their results")
    (description "This package provides a higher-level interface over
threads, in which an @@Async a@@ is a concurrent
thread that will eventually deliver a value of
type @@a@@.  The package provides ways to create
@@Async@@ computations, wait for their results, and
cancel them.

Using @@Async@@ is safer than using threads in two
ways:

* When waiting for a thread to return a result,
if the thread dies with an exception then the
caller must either re-throw the exception
('wait') or handle it ('waitCatch'); the
exception cannot be ignored.

* The API makes it possible to build a tree of
threads that are automatically killed when
their parent dies (see 'withAsync').")
    (license license:bsd-3)))

haskell-9.2-async

(define-public haskell-9.2-blas-carray
  (package
    (name "haskell-9.2-blas-carray")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-carray/blas-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aqphwgzcryzfzjzsv6ph4kcmswqd7mgs65dj8lsjzkhfc6izggl"))))
    (properties `((upstream-name . "blas-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-blas-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-carray)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-netlib-carray)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/blas-carray/")
    (synopsis "Auto-generated interface to Fortran BLAS via CArrays")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

See also package @@lapack-carray@@.")
    (license license:bsd-3)))

haskell-9.2-blas-carray

(define-public haskell-9.2-blaze-bootstrap
  (package
    (name "haskell-9.2-blaze-bootstrap")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-bootstrap/blaze-bootstrap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qsis1hwd8sqcciibxwy8p6irszwa2fy5m75qxp46ymfal5lrdak"))))
    (properties `((upstream-name . "blaze-bootstrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/blaze-bootstrap")
    (synopsis "Blaze helper functions for bootstrap pages")
    (description "Simplify building blaze and bootstrap powered pages")
    (license license:expat)))

haskell-9.2-blaze-bootstrap

(define-public haskell-9.2-case-insensitive
  (package
    (name "haskell-9.2-case-insensitive")
    (version "1.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/case-insensitive/case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01p40hfjyldfds5jg6vlvvn3ihs4ki63xn6fh8yzngaz1izc2v99"))))
    (properties `((upstream-name . "case-insensitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/basvandijk/case-insensitive")
    (synopsis "Case insensitive string comparison")
    (description "The module @@Data.CaseInsensitive@@ provides the 'CI' type
constructor which can be parameterised by a string-like
type like: 'String', 'ByteString', 'Text',
etc.. Comparisons of values of the resulting type will be
insensitive to cases.")
    (license license:bsd-3)))

haskell-9.2-case-insensitive

(define-public haskell-9.2-comfort-array-shape
  (package
    (name "haskell-9.2-comfort-array-shape")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array-shape/comfort-array-shape-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0caw0d9566qi9difgprfg3g9yqfiks2ycqjbr7wx7xcplagqdcn7"))))
    (properties `((upstream-name . "comfort-array-shape") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-lib)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-fixed-length)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-tfp)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/comfort-array-shape/")
    (synopsis "Additional shape types for the comfort-array package")
    (description
     "Some extra array shape types
additional to the ones in the @@comfort-array@@ package.
These require some more package dependencies
and use type-encoded natural numbers.

* @@Static.ZeroBased@@:
Like @@Shape.ZeroBased@@ but with type-encoded number as size.

* @@Simplex@@:
Simplices of any dimension, where the dimension is encoded in the type.
Only a private module for demonstration.
Production-ready implementation in @@comfort-array@@.")
    (license license:bsd-3)))

haskell-9.2-comfort-array-shape

(define-public haskell-9.2-comfort-fftw
  (package
    (name "haskell-9.2-comfort-fftw")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-fftw/comfort-fftw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g43fj1wmzdsfqz9axrq35bp2ad2900zcqvf9b2w57k3pl2cdk65"))))
    (properties `((upstream-name . "comfort-fftw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-lib)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-fftw-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)))
    (home-page "https://hub.darcs.net/thielema/comfort-fftw/")
    (synopsis
     "High-level interface to FFTW (Fast Fourier Transform) based on comfort-array")
    (description "FFTW claims to be the fastest Fourier Transform in the West.
This is a high-level interface to @@libfftw@@.
We re-use the type classes from @@netlib-ffi@@.

For rather simple examples
see the packages @@align-audio@@ and @@morbus-meniere@@.

See also package @@fft@@.")
    (license license:bsd-3)))

haskell-9.2-comfort-fftw

(define-public haskell-9.2-cryptohash
  (package
    (name "haskell-9.2-cryptohash")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
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

haskell-9.2-cryptohash

(define-public haskell-9.2-cryptohash-cryptoapi
  (package
    (name "haskell-9.2-cryptohash-cryptoapi")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-cryptohash-cryptoapi")
    (synopsis "Crypto-api interfaces for cryptohash")
    (description "Crypto-api interfaces for cryptohash")
    (license license:bsd-3)))

haskell-9.2-cryptohash-cryptoapi

(define-public haskell-9.2-cryptonite-openssl
  (package
    (name "haskell-9.2-cryptonite-openssl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-basement)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-tasty-kat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite-openssl")
    (synopsis "Crypto stuff using OpenSSL cryptographic library")
    (description
     "Crypto stuff using the OpenSSL cryptographic library as bindings")
    (license license:bsd-3)))

haskell-9.2-cryptonite-openssl

(define-public haskell-9.2-ctrie
  (package
    (name "haskell-9.2-ctrie")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mcschroeder/ctrie")
    (synopsis "Non-blocking concurrent map")
    (description "A non-blocking concurrent map implementation based on
/lock-free concurrent hash tries/ (aka /Ctries/).")
    (license license:expat)))

haskell-9.2-ctrie

(define-public haskell-9.2-currency
  (package
    (name "haskell-9.2-currency")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/currency/currency-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yj1x7zmkmwr9az55i9gvf84m7i3b4qi80p8qk9hszzlv7rigmdw"))))
    (properties `((upstream-name . "currency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-iso3166-country-codes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/singpolyma/currency-haskell")
    (synopsis "Types representing standard and non-standard currencies")
    (description
     "This package provides two types for representing currencies, one that
can only represent ISO4217 currencies, and one that can also represent
nonstandard currencies.

An IsString instance is provided for convenience on the general type.

Instances of Eq, Ord, and, Hashable are provided for use as keys.

The Enum instance provides a mapping to/from ISO4217 numeric codes for
currencies that have such a code.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-currency

(define-public haskell-9.2-data-dword
  (package
    (name "haskell-9.2-data-dword")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-dword/data-dword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l6xvy89zch5kxkaafsg874xrwx0x1rpxpx1ywbhbs7qv3pz250i"))))
    (properties `((upstream-name . "data-dword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-data-bword)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-dword")
    (synopsis "Stick two binary words together to get a bigger one")
    (description
     "This package provides Template Haskell utilities for declaring fixed-length
binary word data types. Signed and unsigned 96, 128, 160, 192, 224, and
256-bit types are predefined.")
    (license license:bsd-3)))

haskell-9.2-data-dword

(define-public haskell-9.2-data-fix
  (package
    (name "haskell-9.2-data-fix")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-fix/data-fix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k0rcbb6dzv0ggdxqa2bh4jr829y0bczjrg98mrk5733q0xjs5rs"))))
    (properties `((upstream-name . "data-fix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1s9xivrnsp5n7jhflz4h4vzwwdcxal7kwchpaa982m8pfr23ayy2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/spell-music/data-fix")
    (synopsis "Fixpoint data types")
    (description
     "Fixpoint types and recursion schemes. If you define your AST as
fixpoint type, you get fold and unfold operations for free.

Thanks for contribution to: Matej Kollar, Herbert Valerio Riedel")
    (license license:bsd-3)))

haskell-9.2-data-fix

(define-public haskell-9.2-eap
  (package
    (name "haskell-9.2-eap")
    (version "0.9.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eap/eap-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0bgx7sxpmvhd84j7kkqznazw7p1fl862w7jxlap473g2q5365kqc"))))
    (properties `((upstream-name . "eap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lsy7pl39s02f45l7g9alw49xwh7m8m4bm3ydcz11rh9xdgcb9jv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-pretty-hex)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/eap#readme")
    (synopsis "Extensible Authentication Protocol (EAP)")
    (description
     "This module provides types and on the wire de/coding of EAP packets as per RFC 3748")
    (license license:bsd-3)))

haskell-9.2-eap

(define-public haskell-9.2-fin
  (package
    (name "haskell-9.2-fin")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fin/fin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "14zknp1f65i57nsx8v0np08d7y0szzblybmq7fa5ydazhqwnxlrv"))))
    (properties `((upstream-name . "fin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qk48l13k8xr0qcs4nr5mpr5y84s8apdm5wlqldjdl9l3qbp58aw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boring)
                  (@ (gnu packages stackage ghc-9.2 stage002) haskell-9.2-dec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-some)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-universe-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Nat and Fin: peano naturals and finite numbers")
    (description
     "This package provides two simple types, and some tools to work with them.
Also on type level as @@DataKinds@@.

@@
\\-- Peano naturals
data Nat = Z | S Nat

\\-- Finite naturals
data Fin (n :: Nat) where
\\    Z :: Fin ('S n)
\\    S :: Fin n -> Fin ('Nat.S n)
@@

[vec](https://hackage.haskell.org/package/vec) implements length-indexed
(sized) lists using this package for indexes.

The \"Data.Fin.Enum\" module let's work generically with enumerations.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [finite-typelits](https://hackage.haskell.org/package/finite-typelits)
. Is a great package, but uses @@GHC.TypeLits@@.

* [type-natural](https://hackage.haskell.org/package/type-natural) depends
on @@singletons@@ package. @@fin@@ will try to stay light on the dependencies,
and support as many GHC versions as practical.

* [peano](https://hackage.haskell.org/package/peano) is very incomplete

* [nat](https://hackage.haskell.org/package/nat) as well.

* [PeanoWitnesses](https://hackage.haskell.org/package/PeanoWitnesses)
doesn't use @@DataKinds@@.

* [type-combinators](https://hackage.haskell.org/package/type-combinators)
is big package too.")
    (license license:bsd-3)))

haskell-9.2-fin

(define-public haskell-9.2-fixed-vector-hetero
  (package
    (name "haskell-9.2-fixed-vector-hetero")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector-hetero/fixed-vector-hetero-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1amqpbvzyqfg5rsl4zm99qmiffbh0a5bf9jbwlm6snwm9024qsj3"))))
    (properties `((upstream-name . "fixed-vector-hetero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-fixed-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Library for working with product types generically")
    (description
     "Library allow to work with arbitrary product types in generic
manner. They could be constructed, destucted, converted provided
they are product of identical types.")
    (license license:bsd-3)))

haskell-9.2-fixed-vector-hetero

(define-public haskell-9.2-hashmap
  (package
    (name "haskell-9.2-hashmap")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashmap/hashmap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ma7svf9nanlfbj9nkk6bzk4m98i7xd71xrdc3a5dmmws5yba1nw"))))
    (properties `((upstream-name . "hashmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-oldcontainers")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/foxik/hashmap")
    (synopsis "Persistent containers Map and Set based on hashing.")
    (description
     "An implementation of persistent 'Map' and 'Set' containers
based on hashing. The implementation is build on
top of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',
with very similar API. It uses 'Hashable' class from the
@@hashable@@ package for hashing.

This package can be used as a drop-in replacement for
'Data.Map' and 'Data.Set' modules.

The @@'Map' key value@@ is an 'Data.IntMap.IntMap'
indexed by the hash value, containing either one ('key', 'value')
or a @@'Data.Map.Map' key value@@ for all keys with the same hash value.

The @@'Set' elem@@ is an 'Data.IntMap.IntMap' indexed by
the hash value, containing either one 'elem' or @@'Data.Set.Set' elem@@ for
all elements with the same hash value.")
    (license license:bsd-3)))

haskell-9.2-hashmap

(define-public haskell-9.2-hashtables
  (package
    (name "haskell-9.2-hashtables")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashtables/hashtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hsrihk948xfpy14qrhar50b41kp60i1rx8bkadjg1xb4bml0gbg"))))
    (properties `((upstream-name . "hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funsafe-tricks" "-f-bounds-checking" "-f-debug" "-f-detailed-profiling" "-f-sse42" "-f-portable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/gregorycollins/hashtables")
    (synopsis "Mutable hash tables in the ST monad")
    (description
     "This package provides a couple of different implementations of mutable hash
tables in the ST monad, as well as a typeclass abstracting their common
operations, and a set of wrappers to use the hash tables in the IO monad.

/QUICK START/: documentation for the hash table operations is provided in the
\"Data.HashTable.Class\" module, and the IO wrappers (which most users will
probably prefer) are located in the \"Data.HashTable.IO\" module.

This package currently contains three hash table implementations:

1. \"Data.HashTable.ST.Cuckoo\" contains an implementation of \\\"cuckoo
hashing\\\" as introduced by Pagh and Rodler in 2001 (see
<http://en.wikipedia.org/wiki/Cuckoo_hashing>). Cuckoo hashing has
worst-case /O(1)/ lookups and can reach a high \\\"load factor\\\", in which
the table can perform acceptably well even when approaching 90% full.
Randomized testing shows this implementation of cuckoo hashing to be
slightly faster on insert and slightly slower on lookup than
\"Data.HashTable.ST.Basic\", while being more space efficient by about a
half-word per key-value mapping. Cuckoo hashing, like the basic hash
table implementation using linear probing, can suffer from long delays
when the table is resized.

2. \"Data.HashTable.ST.Basic\" contains a basic open-addressing hash table
using linear probing as the collision strategy. On a pure speed basis it
should currently be the fastest available Haskell hash table
implementation for lookups, although it has a higher memory overhead
than the other tables and can suffer from long delays when the table is
resized because all of the elements in the table need to be rehashed.

3. \"Data.HashTable.ST.Linear\" contains a linear hash table (see
<http://en.wikipedia.org/wiki/Linear_hashing>), which trades some insert
and lookup performance for higher space efficiency and much shorter
delays when expanding the table. In most cases, benchmarks show this
table to be currently slightly faster than @@Data.HashTable@@ from the
Haskell base library.

It is recommended to create a concrete type alias in your code when using this
package, i.e.:

> import qualified Data.HashTable.IO as H
>
> type HashTable k v = H.BasicHashTable k v
>
> foo :: IO (HashTable Int Int)
> foo = do
>     ht <- H.new
>     H.insert ht 1 1
>     return ht

Firstly, this makes it easy to switch to a different hash table implementation,
and secondly, using a concrete type rather than leaving your functions abstract
in the HashTable class should allow GHC to optimize away the typeclass
dictionaries.

This package accepts a couple of different cabal flags:

* @@unsafe-tricks@@, default /ON/. If this flag is enabled, we use some
unsafe GHC-specific tricks to save indirections (namely @@unsafeCoerce#@@
and @@reallyUnsafePtrEquality#@@. These techniques rely on assumptions
about the behaviour of the GHC runtime system and, although they've been
tested and should be safe under normal conditions, are slightly
dangerous. Caveat emptor. In particular, these techniques are
incompatible with HPC code coverage reports.

* @@sse42@@, default /OFF/. If this flag is enabled, we use some SSE 4.2
instructions (see <http://en.wikipedia.org/wiki/SSE4>, first available on
Intel Core 2 processors) to speed up cache-line searches for cuckoo
hashing.

* @@bounds-checking@@, default /OFF/. If this flag is enabled, array accesses
are bounds-checked.

* @@debug@@, default /OFF/. If turned on, we'll rudely spew debug output to
stdout.

* @@portable@@, default /OFF/. If this flag is enabled, we use only pure
Haskell code and try not to use unportable GHC extensions. Turning this
flag on forces @@unsafe-tricks@@ and @@sse42@@ /OFF/.

Please send bug reports to
<https://github.com/gregorycollins/hashtables/issues>.")
    (license license:bsd-3)))

haskell-9.2-hashtables

(define-public haskell-9.2-haskey-btree
  (package
    (name "haskell-9.2-haskey-btree")
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
                     haskell-9.2-data-ordlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-haskey/haskey-btree")
    (synopsis "B+-tree implementation in Haskell.")
    (description
     "This package provides two B+-tree implementations. The first one is a pure
B+-tree of a specific order, while the second one is an impure one backed
by a page allocator.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey-btree>")
    (license license:bsd-3)))

haskell-9.2-haskey-btree

(define-public haskell-9.2-highlighting-kate
  (package
    (name "haskell-9.2-highlighting-kate")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/highlighting-kate/highlighting-kate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bqv00gfmrsf0jjr4qf3lhshvfkyzmhbi3pjb6mafbnsyn2k7f6q"))))
    (properties `((upstream-name . "highlighting-kate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-pcre-light")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/highlighting-kate")
    (synopsis "Syntax highlighting")
    (description "highlighting-kate is a syntax highlighting library
with support for nearly one hundred languages. The syntax
parsers are automatically generated from Kate
syntax descriptions (<http://kate-editor.org/>),
so any syntax supported by Kate can be added.
An (optional) command-line program is provided, along
with a utility for generating new parsers from Kate
XML syntax descriptions.
__This library has been deprecated.
Please use skylighting instead.__")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-highlighting-kate

(define-public haskell-9.2-hspec
  (package
    (name "haskell-9.2-hspec")
    (version "2.9.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hspec/hspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "092sfqjkargxxszp9jjqa8ldjz0xv34jwn6k21q59ys5ckvsrpc1"))))
    (properties `((upstream-name . "hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "Hspec is a testing framework for Haskell.  Some of Hspec's distinctive
features are:

* a friendly DSL for defining tests

* integration with QuickCheck, SmallCheck, and HUnit

* parallel test execution

* automatic discovery of test files

The Hspec Manual is at <http://hspec.github.io/>.")
    (license license:expat)))

haskell-9.2-hspec

(define-public haskell-9.2-hspec-contrib
  (package
    (name "haskell-9.2-hspec-contrib")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-contrib/hspec-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nyb5n2jiq920yyf3flzyxrs5xpfyppl3jn18zhviyysjjk5drpx"))))
    (properties `((upstream-name . "hspec-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)))
    (home-page "http://hspec.github.io/")
    (synopsis "Contributed functionality for Hspec")
    (description "Contributed functionality for Hspec")
    (license license:expat)))

haskell-9.2-hspec-contrib

(define-public haskell-9.2-lapack-carray
  (package
    (name "haskell-9.2-lapack-carray")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-carray/lapack-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4dwkdk6m5ran92j7k9yxqin1spgx8sg0bi2kfn1pcs6jzgn3si"))))
    (properties `((upstream-name . "lapack-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1awpjmazz5vz95zzfxflcmivs2ga2jknr53rbgkakfkr5hcqnq1b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-carray)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-netlib-carray)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/lapack-carray/")
    (synopsis "Auto-generated interface to Fortran LAPACK via CArrays")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

The functions are all in IO monad because they are auto-generated and
we cannot make sure automatically that unsafePerformIO is always safe.
Instead of raw pointers we use CArrays and IOCArrays
and assign and check array bounds to LAPACK function parameters,
as far we can retrieve this information from the FORTRAN comments.
We check consistency of dimensions where consistent dimensions are required,
but we cannot do all kind of bound checks.
We use immutable CArray for input and output parameters
and mutable IOCArray for input/output parameters.
LAPACK plays some nasty tricks of in-place array updates
on input/output arrays
even if the dimensions of input and output array differ (see e.g. GELS).
The wrappers also manage allocation of memory for function parameters.
This is necessary since FORTRAN passes all parameters by reference.
Further on, the wrappers convert from Haskell values like @@Int@@
to low-level values like @@CInt@@.

We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS, but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-9.2-lapack-carray

(define-public haskell-9.2-libBF
  (package
    (name "haskell-9.2-libBF")
    (version "0.6.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libBF/libBF-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l5qpdzzld6drbnh2lax5dw5whqbadr93lkps85m81xlsa5vvrin"))))
    (properties `((upstream-name . "libBF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-system-libbf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/libBF")
    (synopsis "A binding to the libBF library.")
    (description "LibBF is a C library for working with arbitray precision
IEEE 754 floating point numbers.")
    (license license:expat)))

haskell-9.2-libBF

(define-public haskell-9.2-netlib-comfort-array
  (package
    (name "haskell-9.2-netlib-comfort-array")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-comfort-array/netlib-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mwgdll9m0ryy5y1385sx2asff98kqfkz4bif8s4i0dkrqalsfx4"))))
    (properties `((upstream-name . "netlib-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sl8xf5rgf4g5is5kfr6sai9i5mkw46391zv7j7v2zfw36iwx8i9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-comfort-array)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)))
    (home-page "https://hub.darcs.net/thielema/netlib-comfort-array/")
    (synopsis "Helper modules for comfort-array wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-comfort-array@@ and @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-9.2-netlib-comfort-array

(define-public haskell-9.2-netwire-input-glfw
  (package
    (name "haskell-9.2-netwire-input-glfw")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netwire-input-glfw/netwire-input-glfw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sizk0c8mbm6ad984gaf933h1bg4dgwi9k8hzrm9wp5rwbqjvcz8"))))
    (properties `((upstream-name . "netwire-input-glfw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-GLFW-b)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-OpenGL)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-netwire)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-netwire-input)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://www.github.com/Mokosha/netwire-input-glfw")
    (synopsis "GLFW instance of netwire-input")
    (description "This package contains the necessary glue to allow the use
of wires from the netwire-input package. In general, the
types associated here should be used only sparingly to
plumb the input state through your netwire program.
Otherwise, the state should not be modified directly.")
    (license license:expat)))

haskell-9.2-netwire-input-glfw

(define-public haskell-9.2-network-transport
  (package
    (name "haskell-9.2-network-transport")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport/network-transport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10ichr66j06w2sdx5523rjvwf17cxhl5iw6izw7l066lrbzkr270"))))
    (properties `((upstream-name . "network-transport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Network abstraction layer")
    (description
     "\"Network.Transport\" is a Network Abstraction Layer which provides
the following high-level concepts:

* Nodes in the network are represented by 'EndPoint's. These are
heavyweight stateful objects.

* Each 'EndPoint' has an 'EndPointAddress'.

* Connections can be established from one 'EndPoint' to another
using the 'EndPointAddress' of the remote end.

* The 'EndPointAddress' can be serialised and sent over the
network, whereas 'EndPoint's and connections cannot.

* Connections between 'EndPoint's are unidirectional and lightweight.

* Outgoing messages are sent via a 'Connection' object that
represents the sending end of the connection.

* Incoming messages for /all/ of the incoming connections on
an 'EndPoint' are collected via a shared receive queue.

* In addition to incoming messages, 'EndPoint's are notified of
other 'Event's such as new connections or broken connections.

This design was heavily influenced by the design of the Common
Communication Interface
(<http://www.olcf.ornl.gov/center-projects/common-communication-interface>).
Important design goals are:

* Connections should be lightweight: it should be no problem to
create thousands of connections between endpoints.

* Error handling is explicit: every function declares as part of
its type which errors it can return (no exceptions are thrown)

* Error handling is \"abstract\": errors that originate from
implementation specific problems (such as \"no more sockets\" in
the TCP implementation) get mapped to generic errors
(\"insufficient resources\") at the Transport level.

This package provides the generic interface only; you will
probably also want to install at least one transport
implementation (network-transport-*).")
    (license license:bsd-3)))

haskell-9.2-network-transport

(define-public haskell-9.2-opentelemetry
  (package
    (name "haskell-9.2-opentelemetry")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry/opentelemetry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05g4jc2cpcj1fa50hvzai4wqczjjb2vyxmxi1hpf26yyfqw1rgz9"))))
    (properties `((upstream-name . "opentelemetry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-trace-events)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/opentelemetry")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.2-opentelemetry

(define-public haskell-9.2-pasta-curves
  (package
    (name "haskell-9.2-pasta-curves")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pasta-curves/pasta-curves-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0918mg7g4gf35s2srcyjk0s6wk5an1qqw74r3z42livda0srfqb2"))))
    (properties `((upstream-name . "pasta-curves") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nccgroup/pasta-curves")
    (synopsis
     "Provides the Pasta curves: Pallas, Vesta and their field elements Fp and Fq.")
    (description
     "Provides the Pasta curves: Pallas, Vesta and their field elements Fp and Fq.
See the PastaCurves module below and/or the GitHub repository README.md for more details.")
    (license license:expat)))

haskell-9.2-pasta-curves

(define-public haskell-9.2-proto-lens-protoc
  (package
    (name "haskell-9.2-proto-lens-protoc")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protoc/proto-lens-protoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wl081xckv0pg2h25gb4fyafw03fq5hrm6shc658k8z8pi3jnh8c"))))
    (properties `((upstream-name . "proto-lens-protoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ghc-source-gen)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-proto-lens)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-proto-lens-runtime)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Protocol buffer compiler for the proto-lens library.")
    (description
     "Turn protocol buffer files (.proto) into Haskell files (.hs) which can be used with the proto-lens package.
The library component of this package contains compiler code (namely Data.ProtoLens.Compiler.*) is not guaranteed to have stable APIs.'")
    (license license:bsd-3)))

haskell-9.2-proto-lens-protoc

(define-public haskell-9.2-protocol-radius
  (package
    (name "haskell-9.2-protocol-radius")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius")
    (synopsis "parser and printer for radius protocol packet")
    (description "This package provides
parser and printer for radius protocol packet.")
    (license license:bsd-3)))

haskell-9.2-protocol-radius

(define-public haskell-9.2-psqueues
  (package
    (name "haskell-9.2-psqueues")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-psqueues

(define-public haskell-9.2-range-set-list
  (package
    (name "haskell-9.2-range-set-list")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/range-set-list/range-set-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m8c8qhpk9vaykqfy6gsv1csmvdclm27zv9l56ipv152k75xks0j"))))
    (properties `((upstream-name . "range-set-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "17wbbhjlcbyz9qil2z2s6nwk7mdfck1lkx5jqrdsavwbrzza6xzr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/range-set-list#readme")
    (synopsis "Memory efficient sets with ranges of elements.")
    (description
     "Memory efficient sets with continuous ranges of discrete, bounded elements. List- and map-based implementations. Interface mimics 'Data.Set' where possible.")
    (license license:expat)))

haskell-9.2-range-set-list

(define-public haskell-9.2-reform-blaze
  (package
    (name "haskell-9.2-reform-blaze")
    (version "0.2.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-blaze/reform-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cf1nimvkpag4fqs9jk17cl0h9wkpv2lcq5m1l704pznms22s7c7"))))
    (properties `((upstream-name . "reform-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-reform)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using blaze-html with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with blaze-html.")
    (license license:bsd-3)))

haskell-9.2-reform-blaze

(define-public haskell-9.2-renderable
  (package
    (name "haskell-9.2-renderable")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/renderable/renderable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1idn0jg74wm3ksy5n4jk2dzsij64r1byghr6qc03g4d85n6mmsni"))))
    (properties `((upstream-name . "renderable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/schell/renderable")
    (synopsis "An API for managing renderable resources.")
    (description
     "The `renderable` package provides a method for managing resources
of a rendering system. Resources are allocated according to a strategy and
released automatically when your renderable data changes. These changes are
detected during each draw call based on the hash of your renderable
datatype.
This package is meant to be pulled in as a portion of your rendering system.
It aims to ease the task of managing allocation of resources over time as
the value of your renderable datatype changes.")
    (license license:expat)))

haskell-9.2-renderable

(define-public haskell-9.2-resource-pool
  (package
    (name "haskell-9.2-resource-pool")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/bos/pool")
    (synopsis "A high-performance striped resource pooling implementation")
    (description "A high-performance striped pooling abstraction for managing
flexibly-sized collections of resources such as database
connections.")
    (license license:bsd-3)))

haskell-9.2-resource-pool

(define-public haskell-9.2-riak-protobuf
  (package
    (name "haskell-9.2-riak-protobuf")
    (version "0.25.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/riak-protobuf/riak-protobuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r4rhgdwr2pnr01szdci8l0nmf0fd1vbj8a323lj946rj472kxri"))))
    (properties `((upstream-name . "riak-protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-proto-lens)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-proto-lens-runtime)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/riak-haskell-client/riak-haskell-client")
    (synopsis "Haskell types for the Riak protocol buffer API")
    (description
     "A set of Haskell types for interacting with the protocol buffer
API of the Riak decentralized data store.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-riak-protobuf

(define-public haskell-9.2-scientific
  (package
    (name "haskell-9.2-scientific")
    (version "0.3.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scientific/scientific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aa3ngb71l2sh1x2829napnr1w285q0sn2f7z2wvi3ynng2238d3"))))
    (properties `((upstream-name . "scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder" "-f-integer-simple")
       #:cabal-revision
       ("5" "149d776lnss2ggsv3qpsdbx1vvi57m2q2401d19k8fln0s8i1n16")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/basvandijk/scientific")
    (synopsis "Numbers represented using scientific notation")
    (description
     "\"Data.Scientific\" provides the number type 'Scientific'. Scientific numbers are
arbitrary precision and space efficient. They are represented using
<http://en.wikipedia.org/wiki/Scientific_notation scientific notation>.
The implementation uses a coefficient @@c :: 'Integer'@@ and a base-10 exponent
@@e :: 'Int'@@. A scientific number corresponds to the
'Fractional' number: @@'fromInteger' c * 10 '^^' e@@.

Note that since we're using an 'Int' to represent the exponent these numbers
aren't truly arbitrary precision. I intend to change the type of the exponent
to 'Integer' in a future release.

The main application of 'Scientific' is to be used as the target of parsing
arbitrary precision numbers coming from an untrusted source. The advantages
over using 'Rational' for this are that:

* A 'Scientific' is more efficient to construct. Rational numbers need to be
constructed using '%' which has to compute the 'gcd' of the 'numerator' and
'denominator'.

* 'Scientific' is safe against numbers with huge exponents. For example:
@@1e1000000000 :: 'Rational'@@ will fill up all space and crash your
program. Scientific works as expected:

>>> read \"1e1000000000\" :: Scientific
1.0e1000000000

* Also, the space usage of converting scientific numbers with huge exponents to
@@'Integral's@@ (like: 'Int') or @@'RealFloat's@@ (like: 'Double' or 'Float')
will always be bounded by the target type.")
    (license license:bsd-3)))

haskell-9.2-scientific

(define-public haskell-9.2-strict-tuple
  (package
    (name "haskell-9.2-strict-tuple")
    (version "0.1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-tuple/strict-tuple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15ss649nhq2nxmdssdmi6sv9d40szvzww7vgrrp2rm1c904y0ky8"))))
    (properties `((upstream-name . "strict-tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/strict-tuple")
    (synopsis "Strict tuples")
    (description "Strict tuples.")
    (license license:bsd-3)))

haskell-9.2-strict-tuple

(define-public haskell-9.2-tagged-binary
  (package
    (name "haskell-9.2-tagged-binary")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-binary/tagged-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nv41x5ijw5wdb2nyfgxyspbgmk9qisp32fs1izzp3c3jl4smkvj"))))
    (properties `((upstream-name . "tagged-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-pureMD5)))
    (home-page "https://hackage.haskell.org/package/tagged-binary")
    (synopsis "Provides tools for serializing data tagged with type
information.")
    (description "Very minimal library providing tools for serializing and
decoding data into 'ByteString' tagged with information
about its type, inspired by Cloud Haskell and
distributed-process.

Intended for use by libraries and frameworks in
distributed contexts, such as distributed computation
between native servers and communication between native
servers and ghcjs/various front-ends, for behavior
similar to the polymorphic communication channels of
Cloud Haskell and distributed-process; servers can send
tagged data, and clients can choose to selectively
accept, ignore or queue incoming messages depending on
their types.

For basic encoding, decoding and categorization, only
'Data.Binary.Tagged' should be necessary.
'Data.Binary.Tagged.Internal' is exported in case you
need it.

Quick example:

> > let x = encodeTagged (1 :: Int)
> > decodeTagged x :: Maybe Bool
> Nothing
> > decodeTagged x :: Maybe Int
> Just 1")
    (license license:expat)))

haskell-9.2-tagged-binary

(define-public haskell-9.2-text-short
  (package
    (name "haskell-9.2-text-short")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/text-short")
    (synopsis "Memory-efficient representation of Unicode text strings")
    (description
     "This package provides the 'ShortText' type which is suitable for keeping many short strings in memory. This is similiar to how 'ShortByteString' relates to 'ByteString'.

The main difference between 'Text' and 'ShortText' is that 'ShortText' doesn't support zero-copy slicing (thereby saving 2 words), and, compared to text-1.*, that it uses UTF-8 instead of UTF-16 internally. Consequently, the memory footprint of a (boxed) 'ShortText' value is 4 words (2 words when unboxed) plus the length of the UTF-8 encoded payload.")
    (license license:bsd-3)))

haskell-9.2-text-short

(define-public haskell-9.2-these
  (package
    (name "haskell-9.2-these")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fassoc")
       #:cabal-revision
       ("6" "12ll5l8m482qkb8zn79vx51bqlwc89fgixf8jv33a32b4qzc3499")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-assoc)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-these

(define-public haskell-9.2-time-compat
  (package
    (name "haskell-9.2-time-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-time-compat

(define-public haskell-9.2-triplesec
  (package
    (name "haskell-9.2-triplesec")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/triplesec/triplesec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wfrb1qkisbypfw4djm2cwlzrb1xhmkkv6cy8wyxvyrhqs5zzdrs"))))
    (properties `((upstream-name . "triplesec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1axxq9q33jf79lv0ydwai24bgczvn4pdxw6a7sk3715js2di6xgn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/SamProtas/hs-triplesec")
    (synopsis
     "TripleSec is a simple, triple-paranoid, symmetric encryption library")
    (description
     "Additional details about this protocol can be found at the official website: <https://keybase.io/triplesec>

A tutorial for how to use this library can be found in @@ Crypto.TripleSec.Tutorial @@")
    (license license:bsd-3)))

haskell-9.2-triplesec

(define-public haskell-9.2-ttrie
  (package
    (name "haskell-9.2-ttrie")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttrie/ttrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w875avd1hh2zrg52p7ynnnwkg0v9n1i4imcqwamfycasz4yy3py"))))
    (properties `((upstream-name . "ttrie") (hidden? . #f)))
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
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-ttrie

(define-public haskell-9.2-unique
  (package
    (name "haskell-9.2-unique")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unique/unique-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dgln2dr64ma1isqskj1qnjslg9smmr7jssg8hmk68wp36i3rwkd"))))
    (properties `((upstream-name . "unique") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l95cgs8hbvakrcqzqk5l9rkz3cr3jnnszq7pgjnxrqfhgsp58r7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/unique/")
    (synopsis "Fully concurrent unique identifiers")
    (description "Fully concurrent unique identifiers.")
    (license license:bsd-3)))

haskell-9.2-unique

(define-public haskell-9.2-unordered-containers
  (package
    (name "haskell-9.2-unordered-containers")
    (version "0.2.19.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unordered-containers/unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1li8s6qw8mgv6a7011y7hg0cn2nllv2g9sr9c1xb48nmw32vw9qv"))))
    (properties `((upstream-name . "unordered-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("2" "005avgikg676gc2pw1sqia61nypx2wajdqghsjqkfg4i5qn9gn4s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/haskell-unordered-containers/unordered-containers")
    (synopsis "Efficient hashing-based container types")
    (description
     "Efficient hashing-based container types.  The containers have been
optimized for performance critical use, both in terms of large data
quantities and high speed.

The declared cost of each operation is either worst-case or
amortized, but remains valid even if structures are shared.

/Security/

This package currently provides no defenses against hash collision attacks
such as HashDoS.
Users who need to store input from untrusted sources are advised to use
@@Data.Map@@ or @@Data.Set@@ from the @@containers@@ package instead.")
    (license license:bsd-3)))

haskell-9.2-unordered-containers

(define-public haskell-9.2-uuid-types
  (package
    (name "haskell-9.2-uuid-types")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uuid-types/uuid-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pd7xd6inkmmwjscf7pmiwqjks9y0gi1p8ahqbapvh34gadvhs5d"))))
    (properties `((upstream-name . "uuid-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "10hpjshw6z8xnjpga47cazfdd4i27qvy4ash13lza2lmwf36k9ww")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/uuid")
    (synopsis "Type definitions for Universally Unique Identifiers")
    (description
     "This library contains type definitions for
<https://en.wikipedia.org/wiki/UUID Universally Unique Identifiers (UUID)>
(as specified in
<http://tools.ietf.org/html/rfc4122 RFC 4122>)
and basic conversion functions.

See also the <https://hackage.haskell.org/package/uuid 'uuid' package>
providing a high-level API for managing the different UUID versions.")
    (license license:bsd-3)))

haskell-9.2-uuid-types

(define-public haskell-9.2-vivid
  (package
    (name "haskell-9.2-vivid")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vivid/vivid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p4x6q2ks259xzigj31f8bz3562k07dzj77a9bnhl934sl85hz6q"))))
    (properties `((upstream-name . "vivid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vivid-osc)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-vivid-supercollider)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vivid")
    (synopsis "Sound synthesis with SuperCollider")
    (description
     "Music and sound synthesis with SuperCollider.

Example usage (after installing and booting SuperCollider):

@@
&#123;&#45;\\# LANGUAGE DataKinds, ExtendedDefaultRules \\#&#45;&#125;
@@

> import Vivid
>
> playSong :: VividAction m => m ()
> playSong = do
>    fork $ do
>       s0 <- synth theSound (36 ::I \"note\")
>       wait 1
>       free s0
>    s1 <- synth theSound (60 ::I \"note\")
>    forM_ [62,66,64] $ \\note -> do
>       wait (1/4)
>       set s1 (note ::I \"note\")
>    wait (1/4)
>    free s1
>
> theSound :: SynthDef '[\"note\"]
> theSound = sd (0 ::I \"note\") $ do
>    wobble <- sinOsc (freq_ 5) ? KR ~* 10 ~+ 10
>    s <- 0.1 ~* sinOsc (freq_ $ midiCPS (V::V \"note\") ~+ wobble)
>    out 0 [s,s]
>
> main :: IO ()
> main = do
>    putStrLn \"Simplest:\"
>    playSong
>
>    putStrLn \"With precise timing:\"
>    doScheduledIn 0.1 playSong
>    wait 1
>
>    putStrLn \"Written to a file, non-realtime synthesis:\"
>    putStrLn \"(Need to quit the running server for NRT)\"
>    quitSCServer
>    writeNRT \"song.wav\" playSong")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-vivid

(define-public haskell-9.2-wide-word
  (package
    (name "haskell-9.2-wide-word")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wide-word/wide-word-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jajlkcbymf0jqmcbn46x3yxqxjslzdcnp1v582jjpa2glibsnf0"))))
    (properties `((upstream-name . "wide-word") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-wide-word

(define-public haskell-9.2-x509
  (package
    (name "haskell-9.2-x509")
    (version "1.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zk8lll1hmzl5xvrd16dhyz25151y59xhsqp2mm1wgymwl7r5ijr"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-asn1-parse)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-9.2-x509

