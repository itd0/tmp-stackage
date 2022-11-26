;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage009)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.0))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.0-GLUT
  (package
    (name "haskell-9.0-GLUT")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OpenGLRaw)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL Utility Toolkit")
    (description
     "A Haskell binding for the OpenGL Utility Toolkit, a window system independent
toolkit for writing OpenGL programs. For more information about the C library
on which this binding is based, please see:
<http://www.opengl.org/resources/libraries/glut/>.")
    (license license:bsd-3)))

haskell-9.0-GLUT

(define-public haskell-9.0-MissingH
  (package
    (name "haskell-9.0-MissingH")
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
       ("1" "18jigc9mis823dhlx14yd0r59618jwqw93hsdyzmdrgfaigd6qpn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-network-bsd)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-regex-compat)))
    (home-page "https://hackage.haskell.org/package/MissingH")
    (synopsis "Large utility library")
    (description
     "@@MissingH@@ is a library of all sorts of utility functions for Haskell
programmers.  It is written in pure Haskell and thus should be
extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-9.0-MissingH

(define-public haskell-9.0-OpenAL
  (package
    (name "haskell-9.0-OpenAL")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ObjectName)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-StateVar)
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

haskell-9.0-OpenAL

(define-public haskell-9.0-attoparsec-data
  (package
    (name "haskell-9.0-attoparsec-data")
    (version "1.0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-data/attoparsec-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05x7xij5jyfzcl0hyjjw4lxlzgkmi55q48s5vbgvba48a2crv0qj"))))
    (properties `((upstream-name . "attoparsec-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-attoparsec-time)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
    (home-page "https://github.com/nikita-volkov/attoparsec-data")
    (synopsis "Parsers for the standard Haskell data types")
    (description "")
    (license license:expat)))

haskell-9.0-attoparsec-data

(define-public haskell-9.0-check-email
  (package
    (name "haskell-9.0-check-email")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-email-validate)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages base) glibc)))
    (home-page "https://github.com/qoelet/check-email#readme")
    (synopsis "Confirm whether an email is valid and probably existant.")
    (description
     "See README at <https://github.com/qoelet/check-email#readme>")
    (license license:bsd-3)))

haskell-9.0-check-email

(define-public haskell-9.0-midi-alsa
  (package
    (name "haskell-9.0-midi-alsa")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/midi-alsa/midi-alsa-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13dc299d252nrll1vzp7pl1ncv0qw3xhz5b3kqnc8hb0g4mkkgpc"))))
    (properties `((upstream-name . "midi-alsa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-alsa-seq)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-accessor)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-midi)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/MIDI")
    (synopsis "Convert between datatypes of the midi and the alsa packages")
    (description
     "MIDI is the Musical Instrument Digital Interface,
ALSA is the Advanced Linux Sound Architecture.
This package provides accessors to data structures
of the ALSA sequencer interface
via the more specific types from the @@midi@@ package.
The package also contains a orphan instances
for the @@alsa-seq:Event@@ type
of the @@midi:Message.Class.Check@@ and @@midi:Message.Class.Query@@ classes.")
    (license license:bsd-3)))

haskell-9.0-midi-alsa

(define-public haskell-9.0-netwire-input-glfw
  (package
    (name "haskell-9.0-netwire-input-glfw")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-GLFW-b)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-OpenGL)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-netwire)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-netwire-input)))
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

haskell-9.0-netwire-input-glfw

(define-public haskell-9.0-srt-attoparsec
  (package
    (name "haskell-9.0-srt-attoparsec")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/srt-attoparsec/srt-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j096cz1frig4hizlwnraqsdhbrq44ypwyc4s0gbk9vg77sgq6sz"))))
    (properties `((upstream-name . "srt-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-media-timestamp)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-simple-media-timestamp-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-srt)))
    (home-page "https://hackage.haskell.org/package/srt-attoparsec")
    (synopsis "Attoparsec parser for the SRT format.")
    (description "Attoparsec parser for the SRT format.")
    (license license:expat)))

haskell-9.0-srt-attoparsec

(define-public haskell-9.0-tagged-binary
  (package
    (name "haskell-9.0-tagged-binary")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-pureMD5)))
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

haskell-9.0-tagged-binary

(define-public haskell-9.0-tasty
  (package
    (name "haskell-9.0-tasty")
    (version "1.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1inhrayiqhd3k14b9cnjcv5kdxb95sgk8b0ibbf37z4dlalsf569"))))
    (properties `((upstream-name . "tasty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock" "-funix")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unbounded-delays)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-wcwidth)))
    (home-page "https://github.com/UnkindPartition/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-9.0-tasty

