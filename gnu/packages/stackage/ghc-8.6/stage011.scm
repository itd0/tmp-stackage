;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage011)
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
(define-public haskell-8.6-Clipboard
  (package
    (name "haskell-8.6-Clipboard")
    (version "2.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Clipboard/Clipboard-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dr5ifmy5azib140bri9rzlq69jic430v9cv372jb42r78cci0iz"))))
    (properties `((upstream-name . "Clipboard") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-X11)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "http://haskell.org/haskellwiki/Clipboard")
    (synopsis "System clipboard interface.")
    (description
     "/Clipboard/ is a library for easily interfacing with the system clipboard with additional unicode support.
Currently, only in a Windows or GNU/Linux (X11) system.

For example, if you type:

> $ setClipboardString \"Hello, World!\"

Then you have @@\\\"Hello, World!\\\"@@ available to be pasted wherever you want.

Now, if you type:

> $ modifyClipboardString reverse

You will have @@\\\"!dlroW ,olleH\\\"@@ in your clipboard. So:

> $ getClipboardString
> \"!dlroW ,olleH\"

The X11 version depends on the @@X11@@ package, so you will need the X11 development library
available on your system at compile time. You can install it by @@sudo apt-get install libxrandr-dev@@
(or the equivalent on your system).")
    (license license:bsd-3)))

haskell-8.6-Clipboard

(define-public haskell-8.6-Earley
  (package
    (name "haskell-8.6-Earley")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-ListLike)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-8.6-Earley

(define-public haskell-8.6-GLUT
  (package
    (name "haskell-8.6-GLUT")
    (version "2.7.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLUT/GLUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0271vnf6wllhxjwy0m348x90kv27aybxcbqkkglmd5w4cpwjg5g9"))))
    (properties `((upstream-name . "GLUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-OpenGL)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL Utility Toolkit")
    (description
     "A Haskell binding for the OpenGL Utility Toolkit, a window system independent
toolkit for writing OpenGL programs. For more information about the C library
on which this binding is based, please see:
<http://www.opengl.org/resources/libraries/glut/>.")
    (license license:bsd-3)))

haskell-8.6-GLUT

(define-public haskell-8.6-Hoed
  (package
    (name "haskell-8.6-Hoed")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Hoed/Hoed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rzlqd1sha6p1cw5w0gpf1w7qsmc6088sjnq1kq44mp12ybxrxm8"))))
    (properties `((upstream-name . "Hoed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-cereal-text)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-cereal-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-libgraph)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-open-browser)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-regex-tdfa-text)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-strict)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-terminal-size)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-vector-th-unbox)))
    (home-page "https://github.com/MaartenFaddegon/Hoed")
    (synopsis "Lightweight algorithmic debugging.")
    (description
     "Hoed is a tracer and debugger for the programming language Haskell.

To locate a defect with Hoed you annotate suspected functions and compile as usual. Then you run your program, information about the annotated functions is collected. Finally you connect to a debugging session.
")
    (license license:bsd-3)))

haskell-8.6-Hoed

(define-public haskell-8.6-Imlib
  (package
    (name "haskell-8.6-Imlib")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Imlib/Imlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "075x1vcrxdwknzbad05l08i5c79svf714yvv6990ffvsfykiilry"))))
    (properties `((upstream-name . "Imlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-X11)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages image) imlib2)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://hackage.haskell.org/package/Imlib")
    (synopsis "")
    (description "Haskell binding for Imlib 2")
    (license license:bsd-3)))

haskell-8.6-Imlib

(define-public haskell-8.6-OpenAL
  (package
    (name "haskell-8.6-OpenAL")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ObjectName)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-OpenGL)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)
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

haskell-8.6-OpenAL

(define-public haskell-8.6-X11-xft
  (package
    (name "haskell-8.6-X11-xft")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/X11-xft/X11-xft-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lgqb0s2qfwwgbvwxhjbi23rbwamzdi0l0slfr20c3jpcbp3zfjf"))))
    (properties `((upstream-name . "X11-xft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-X11)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages xorg) libxft)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://hackage.haskell.org/package/X11-xft")
    (synopsis
     "Bindings to the Xft, X Free Type interface library, and some Xrender parts")
    (description
     "Bindings to the Xft, X Free Type interface library, and some Xrender parts")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-X11-xft

(define-public haskell-8.6-bifunctors
  (package
    (name "haskell-8.6-bifunctors")
    (version "5.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bifunctors/bifunctors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cimvd64jzd6dyxjw2kx8wqhd1x0z89pj0ppmsikj4afa3aa5cw8"))))
    (properties `((upstream-name . "bifunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")
       #:cabal-revision
       ("2" "0w7fscgxin56pcl2p04gbvd5g2y5pk0dg1cx9qrxwshn1x30gn8r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://github.com/ekmett/bifunctors/")
    (synopsis "Bifunctors")
    (description "Bifunctors.")
    (license license:bsd-3)))

haskell-8.6-bifunctors

(define-public haskell-8.6-blas-carray
  (package
    (name "haskell-8.6-blas-carray")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-blas-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-carray)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-netlib-carray)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
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

haskell-8.6-blas-carray

(define-public haskell-8.6-blas-comfort-array
  (package
    (name "haskell-8.6-blas-comfort-array")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-comfort-array/blas-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9w905ppb08w0d8xbxvgipr9fv1iapwq3ybvk0dbj009w341kd1"))))
    (properties `((upstream-name . "blas-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-blas-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-comfort-array)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/blas-comfort-array/")
    (synopsis "Auto-generated interface to Fortran BLAS via comfort-array")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

See also package @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-8.6-blas-comfort-array

(define-public haskell-8.6-bounded-queue
  (package
    (name "haskell-8.6-bounded-queue")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://gitlab.com/fosskers/bounded-queue")
    (synopsis "A strict, immutable, thread-safe, single-ended, bounded queue.")
    (description
     "A strict, immutable, thread-safe, single-ended, bounded queue
which automatically forgets old values instead of blocking.")
    (license license:bsd-3)))

haskell-8.6-bounded-queue

(define-public haskell-8.6-bytestring-conversion
  (package
    (name "haskell-8.6-bytestring-conversion")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-conversion/bytestring-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y2fhwz632sp7n0iw87lz2g8vks4jgxz2kw99kysgivxfd4fmdqk"))))
    (properties `((upstream-name . "bytestring-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x8c42cfzb6fdvgkxxdxcpdf16csimlzsgahb1axnplmr6b3ba63")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-double-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/twittner/bytestring-conversion/")
    (synopsis "Type-classes to convert values to and from ByteString.")
    (description "Defines the type-classes 'ToByteString' and 'FromByteString'
to convert values to and from ByteString.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.6-bytestring-conversion

(define-public haskell-8.6-casing
  (package
    (name "haskell-8.6-casing")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/casing")
    (synopsis "Convert between various source code casing conventions")
    (description
     "Converts between camelCase, PascalCase, kebab-case, and three
flavors of snake_case.")
    (license license:expat)))

haskell-8.6-casing

(define-public haskell-8.6-connection-pool
  (package
    (name "haskell-8.6-connection-pool")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection-pool/connection-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lvkcsd042s936fj5c9y5gg4iiq09n42adkv8q2rnwcbd6vl7kzj"))))
    (properties `((upstream-name . "connection-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-between)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/trskop/connection-pool")
    (synopsis
     "Connection pool built on top of resource-pool and streaming-commons.")
    (description
     "Connection poll is a family of specialised resource pools. Currently package
provides two variants:

1. pool for TCP client connections,

2. and pool for UNIX Sockets client connections.

In addition it can be used to build your own connection pool using provided
primitives.

This package is built on top of
<http://hackage.haskell.org/package/resource-pool resource-pool> and
<http://hackage.haskell.org/package/streaming-commons streaming-commons>.
The later allows us to use
<http://hackage.haskell.org/package/conduit-extra conduit-extra> package
for implementation of TCP or UNIX Sockets clients.

For examples and other details see documentation in \"Data.ConnectionPool\"
module.")
    (license license:bsd-3)))

haskell-8.6-connection-pool

(define-public haskell-8.6-cookie
  (package
    (name "haskell-8.6-cookie")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cookie/cookie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10rmdasb7mypbwxdj2mhr810vqhkakpik7hyd8fvj60hng8r8zvh"))))
    (properties `((upstream-name . "cookie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-8.6-cookie

(define-public haskell-8.6-cql
  (package
    (name "haskell-8.6-cql")
    (version "4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cql/cql-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0b6806ahmg4yacx5wc4v53gihhkwywajhqm13kb11nxabww3lapl"))))
    (properties `((upstream-name . "cql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-incompatible-varint")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-Decimal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-iproute)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://gitlab.com/twittner/cql/")
    (synopsis "Cassandra CQL binary protocol.")
    (description
     "Implementation of Cassandra's CQL Binary Protocol
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v3.spec Version 3>
and
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v4.spec Version 4>.

It provides encoding and decoding functionality as well as representations
of the various protocol related types.

Thus it can serve as a building block for writing Cassandra drivers, such
as <http://hackage.haskell.org/package/cql-io cql-io>.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-cql

(define-public haskell-8.6-data-bword
  (package
    (name "haskell-8.6-data-bword")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-bword/data-bword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zfvk7b7qi6inra0kc03rhsic2rj0818n4i03lfwzvb5g22izw3h"))))
    (properties `((upstream-name . "data-bword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-8.6-data-bword

(define-public haskell-8.6-di-core
  (package
    (name "haskell-8.6-di-core")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-core/di-core-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wrj2ndzk9r7izjvwkjjmqb3gg1zy93ch7j7fdalzadzzsd4sqsm"))))
    (properties `((upstream-name . "di-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging without monad towers.")
    (description
     "Typeful hierarchical structured logging without monad towers.")
    (license license:bsd-3)))

haskell-8.6-di-core

(define-public haskell-8.6-diagrams-solve
  (package
    (name "haskell-8.6-diagrams-solve")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-solve/diagrams-solve-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17agchqkmj14b17sw50kzxq4hm056g5d8yy0wnqn5w8h1d0my7x4"))))
    (properties `((upstream-name . "diagrams-solve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1yl8cs05fzqcz49p601am1ij66m9pa70yamhfxgcvya2pf8nimlf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-8.6-diagrams-solve

(define-public haskell-8.6-eliminators
  (package
    (name "haskell-8.6-eliminators")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kqgfsa736sahcsgsjgyh7h1lwxzyn4z85klybmj7gffg9lz4rl1"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-singleton-nats)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-singletons)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-th-desugar)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-8.6-eliminators

(define-public haskell-8.6-enclosed-exceptions
  (package
    (name "haskell-8.6-enclosed-exceptions")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enclosed-exceptions/enclosed-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fghjj7nkiddrf03ks8brjpr5x25yi9fs7xg6adbi4mc2gqr6vdg"))))
    (properties `((upstream-name . "enclosed-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/jcristovao/enclosed-exceptions")
    (synopsis "Catching all exceptions from within an enclosed computation")
    (description
     "Catching all exceptions raised within an enclosed computation,
while remaining responsive to (external) asynchronous exceptions.
For more information on the technique, please see:
<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>")
    (license license:expat)))

haskell-8.6-enclosed-exceptions

(define-public haskell-8.6-flay
  (package
    (name "haskell-8.6-flay")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flay/flay-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vqkjjf2bzmi489wsx23ryyplbg26q9qrzb98dz80j5b5rj3xzq1"))))
    (properties `((upstream-name . "flay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/k0001/flay")
    (synopsis
     "Work generically on your datatype without knowing its shape nor its contents.")
    (description
     "Work generically on your datatype without knowing its shape nor its contents using
a principlied approach.")
    (license license:bsd-3)))

haskell-8.6-flay

(define-public haskell-8.6-free-vl
  (package
    (name "haskell-8.6-free-vl")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://github.com/aaronlevin/free-vl")
    (synopsis "van Laarhoven encoded Free Monad with Extensible Effects")
    (description
     "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.

For more information on the van Laarhoven Free Monads, including examples,
please see the following blog posts:

Initial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>

Adding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>")
    (license license:bsd-3)))

haskell-8.6-free-vl

(define-public haskell-8.6-fuzzcheck
  (package
    (name "haskell-8.6-fuzzcheck")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzcheck/fuzzcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qfr4f0b50l368b45yzwhqd4g2y1kvfrfj4hr84cdxcwdrwn9mpc"))))
    (properties `((upstream-name . "fuzzcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "https://github.com/fpco/fuzzcheck")
    (synopsis "A simple checker for stress testing monadic code")
    (description "A simple checker for stress testing monadic code")
    (license license:bsd-3)))

haskell-8.6-fuzzcheck

(define-public haskell-8.6-galois-field
  (package
    (name "haskell-8.6-galois-field")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/galois-field/galois-field-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c4n37rf6kfpyxdmqk4hdgmjc8fvxwynq0izgrhrqinv4z4l97v7"))))
    (properties `((upstream-name . "galois-field") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jdj64bgp1339br3nimvi5vq14c23pzz477v153h7xra2gnl9nbk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-wl-pprint-text)))
    (home-page "https://github.com/adjoint-io/galois-field#readme")
    (synopsis "Galois field library")
    (description
     "An efficient implementation of Galois fields used in cryptography research")
    (license license:expat)))

haskell-8.6-galois-field

(define-public haskell-8.6-genvalidity-bytestring
  (package
    (name "haskell-8.6-genvalidity-bytestring")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00ps3aq4dz1id3k50kwqbkng7ygs8yb8fmz7yv9s4byrf5gh7kpq"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-bytestring

(define-public haskell-8.6-genvalidity-containers
  (package
    (name "haskell-8.6-genvalidity-containers")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ql8fmy6vpp0w52kkihfc3xzqsm4gdfm1j7mshirdw8vwa7y441q"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-genvalidity-containers

(define-public haskell-8.6-genvalidity-hspec-binary
  (package
    (name "haskell-8.6-genvalidity-hspec-binary")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "144gcr9hm89aqwr0fglnazc5biksdd7sv7qh0ivh56x7v80wd3r9"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-8.6-genvalidity-hspec-binary

(define-public haskell-8.6-genvalidity-hspec-cereal
  (package
    (name "haskell-8.6-genvalidity-hspec-cereal")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dyfx56cjila3l1nv199p12pi90hi9x27a97h5kqrkaxx5ca3czb"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-hspec-cereal

(define-public haskell-8.6-genvalidity-hspec-hashable
  (package
    (name "haskell-8.6-genvalidity-hspec-hashable")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ia1kvr4by2yfzdrk89da028aqpqx4sp3lllra147q7bpjys0kry"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-8.6-genvalidity-hspec-hashable

(define-public haskell-8.6-genvalidity-hspec-optics
  (package
    (name "haskell-8.6-genvalidity-hspec-optics")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-optics/genvalidity-hspec-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mh9s6q3zii6dpkli4zbmz89wly6bjfalvgs7jh5fvg36wv0c0a8"))))
    (properties `((upstream-name . "genvalidity-hspec-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-8.6-genvalidity-hspec-optics

(define-public haskell-8.6-genvalidity-scientific
  (package
    (name "haskell-8.6-genvalidity-scientific")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1slcalgm79y7m5albya4n8bwv4721crr19iwvqkdy806rwr67dx9"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-scientific)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-scientific

(define-public haskell-8.6-genvalidity-text
  (package
    (name "haskell-8.6-genvalidity-text")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-text/genvalidity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01684mmf2vk4kvk4nanrlsa237jlx1713cqrsgrnwvb1n8x0z2ja"))))
    (properties `((upstream-name . "genvalidity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-text)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Text")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-genvalidity-text

(define-public haskell-8.6-genvalidity-unordered-containers
  (package
    (name "haskell-8.6-genvalidity-unordered-containers")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11f8j256944c96h1p5av9c2y4czmh7wkdmi70m3y2gd6cz24jgn2"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-unordered-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-unordered-containers

(define-public haskell-8.6-genvalidity-uuid
  (package
    (name "haskell-8.6-genvalidity-uuid")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kjvl1i4nih5yyydilwsq1mssw1ljiipi20k5pxjh5rgb4f1p520"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-validity-uuid)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-uuid

(define-public haskell-8.6-genvalidity-vector
  (package
    (name "haskell-8.6-genvalidity-vector")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3msx28w15zy35x7w4p88xp5s1jy6p4gm3msviciy2swnm79vr0"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-validity-vector)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-vector

(define-public haskell-8.6-ghc-typelits-natnormalise
  (package
    (name "haskell-8.6-ghc-typelits-natnormalise")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-natnormalise/ghc-typelits-natnormalise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04a338yfcl6jm1daax08zsy03myii4llzih4mlprkyid8i0yn740"))))
    (properties `((upstream-name . "ghc-typelits-natnormalise")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "GHC typechecker plugin for types of kind GHC.TypeLits.Nat")
    (description
     "A type checker plugin for GHC that can solve /equalities/ of types of kind
@@Nat@@, where these types are either:

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

haskell-8.6-ghc-typelits-natnormalise

(define-public haskell-8.6-hledger-interest
  (package
    (name "haskell-8.6-hledger-interest")
    (version "1.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-interest/hledger-interest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ff113z2ir07ihdvfa5fca4x326zwm2jd7sjy6hjpr4qgi1mszvs"))))
    (properties `((upstream-name . "hledger-interest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1myqv7hci32hvm98d4fn2zqdvkxsdx1g821n1fwr6814yn89kwjj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-Decimal)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hledger-lib)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/peti/hledger-interest")
    (synopsis "computes interest for a given account")
    (description
     "hledger-interest is a small command-line utility based on Simon
Michael's hleder library. Its purpose is to compute interest for a
given ledger account. Using command line flags, the program can be
configured to use various schemes for day-counting, such as act\\/act,
30\\/360, 30E\\/360, and 30\\/360isda. Furthermore, it supports a (small)
number of interest schemes, i.e. annual interest with a fixed rate and
the scheme mandated by the German BGB288 (Basiszins fuer
Verbrauchergeschaefte). Extending support for other schemes is fairly
easy, but currently requires changes to the source code.

As an example, consider the following loan, stored in a file called
@@test.ledger@@:

> 2008/09/26 Loan
>     Assets:Bank          EUR 10000.00
>     Liabilities:Bank
>
> 2008/11/27 Payment
>     Assets:Bank          EUR -3771.12
>     Liabilities:Bank
>
> 2009/05/03 Payment
>     Assets:Bank          EUR -1200.00
>     Liabilities:Bank
>
> 2010/12/10 Payment
>     Assets:Bank          EUR -3700.00
>     Liabilities:Bank

Suppose that loan earns 5% interest per year, and payments amortize
interest before amortizing the principal claim, then the resulting
ledger would look like this:

> $ hledger-interest --file=test.ledger --source=Expenses:Interest --target=Liabilities:Bank --30-360 --annual=0.05 Liabilities:Bank
> 2008/09/26 Loan
>     Assets:Bank              EUR  10000.00
>     Liabilities:Bank
>
> 2008/11/27 Payment
>     Assets:Bank              EUR  -3771.12
>     Liabilities:Bank
>
> 2008/11/27 5.00% interest for EUR -10000.00 over 61 days
>     Liabilities:Bank         EUR    -84.72
>     Expenses:Interest
>
> 2008/12/31 5.00% interest for EUR -6313.60 over 34 days
>     Liabilities:Bank         EUR    -29.81
>     Expenses:Interest
>
> 2009/05/03 Payment
>     Assets:Bank              EUR  -1200.00
>     Liabilities:Bank
>
> 2009/05/03 5.00% interest for EUR -6343.42 over 123 days
>     Liabilities:Bank         EUR   -108.37
>     Expenses:Interest
>
> 2009/12/31 5.00% interest for EUR -5251.78 over 238 days
>     Liabilities:Bank         EUR   -173.60
>     Expenses:Interest
>
> 2010/12/10 Payment
>     Assets:Bank              EUR  -3700.00
>     Liabilities:Bank
>
> 2010/12/10 5.00% interest for EUR -5425.38 over 340 days
>     Liabilities:Bank         EUR   -256.20
>     Expenses:Interest
>
> 2010/12/31 5.00% interest for EUR -1981.58 over 21 days
>     Liabilities:Bank         EUR     -5.78
>     Expenses:Interest

Running the utility with @@--help@@ gives a brief overview over the
available options:

> Usage: hledger-interest [OPTION...] ACCOUNT
>   -h          --help               print this message and exit
>   -V          --version            show version number and exit
>   -v          --verbose            echo input ledger to stdout (default)
>   -q          --quiet              don't echo input ledger to stdout
>               --today              compute interest up until today
>   -f FILE     --file=FILE          input ledger file (pass '-' for stdin)
>   -s ACCOUNT  --source=ACCOUNT     interest source account
>   -t ACCOUNT  --target=ACCOUNT     interest target account
>   -I          --ignore-assertions  ignore any failing balance assertions
>               --act                use 'act' day counting convention
>               --30-360             use '30/360' day counting convention
>               --30E-360            use '30E/360' day counting convention
>               --30E-360isda        use '30E/360isda' day counting convention
>               --constant=RATE      constant interest rate
>               --annual=RATE        annual interest rate
>               --bgb288             compute interest according to German BGB288")
    (license license:bsd-3)))

haskell-8.6-hledger-interest

(define-public haskell-8.6-hourglass
  (package
    (name "haskell-8.6-hourglass")
    (version "0.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hourglass/hourglass-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jnay5j13vpz6i1rkaj3j0d9v8jfpri499xn3l7wd01f81f5ncs4"))))
    (properties `((upstream-name . "hourglass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/vincenthz/hs-hourglass")
    (synopsis "simple performant time related library")
    (description
     "Simple time library focusing on simple but powerful and performant API

The backbone of the library are the Timeable and Time type classes.

Each Timeable instances can be converted to type that has a Time instances,
and thus are different representations of current time.")
    (license license:bsd-3)))

haskell-8.6-hourglass

(define-public haskell-8.6-immortal
  (package
    (name "haskell-8.6-immortal")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (home-page "https://github.com/feuerbach/immortal")
    (synopsis "Spawn threads that never die (unless told to do so)")
    (description "A small library to create threads that never die.
This is useful e.g. for writing servers.")
    (license license:expat)))

haskell-8.6-immortal

(define-public haskell-8.6-indentation-parsec
  (package
    (name "haskell-8.6-indentation-parsec")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indentation-parsec/indentation-parsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m7jr1s7h4vrx0lbl88gjrpd6zgzalmqzqsv6rn5s17ay5p88dqf"))))
    (properties `((upstream-name . "indentation-parsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-indentation-core)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://bitbucket.org/adamsmd/indentation")
    (synopsis "Indentation sensitive parsing combinators for Parsec")
    (description
     "Indentation sensitive parsing combinators for Parsec

See

__Michael D. Adams and Ömer S. Ağacan__.
Indentation-sensitive parsing for Parsec.
In /Proceedings of the 2014 ACM SIGPLAN Symposium on Haskell/,
Haskell ’14, pages 121–132.
ACM, New York, NY, USA, September 2014. ISBN 978-1-4503-3041-1.
<http://dx.doi.org/10.1145/2633357.2633369 doi:10.1145/2633357.2633369>.

This package provides indentation combinators for
Parsec.  For Trifecta, install
indentation-trifecta.  For backward compatability
or to install both, install indentation.")
    (license license:bsd-3)))

haskell-8.6-indentation-parsec

(define-public haskell-8.6-io-choice
  (package
    (name "haskell-8.6-io-choice")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-choice/io-choice-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16v6b9r5k2y5vm2s8k3j7xc5wh77nqd8j636mc6wxcxwn3260jir"))))
    (properties `((upstream-name . "io-choice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://hackage.haskell.org/package/io-choice")
    (synopsis "Choice for IO and lifted IO")
    (description "Providing choice features for IO and lifted IO")
    (license license:bsd-3)))

haskell-8.6-io-choice

(define-public haskell-8.6-language-java
  (package
    (name "haskell-8.6-language-java")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-8.6-language-java

(define-public haskell-8.6-lapack
  (package
    (name "haskell-8.6-lapack")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lapack/lapack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w8nndh3gj6vrildxjn13lmi7aqjwbhpqkdj7d21fsfbmhjlgwvr"))))
    (properties `((upstream-name . "lapack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-blas-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-boxes)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-comfort-array)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-fixed-length)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hyper)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-lazyio)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage004) haskell-8.6-tfp)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/lapack/")
    (synopsis "Numerical Linear Algebra using LAPACK")
    (description
     "This is a high-level interface to LAPACK.
It provides solvers for simultaneous linear equations,
linear least-squares problems, eigenvalue and singular value problems
for matrices with certain kinds of structures.

Features:

* Based on @@comfort-array@@:
Allows to precisely express one-column or one-row matrices,
as well as dense, square, triangular, banded, symmetric and block matrices.

* Support all data types that are supported by LAPACK,
i.e. Float, Double, Complex Float, Complex Double

* No need for c2hs, hsc, Template Haskell or C helper functions

* Dependency only on BLAS and LAPACK, no GSL

* Works with matrices and vectors with zero dimensions.

* No automatic (and dangerous) implicit expansion
of singleton vectors or matrices.
Instead there are special operators for scaling of vectors and matrices.

* Separate formatting operator @@(##)@@:
Works better for tuples of matrices and vectors than 'show'.
'Show' is used for code one-liners
that can be copied back into Haskell modules.
Support for nice formatting in HyperHaskell.

See also: @@hmatrix@@.")
    (license license:bsd-3)))

haskell-8.6-lapack

(define-public haskell-8.6-lapack-carray
  (package
    (name "haskell-8.6-lapack-carray")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-carray)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-netlib-carray)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
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

haskell-8.6-lapack-carray

(define-public haskell-8.6-lapack-comfort-array
  (package
    (name "haskell-8.6-lapack-comfort-array")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-comfort-array/lapack-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kn9bb3q772sbzm54rdqbqrmp21kck2gvc0xagi974dq7b1wilh1"))))
    (properties `((upstream-name . "lapack-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-comfort-array)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-netlib-comfort-array)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/lapack-comfort-array/")
    (synopsis "Auto-generated interface to Fortran LAPACK via comfort-array")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

The functions are all in IO monad because they are auto-generated and
we cannot make sure automatically that unsafePerformIO is always safe.
Instead of raw pointers we use Arrays and Mutable.Arrays
and assign and check array bounds to LAPACK function parameters,
as far we can retrieve this information from the FORTRAN comments.
We check consistency of dimensions where consistent dimensions are required,
but we cannot do all kind of bound checks.
We use immutable Array for input and output parameters
and mutable Mutable.Array for input/output parameters.
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

haskell-8.6-lapack-comfort-array

(define-public haskell-8.6-llvm-hs-pure
  (package
    (name "haskell-8.6-llvm-hs-pure")
    (version "8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/llvm-hs-pure/llvm-hs-pure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srlac1vdpxddvbf560npxhldkq27hkxwb2lg4qdwvks55l38nfc"))))
    (properties `((upstream-name . "llvm-hs-pure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "Pure Haskell LLVM functionality (no FFI).")
    (description
     "llvm-hs-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.
It includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-hs package
builds on this one with FFI bindings to LLVM, but llvm-hs-pure does not require LLVM to be available.")
    (license license:bsd-3)))

haskell-8.6-llvm-hs-pure

(define-public haskell-8.6-logict
  (package
    (name "haskell-8.6-logict")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logict/logict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xfgdsxg0lp8m0a2cb83rcxrnnc37asfikay2kydi933anh9ihfc"))))
    (properties `((upstream-name . "logict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1kxa6i0y3py6mk5nxsjfzif854a8lk4k1s2v3m7agnihrxa7cvn7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/Bodigrim/logict#readme")
    (synopsis "A backtracking logic-programming monad.")
    (description "A continuation-based, backtracking, logic programming monad.
An adaptation of the two-continuation implementation found
in the paper \"Backtracking, Interleaving, and Terminating
Monad Transformers\" available here:
<http://okmij.org/ftp/papers/LogicT.pdf>")
    (license license:bsd-3)))

haskell-8.6-logict

(define-public haskell-8.6-math-functions
  (package
    (name "haskell-8.6-math-functions")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/math-functions/math-functions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s5nbs40sc3r4z08n0j8bw40cy0zkp03fjjn3p27zkd4fvm9kib3"))))
    (properties `((upstream-name . "math-functions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsystem-expm1" "-fsystem-erf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-vector-th-unbox)))
    (home-page "https://github.com/bos/math-functions")
    (synopsis "Collection of tools for numeric computations")
    (description
     "This library contain collection of various utilities for numerical
computing. So far there're special mathematical functions,
compensated summation algorithm, summation of series, root finding
for real functions, polynomial summation and Chebyshev
polynomials.")
    (license license:bsd-2)))

haskell-8.6-math-functions

(define-public haskell-8.6-matrices
  (package
    (name "haskell-8.6-matrices")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-8.6-matrices

(define-public haskell-8.6-matrix
  (package
    (name "haskell-8.6-matrix")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/matrix/matrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b1v17rc9q7ni44gkzp124kmc5d6xmlpiqvskgjrq54qpjinr5zs"))))
    (properties `((upstream-name . "matrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0iy0gdgg68ldhgm4lzvzl5pmzflx0r4brdbdkq75rkarm7cigawn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007) haskell-8.6-loop)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/matrix")
    (synopsis "A native implementation of matrix operations.")
    (description
     "Matrix library. Basic operations and some algorithms.

To get the library update your cabal package list (if needed) with @@cabal update@@ and
then use @@cabal install matrix@@, assuming that you already have Cabal installed.
Usage examples are included in the API reference generated by Haddock.

If you want to use GSL, BLAS and LAPACK, @@hmatrix@@ (<http://hackage.haskell.org/package/hmatrix>)
is the way to go.")
    (license license:bsd-3)))

haskell-8.6-matrix

(define-public haskell-8.6-mfsolve
  (package
    (name "haskell-8.6-mfsolve")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mfsolve/mfsolve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wa2m8q49lv0a335ahgx2svkff8vaba65cqlfmmk43ww5x26f893"))))
    (properties `((upstream-name . "mfsolve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hjklj9cqcqjvsmav4n5biqh3cbalhd22rvw381glkzbmpv7ccdn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mtl-compat)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-8.6-mfsolve

(define-public haskell-8.6-mltool
  (package
    (name "haskell-8.6-mltool")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mltool/mltool-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zz06c0xv718faygnsgzmhg17xc5hrjsj9xkdaf3qmzbr1gwfvki"))))
    (properties `((upstream-name . "mltool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-ascii-progress)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hmatrix-morpheus)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/aligusnet/mltool")
    (synopsis "Machine Learning Toolbox")
    (description
     "Haskell Machine Learning Toolkit
includes various methods of supervised learning:
linear regression, logistic regression, SVN, neural networks, etc.
as well as some methods of unsupervised methods: K-Means and PCA.")
    (license license:bsd-3)))

haskell-8.6-mltool

(define-public haskell-8.6-monad-loops
  (package
    (name "haskell-8.6-monad-loops")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/mokus0/monad-loops")
    (synopsis "Monadic loops")
    (description "Some useful control operators for looping.

New in 0.4: STM loop operators have been split into a
new package instead of being conditionally-built.

New in 0.3.2.0: various functions for traversing lists and
computing minima/maxima using arbitrary procedures to compare
or score the elements.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-monad-loops

(define-public haskell-8.6-netpbm
  (package
    (name "haskell-8.6-netpbm")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netpbm/netpbm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17cxh15wf7m9ljg0scd5i71ki95fiz8qhrfk4w1zvk4pf2gb7z38"))))
    (properties `((upstream-name . "netpbm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-vector-th-unbox)))
    (home-page "https://github.com/nh2/haskell-netpbm")
    (synopsis "Loading PBM, PGM, PPM image files")
    (description
     "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.

All netpbm image formats are implemented (P1 - P6).

The current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.

CHANGELOG

Version 1.0.3

* Package maintenance improvements only (base-4.5 excluded). See #3

Version 1.0.2

* Package maintenance improvements only.

Version 1.0.1

* Added required Vector imports necessary for deriving Unbox instances.

Version 1.0.0

* Use storable instead of unboxed vectors to allow easier integration with Ptr based APIs.")
    (license license:expat)))

haskell-8.6-netpbm

(define-public haskell-8.6-nondeterminism
  (package
    (name "haskell-8.6-nondeterminism")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/nondeterminism")
    (synopsis
     "A monad and monad transformer for nondeterministic computations.")
    (description "Nondeterministic computations")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-nondeterminism

(define-public haskell-8.6-openpgp-asciiarmor
  (package
    (name "haskell-8.6-openpgp-asciiarmor")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://floss.scru.org/openpgp-asciiarmor")
    (synopsis "OpenPGP (RFC4880) ASCII Armor codec")
    (description "OpenPGP (RFC4880) ASCII Armor codec")
    (license license:expat)))

haskell-8.6-openpgp-asciiarmor

(define-public haskell-8.6-paripari
  (package
    (name "haskell-8.6-paripari")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/paripari/paripari-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i82rwd2ysplqazqnarnshdrg8gjsbgh9kzn0mc4avl2lfi3pk16"))))
    (properties `((upstream-name . "paripari") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/minad/paripari#readme")
    (synopsis
     "Parser combinators with fast-path and slower fallback for error reporting")
    (description
     "PariPari offers two parsing strategies. There is a fast Acceptor and a slower Reporter which are evaluated in parallel. If the Acceptor fails, the Reporter returns a report about the parsing errors. Like Attoparsec, the parser combinators backtrack by default.")
    (license license:expat)))

haskell-8.6-paripari

(define-public haskell-8.6-pdfinfo
  (package
    (name "haskell-8.6-pdfinfo")
    (version "1.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pdfinfo/pdfinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04894cwvcn910j2b0j95dc6i9v6xriqa0v97z3vyi9dhi9yiysls"))))
    (properties `((upstream-name . "pdfinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-process-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)))
    (home-page "https://github.com/chrisdone/pdfinfo")
    (synopsis "Wrapper around the pdfinfo command.")
    (description
     "Just a wrapper around the pdfinfo command (for collecting PDF file info). See man pdfinfo.")
    (license license:bsd-3)))

haskell-8.6-pdfinfo

(define-public haskell-8.6-pgp-wordlist
  (package
    (name "haskell-8.6-pgp-wordlist")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pgp-wordlist/pgp-wordlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15g6qh0fb7kjj3l0w8cama7cxgnhnhybw760md9yy7cqfq15cfzg"))))
    (properties `((upstream-name . "pgp-wordlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/quchen/pgp-wordlist")
    (synopsis "Translate between binary data and a human-readable
collection of words.")
    (description "Translate between binary data and a human-readable
collection of words.

The PGP Word List consists of two phonetic alphabets, each
with one word per possible byte value. A string of bytes
is translated with these alphabets, alternating between
them at each byte.

The PGP words corresponding to the bytes @@5B 1D CA 6E@@
are \"erase breakaway spellbind headwaters\", for example.

For further information, see
<http://en.wikipedia.org/wiki/PGP_word_list Wikipedia>.")
    (license license:bsd-3)))

haskell-8.6-pgp-wordlist

(define-public haskell-8.6-pipes-attoparsec
  (package
    (name "haskell-8.6-pipes-attoparsec")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-parse)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/k0001/pipes-attoparsec")
    (synopsis "Attoparsec and Pipes integration.")
    (description
     "Utilities to run Attoparsec parsers on Pipes input streams.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.6-pipes-attoparsec

(define-public haskell-8.6-pipes-network
  (package
    (name "haskell-8.6-pipes-network")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network/pipes-network-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15f7kn9vpzsm8s108cly80pi6yqpv6v04w032ng0wr9g78an393l"))))
    (properties `((upstream-name . "pipes-network") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-network-simple)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-pipes-safe)))
    (home-page "https://github.com/k0001/pipes-network")
    (synopsis "Use network sockets together with the pipes library.")
    (description
     "Use network sockets together with the @@pipes@@ library.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP\" exports pipes and utilities for using TCP connections in
a streaming fashion.

* \"Pipes.Network.TCP.Safe\" subsumes \"Pipes.Network.TCP\", exporting pipes and
functions that allow you to safely establish new TCP connections within a
pipeline using the @@pipes-safe@@ facilities. You only need to use this module
if you want to safely acquire and release operating system resources within a
pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.6-pipes-network

(define-public haskell-8.6-polysemy-plugin
  (package
    (name "haskell-8.6-polysemy-plugin")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-plugin/polysemy-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ppnp3b6sa835jrr31la2b9z0mlil8hm60dqvz2pvyfkic88y9mg"))))
    (properties `((upstream-name . "polysemy-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-corelint")
       #:cabal-revision
       ("1" "11d4pzbqqxs8i6h9qgwqamq6q604wsy9r5aba84hmyyklsl16j1p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-polysemy)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://github.com/isovector/polysemy#readme")
    (synopsis "Disambiguate obvious uses of effects.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/polysemy/tree/master/polysemy-plugin#readme>")
    (license license:bsd-3)))

haskell-8.6-polysemy-plugin

(define-public haskell-8.6-protobuf
  (package
    (name "haskell-8.6-protobuf")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf/protobuf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1php9pydbh2jyr5x6h1i218w8kqwys5aniz2zm1hapv6ia8p3j5k"))))
    (properties `((upstream-name . "protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-hex)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
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

haskell-8.6-protobuf

(define-public haskell-8.6-rainbox
  (package
    (name "haskell-8.6-rainbox")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-lens-simple)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-rainbow)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-rainbox

(define-public haskell-8.6-relational-query-HDBC
  (package
    (name "haskell-8.6-relational-query-HDBC")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query-HDBC/relational-query-HDBC-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gzgjqh6pp4nf2zkc77xmm9sm02h2hya1bn339z1sa71nxs0ksc3"))))
    (properties `((upstream-name . "relational-query-HDBC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-HDBC)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-HDBC-session)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-convertible)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-names-th)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-persistable-record)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-relational-query)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-relational-schemas)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-sql-words)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-data-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis
     "HDBC instance of relational-query and typed query interface for HDBC")
    (description
     "This package contains the HDBC instance of relational-query and
the typed query interface for HDBC.

Generating Database table definitions and functions for
relational-query by reading table and index definitions
from Database system catalogs.")
    (license license:bsd-3)))

haskell-8.6-relational-query-HDBC

(define-public haskell-8.6-rope-utf16-splay
  (package
    (name "haskell-8.6-rope-utf16-splay")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rope-utf16-splay/rope-utf16-splay-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ilcgwmdwqnp95vb7652fc03ji9dnzy6cm24pvbiwi2mhc4piy6b"))))
    (properties `((upstream-name . "rope-utf16-splay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/ollef/rope-utf16-splay")
    (synopsis "Ropes optimised for updating using UTF-16 code units and
row/column pairs.")
    (description "Ropes optimised for updating using UTF-16 code units and
row/column pairs.  This implementation uses splay trees
instead of the usual finger trees. According to my
benchmarks, splay trees are faster in most situations.")
    (license license:bsd-3)))

haskell-8.6-rope-utf16-splay

(define-public haskell-8.6-safe-money
  (package
    (name "haskell-8.6-safe-money")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-money/safe-money-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c3xpsydqgcz183klmhgdn3xdagrj0falfqb63cmknk77z610s7f"))))
    (properties `((upstream-name . "safe-money") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-vector-space)))
    (home-page "https://github.com/k0001/safe-money")
    (synopsis "Type-safe and lossless encoding and manipulation of money, fiat
currencies, crypto currencies and precious metals.")
    (description
     "The Haskell @@safe-money@@ library offers type-safe and lossless encoding and
operations for monetary values in all world currencies, including fiat
currencies, precious metals and crypto-currencies.

Useful instances for the many types defined by @@safe-money@@ can be found
in these other libraries:

* [safe-money-aeson](https://hackage.haskell.org/package/safe-money-aeson):
@@FromJSON@@ and @@ToJSON@@ instances (from the [aeson](https://hackage.haskell.org/package/aeson) library).

* [safe-money-cereal](https://hackage.haskell.org/package/safe-money-cereal):
@@Serialize@@ instances (from the [cereal](https://hackage.haskell.org/package/cereal) library).

* [safe-money-serialise](https://hackage.haskell.org/package/safe-money-serialise):
@@Serialise@@ instances (from the [serialise](https://hackage.haskell.org/package/serialise) library).

* [safe-money-store](https://hackage.haskell.org/package/safe-money-store):
@@Store@@ instances (from the [store](https://hackage.haskell.org/package/store) library).

* [safe-money-xmlbf](https://hackage.haskell.org/package/safe-money-xmlbf):
@@FromXml@@ and @@ToXml@@ instances (from the [xmlbf](https://hackage.haskell.org/package/xmlbf) library).")
    (license license:bsd-3)))

haskell-8.6-safe-money

(define-public haskell-8.6-selective
  (package
    (name "haskell-8.6-selective")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selective/selective-" version
                    ".tar.gz"))
              (sha256
               (base32
                "135lq99h1iaip44d5kh7wpb3fcf8f6ypn5rxngm5agazy6ia42as"))))
    (properties `((upstream-name . "selective") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/snowleopard/selective")
    (synopsis "Selective applicative functors")
    (description
     "Selective applicative functors: declare your effects statically,
select which to execute dynamically.

This is a library for /selective applicative functors/, or just
/selective functors/ for short, an abstraction between
applicative functors and monads, introduced in
<https://www.staff.ncl.ac.uk/andrey.mokhov/selective-functors.pdf this paper>.")
    (license license:expat)))

haskell-8.6-selective

(define-public haskell-8.6-semver
  (package
    (name "haskell-8.6-semver")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/semver/semver-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0swffqyqraz2nxn64mwxp29zfdq7135q2j815yzwh2pk135xmns2"))))
    (properties `((upstream-name . "semver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/brendanhay/semver")
    (synopsis
     "Representation, manipulation, and de/serialisation of Semantic Versions.")
    (description
     "Representation, manipulation, and de/serialisation of a Version type
following the Semantic Versioning specification.

For more information see: <http://semver.org>")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-semver

(define-public haskell-8.6-simplistic-generics
  (package
    (name "haskell-8.6-simplistic-generics")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simplistic-generics/simplistic-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11z02m4dr9p2y29xwhy6a3l2cz2np164c8cwp0a0b9vkhphw4y1j"))))
    (properties `((upstream-name . "simplistic-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-kind-apply)))
    (home-page "https://hackage.haskell.org/package/simplistic-generics")
    (synopsis "Generic programming without too many type classes")
    (description "This library provides a representation build on top of
`GHC.Generics`, which can be used to describe generic
operations on a single function, instead of having
each case defined in an instance of a type class.")
    (license license:bsd-3)))

haskell-8.6-simplistic-generics

(define-public haskell-8.6-tagged-binary
  (package
    (name "haskell-8.6-tagged-binary")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-pureMD5)))
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

haskell-8.6-tagged-binary

(define-public haskell-8.6-tasty-kat
  (package
    (name "haskell-8.6-tasty-kat")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-8.6-tasty-kat

(define-public haskell-8.6-tasty-quickcheck
  (package
    (name "haskell-8.6-tasty-quickcheck")
    (version "0.10.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "098zyfl5958zikaqfyam75hv5l46pks5bnp3r7533bbmr4a60cpq"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcre-light)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.6-tasty-quickcheck

(define-public haskell-8.6-temporary
  (package
    (name "haskell-8.6-temporary")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/feuerbach/temporary")
    (synopsis "Portable temporary file and directory support")
    (description "Functions for creating temporary files and directories.")
    (license license:bsd-3)))

haskell-8.6-temporary

(define-public haskell-8.6-text-manipulate
  (package
    (name "haskell-8.6-text-manipulate")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-manipulate/text-manipulate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bwxyjj3ll45srxhsp2ihikgqglvjc6m02ixr8xpvyqwkcfwgsg0"))))
    (properties `((upstream-name . "text-manipulate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dc81r4j0q18xy0nw1kimlf08gk8s9dhcshkcfx1c9hgd7a2gj75")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/brendanhay/text-manipulate")
    (synopsis
     "Case conversion, word boundary manipulation, and textual subjugation.")
    (description
     "Manipulate identifiers and structurally non-complex pieces
of text by delimiting word boundaries via a combination of whitespace,
control-characters, and case-sensitivity.

Has support for common idioms like casing of programmatic variable names,
taking, dropping, and splitting by word, and modifying the first character
of a piece of text.

/Caution:/ this library makes heavy use of the <http://hackage.haskell.org/package/text text>
library's internal loop optimisation framework. Since internal modules are not
guaranteed to have a stable API there is potential for build breakage when
the text dependency is upgraded. Consider yourself warned!")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-text-manipulate

(define-public haskell-8.6-th-test-utils
  (package
    (name "haskell-8.6-th-test-utils")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-test-utils/th-test-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qbxj4zarw1nm0c2shrr4wrrkmqlxx2qdh9q3q9arkic4lwgsxcx"))))
    (properties `((upstream-name . "th-test-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x4kwp1lj663dd4nfr348y2z5qq1hkly5r289wmqhy5dxlx7cb9n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/LeapYear/th-test-utils#readme")
    (synopsis "Utility functions for testing Template Haskell code")
    (description
     "Utility functions for testing Template Haskell code, including
functions for testing failures in the Q monad.")
    (license license:bsd-3)))

haskell-8.6-th-test-utils

(define-public haskell-8.6-time-compat
  (package
    (name "haskell-8.6-time-compat")
    (version "1.9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-compat/time-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05va0rqs759vbridbcl6hksp967j9anjvys8vx72fnfkhlrn2s52"))))
    (properties `((upstream-name . "time-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("2" "1i94pch4zj713gxcrlb09airbh3hqqs7cscjjfkxk9lixkk6iwnc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/phadej/time-compat")
    (synopsis "Compatibility package for time")
    (description
     "This packages tries to compat as much of @@time@@ features as possible.

/TODO:/

* Difference type @@ParseTime@@ and @@FormatTime@@ instances are missing.

* Formatting varies depending on underlying @@time@@ version

* @@dayFractionToTimeOfDay@@ on extreme values")
    (license license:bsd-3)))

haskell-8.6-time-compat

(define-public haskell-8.6-timerep
  (package
    (name "haskell-8.6-timerep")
    (version "2.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/timerep/timerep-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fakjs6fgva6i035jiyr8hcgnrivw601cy8n3ja232d07izl2khx"))))
    (properties `((upstream-name . "timerep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/HugoDaniel/timerep")
    (synopsis
     "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)")
    (description
     "Parse and display time according to some RFC's.

Supported:

* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>

* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>

* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>

Special thanks to Koral for all the suggestions and help in solving some bugs.")
    (license license:bsd-3)))

haskell-8.6-timerep

(define-public haskell-8.6-titlecase
  (package
    (name "haskell-8.6-titlecase")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-8.6-titlecase

(define-public haskell-8.6-traverse-with-class
  (package
    (name "haskell-8.6-traverse-with-class")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/traverse-with-class/traverse-with-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yni197sxfpsjvjablhn8mjqpp1mz0v30r73f9ncs3pjcl93g6yn"))))
    (properties `((upstream-name . "traverse-with-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/traverse-with-class")
    (synopsis "Generic applicative traversals")
    (description "This is a generic programming library in the spirit of
\\\"Scrap your boilerplate with class\\\", but with several
improvements — most notably, it's based on the @@gtraverse@@
function instead of @@gfoldl@@.
@@gtraverse@@ is equivalent in power to @@gfoldl@@, but lets
you more easily write non-standard views of the data type.")
    (license license:expat)))

haskell-8.6-traverse-with-class

(define-public haskell-8.6-unliftio-pool
  (package
    (name "haskell-8.6-unliftio-pool")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-pool/unliftio-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qhgiym7slz3n68py4izs52wfhs5d7nyxzwnj8q86rvkvy6lfm5v"))))
    (properties `((upstream-name . "unliftio-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (home-page "https://hackage.haskell.org/package/unliftio-pool")
    (synopsis "Data.Pool generalized to MonadUnliftIO.")
    (description "This is a generalization of Data.Pool to MonadUnliftIO.")
    (license license:bsd-3)))

haskell-8.6-unliftio-pool

(define-public haskell-8.6-vector-bytes-instances
  (package
    (name "haskell-8.6-vector-bytes-instances")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-bytes-instances/vector-bytes-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i4cxgm984qs5ldp1x7m9blxh8wd5y8acy2ic8kpgaak8pzycrkn"))))
    (properties `((upstream-name . "vector-bytes-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-bytes)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-8.6-vector-bytes-instances

(define-public haskell-8.6-vector-split
  (package
    (name "haskell-8.6-vector-split")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-8.6-vector-split

(define-public haskell-8.6-wikicfp-scraper
  (package
    (name "haskell-8.6-wikicfp-scraper")
    (version "0.1.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wikicfp-scraper/wikicfp-scraper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f6zrgjhid1fps02hbd6lmaxpi635bdzcxbsfkfk8xd7wmj0x91b"))))
    (properties `((upstream-name . "wikicfp-scraper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-scalpel-core)))
    (home-page "https://github.com/debug-ito/wikicfp-scraper")
    (synopsis "Scrape WikiCFP web site")
    (description "Scrape WikiCFP web site. See 'Web.WikiCFP.Scraper'.")
    (license license:bsd-3)))

haskell-8.6-wikicfp-scraper

(define-public haskell-8.6-wild-bind-x11
  (package
    (name "haskell-8.6-wild-bind-x11")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wild-bind-x11/wild-bind-x11-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x3qqnampyxi6bg6279xsw38324fs5gndy1mylp6dndlcf6pw30z"))))
    (properties `((upstream-name . "wild-bind-x11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-interactive")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-X11)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-fold-debounce)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-wild-bind)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/debug-ito/wild-bind")
    (synopsis "X11-specific implementation for WildBind")
    (description
     "X11-specific implementation for WildBind. See <https://github.com/debug-ito/wild-bind>")
    (license license:bsd-3)))

haskell-8.6-wild-bind-x11

(define-public haskell-8.6-wire-streams
  (package
    (name "haskell-8.6-wire-streams")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wire-streams/wire-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09zvw9c1h42fwbry0nycnfjy8m8v4yfijvy9h6c5i2ccq1qgppwn"))))
    (properties `((upstream-name . "wire-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1j7gpk3k82h0kxnhpv40jmnqxpnr0v0m4lj6bhpga81vlmznr088")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-binary-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/winterland1989/wire-streams")
    (synopsis "Fast binary io-streams adapter.")
    (description "Fast binary io-streams adapter.")
    (license license:bsd-3)))

haskell-8.6-wire-streams

(define-public haskell-8.6-wl-pprint-annotated
  (package
    (name "haskell-8.6-wl-pprint-annotated")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/minad/wl-pprint-annotated#readme")
    (synopsis "Pretty printer with annotation support")
    (description
     "Wadler/Leijen pretty printer with support for annotations and modernized API. Annotations are useful for coloring. See wl-pprint-console.")
    (license license:bsd-3)))

haskell-8.6-wl-pprint-annotated

(define-public haskell-8.6-x11-xim
  (package
    (name "haskell-8.6-x11-xim")
    (version "0.0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x11-xim/x11-xim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0sn789j0kz891l9p0srx6537yq44b5jlyph9vc3xdb3ygy20bjrw"))))
    (properties `((upstream-name . "x11-xim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c561z9xvfcd7ddbiw3r0frhjvsrklachd38s66fzwjdgw1sl124")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-X11)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/YoshikuniJujo/x11-xim_haskell/wiki/")
    (synopsis "A binding to the xim of X11 graphics library")
    (description "A binding to the xim of X11 graphics library")
    (license license:bsd-3)))

haskell-8.6-x11-xim

(define-public haskell-8.6-xmonad
  (package
    (name "haskell-8.6-xmonad")
    (version "0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmonad/xmonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a7rh21k9y6g8fwkggxdxjns2grvvsd5hi2ls4klmqz5xvk4hyaa"))))
    (properties `((upstream-name . "xmonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-testing" "-f-generatemanpage")
       #:cabal-revision
       ("3" "0wam2zyil7lcawzmvzw6bmbm8r2nmic55sjbbz4xds0d8hr9jb8x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-X11)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-setlocale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "http://xmonad.org")
    (synopsis "A tiling window manager")
    (description
     "xmonad is a tiling window manager for X. Windows are arranged
automatically to tile the screen without gaps or overlap, maximising
screen use. All features of the window manager are accessible from the
keyboard: a mouse is strictly optional. xmonad is written and
extensible in Haskell. Custom layout algorithms, and other extensions,
may be written by the user in config files. Layouts are applied
dynamically, and different layouts may be used on each workspace.
Xinerama is fully supported, allowing windows to be tiled on several
screens.")
    (license license:bsd-3)))

haskell-8.6-xmonad

(define-public haskell-8.6-zeromq4-haskell
  (package
    (name "haskell-8.6-zeromq4-haskell")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
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

haskell-8.6-zeromq4-haskell

