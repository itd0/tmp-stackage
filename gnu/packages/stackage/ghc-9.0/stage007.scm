;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage007)
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
(define-public haskell-9.0-GLFW-b
  (package
    (name "haskell-9.0-GLFW-b")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-bindings-GLFW)))
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

haskell-9.0-GLFW-b

(define-public haskell-9.0-GLURaw
  (package
    (name "haskell-9.0-GLURaw")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OpenGLRaw)
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

haskell-9.0-GLURaw

(define-public haskell-9.0-HsOpenSSL
  (package
    (name "haskell-9.0-HsOpenSSL")
    (version "0.11.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL/HsOpenSSL-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ysdfl8ck3nzhx597fa13dqf31jq5gzwajlak6r91jajks9w0dl5"))))
    (properties `((upstream-name . "HsOpenSSL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast-bignum" "-f-homebrew-openssl" "-f-macports-openssl" "-f-use-pkg-config")
       #:cabal-revision
       ("3" "0nsqxym87s48029laqba4nzwpk7nrk35x7wmpjqfnbrj82ddcshd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
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

haskell-9.0-HsOpenSSL

(define-public haskell-9.0-RefSerialize
  (package
    (name "haskell-9.0-RefSerialize")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stringsearch)))
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

haskell-9.0-RefSerialize

(define-public haskell-9.0-alsa-pcm
  (package
    (name "haskell-9.0-alsa-pcm")
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
       (list "-f-buildexamples" "-f-buildsynthesizer" "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-alsa-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-sample-frame)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (PCM audio).")
    (description
     "This package provides access to ALSA realtime audio signal input and output.
For MIDI support see alsa-seq.")
    (license license:bsd-3)))

haskell-9.0-alsa-pcm

(define-public haskell-9.0-ascii-case
  (package
    (name "haskell-9.0-ascii-case")
    (version "1.0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-case/ascii-case-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03rhq303igzvx9yil5qli2ga9iz47psrlnbb494785w9whwayxq1"))))
    (properties `((upstream-name . "ascii-case") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a4nz34a5034lkq42q2l7xqdkjpakcy44syqy0gvx8p6h83ccrb1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII letter case")
    (description "This package defines a @@Case@@ type that describes the
two varieties of ASCII letter: capital and small.")
    (license license:asl2.0)))

haskell-9.0-ascii-case

(define-public haskell-9.0-async-extra
  (package
    (name "haskell-9.0-async-extra")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (home-page "https://github.com/agrafix/async-extra#readme")
    (synopsis "Useful concurrent combinators")
    (description "Various concurrent combinators")
    (license license:expat)))

haskell-9.0-async-extra

(define-public haskell-9.0-attoparsec
  (package
    (name "haskell-9.0-attoparsec")
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
       ("2" "00jyrn2asz1kp698l3fyh19xxxz4npf1993y041x9b9cq239smn0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (home-page "https://github.com/bgamari/attoparsec")
    (synopsis "Fast combinator parsing for bytestrings and text")
    (description
     "A fast parser combinator library, aimed particularly at dealing
efficiently with network protocols and complicated text/binary
file formats.")
    (license license:bsd-3)))

haskell-9.0-attoparsec

(define-public haskell-9.0-bin
  (package
    (name "haskell-9.0-bin")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-boring)
                  (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-dec)
                  (@ (gnu packages stackage ghc-9.0 stage006) haskell-9.0-fin)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-some)))
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

haskell-9.0-bin

(define-public haskell-9.0-binary-orphans
  (package
    (name "haskell-9.0-binary-orphans")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-orphans/binary-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b302hhjaybwbnpzrd8qmdp24g2xj2svib34zfxqqxg67j159rg2"))))
    (properties `((upstream-name . "binary-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OneTuple)))
    (home-page "https://hackage.haskell.org/package/binary-orphans")
    (synopsis "Compatibility package for binary; provides instances")
    (description
     "This package provides instances defined in later versions of @@binary@@ package

Prior version 1 this packages provided instances for other packages.
That functionality is moved to [binary-instances](https://hackage.haskell.org/package/binary-instances) package.")
    (license license:bsd-3)))

haskell-9.0-binary-orphans

(define-public haskell-9.0-chan
  (package
    (name "haskell-9.0-chan")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)))
    (home-page "https://github.com/athanclark/chan#readme")
    (synopsis "Some extra kit for Chans")
    (description
     "Please see the README on Github at <https://github.com/athanclark/chan#readme>")
    (license license:bsd-3)))

haskell-9.0-chan

(define-public haskell-9.0-cipher-aes128
  (package
    (name "haskell-9.0-cipher-aes128")
    (version "0.7.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-aes128/cipher-aes128-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pcxmgj9i8g3yl502lpywc75dilmaszlzixpd7wqjqr7lvasa117"))))
    (properties `((upstream-name . "cipher-aes128") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-crypto-api)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://github.com/TomMD/cipher-aes128")
    (synopsis "AES and common modes using AES-NI when available.")
    (description
     "Cipher-aes128 is an implementation of AES and common modes of operation.  It borrows Hanquez's C AES code (see 'cipher-aes') but
is unique due to including compile-time detection of
NI compiler support, a slightly more functional interface
for GCM operations, exposure of 'Ptr' based operations via the .Internal module, and build-in crypto-api support.
Cipher-aes128 was originally developed as \"'cipher-aes' plus trampolines\", which has since been adopted into cipher-aes.")
    (license license:bsd-3)))

haskell-9.0-cipher-aes128

(define-public haskell-9.0-concurrent-output
  (package
    (name "haskell-9.0-concurrent-output")
    (version "1.10.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-output/concurrent-output-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l4k0bkq5bddqraf14g3ngyzwff17f3ngg4axlilcl3zf3c4bamh"))))
    (properties `((upstream-name . "concurrent-output") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)))
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

haskell-9.0-concurrent-output

(define-public haskell-9.0-cprng-aes
  (package
    (name "haskell-9.0-cprng-aes")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-cipher-aes)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-random)))
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

haskell-9.0-cprng-aes

(define-public haskell-9.0-crypto-api-tests
  (package
    (name "haskell-9.0-crypto-api-tests")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-crypto-api)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://trac.haskell.org/crypto-api/wiki")
    (synopsis "A test framework and KATs for cryptographic operations.")
    (description "A test framework for hash and cipher operations using
the crypto-api interface.  Known answer tests (KATs)
for common cryptographic algorithms are included.
Patches welcome (both adding KATs for more algorithms
or property tests for classes of algorithms).")
    (license license:bsd-3)))

haskell-9.0-crypto-api-tests

(define-public haskell-9.0-data-default-instances-case-insensitive
  (package
    (name "haskell-9.0-data-default-instances-case-insensitive")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instance for CI type from case-insensitive package.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance (Default s, FoldCase s) => Default (CI s) where
>     def = mk def")
    (license license:bsd-3)))

haskell-9.0-data-default-instances-case-insensitive

(define-public haskell-9.0-every
  (package
    (name "haskell-9.0-every")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)))
    (home-page "https://github.com/athanclark/every#readme")
    (synopsis "Run a process every so often.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-every

(define-public haskell-9.0-fftw-ffi
  (package
    (name "haskell-9.0-fftw-ffi")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-enumset)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hub.darcs.net/thielema/fftw-ffi/")
    (synopsis "Low-level interface to FFTW (Fast Fourier Transform)")
    (description "FFTW claims to be the fastest Fourier Transform in the West.
This is a low-level interface to @@libfftw@@.
We re-use the type classes from @@netlib-ffi@@.

See also package @@fft@@.")
    (license license:bsd-3)))

haskell-9.0-fftw-ffi

(define-public haskell-9.0-filelock
  (package
    (name "haskell-9.0-filelock")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)))
    (home-page "http://github.com/takano-akio/filelock")
    (synopsis "Portable interface to file locking (flock / LockFileEx)")
    (description "This package provides an interface to Windows and Unix
file locking functionalities.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-filelock

(define-public haskell-9.0-gi-cairo-render
  (package
    (name "haskell-9.0-gi-cairo-render")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "Cairo is a library to render high quality vector graphics. There
exist various backends that allows rendering to Gtk windows, PDF,
PS, PNG and SVG documents, amongst others.")
    (license license:bsd-3)))

haskell-9.0-gi-cairo-render

(define-public haskell-9.0-gtk2hs-buildtools
  (package
    (name "haskell-9.0-gtk2hs-buildtools")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hashtables)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
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

haskell-9.0-gtk2hs-buildtools

(define-public haskell-9.0-hdaemonize
  (package
    (name "haskell-9.0-hdaemonize")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hsyslog)))
    (home-page "http://github.com/unprolix/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description "Provides functions that help writing better UNIX daemons,
daemonize and serviced/serviced': daemonize does what
a daemon should do (forking and closing descriptors),
while serviced does that and more (syslog interface,
PID file writing, start-stop-restart command line
handling, dropping privileges).")
    (license license:bsd-3)))

haskell-9.0-hdaemonize

(define-public haskell-9.0-hinotify
  (package
    (name "haskell-9.0-hinotify")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)))
    (home-page "https://github.com/kolmodin/hinotify")
    (synopsis "Haskell binding to inotify")
    (description
     "This library provides a wrapper to the Linux Kernel's inotify feature,
allowing applications to subscribe to notifications when a file is
accessed or modified.")
    (license license:bsd-3)))

haskell-9.0-hinotify

(define-public haskell-9.0-hosc
  (package
    (name "haskell-9.0-hosc")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "http://rohandrape.net/t/hosc")
    (synopsis "Haskell Open Sound Control")
    (description "@@hosc@@ implements a subset of the Open Sound Control
byte protocol, <http://opensoundcontrol.org/>.

See \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-hosc

(define-public haskell-9.0-hsdns
  (package
    (name "haskell-9.0-hsdns")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
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

haskell-9.0-hsdns

(define-public haskell-9.0-http-media
  (package
    (name "haskell-9.0-http-media")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
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

haskell-9.0-http-media

(define-public haskell-9.0-inbox
  (package
    (name "haskell-9.0-inbox")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-error-or)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/inbox#readme")
    (synopsis "Inbox for asychronous messages")
    (description "Facilitates testing of asynchronous behavior")
    (license license:bsd-3)))

haskell-9.0-inbox

(define-public haskell-9.0-io-memoize
  (package
    (name "haskell-9.0-io-memoize")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)))
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

haskell-9.0-io-memoize

(define-public haskell-9.0-iproute
  (package
    (name "haskell-9.0-iproute")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-appar)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteorder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "http://www.mew.org/~kazu/proj/iproute/")
    (synopsis "IP Routing Table")
    (description "IP Routing Table is a tree of IP ranges
to search one of them on the longest
match base. It is a kind of TRIE with one
way branching removed. Both IPv4 and IPv6
are supported.")
    (license license:bsd-3)))

haskell-9.0-iproute

(define-public haskell-9.0-keep-alive
  (package
    (name "haskell-9.0-keep-alive")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "https://github.com/3kyro/keep-alive#readme")
    (synopsis "TCP keep alive implementation")
    (description
     "This module allows you to set per-connection keep alive parameters on windows, linux and darwin enviroments.
For more information on keep alive signals see <https://en.wikipedia.org/wiki/Keepalive>.
See also <https://tldp.org/HOWTO/html_single/TCP-Keepalive-HOWTO/> for a linux specific implementation.")
    (license license:bsd-3)))

haskell-9.0-keep-alive

(define-public haskell-9.0-megaparsec
  (package
    (name "haskell-9.0-megaparsec")
    (version "9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec/megaparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d52dbcz9nlqkkfqfs9kck5kmvkfzf3628z4ik4gr7hbbkjh72x4"))))
    (properties `((upstream-name . "megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Monadic parser combinators")
    (description
     "This is an industrial-strength monadic parser combinator library.
Megaparsec is a feature-rich package that tries to find a nice balance
between speed, flexibility, and quality of parse errors.")
    (license license:bsd-2)))

haskell-9.0-megaparsec

(define-public haskell-9.0-midi
  (package
    (name "haskell-9.0-midi")
    (version "0.2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/midi/midi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12vj9h7vdklzn5dglypjsw1bs9rdacdg9fmxhnbd89jv89dyn4km"))))
    (properties `((upstream-name . "midi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-event-list)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-monoid-transformer)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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

haskell-9.0-midi

(define-public haskell-9.0-monad-par
  (package
    (name "haskell-9.0-monad-par")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-abstract-deque)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-abstract-par)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)))
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

haskell-9.0-monad-par

(define-public haskell-9.0-network-bsd
  (package
    (name "haskell-9.0-network-bsd")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
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

haskell-9.0-network-bsd

(define-public haskell-9.0-network-run
  (package
    (name "haskell-9.0-network-run")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "https://hackage.haskell.org/package/network-run")
    (synopsis "Simple network runner library")
    (description "Simple functions to run network clients and servers.")
    (license license:bsd-3)))

haskell-9.0-network-run

(define-public haskell-9.0-network-transport-composed
  (package
    (name "haskell-9.0-network-transport-composed")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network-transport)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Compose network transports")
    (description "")
    (license license:bsd-3)))

haskell-9.0-network-transport-composed

(define-public haskell-9.0-network-transport-tests
  (package
    (name "haskell-9.0-network-transport-tests")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport-tests/network-transport-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0md91zi8g4vfbj53w1ghbgw50mlgvpnd1pya9y98i8ab8flhk923"))))
    (properties `((upstream-name . "network-transport-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network-transport)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Unit tests for Network.Transport implementations")
    (description "")
    (license license:bsd-3)))

haskell-9.0-network-transport-tests

(define-public haskell-9.0-pipes-concurrency
  (package
    (name "haskell-9.0-pipes-concurrency")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
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

haskell-9.0-pipes-concurrency

(define-public haskell-9.0-poll
  (package
    (name "haskell-9.0-poll")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-enumset)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/poll")
    (synopsis "Bindings to poll.h")
    (description
     "Poll functionality allows to wait on different FileDescriptors simultaneously.")
    (license license:bsd-3)))

haskell-9.0-poll

(define-public haskell-9.0-port-utils
  (package
    (name "haskell-9.0-port-utils")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "https://github.com/jfischoff/port-utils#readme")
    (synopsis "Utilities for creating and waiting on ports")
    (description
     "Utilities for creating and waiting on ports. . @@openFreePort@@ will create a socket bound to a random port (like @@warp@@'s @@openFreePort@@). . @@wait@@ will attempt to connect to given host and port repeatedly until successful. .")
    (license license:bsd-3)))

haskell-9.0-port-utils

(define-public haskell-9.0-postgresql-libpq-notify
  (package
    (name "haskell-9.0-postgresql-libpq-notify")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-postgresql-libpq)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/jfischoff/postgresql-libpq-notify#readme")
    (synopsis "Minimal dependency PostgreSQL notifications library")
    (description
     "Minimal dependency PostgreSQL notifications library. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-postgresql-libpq-notify

(define-public haskell-9.0-protolude
  (package
    (name "haskell-9.0-protolude")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protolude/protolude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i53yxg44nrz0czwr8cqhw1fdapz9db8kfnqz9a3lmj5skrikh3y"))))
    (properties `((upstream-name . "protolude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mtl-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://github.com/sdiehl/protolude")
    (synopsis "A small prelude.")
    (description "A sensible set of defaults for writing custom Preludes.")
    (license license:expat)))

haskell-9.0-protolude

(define-public haskell-9.0-qrcode-core
  (package
    (name "haskell-9.0-qrcode-core")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-core/qrcode-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gwwvksvxhv8qwjjay4lb1v14n2dp8mkgppv6lv4f858xwfswcp6"))))
    (properties `((upstream-name . "qrcode-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "QR code library in pure Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-core#readme>")
    (license license:expat)))

haskell-9.0-qrcode-core

(define-public haskell-9.0-safe-decimal
  (package
    (name "haskell-9.0-safe-decimal")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (home-page "https://github.com/fpco/safe-decimal#readme")
    (synopsis
     "Safe and very efficient arithmetic operations on fixed decimal point numbers")
    (description
     "Please see the README on GitHub at <https://github.com/fpco/safe-decimal#readme>")
    (license license:bsd-3)))

haskell-9.0-safe-decimal

(define-public haskell-9.0-sample-frame-np
  (package
    (name "haskell-9.0-sample-frame-np")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sample-frame-np/sample-frame-np-"
                    version ".tar.gz"))
              (sha256
               (base32
                "091nz5w5511xl8hp2q8dfvs4jz15nkhz22rr97zga0vmn0hpdnxi"))))
    (properties `((upstream-name . "sample-frame-np") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-sample-frame)))
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

haskell-9.0-sample-frame-np

(define-public haskell-9.0-selda
  (package
    (name "haskell-9.0-selda")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/selda/selda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n0zkd80a9z83q5nld0gyg2p25nfy4rjkihql88binhknhk3hkgk"))))
    (properties `((upstream-name . "selda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)))
    (home-page "https://selda.link")
    (synopsis
     "Multi-backend, high-level EDSL for interacting with SQL databases.")
    (description
     "This package provides an EDSL for writing portable, type-safe, high-level
database code. Its feature set includes querying and modifying databases,
automatic, in-process caching with consistency guarantees, and transaction
support.
See the project website for a comprehensive tutorial.
To use this package you need at least one backend package, in addition to
this package. There are currently two different backend packages:
selda-sqlite and selda-postgresql.")
    (license license:expat)))

haskell-9.0-selda

(define-public haskell-9.0-sendfile
  (package
    (name "haskell-9.0-sendfile")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "https://github.com/Happstack/sendfile")
    (synopsis "A portable sendfile library")
    (description
     "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.

Currently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).")
    (license license:bsd-3)))

haskell-9.0-sendfile

(define-public haskell-9.0-skein
  (package
    (name "haskell-9.0-skein")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-crypto-api)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
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

haskell-9.0-skein

(define-public haskell-9.0-smash-microlens
  (package
    (name "haskell-9.0-smash-microlens")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-microlens/smash-microlens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rfpdaw1zs8fpw6kp5zkrhj8nmx839fp2ca0cgk14g431yl651ir"))))
    (properties `((upstream-name . "smash-microlens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-smash)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Optics for the `smash` library")
    (description "Optics for the `smash` library using `microlens`")
    (license license:bsd-3)))

haskell-9.0-smash-microlens

(define-public haskell-9.0-socks
  (package
    (name "haskell-9.0-socks")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "http://github.com/vincenthz/hs-socks")
    (synopsis "Socks proxy (ver 5)")
    (description "Socks proxy (version 5) implementation.")
    (license license:bsd-3)))

haskell-9.0-socks

(define-public haskell-9.0-sox
  (package
    (name "haskell-9.0-sox")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sox/sox-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0idab4rsqj4zjm7dlzbf38rzpvkp1z9psrkl4lrp2qp1s53sp9kh"))))
    (properties `((upstream-name . "sox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-sample-frame)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-sox

(define-public haskell-9.0-special-values
  (package
    (name "haskell-9.0-special-values")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (home-page "https://github.com/minad/special-values#readme")
    (synopsis "Typeclass providing special values")
    (description
     "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.")
    (license license:expat)))

haskell-9.0-special-values

(define-public haskell-9.0-splice
  (package
    (name "haskell-9.0-splice")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
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

haskell-9.0-splice

(define-public haskell-9.0-stm-supply
  (package
    (name "haskell-9.0-stm-supply")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-supply/stm-supply-" version
                    ".tar.gz"))
              (sha256
               (base32
                "131q9y32120laylc0r1xz5pkmw69yky17vc621rlk5dcwnkasfgq"))))
    (properties `((upstream-name . "stm-supply") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-concurrent-supply)))
    (home-page "https://github.com/caneroj1/stm-supply#readme")
    (synopsis "STM wrapper around Control.Concurrent.Supply.")
    (description
     "STM wrapper around Control.Concurrent.Supply for thread-safe ID generation.")
    (license license:bsd-3)))

haskell-9.0-stm-supply

(define-public haskell-9.0-strict
  (package
    (name "haskell-9.0-strict")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-assoc)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)))
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

haskell-9.0-strict

(define-public haskell-9.0-systemd
  (package
    (name "haskell-9.0-systemd")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)))
    (home-page "https://github.com/erebe/systemd")
    (synopsis "Systemd facilities (Socket activation, Notify)")
    (description "A module for Systemd facilities.")
    (license license:bsd-3)))

haskell-9.0-systemd

(define-public haskell-9.0-terminal-progress-bar
  (package
    (name "haskell-9.0-terminal-progress-bar")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
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

haskell-9.0-terminal-progress-bar

(define-public haskell-9.0-text-latin1
  (package
    (name "haskell-9.0-text-latin1")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-checked)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (home-page "https://github.com/mvv/text-latin1")
    (synopsis "Latin-1 (including ASCII) utility functions")
    (description
     "This package provides various functions over the ASCII ang Latin-1
portions of the 'Char' and 'Word8' data types.")
    (license license:bsd-3)))

haskell-9.0-text-latin1

(define-public haskell-9.0-these-optics
  (package
    (name "haskell-9.0-these-optics")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Optics for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-9.0-these-optics

(define-public haskell-9.0-through-text
  (package
    (name "haskell-9.0-through-text")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)))
    (home-page "https://www.github.com/bergmark/through-text")
    (synopsis
     "Convert textual types through Text without needing O(n^2) instances.")
    (description
     "Convert textual types through Text without needing O(n^2) instances.

See the README for more information: <https://github.com/bergmark/through-text/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.0-through-text

(define-public haskell-9.0-tostring
  (package
    (name "haskell-9.0-tostring")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "https://hackage.haskell.org/package/tostring")
    (synopsis "The ToString class")
    (description "A type class for converting text types to String.")
    (license license:bsd-3)))

haskell-9.0-tostring

(define-public haskell-9.0-tuple
  (package
    (name "haskell-9.0-tuple")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OneTuple)))
    (home-page "https://hackage.haskell.org/package/tuple")
    (synopsis "Various functions on tuples")
    (description
     "Various useful functions on tuples, overloaded on tuple size.")
    (license license:bsd-3)))

haskell-9.0-tuple

(define-public haskell-9.0-unboxed-ref
  (package
    (name "haskell-9.0-unboxed-ref")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (home-page "https://github.com/winterland1989/unboxed-ref")
    (synopsis "Fast unboxed references for ST and IO monad")
    (description "Fast unboxed references for ST and IO monad")
    (license license:bsd-3)))

haskell-9.0-unboxed-ref

(define-public haskell-9.0-unliftio-pool
  (package
    (name "haskell-9.0-unliftio-pool")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-pool/unliftio-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08246kbmgxv5afm6kngag2mh8mswifsh6017z8rirca37cwp01vr"))))
    (properties `((upstream-name . "unliftio-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://hackage.haskell.org/package/unliftio-pool")
    (synopsis "Data.Pool generalized to MonadUnliftIO.")
    (description "This is a generalization of Data.Pool to MonadUnliftIO.")
    (license license:bsd-3)))

haskell-9.0-unliftio-pool

(define-public haskell-9.0-uuid
  (package
    (name "haskell-9.0-uuid")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-network-info)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)))
    (home-page "https://github.com/haskell-hvr/uuid")
    (synopsis
     "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
     "This library is useful for creating, comparing, parsing and
printing Universally Unique Identifiers.

See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-9.0-uuid

(define-public haskell-9.0-vivid-supercollider
  (package
    (name "haskell-9.0-vivid-supercollider")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vivid-osc)))
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

haskell-9.0-vivid-supercollider

(define-public haskell-9.0-zio
  (package
    (name "haskell-9.0-zio")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-unexceptionalio)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-unexceptionalio-trans)))
    (home-page "https://github.com/bbarker/haskell-zio#readme")
    (synopsis
     "App-centric Monad-transformer based on Scala ZIO (UIO + ReaderT + ExceptT).")
    (description
     "Please see the README on GitHub at <https://github.com/bbarker/haskell-zio#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-zio

