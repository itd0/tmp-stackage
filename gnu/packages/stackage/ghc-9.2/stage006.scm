;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage006)
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
(define-public haskell-9.2-OpenGLRaw
  (package
    (name "haskell-9.2-OpenGLRaw")
    (version "3.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OpenGLRaw/OpenGLRaw-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07nk0rgm6jcxz6yshwhv5lj5frs6371w3hdjxwa4biws2kmbs6hj"))))
    (properties `((upstream-name . "OpenGLRaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-fuseglxgetprocaddress" "-fusegles2" "-f-osandroid")
       #:cabal-revision
       ("1" "15abvqkxc08lx9d44323izccfp7bqfiljnd587zn80vdvmkzs6zc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-fixed)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-half)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A raw binding for the OpenGL graphics system")
    (description
     "OpenGLRaw is a raw Haskell binding for the OpenGL 4.6 graphics system and
lots of OpenGL extensions. It is basically a 1:1 mapping of OpenGL's C API,
intended as a basis for a nicer interface. OpenGLRaw offers access to all
necessary functions, tokens and types plus a general facility for loading
extension entries. The module hierarchy closely mirrors the naming structure
of the OpenGL extensions, making it easy to find the right module to import.
All API entries are loaded dynamically, so no special C header files are
needed for building this package. If an API entry is not found at runtime, a
userError is thrown.

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-9.2-OpenGLRaw

(define-public haskell-9.2-bcrypt
  (package
    (name "haskell-9.2-bcrypt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (home-page "https://hackage.haskell.org/package/bcrypt")
    (synopsis "Haskell bindings to the bcrypt password hash")
    (description
     "Haskell bindings to the bcrypt password hash.

Unlike other bindings already in existence, this package is designed to allow users to work directly with password hash strings that include information about the hashing algorithm, strength, and salt. This approach allows hashed passwords to be stored in a single field that can also be used by non-Haskell applications, and makes it easy to implement a policy of updating passwords hashed to an old policy next time the plaintext password is available.

Version 1.1.3 of the OpenWall C source for bcrypt is included in this package (<http://www.openwall.com/crypt/>). The only modification is that the flag which enables the use of assembler has been disabled.
Announcements about hs-bcrypt (including security announcements) will be sent to https://groups.google.com/forum/#!forum/hs-bcrypt-announce/join - if you use this library please consider subscribing. This mailing list is moderated and is expected to have a very low volume of mail traffic.")
    (license license:bsd-3)))

haskell-9.2-bcrypt

(define-public haskell-9.2-bibtex
  (package
    (name "haskell-9.2-bibtex")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bibtex/bibtex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "012zxvrlkl5vdjl1nmabhyi160xak0c8s3gn5ffxz2rqi6akn2h9"))))
    (properties `((upstream-name . "bibtex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase2" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-latex)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/BibTeX")
    (synopsis "Parse, format and processing BibTeX files")
    (description
     "This package allows parsing, formatting and processing of BibTeX files.
BibTeX files are databases for literature for the natbib package
of the LaTeX typesetting system.

The package contains two examples:

* The first example demonstrates the BibTeX parser
by generating a publication overview from a @@.bib@@ file.

* The second example demonstrates the BibTeX generation
by producing a large @@.bib@@ file from the tar archive
that cabal-install downloads to your local cabal directory.

Both examples will be build as stand-alone executable
when running

> cabal install -fbuildExamples bibtex

For the first example see the @@publications@@ directory of this package.
You can start the program and build an example document by running

> make pubs

Technically the program generates a list of custom @@\\\\nocite@@ commands
for the LaTeX package @@multibib@@.
You can add the custom bibtex field @@subtype@@ to BibTeX entries
for more detailed categorization of an entry.
See \"publications/publications.bib\" for examples.

The second example can be executed using

> make hackbib

The file @@hackage.bib@@ is written to the @@hackage@@ subdirectory.
The @@hackage-bibtex@@ program
reads an uncompressed tar archive from standard input
and writes the result bibliography file to standard output.

Note that @@hackage.bib@@ exceeds some limits of standard BibTeX and LaTeX:
There are currently much more than 5000 versions of packages,
the maximum my BibTeX can handle at once.
That is, you can use the bibliography file,
but you cannot cite all entries with @@\\\\nocite*@@.
If there are more than 26 uploads by the same author in a year,
the BibTeX style @@alpha@@ generates identifiers including curly braces
which interacts badly with LaTeX's handling of them.
If you reduce the Bibliography file to 5000 entries
and try to generate an overview of all entries with @@\\\\nocite@@,
then @@pdflatex@@ hits its limits:

> TeX capacity exceeded, sorry [save size=5000]")
    (license license:bsd-3)))

haskell-9.2-bibtex

(define-public haskell-9.2-bindings-GLFW
  (package
    (name "haskell-9.2-bindings-GLFW")
    (version "3.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bindings-GLFW/bindings-GLFW-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0frvqybvy6bk79drhdmv4m754g4db3ys63ib8kw6aw5d3bmhjdbw"))))
    (properties `((upstream-name . "bindings-GLFW") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-glfw" "-fmacosxusechdir" "-fmacosxusemenubar" "-fmacosxuseretina" "-fx" "-f-wayland" "-f-osmesa" "-f-exposenative")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://hackage.haskell.org/package/bindings-GLFW")
    (synopsis "Low-level bindings to GLFW OpenGL library")
    (description
     "Low-level bindings to GLFW (<http://www.glfw.org/>), an open source,
multi-platform library for creating windows with OpenGL contexts and managing
input and events.

The binding is to GLFW 3.3, released 2019-04-15
(<http://www.glfw.org/Version-3.3-released.html>
<http://www.glfw.org/changelog.html>).

/These bindings are too low-level for normal use./ For higher-level bindings,
see GLFW-b (<http://hackage.haskell.org/package/GLFW-b>).

If you've used GLFW before, you were probably using 2.7.x. There are some
significant differences in 3.x.x. Please see the transition guide
(<http://www.glfw.org/docs/3.3/moving.html>).")
    (license license:bsd-3)))

haskell-9.2-bindings-GLFW

(define-public haskell-9.2-blaze-textual
  (package
    (name "haskell-9.2-blaze-textual")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-textual/blaze-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zjnwnjpcpnnm0815h9ngr3a3iy0szsnb3nrcavkbx4905s9k4bs"))))
    (properties `((upstream-name . "blaze-textual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-fnative" "-f-integer-simple")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-double-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
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

haskell-9.2-blaze-textual

(define-public haskell-9.2-bounded-queue
  (package
    (name "haskell-9.2-bounded-queue")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://gitlab.com/fosskers/bounded-queue")
    (synopsis "A strict, immutable, thread-safe, single-ended, bounded queue.")
    (description
     "A strict, immutable, thread-safe, single-ended, bounded queue
which automatically forgets old values instead of blocking.")
    (license license:bsd-3)))

haskell-9.2-bounded-queue

(define-public haskell-9.2-casing
  (package
    (name "haskell-9.2-casing")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/casing")
    (synopsis "Convert between various source code casing conventions")
    (description
     "Converts between camelCase, PascalCase, kebab-case, and three
flavors of snake_case.")
    (license license:expat)))

haskell-9.2-casing

(define-public haskell-9.2-cereal-text
  (package
    (name "haskell-9.2-cereal-text")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-text/cereal-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1ml0z5rksvrhz15i9afld7bybgylqmy5nmvik3p98zd3s1ayiw"))))
    (properties `((upstream-name . "cereal-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)))
    (home-page "https://github.com/ulikoehler/cereal-text")
    (synopsis "Data.Text instances for the cereal serialization library")
    (description "Data.Text instances for the cereal serialization library.

Provides instances for Text and lazy Text.
Uses UTF-8 encoding for serialization.

Use
@@import Data.Serialize.Text ()@@
to import instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-cereal-text

(define-public haskell-9.2-cereal-vector
  (package
    (name "haskell-9.2-cereal-vector")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-vector/cereal-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0czrb4l1n73cfxxlzbcqfa34qa3gw0m5w5mlz0rawylyqfk8a1pz"))))
    (properties `((upstream-name . "cereal-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/acfoltzer/cereal-vector")
    (synopsis "Serialize instances for Data.Vector types.")
    (description "")
    (license license:bsd-3)))

haskell-9.2-cereal-vector

(define-public haskell-9.2-cipher-aes
  (package
    (name "haskell-9.2-cipher-aes")
    (version "0.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-aes/cipher-aes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05ahz6kjq0fl1w66gpiqy0vndli5yx1pbsbw9ni3viwqas4p3cfk"))))
    (properties `((upstream-name . "cipher-aes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsupport_aesni")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-securemem)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (home-page "https://github.com/vincenthz/hs-cipher-aes")
    (synopsis
     "Fast AES cipher implementation with advanced mode of operations")
    (description
     "Fast AES cipher implementation with advanced mode of operations.

The modes of operations available are ECB (Electronic code book),
CBC (Cipher block chaining), CTR (Counter), XTS (XEX with ciphertext stealing),
GCM (Galois Counter Mode).

The AES implementation uses AES-NI when available (on x86 and x86-64 architecture),
but fallback gracefully to a software C implementation.

The software implementation uses S-Boxes, which might suffer for cache timing issues.
However do notes that most other known software implementations, including very popular
one (openssl, gnutls) also uses similar implementation. If it matters for your
case, you should make sure you have AES-NI available, or you'll need to use a different
implementation.
")
    (license license:bsd-3)))

haskell-9.2-cipher-aes

(define-public haskell-9.2-cipher-camellia
  (package
    (name "haskell-9.2-cipher-camellia")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-camellia/cipher-camellia-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19z2mi1rvp8fsqjdbmrm1hdlxmx61yr55fyknmmn945qrlvx234d"))))
    (properties `((upstream-name . "cipher-camellia") (hidden? . #f)))
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
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-securemem)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Camellia block cipher primitives")
    (description "Camellia block cipher primitives")
    (license license:bsd-3)))

haskell-9.2-cipher-camellia

(define-public haskell-9.2-cipher-rc4
  (package
    (name "haskell-9.2-cipher-rc4")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-rc4/cipher-rc4-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k9qf0cn5yxc4qlqikcm5yyrnkkvr6g3v7306cp8iwz7r4dp6zn6"))))
    (properties `((upstream-name . "cipher-rc4") (hidden? . #f)))
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
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-cipher-rc4")
    (synopsis "Fast RC4 cipher implementation")
    (description "Fast RC4 cipher implementation")
    (license license:bsd-3)))

haskell-9.2-cipher-rc4

(define-public haskell-9.2-code-page
  (package
    (name "haskell-9.2-code-page")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/code-page/code-page-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aiavczjk6f2kc1cdwjc1mwkr4d9shiz3xwmfbzsdn0yqqchxydj"))))
    (properties `((upstream-name . "code-page") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/RyanGlScott/code-page")
    (synopsis "Windows code page library for Haskell")
    (description
     "This library provides two modules:

* \"System.IO.CodePage\": a cross-platform module that exports
functions which adjust code pages on Windows, and do nothing
on other operating systems.

* \"System.Win32.CodePage\": On Windows, this exports functions
for getting, setting, and analyzing code pages. On other
operating systems, this module exports nothing.")
    (license license:bsd-3)))

haskell-9.2-code-page

(define-public haskell-9.2-crypto-api
  (package
    (name "haskell-9.2-crypto-api")
    (version "0.13.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-api/crypto-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19bsmkqkpnvh01b77pmyarx00fic15j4hvg4pzscrj4prskrx2i9"))))
    (properties `((upstream-name . "crypto-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-all_cpolys")
       #:cabal-revision
       ("1" "1z6n1sa5pn3iqvqjrd8hv4bc2pxzsrhm5sh0l8z7g9lbqp6w0wp5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (home-page "https://github.com/TomMD/crypto-api")
    (synopsis "A generic interface for cryptographic operations")
    (description
     "A generic interface for cryptographic operations (hashes, ciphers, randomness).
Maintainers of hash and cipher implementations are
encouraged to add instances for the classes defined
in Crypto.Classes.  Crypto users are similarly
encouraged to use the interfaces defined in the Classes
module.
Any concepts or functions of general use to more than
one cryptographic algorithm (ex: padding) is within
scope of this package.")
    (license license:bsd-3)))

haskell-9.2-crypto-api

(define-public haskell-9.2-disk-free-space
  (package
    (name "haskell-9.2-disk-free-space")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/disk-free-space/disk-free-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07rqj8k1vh3cykq9yidpjxhgh1f7vgmjs6y1nv5kq2217ff4yypi"))))
    (properties `((upstream-name . "disk-free-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0x0wjycr3rhw9vcq51b4sz8cf7mcvx7whhywv72y25r9385lxb3i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/redneb/disk-free-space")
    (synopsis "Retrieve information about disk space usage")
    (description
     "A cross-platform library for retrieving information about disk space usage.")
    (license license:bsd-3)))

haskell-9.2-disk-free-space

(define-public haskell-9.2-dunai
  (package
    (name "haskell-9.2-dunai")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dunai/dunai-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08skmwkfwiyy83s764fcpa9i8zny10bdbpv9wha6fjqr1b80i80f"))))
    (properties `((upstream-name . "dunai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-hlint" "-f-test-doc-coverage")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-affine-space)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (home-page "https://github.com/ivanperez-keera/dunai")
    (synopsis
     "Generalised reactive framework supporting classic, arrowized and monadic FRP.")
    (description
     "Dunai is a DSL for strongly-typed CPS-based composable transformations.

Dunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are
transformations defined by a function
@@unMSF :: MSF m a b -> a -> m (b, MSF m a b)@@ that executes one step of a
simulation, and produces an output in a monadic context, and a continuation
to be used for future steps.

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
Classic FRP, and plain reactive programming. Arrowized and applicative syntax
are both supported.

For a very detailed introduction to MSFs, see:
<http://dl.acm.org/citation.cfm?id=2976010>
(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).")
    (license license:bsd-3)))

haskell-9.2-dunai

(define-public haskell-9.2-enumset
  (package
    (name "haskell-9.2-enumset")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/enumset/enumset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1flsyc8a9hj33pl35jkcls8sdc7yw8yc9xfflynm0h9ncq1frlcr"))))
    (properties `((upstream-name . "enumset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-accessor)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)))
    (home-page "https://hackage.haskell.org/package/enumset")
    (synopsis "Sets of enumeration values represented by machine words")
    (description
     "With this package you can create a type safe interface to flag sets.
It is intended for interfacing to C libraries via FFI,
where Word8, Word16, or Word32 types are commonly used to store bit vectors.
E.g. the type @@EnumSet Word16 Ordering@@
represents a flag set stored in a Word16
that supports the flags @@LT@@, @@EQ@@, @@GT@@.

This package is similar to the @@bitset@@ package and
the @@Data.Edison.Coll.EnumSet@@ module in the @@edison@@ package,
however our implementation allows you to choose the embedding type
and thus the maximum size of the set.

See also @@data-flags@@ and @@Data.EnumSet@@ in @@enummapset@@.")
    (license license:bsd-3)))

haskell-9.2-enumset

(define-public haskell-9.2-event-list
  (package
    (name "haskell-9.2-event-list")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/event-list/event-list-" version
                    ".tar.gz"))
              (sha256
               (base32
                "177q99iswmanh34wlgklw1djvv5v1c0b5ysyi7mdmb70fsw30kk2"))))
    (properties `((upstream-name . "event-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")
       #:cabal-revision
       ("1" "19n1snzzqg4mkpss2b29zsv8h4n1nmzcmyclap11gcsjmv75mwzh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-negative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/event-list/")
    (synopsis "Event lists with relative or absolute time stamps")
    (description
     "These lists manage events that are associated with times.
Times may be given as difference between successive events
or as absolute time values.
Pauses before the first and after the last event are supported.
The underlying data structures are lists of elements of alternating types,
that is [b,a,b,...,a,b] or [a,b,a,...,a,b].
The data structures can be used to represent
MIDI files, OpenSoundControl message streams, music performances etc.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-event-list

(define-public haskell-9.2-exception-mtl
  (package
    (name "haskell-9.2-exception-mtl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-exception-transformers)))
    (home-page "https://hackage.haskell.org/package/exception-mtl")
    (synopsis "Exception monad transformer instances for mtl classes.")
    (description
     "This package provides exception monad transformer instances for
the classes defined by mtl.")
    (license license:bsd-3)))

haskell-9.2-exception-mtl

(define-public haskell-9.2-fixed-length
  (package
    (name "haskell-9.2-fixed-length")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-length/fixed-length-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fxkqfpz5ckylq66gbljra4bmwamafcvmbh7h5vjfrj2f0f4kk4x"))))
    (properties `((upstream-name . "fixed-length") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-tfp)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/fixed-length/")
    (synopsis "Lists with statically known length based on non-empty package.")
    (description
     "This packages defines a list data type with statically known length
by nesting the NonEmpty and Empty data structure from the non-empty package.
We provide a closed world class for this class of structures
<http://www.haskell.org/haskellwiki/Closed_world_instances>
and a wrapper that makes all these lists @@Traversable@@
and @@Applicative@@ with ZipList semantics.

Similar packages:

* @@fixed-list@@:
Defines an open world class.")
    (license license:bsd-3)))

haskell-9.2-fixed-length

(define-public haskell-9.2-free-vl
  (package
    (name "haskell-9.2-free-vl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "http://github.com/aaronlevin/free-vl")
    (synopsis "van Laarhoven encoded Free Monad with Extensible Effects")
    (description
     "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.

For more information on the van Laarhoven Free Monads, including examples,
please see the following blog posts:

Initial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>

Adding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>")
    (license license:bsd-3)))

haskell-9.2-free-vl

(define-public haskell-9.2-freetype2
  (package
    (name "haskell-9.2-freetype2")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freetype2/freetype2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fdzhm6lcb6bxgza5z41925a75xdi19lwqw6vas1s2y130x3zfam"))))
    (properties `((upstream-name . "freetype2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://hackage.haskell.org/package/freetype2")
    (synopsis "Haskell bindings for FreeType 2 library")
    (description
     "Mostly complete and mostly raw bindings to the [FreeType2](https://www.freetype.org/) library.

Please check the README for information on how these
bindings operate.")
    (license license:bsd-3)))

haskell-9.2-freetype2

(define-public haskell-9.2-generic-data-surgery
  (package
    (name "haskell-9.2-generic-data-surgery")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-data-surgery/generic-data-surgery-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dg9mg10g0abs21wksplnaqgig42jb6zvk7xqwj2mkl5yln3h9is"))))
    (properties `((upstream-name . "generic-data-surgery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-first-class-families)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-generic-data)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-show-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/Lysxia/generic-data-surgery#readme")
    (synopsis "Surgery for generic data types")
    (description
     "Transform data types before passing them to generic functions.")
    (license license:expat)))

haskell-9.2-generic-data-surgery

(define-public haskell-9.2-ghc-typelits-natnormalise
  (package
    (name "haskell-9.2-ghc-typelits-natnormalise")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-natnormalise/ghc-typelits-natnormalise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pqpsy3j4brpg2hrq9qrnjzr1bishycny5gvsdncvhaq3m53gslh"))))
    (properties `((upstream-name . "ghc-typelits-natnormalise")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "GHC typechecker plugin for types of kind GHC.TypeLits.Nat")
    (description
     "A type checker plugin for GHC that can solve /equalities/ and /inequalities/
of types of kind @@Nat@@, where these types are either:

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

haskell-9.2-ghc-typelits-natnormalise

(define-public haskell-9.2-gl
  (package
    (name "haskell-9.2-gl")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gl/gl-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kb1igc9cyjavf3f3ccv9xhhsfn46pcrsw47qd9m5793nnmg13ii"))))
    (properties `((upstream-name . "gl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-fuseglxgetprocaddress")
       #:cabal-revision
       ("1" "19qyb9m2fy9qyirmhhayg51scas42n3i2rx7jcw6v3ra8c8r9rwr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-fixed)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-half)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gl")
    (synopsis "Complete OpenGL raw bindings")
    (description "Complete OpenGL raw bindings")
    (license license:bsd-3)))

haskell-9.2-gl

(define-public haskell-9.2-haskell-gi-base
  (package
    (name "haskell-9.2-haskell-gi-base")
    (version "0.26.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi-base/haskell-gi-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n0pgyd5gm4lic3c48cvl10chk15jdd1d381f3fcizp61rhslvfs"))))
    (properties `((upstream-name . "haskell-gi-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Foundation for libraries generated by haskell-gi")
    (description "Foundation for libraries generated by haskell-gi")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-haskell-gi-base

(define-public haskell-9.2-hfsevents
  (package
    (name "haskell-9.2-hfsevents")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hfsevents/hfsevents-" version
                    ".tar.gz"))
              (sha256
               (base32
                "019zbnvfd866ch49gax0c1c93zv92142saim1hrgypz5lprz7hvl"))))
    (properties `((upstream-name . "hfsevents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/luite/hfsevents")
    (synopsis "File/folder watching for OS X")
    (description "")
    (license license:bsd-3)))

haskell-9.2-hfsevents

(define-public haskell-9.2-hidapi
  (package
    (name "haskell-9.2-hidapi")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hidapi/hidapi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00f4i25zpwrdr2dmrmfx1wvjbjchp7wx911wkw4pkhngdpxdij9r"))))
    (properties `((upstream-name . "hidapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-deepseq-generics)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) eudev)))
    (home-page "https://github.com/chpatrick/haskell-hidapi")
    (synopsis "Haskell bindings to HIDAPI")
    (description
     "Haskell bindings to the HIDAPI library (<https://github.com/libusb/hidapi>).

Note you need need to have the corresponding low-level
library installed for your OS, e.g. libudev-dev on Debian/Ubuntu,
or just udev on distributions that don't split dev libraries.")
    (license license:expat)))

haskell-9.2-hidapi

(define-public haskell-9.2-hopenssl
  (package
    (name "haskell-9.2-hopenssl")
    (version "2.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenssl/hopenssl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gq3q4fl8vbdg1ha69q18qj1zx13nhkrapz0chs4s0jb29hrh3vm"))))
    (properties `((upstream-name . "hopenssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-link-libz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/peti/hopenssl")
    (synopsis "FFI Bindings to OpenSSL's EVP Digest Interface")
    (description
     "Foreign-function bindings to the <http://www.openssl.org/ OpenSSL library>.
Currently provides access to the messages digests MD5, DSS, DSS1,
RIPEMD160, and various SHA variants through the EVP digest interface.")
    (license license:bsd-3)))

haskell-9.2-hopenssl

(define-public haskell-9.2-hs-GeoIP
  (package
    (name "haskell-9.2-hs-GeoIP")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-GeoIP/hs-GeoIP-" version
                    ".tar.gz"))
              (sha256
               (base32
                "135bl4cjijq6mr485waz7aaxgkaji2fsdjhdy4v4756q6ahzcpwf"))))
    (properties `((upstream-name . "hs-GeoIP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages geo) libmaxminddb)))
    (home-page "http://github.com/ozataman/hs-GeoIP")
    (synopsis
     "Haskell bindings to the MaxMind GeoIPCity database via the C library")
    (description
     "This library provides fast, idiomatic Haskell bindings to MaxMind's
GeoIPCity IP-based geolocation C API.

Make sure you have the MaxMind C API installed before installing
this library, as it depends on the C API.

MaxMind GeoIP City database allows geo-location lookups from IP addresses.

To get started, you can download the latest binary database
distribution from: <http://www.maxmind.com/app/geolitecity>")
    (license license:bsd-3)))

haskell-9.2-hs-GeoIP

(define-public haskell-9.2-hsndfile-vector
  (package
    (name "haskell-9.2-hsndfile-vector")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsndfile-vector/hsndfile-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1598bf87llbiri1qh8zirhbsd94c9vhd41lf9vialqrykbmi3zig"))))
    (properties `((upstream-name . "hsndfile-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsndfile)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pulseaudio) libsndfile)))
    (home-page "http://haskell.org/haskellwiki/Hsndfile")
    (synopsis "Haskell bindings for libsndfile (Data.Vector interface)")
    (description
     "Haskell bindings for libsndfile (@@Data.Vector@@ interface).

For more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-hsndfile-vector

(define-public haskell-9.2-hspec-expectations-pretty-diff
  (package
    (name "haskell-9.2-hspec-expectations-pretty-diff")
    (version "0.7.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-pretty-diff/hspec-expectations-pretty-diff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wksgvdj50yc3p4bg3wmacf2w75v7p8nlq1g33z5amrwllig6m49"))))
    (properties `((upstream-name . "hspec-expectations-pretty-diff")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hscolour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-nicify-lib)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-unicode-show)))
    (home-page
     "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme>")
    (license license:expat)))

haskell-9.2-hspec-expectations-pretty-diff

(define-public haskell-9.2-hsyslog
  (package
    (name "haskell-9.2-hsyslog")
    (version "5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsyslog/hsyslog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kkypn0dd92aqv8dr112bhkr9k9r9mchnyyvy41kvhj2zg447v1y"))))
    (properties `((upstream-name . "hsyslog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "0k1j46nk3z64zw4bqmvw5lgy16ih200m66rv4b6ygjqv7nglqq0b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/peti/hsyslog")
    (synopsis "FFI interface to syslog(3) from POSIX.1-2001")
    (description
     "A Haskell interface to @@syslog(3)@@ as specified in
<http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.
The entire public API lives in \"System.Posix.Syslog\". There is a set of exposed
modules available underneath that one, which contain various implementation details
that may be useful to other developers who want to implement syslog-related
functionality. /Users/ of @@syslog@@, however, do not need them.

An example program that demonstrates how to use this library is available in the
<https://github.com/peti/hsyslog/blob/master/example/Main.hs examples> directory of
this package.")
    (license license:bsd-3)))

haskell-9.2-hsyslog

(define-public haskell-9.2-hunit-dejafu
  (package
    (name "haskell-9.2-hunit-dejafu")
    (version "2.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hunit-dejafu/hunit-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c43d687fi2i8ma51rgcb7qv7xpj4fb02492bd5yzbddnw5k7r77"))))
    (properties `((upstream-name . "hunit-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-dejafu)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the HUnit test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/HUnit HUnit>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-9.2-hunit-dejafu

(define-public haskell-9.2-immortal
  (package
    (name "haskell-9.2-immortal")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (home-page "https://github.com/feuerbach/immortal")
    (synopsis "Spawn threads that never die (unless told to do so)")
    (description "A small library to create threads that never die.
This is useful e.g. for writing servers.")
    (license license:expat)))

haskell-9.2-immortal

(define-public haskell-9.2-indents
  (package
    (name "haskell-9.2-indents")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/indents/indents-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dpcwiz0dwn5aqdsc50plfaawh86adhf7jx5dsmhn5q5nz32qn51"))))
    (properties `((upstream-name . "indents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zbcf8m4n63ff06hjp0mr18i59y5wd6c1k5z1j6rnl7kymghkjrg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "http://github.com/jaspervdj/indents")
    (synopsis "indentation sensitive parser-combinators for parsec")
    (description
     "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.")
    (license license:bsd-3)))

haskell-9.2-indents

(define-public haskell-9.2-jira-wiki-markup
  (package
    (name "haskell-9.2-jira-wiki-markup")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jira-wiki-markup/jira-wiki-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p6axj6km4440ss5naw68r3r85si4qxqgrklp6ssfyapawy0s88w"))))
    (properties `((upstream-name . "jira-wiki-markup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "043x87s8lyg0ck2krwdn1ncr0sxc7p03jmgykwyvg8c7i56n3m7n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/tarleb/jira-wiki-markup")
    (synopsis "Handle Jira wiki markup")
    (description "Parse jira wiki text into an abstract syntax tree for easy
transformation to other formats.")
    (license license:expat)))

haskell-9.2-jira-wiki-markup

(define-public haskell-9.2-kdt
  (package
    (name "haskell-9.2-kdt")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kdt/kdt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0sb4vmljkvw4hx3fi7xxyc6wc8vmnpgaj38m3jlbyv22qjp1qf3a"))))
    (properties `((upstream-name . "kdt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-heap)))
    (home-page "https://github.com/giogadi/kdt")
    (synopsis
     "Fast and flexible k-d trees for various types of point queries.")
    (description
     "This package includes static and dynamic versions of k-d trees,
as well as \\\"Map\\\" variants that store data at each point in the
k-d tree structure. Supports nearest neighbor,
k nearest neighbors, points within a given radius, and points
within a given range.
To learn to use this package, start with the documentation for
the \"Data.KdTree.Static\" module.")
    (license license:expat)))

haskell-9.2-kdt

(define-public haskell-9.2-ki
  (package
    (name "haskell-9.2-ki")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ki/ki-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "04wglc9ddf9g2amr2h9pdcv0pzn6gqsqg67hds5zwz1jjdbk52ad"))))
    (properties `((upstream-name . "ki") (hidden? . #f)))
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
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/awkward-squad/ki")
    (synopsis "A lightweight structured concurrency library")
    (description
     "A lightweight structured concurrency library.

For a variant of this API generalized to
@@<https://hackage.haskell.org/package/unliftio-core/docs/Control-Monad-IO-Unlift.html#t:MonadUnliftIO MonadUnliftIO>@@,
see @@<https://hackage.haskell.org/package/ki-unlifted ki-unlifted>@@.

Remember to link your program with @@-threaded@@ to use the threaded runtime!")
    (license license:bsd-3)))

haskell-9.2-ki

(define-public haskell-9.2-language-javascript
  (package
    (name "haskell-9.2-language-javascript")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-javascript/language-javascript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6igb54cxm2jywgc3sq53f52gcsc39wd3g78yisfzvl9jm3d86i"))))
    (properties `((upstream-name . "language-javascript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (home-page "https://github.com/erikd/language-javascript")
    (synopsis "Parser for JavaScript")
    (description
     "Parses Javascript into an Abstract Syntax Tree (AST).  Initially intended as frontend to hjsmin.

Note: Version 0.5.0 breaks compatibility with prior versions, the AST has been reworked to allow
round trip processing of JavaScript.")
    (license license:bsd-3)))

haskell-9.2-language-javascript

(define-public haskell-9.2-linux-file-extents
  (package
    (name "haskell-9.2-linux-file-extents")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linux-file-extents/linux-file-extents-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4vznam1a8vf3nixhbmw38rpzkvmbka0cbdfdsgfrpn03kxjz3c"))))
    (properties `((upstream-name . "linux-file-extents") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/redneb/linux-file-extents")
    (synopsis "Retrieve file fragmentation information under Linux")
    (description
     "This package provides a simple wrapper around the Linux FIEMAP ioctl.
It can be used to retrieve the list of all the extents of any given
file, i.e. the area of the disk where the file is actually stored. This is
similar to the @@filefrag@@ command line tool provided by the @@e2fsprogs@@
package.")
    (license license:bsd-3)))

haskell-9.2-linux-file-extents

(define-public haskell-9.2-linux-namespaces
  (package
    (name "haskell-9.2-linux-namespaces")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linux-namespaces/linux-namespaces-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rvkzfmd07sz46k059ly80cjgwx67igfw8zsw8c6ljsp3hsdn4hl"))))
    (properties `((upstream-name . "linux-namespaces") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/redneb/hs-linux-namespaces")
    (synopsis "Work with linux namespaces: create new or enter existing ones")
    (description
     "This library provides bindings to the @@unshare(2)@@ and @@setns(2)@@ linux
system calls.")
    (license license:bsd-3)))

haskell-9.2-linux-namespaces

(define-public haskell-9.2-lmdb
  (package
    (name "haskell-9.2-lmdb")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lmdb/lmdb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z8wj06b5ii0w6pls2jlqmd3mhyrplhxd1c6h1my1p0w45b2hmc0"))))
    (properties `((upstream-name . "lmdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) lmdb)))
    (home-page "http://github.com/dmbarbour/haskell-lmdb")
    (synopsis "Lightning MDB bindings ")
    (description
     "LMDB is a read-optimized Berkeley DB replacement developed by Symas
for the OpenLDAP project. LMDB has impressive performance characteristics
and a friendly BSD-style OpenLDAP license. See <http://symas.com/mdb/>.

This library has Haskell bindings to the LMDB library. You must install
the lmdb development files before installing this library,
e.g. `sudo apt-get install liblmdb-dev` works for Ubuntu 14.04.

For now, only a low level interface is provided, and the author is moving
on to use LMDB rather than further develop its bindings. If a higher level
API is desired, please consider contributing, or develop a separate package.")
    (license license:bsd-2)))

haskell-9.2-lmdb

(define-public haskell-9.2-lockfree-queue
  (package
    (name "haskell-9.2-lockfree-queue")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lockfree-queue/lockfree-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vlrydp3ywqgfnhmfm7zhdfn3nrkd7q8lj9apa34y35yvh67gxm0"))))
    (properties `((upstream-name . "lockfree-queue") (hidden? . #f)))
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
                     haskell-9.2-abstract-deque)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-abstract-deque-tests)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-atomic-primops)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
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

haskell-9.2-lockfree-queue

(define-public haskell-9.2-lua
  (package
    (name "haskell-9.2-lua")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lua/lua-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "07wni3ji46ndqabwffgwzij2jk34dq2d66z15hcd6jg33sqnym45"))))
    (properties `((upstream-name . "lua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-lua" "-f-apicheck" "-f-lua_32bits" "-fallow-unsafe-gc" "-fexport-dynamic" "-f-pkg-config")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hslua.org/")
    (synopsis "Lua, an embeddable scripting language")
    (description "This package provides bindings and types to bridge
Haskell and <https://www.lua.org/ Lua>.

The full Lua interpreter version 5.4.4 is included.
Alternatively, a system-wide Lua installation can be
linked instead.")
    (license license:expat)))

haskell-9.2-lua

(define-public haskell-9.2-lz4
  (package
    (name "haskell-9.2-lz4")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lz4/lz4-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1wck0sl7m873pqnpmn95vrp9jbr7awjdp9rrkqgj0nd3l6z65k4q"))))
    (properties `((upstream-name . "lz4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)))
    (home-page "http://github.com/mwotton/lz4hs")
    (synopsis "LZ4 compression for ByteStrings")
    (description
     "High level bindings to the LZ4 compression library.

Currently based on lz4 r119. C sources are included and no external
dependencies are needed other than @@cereal@@.")
    (license license:bsd-3)))

haskell-9.2-lz4

(define-public haskell-9.2-messagepack
  (package
    (name "haskell-9.2-messagepack")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/messagepack/messagepack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1naa6lrvy56z6r41r800v4bqa3467j5d6rvgq9npaz6nm2nvrvmk"))))
    (properties `((upstream-name . "messagepack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)))
    (home-page "https://github.com/rodrigosetti/messagepack")
    (synopsis "Serialize instance for Message Pack Object")
    (description "Serialize instance for Message Pack Object")
    (license license:expat)))

haskell-9.2-messagepack

(define-public haskell-9.2-miniutter
  (package
    (name "haskell-9.2-miniutter")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/miniutter/miniutter-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04xpb9jyhvi8cs61xv3192kwis4nh1dib4s33c747j8yfg3q90m6"))))
    (properties `((upstream-name . "miniutter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-minimorph)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (home-page "https://github.com/Mikolaj/miniutter")
    (synopsis "Simple English clause creation from arbitrary words")
    (description
     "This library helps in generating simple present tense
English sentences from short, parametrized descriptions.
In a typical use, the structure of a clause is fixed,
but the particular words to be used vary in arbitrary ways.
The main goal of the library is to minimize the API
complexity and the code size of programs that use it.
The library doesn't attempt to ban incorrect English sentences,
but just make the creation of the simple correct ones easy
and predictable.")
    (license license:bsd-3)))

haskell-9.2-miniutter

(define-public haskell-9.2-monad-loops
  (package
    (name "haskell-9.2-monad-loops")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/mokus0/monad-loops")
    (synopsis "Monadic loops")
    (description "Some useful control operators for looping.

New in 0.4: STM loop operators have been split into a
new package instead of being conditionally-built.

New in 0.3.2.0: various functions for traversing lists and
computing minima/maxima using arbitrary procedures to compare
or score the elements.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-monad-loops

(define-public haskell-9.2-monad-par-extras
  (package
    (name "haskell-9.2-monad-par-extras")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par-extras/monad-par-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bl4bd6jzdc5zm20q1g67ppkfh6j6yn8fwj6msjayj621cck67p2"))))
    (properties `((upstream-name . "monad-par-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-abstract-par)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "Combinators and extra features for Par monads")
    (description "The modules below provide additional
data structures, and other added capabilities
layered on top of the 'Par' monad.")
    (license license:bsd-3)))

haskell-9.2-monad-par-extras

(define-public haskell-9.2-mstate
  (package
    (name "haskell-9.2-mstate")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mstate/mstate-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13jv04skkb0ysxx9gswynp7fg7yz3nwy5zhzp209fbwr9izxcm05"))))
    (properties `((upstream-name . "mstate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-monad-peel)))
    (home-page "https://hackage.haskell.org/package/mstate")
    (synopsis "MState: A consistent State monad for concurrent applications.")
    (description
     "MState offers a State monad which can be used in concurrent
applications. It also manages new threads and waits until the
whole state monad has been evaluated/executed before it returns
the state values (if desired).")
    (license license:bsd-3)))

haskell-9.2-mstate

(define-public haskell-9.2-netcode-io
  (package
    (name "haskell-9.2-netcode-io")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netcode-io/netcode-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "132rih1fd2qdshnpb8q3glhwgc8790pm8xpm3786hnrl3di1384z"))))
    (properties `((upstream-name . "netcode-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages crypto) libsodium)))
    (home-page "http://www.github.com/Mokosha/netcode-io")
    (synopsis "Bindings to the low-level netcode.io library.")
    (description "Bindings to the low-level netcode.io library, which come
in two flavors: c-level bindings and a high-level
interface to the library.
For the low level interface, refer to the
Bindings.Netcode.IO module.
For the high-level interface, which is a bit closer to
idiomatic Haskell, refer to the Netcode.IO module.")
    (license license:bsd-3)))

haskell-9.2-netcode-io

(define-public haskell-9.2-netwire-input
  (package
    (name "haskell-9.2-netwire-input")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netwire-input/netwire-input-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f9xxlcpy2brqn5hv0mdc428fav402jsqa1b8h4s8b09qa3v1ii9"))))
    (properties `((upstream-name . "netwire-input") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-netwire)))
    (home-page "https://www.github.com/Mokosha/netwire-input")
    (synopsis "Input handling abstractions for netwire")
    (description
     "This package contains a collection of Monad typeclasses that
support interaction with input devices such as keyboard and
mice. Moreover, these typeclasses are used to create wires from
the netwire package the produce mouse and keyboard input values
in a reactive way. This package cannot be used independently
and must be used with another package that provides instantiation
of these typeclasses such as netwire-input-glfw.")
    (license license:expat)))

haskell-9.2-netwire-input

(define-public haskell-9.2-network
  (package
    (name "haskell-9.2-network")
    (version "3.1.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/network/network-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "119xqsyj44ix0z79mzfpww0cd9936bki1xa7cwykvbx1y7z20xkz"))))
    (properties `((upstream-name . "network") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/haskell/network")
    (synopsis "Low-level networking interface")
    (description
     "This package provides a low-level networking interface.

=== High-Level Packages
Other packages provide higher level interfaces:

* connection
* hookup
* network-simple

=== Extended Packages
@@network@@ seeks to provide a cross-platform core for networking. As such some
APIs live in extended libraries. Packages in the @@network@@ ecosystem are
often prefixed with @@network-@@.

==== @@network-bsd@@
In @@network-3.0.0.0@@ the @@Network.BSD@@ module was split off into its own
package, @@network-bsd-3.0.0.0@@.

==== @@network-uri@@
In @@network-2.6@@ the @@Network.URI@@ module was split off into its own package,
@@network-uri-2.6@@. If you're using the @@Network.URI@@ module you can
automatically get it from the right package by adding this to your @@.cabal@@
file:

> library
>   build-depends: network-uri-flag")
    (license license:bsd-3)))

haskell-9.2-network

(define-public haskell-9.2-nfc
  (package
    (name "haskell-9.2-nfc")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nfc/nfc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "01ld7bdcaplxypaz8w3709g2l4c0gfpxz14q6hgbh9kf6wrnr8iw"))))
    (properties `((upstream-name . "nfc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/centromere/nfc#readme")
    (synopsis "libnfc bindings")
    (description "nfc is a set of bindings to libnfc")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-nfc

(define-public haskell-9.2-nondeterminism
  (package
    (name "haskell-9.2-nondeterminism")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nondeterminism/nondeterminism-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0avbdmzz2p402hniz2kgnz3gjizwa4b2157v8wcf6vzxkbsrjspr"))))
    (properties `((upstream-name . "nondeterminism") (hidden? . #f)))
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
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/nondeterminism")
    (synopsis
     "A monad and monad transformer for nondeterministic computations.")
    (description "Nondeterministic computations")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-nondeterminism

(define-public haskell-9.2-numeric-prelude
  (package
    (name "haskell-9.2-numeric-prelude")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-prelude/numeric-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04x6ry2sxr5hsiz4098dn2gqyjqywiq2xk0anf6wc4xrvasgccjs"))))
    (properties `((upstream-name . "numeric-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-lib)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-negative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Numeric_Prelude")
    (synopsis "An experimental alternative hierarchy of numeric type classes")
    (description
     "The package provides an experimental alternative hierarchy
of numeric type classes.
The type classes are more oriented at mathematical structures
and their methods come with laws that the instances must fulfill.")
    (license license:bsd-3)))

haskell-9.2-numeric-prelude

(define-public haskell-9.2-pipes-parse
  (package
    (name "haskell-9.2-pipes-parse")
    (version "3.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-parse/pipes-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05cd0j1avkzmryf3869hfpvd9xmzbpz4kc65srswx36n06dkz5x3"))))
    (properties `((upstream-name . "pipes-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1pg7hpk6ny6jxciw58pmn03dip31ll5wxyf8b0s1x22kzfc40fsr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)))
    (home-page "https://hackage.haskell.org/package/pipes-parse")
    (synopsis "Parsing infrastructure for the pipes ecosystem")
    (description
     "@@pipes-parse@@ builds upon the @@pipes@@ library to provide shared
parsing idioms and utilities:

* /Leftovers/: Save unused input for later consumption

* /Leftover propagation/: Leftovers are propagated backwards perfectly

* /Connect and Resume/: Use @@StateT@@ to save unused input for later

* /Termination Safety/: Detect and recover from end of input

@@Pipes.Parse@@ contains the full documentation for this library.

Read @@Pipes.Parse.Tutorial@@ for an extensive tutorial.")
    (license license:bsd-3)))

haskell-9.2-pipes-parse

(define-public haskell-9.2-pipes-random
  (package
    (name "haskell-9.2-pipes-random")
    (version "1.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-random/pipes-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xsb0cxksrrkv81yk9qb7b3g7niz3sc7sz0960hxn16hwjymkv5k"))))
    (properties `((upstream-name . "pipes-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/fosskers/pipes-random")
    (synopsis "Producers for handling randomness.")
    (description "Producers for handling randomness.")
    (license license:bsd-3)))

haskell-9.2-pipes-random

(define-public haskell-9.2-pipes-safe
  (package
    (name "haskell-9.2-pipes-safe")
    (version "2.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-safe/pipes-safe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ha0q1dwl52rn59shmk8jhp7grngpiwmp8x4qa9h54flvxkqk12x"))))
    (properties `((upstream-name . "pipes-safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0g1ib89dwhblc19vc8spcjdc10pg56avs9480i55ab315wjfsna2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
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

haskell-9.2-pipes-safe

(define-public haskell-9.2-postgresql-libpq
  (package
    (name "haskell-9.2-postgresql-libpq")
    (version "0.9.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-libpq/postgresql-libpq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w2l687r9z92snvd0cjyv3dxghgr5alyw0vc2c6bp2600pc2nnfi"))))
    (properties `((upstream-name . "postgresql-libpq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-pkg-config")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/haskellari/postgresql-libpq")
    (synopsis "low-level binding to libpq")
    (description "This is a binding to libpq: the C application
programmer's interface to PostgreSQL. libpq is a
set of library functions that allow client
programs to pass queries to the PostgreSQL
backend server and to receive the results of
these queries.")
    (license license:bsd-3)))

haskell-9.2-postgresql-libpq

(define-public haskell-9.2-reliable-io
  (package
    (name "haskell-9.2-reliable-io")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reliable-io/reliable-io-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15hc82xp8p2jr9q0acssir81fcpvgahj4s19j8352adzp2jiv2k6"))))
    (properties `((upstream-name . "reliable-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "http://www.github.com/Mokosha/reliable-io")
    (synopsis "Bindings to the low-level reliable.io library.")
    (description "Bindings to the low-level reliable.io library, which come
in two flavors: c-level bindings and a high-level
interface to the library.
For the low level interface, refer to the
Bindings.Reliable.IO module.
For the high-level interface, which is a bit closer to
idiomatic Haskell, refer to the Reliable.IO module.")
    (license license:bsd-3)))

haskell-9.2-reliable-io

(define-public haskell-9.2-resolv
  (package
    (name "haskell-9.2-resolv")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/resolv/resolv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wa6wsh6i52q4ah2z0hgzlks325kigch4yniz0y15nw4skxbm8l1"))))
    (properties `((upstream-name . "resolv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0df5y8bj9bxjmqnkvpwxvb17k70g1i174xs6vfrv9f1lys7xkqk1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)))
    (home-page "https://hackage.haskell.org/package/resolv")
    (synopsis
     "Domain Name Service (DNS) lookup via the libresolv standard library routines")
    (description
     "This package implements an API for accessing
the [Domain Name Service (DNS)](https://tools.ietf.org/html/rfc1035)
resolver service via the standard @@libresolv@@ system library (whose
API is often available directly via the standard @@libc@@ C library) on
Unix systems.

This package also includes support for decoding message record types
as defined in the following RFCs:

- [RFC 1035](https://tools.ietf.org/html/rfc1035): Domain Names - Implementation And Specification
- [RFC 1183](https://tools.ietf.org/html/rfc1183): New DNS RR Definitions
- [RFC 2782](https://tools.ietf.org/html/rfc2782): A DNS RR for specifying the location of services (DNS SRV)
- [RFC 2915](https://tools.ietf.org/html/rfc2915): The Naming Authority Pointer (NAPTR) DNS Resource Record
- [RFC 3596](https://tools.ietf.org/html/rfc3596): DNS Extensions to Support IP Version 6
- [RFC 4034](https://tools.ietf.org/html/rfc4034): Resource Records for the DNS Security Extensions
- [RFC 4255](https://tools.ietf.org/html/rfc4255): Using DNS to Securely Publish Secure Shell (SSH) Key Fingerprints
- [RFC 4408](https://tools.ietf.org/html/rfc4408): Sender Policy Framework (SPF) for Authorizing Use of Domains in E-Mail, Version 1
- [RFC 5155](https://tools.ietf.org/html/rfc5155): DNS Security (DNSSEC) Hashed Authenticated Denial of Existence
- [RFC 6844](https://tools.ietf.org/html/rfc6844): DNS Certification Authority Authorization (CAA) Resource Record
- [RFC 6891](https://tools.ietf.org/html/rfc6891): Extension Mechanisms for DNS (EDNS(0))
- [RFC 7553](https://tools.ietf.org/html/rfc7553): The Uniform Resource Identifier (URI) DNS Resource Record

For Windows, the package [windns](https://hackage.haskell.org/package/windns)
provides a compatible subset of this package's API.")
    (license license:gpl2+)))

haskell-9.2-resolv

(define-public haskell-9.2-run-haskell-module
  (package
    (name "haskell-9.2-run-haskell-module")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/run-haskell-module/run-haskell-module-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ra8rv7cbsj1x8vfd3sbynd7a73v9arfimzcfhg9j6blqcii2i2d"))))
    (properties `((upstream-name . "run-haskell-module") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)))
    (home-page "https://hackage.haskell.org/package/run-haskell-module")
    (synopsis "Running newly generated Haskell source module.")
    (description "Running generated test code in Stack/Cabal/GHC environment.
")
    (license license:bsd-3)))

haskell-9.2-run-haskell-module

(define-public haskell-9.2-sample-frame
  (package
    (name "haskell-9.2-sample-frame")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sample-frame/sample-frame-"
                    version ".tar.gz"))
              (sha256
               (base32
                "105hbd7s870vcjx49gk395craa4slcrngara8q3zfwn1cdpig49c"))))
    (properties `((upstream-name . "sample-frame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildbenchmarks" "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Handling of samples in an (audio) signal")
    (description
     "This package provides a type class
to handle signed and unsigned samples
of various size and number of channels in a uniform way.

We expect that you use the types 'Int8', 'Word8' and so on
for monophonic samples and thus provide instances of the class for them.
Further we define Stereo record and mu-law sample type.
Quadrophony can be achieved by nested Stereo value,
but I'm uncertain, whether this is a good way to go.
Maybe we add 5+1 channels or so in future.

This is used by packages @@sox@@, @@alsa@@, @@synthesizer@@.")
    (license license:bsd-3)))

haskell-9.2-sample-frame

(define-public haskell-9.2-scalpel-core
  (package
    (name "haskell-9.2-scalpel-core")
    (version "0.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scalpel-core/scalpel-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yl1lsi5xm3qdlww2sb6vyppjiisj54f4yzvffv3qg8dgkfjfdra"))))
    (properties `((upstream-name . "scalpel-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-pointedlist)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-regex-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel core provides a subset of the scalpel web scraping library that is
intended to have lightweight dependencies and to be free of all non-Haskell
dependencies.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-scalpel-core

(define-public haskell-9.2-scrypt
  (package
    (name "haskell-9.2-scrypt")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scrypt/scrypt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cnrjdq1ncv224dlk236a7w29na8r019d2acrsxlsaiy74iadh1y"))))
    (properties `((upstream-name . "scrypt") (hidden? . #f)))
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
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (home-page "http://github.com/informatikr/scrypt")
    (synopsis
     "Stronger password hashing via sequential memory-hard functions.")
    (description
     "This package provides bindings to Colin Percival's `scrypt`
implementation (<http://www.tarsnap.com/scrypt.html>). Scrypt is a key
derivation function designed to be far more secure against hardware
brute-force attacks than alternative functions such as PBKDF2 or bcrypt.

Details of the scrypt key derivation function are given in a paper by
Colin Percival, Stronger Key Derivation via Sequential Memory-Hard
Functions: <http://www.tarsnap.com/scrypt/scrypt.pdf>.")
    (license license:bsd-3)))

haskell-9.2-scrypt

(define-public haskell-9.2-setlocale
  (package
    (name "haskell-9.2-setlocale")
    (version "1.0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/setlocale/setlocale-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19rv89jkhq5ic7j5rzpygnmsbzim2mn8ip0m292za613q88gywir"))))
    (properties `((upstream-name . "setlocale") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1k4idj2xl9dg5nfz128xazrrydz9mgm3bbjrc0cyby8n3c0ij9x1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://gitlab.com/Kritzefitz/haskell-setlocale/")
    (synopsis "Haskell bindings to setlocale")
    (description "")
    (license license:bsd-3)))

haskell-9.2-setlocale

(define-public haskell-9.2-shared-memory
  (package
    (name "haskell-9.2-shared-memory")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shared-memory/shared-memory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g1s08zjpj9xaaff3qg29k6fhnpiig9fqv9i7879yhllh50kjrr6"))))
    (properties `((upstream-name . "shared-memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://github.com/nh2/shared-memory")
    (synopsis "POSIX shared memory")
    (description "POSIX shared memory library.")
    (license license:expat)))

haskell-9.2-shared-memory

(define-public haskell-9.2-shelltestrunner
  (package
    (name "haskell-9.2-shelltestrunner")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shelltestrunner/shelltestrunner-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a5kzqbwg6990249ypw0cx6cqj6663as1kbj8nzblcky8j6kbi6b"))))
    (properties `((upstream-name . "shelltestrunner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-filemanip)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (home-page "https://github.com/simonmichael/shelltestrunner")
    (synopsis "Easy, repeatable testing of CLI programs/commands")
    (description
     "shelltestrunner (executable: shelltest) is a portable
command-line tool for testing command-line programs, or general shell
commands, released under GPLv3+.  It reads simple test specifications
defining a command to run, some input, and the expected output,
stderr, and exit status.  It can run tests in parallel, selectively,
with a timeout, in color, etc.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-shelltestrunner

(define-public haskell-9.2-storable-tuple
  (package
    (name "haskell-9.2-storable-tuple")
    (version "0.0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-tuple/storable-tuple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dfzhxgkn1l6ls7zh6iifhyvhm8l47n40z0ar23c6ibsa94w1ynw"))))
    (properties `((upstream-name . "storable-tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/storable-tuple/")
    (synopsis "Storable instance for pairs and triples")
    (description
     "Provides a Storable instance for pair and triple
which should be binary compatible with C99 and C++.
The only purpose of this package is to provide a standard location
for this instance so that other packages needing this instance
can play nicely together.")
    (license license:bsd-3)))

haskell-9.2-storable-tuple

(define-public haskell-9.2-stripe-signature
  (package
    (name "haskell-9.2-stripe-signature")
    (version "1.0.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-signature/stripe-signature-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r982h1vd06yd1kyhyqf3s982a34amlnfzwykg3cs6pscpqbg7mz"))))
    (properties `((upstream-name . "stripe-signature") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stripe-concepts)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Verification of Stripe webhook signatures")
    (description
     "When <https://stripe.com/ Stripe> sends an event to your webhook, it
includes an HTTP header named @@Stripe-Signature@@. You should use this
to verify the authenticity of the request to ensure that you are not
acting upon forged events originating from some source other than
Stripe.")
    (license license:expat)))

haskell-9.2-stripe-signature

(define-public haskell-9.2-structured-cli
  (package
    (name "haskell-9.2-structured-cli")
    (version "2.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/structured-cli/structured-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18l4jy328djmrwhmcmli73592qlld85fwbwby95mghwdbdy2i68g"))))
    (properties `((upstream-name . "structured-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (home-page "https://gitlab.com/codemonkeylabs/structured-cli#readme")
    (synopsis "Application library for building interactive console CLIs")
    (description
     "This module provides the tools to build a complete \"structured\" CLI application, similar to those found in systems like Cisco IOS or console configuration utilities etc. It aims to be easy for implementors to use.")
    (license license:bsd-3)))

haskell-9.2-structured-cli

(define-public haskell-9.2-syb
  (package
    (name "haskell-9.2-syb")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/syb/syb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1qxjjndfwz2vvpz9707banmcn6jl2v6w6zp401zxaj327fccchw1"))))
    (properties `((upstream-name . "syb") (hidden? . #f)))
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
                     haskell-9.2-tasty-hunit)))
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

haskell-9.2-syb

(define-public haskell-9.2-tasty-dejafu
  (package
    (name "haskell-9.2-tasty-dejafu")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-dejafu/tasty-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pj7w81kcvbdk9fv10gwmjfivpa6a9m1ldvr9ck484lnb9684a9s"))))
    (properties `((upstream-name . "tasty-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-dejafu)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the Tasty test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/tasty tasty>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-9.2-tasty-dejafu

(define-public haskell-9.2-tasty-discover
  (package
    (name "haskell-9.2-tasty-discover")
    (version "4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-discover/tasty-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j95njl3ml7cfxnwv0i17ijca84fgyrjs2cfw4g5yh1m4x2zvg34"))))
    (properties `((upstream-name . "tasty-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)))
    (home-page "https://github.com/haskell-works/tasty-discover")
    (synopsis "Test discovery for the tasty framework.")
    (description
     "Automatic test discovery and runner for the tasty framework.
Prefix your test case names and tasty-discover will discover, collect and run them.
All popular test libraries are covered. Configure once and then just write your tests.
Avoid forgetting to add test modules to your Cabal/Hpack files.
Tasty ingredients are included along with various configuration options for different
use cases.
Please see the `README.md` below for how to get started.")
    (license license:expat)))

haskell-9.2-tasty-discover

(define-public haskell-9.2-tasty-focus
  (package
    (name "haskell-9.2-tasty-focus")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-focus/tasty-focus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i6syd1mb1mrf2ys0f4nx3j9xvkb73rwv627b8hr5xkipwp4pjm2"))))
    (properties `((upstream-name . "tasty-focus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/jonascarpay/tasty-focus#readme")
    (synopsis "Simple focus mechanism for tasty")
    (description "Simple focus mechanism for tasty, similar to hspec.")
    (license license:bsd-3)))

haskell-9.2-tasty-focus

(define-public haskell-9.2-tasty-hunit-compat
  (package
    (name "haskell-9.2-tasty-hunit-compat")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit-compat/tasty-hunit-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kfxga9j1iy7f00gj3dsh45ywyi7qzdlrmp16gr4ir3b08rwhj2m"))))
    (properties `((upstream-name . "tasty-hunit-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/serokell/tasty-hunit-compat#readme")
    (synopsis "Integration of `HUnit` with `tasty`.")
    (description
     "Implements the proper integration between existing `HUnit` package and `tasty` framework.
The existing solution in `tasty` defines its own primitives that are not compatible with `HUnit`.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-tasty-hunit-compat

(define-public haskell-9.2-tasty-quickcheck
  (package
    (name "haskell-9.2-tasty-quickcheck")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qnc6rdvjvlw08q6sln2n98rvj0s0pp689h6w4z58smjbn0lr25l"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UnkindPartition/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-9.2-tasty-quickcheck

(define-public haskell-9.2-temporary
  (package
    (name "haskell-9.2-temporary")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/feuerbach/temporary")
    (synopsis "Portable temporary file and directory support")
    (description "Functions for creating temporary files and directories.")
    (license license:bsd-3)))

haskell-9.2-temporary

(define-public haskell-9.2-terminal-size
  (package
    (name "haskell-9.2-terminal-size")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/terminal-size/terminal-size-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hv0r8gr1ms258rrz602gd5kziykkxw5zlnnzz5f42r0ly7lq5wc"))))
    (properties `((upstream-name . "terminal-size") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)))
    (home-page "https://hackage.haskell.org/package/terminal-size")
    (synopsis "Get terminal window height and width")
    (description
     "Get terminal window height and width without ncurses dependency.")
    (license license:bsd-3)))

haskell-9.2-terminal-size

(define-public haskell-9.2-test-fun
  (package
    (name "haskell-9.2-test-fun")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-fun/test-fun-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sp19a2i4ahn9mfd1rx4icp6lcnhw5bz192859yj8f8ky4xszryb"))))
    (properties `((upstream-name . "test-fun") (hidden? . #f)))
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
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/Lysxia/test-fun#readme")
    (synopsis "Testable functions")
    (description
     "Generate, shrink, and show functions for testing higher-order properties.
See README.")
    (license license:expat)))

haskell-9.2-test-fun

(define-public haskell-9.2-text-manipulate
  (package
    (name "haskell-9.2-text-manipulate")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-manipulate/text-manipulate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g06ldl6cdnyr31xlks5qm1sj44ccrdvq4bf8dk032mzfkpyyrws"))))
    (properties `((upstream-name . "text-manipulate") (hidden? . #f)))
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
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/brendanhay/text-manipulate")
    (synopsis
     "Case conversion, word boundary manipulation, and textual subjugation.")
    (description
     "Manipulate identifiers and structurally non-complex pieces
of text by delimiting word boundaries via a combination of whitespace,
control-characters, and case-sensitivity.

Has support for common idioms like casing of programmatic variable names,
taking, dropping, and splitting by word, and modifying the first character
of a piece of text.")
    (license license:mpl2.0)))

haskell-9.2-text-manipulate

(define-public haskell-9.2-traverse-with-class
  (package
    (name "haskell-9.2-traverse-with-class")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/traverse-with-class/traverse-with-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c0h902hr3gnlmlvqjhz3k5abyg0ays2g2c1kwrhbz0nhgfwk656"))))
    (properties `((upstream-name . "traverse-with-class") (hidden? . #f)))
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
                     haskell-9.2-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/traverse-with-class")
    (synopsis "Generic applicative traversals")
    (description "This is a generic programming library in the spirit of
\\\"Scrap your boilerplate with class\\\", but with several
improvements — most notably, it's based on the @@gtraverse@@
function instead of @@gfoldl@@.
@@gtraverse@@ is equivalent in power to @@gfoldl@@, but lets
you more easily write non-standard views of the data type.")
    (license license:expat)))

haskell-9.2-traverse-with-class

(define-public haskell-9.2-ttc
  (package
    (name "haskell-9.2-ttc")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttc/ttc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0x5xq00ls290s3ivzzlg4dq0rgzx1x6nzkch49ylwvb5xicmzgm5"))))
    (properties `((upstream-name . "ttc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")
       #:cabal-revision
       ("1" "181lvsk3j5jp4249dcbvqksn5hkmnal3x3cllmi3a7nf4a8g4pwp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/ExtremaIS/ttc-haskell#readme")
    (synopsis "Textual Type Classes")
    (description
     "This library provides type classes for conversion between data types and
textual data types (strings).  Please see the README on GitHub at
<https://github.com/ExtremaIS/ttc-haskell#readme>.")
    (license license:expat)))

haskell-9.2-ttc

(define-public haskell-9.2-unexceptionalio-trans
  (package
    (name "haskell-9.2-unexceptionalio-trans")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unexceptionalio-trans/unexceptionalio-trans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "100sfbrpaldz37a176qpfkk1nx5acyh8pchjmb8g5vhzbhyrqniz"))))
    (properties `((upstream-name . "unexceptionalio-trans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0f15n8hqqczwjrcqxwjp2mrd9iycv53sylv407c95nb6d4hw93ci")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-unexceptionalio)))
    (home-page "https://github.com/singpolyma/unexceptionalio-trans")
    (synopsis "A wrapper around UnexceptionalIO using monad transformers")
    (description
     "UnexceptionalIO provides a basic type to witness having caught all
exceptions you can safely handle.  This library builds on that with
transformers like ExceptT to provide a more ergonomic tool for many
cases.

It is intended that you use qualified imports with this library.

> import UnexceptionalIO.Trans (UIO)
> import qualified UnexceptionalIO.Trans as UIO")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-unexceptionalio-trans

(define-public haskell-9.2-unique-logic
  (package
    (name "haskell-9.2-unique-logic")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unique-logic/unique-logic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05y401k00qminds1di27sxvhwjl5xn6yn1qq1vnbhs0ib4s8csvy"))))
    (properties `((upstream-name . "unique-logic") (hidden? . #f)))
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
                     haskell-9.2-explicit-exception)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/unique-logic/")
    (synopsis "Solve simple simultaneous equations")
    (description
     "Solve a number of equations simultaneously.
This is not Computer Algebra,
better think of a kind of type inference algorithm
or logic programming with only one allowed solution.

Only one solution is computed.
Simultaneous equations with multiple solutions are not allowed.
However, variables may remain undefined.
The solver may optionally check for consistency.
It does not do so by default
since with floating point numbers or symbolic expressions
even simple rules may not be consistent.

The modules ordered with respect to abstraction level are:

* \"UniqueLogic.ST.System\":
Construct and solve sets of functional dependencies.
Example: @@assignment3 (+) a b c@@ meaning dependency @@a+b -> c@@.

* \"UniqueLogic.ST.Rule\":
Combine functional dependencies to rules
that can apply in multiple directions.
Example: @@add a b c@@ means relation @@a+b = c@@
which resolves to dependencies @@a+b -> c, c-a -> b, c-b -> a@@.
For an executable example see \"UniqueLogic.ST.Example.Rule\".

* \"UniqueLogic.ST.Expression\":
Allows to write rules using arithmetic operators.
It creates temporary variables automatically.
Example: @@(a+b)*c =:= d@@ resolves to @@a+b = x, x*c = d@@.
For an executable example see \"UniqueLogic.ST.Example.Expression\".

* \"UniqueLogic.ST.System.Simple\":
Provides specialised functions from \"UniqueLogic.ST.System\"
for the case of a system without labels and consistency checks.

* \"UniqueLogic.ST.System.Label\":
Provides a custom constructor for variables.
When creating a variable you decide whether and how
an assignment to this variable shall be logged.
There is an example that shows how to solve a logic system
using symbolic expressions.
The naming and logging allows us to observe shared intermediate results.
For an executable example see \"UniqueLogic.ST.Example.Label\".

* By using more sophisticated monad transformers,
we can check the equations for consistency,
report inconsistencies and how they arised.
We demonstrate that in \"UniqueLogic.ST.Example.Verify\".

The package is purely Haskell 98.")
    (license license:bsd-3)))

haskell-9.2-unique-logic

(define-public haskell-9.2-unique-logic-tf
  (package
    (name "haskell-9.2-unique-logic-tf")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unique-logic-tf/unique-logic-tf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a2hjkm7kwfnqyscxxdw2r2cq3gsydv5ny91vpxxd3paknqqr0cb"))))
    (properties `((upstream-name . "unique-logic-tf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1508h3mn28ks1g31l1hs4gf2fib4ihylb0wrzin52krs7kkbcnvn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-data-ref)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/unique-logic-tf/")
    (synopsis "Solve simple simultaneous equations")
    (description
     "Solve a number of equations simultaneously.
This is not Computer Algebra,
better think of a kind of type inference algorithm
or logic programming with only one allowed solution.

Only one solution is computed.
Simultaneous equations with multiple solutions are not allowed.
However, variables may remain undefined.
The solver may optionally check for consistency.
It does not do so by default
since with floating point numbers or symbolic expressions
even simple rules may not be consistent.

The modules ordered with respect to abstraction level are:

* \"UniqueLogic.ST.TF.System\":
Construct and solve sets of functional dependencies.
Example: @@assignment3 (+) a b c@@ means dependency @@a+b -> c@@.

* \"UniqueLogic.ST.TF.Rule\":
Combine functional dependencies to rules
that can apply in multiple directions.
Example: @@add a b c@@ means relation @@a+b = c@@
which resolves to dependencies @@a+b -> c, c-a -> b, c-b -> a@@.
For an executable example see \"UniqueLogic.ST.TF.Example.Rule\".

* \"UniqueLogic.ST.TF.Expression\":
Allows to write rules using arithmetic operators.
It creates temporary variables automatically.
Example: @@(a+b)*c =:= d@@ resolves to @@a+b = x, x*c = d@@.
For an executable example see \"UniqueLogic.ST.TF.Example.Expression\".

* \"UniqueLogic.ST.TF.System.Simple\":
Provides specialised functions from \"UniqueLogic.ST.TF.System\"
for the case of a system without labels and consistency checks.

* \"UniqueLogic.ST.TF.System.Label\":
Provides a custom constructor for variables.
When creating a variable you decide whether and how
an assignment to this variable shall be logged.
There is an example that shows how to solve a logic system
using symbolic expressions.
The naming and logging allows us to observe shared intermediate results.
For an executable example see \"UniqueLogic.ST.TF.Example.Label\".

* By using more sophisticated monad transformers,
we can check the equations for consistency,
report inconsistencies and how they arised.
We demonstrate that in \"UniqueLogic.ST.TF.Example.Verify\".

This variant of the package requires type families.")
    (license license:bsd-3)))

haskell-9.2-unique-logic-tf

(define-public haskell-9.2-vector-th-unbox
  (package
    (name "haskell-9.2-vector-th-unbox")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-th-unbox/vector-th-unbox-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j81m09xxv24zziv0nanfppckzmas5184jr3npjhc9w49r3cm94a"))))
    (properties `((upstream-name . "vector-th-unbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ki133sixq8pkfys36nl25jzdvnw40qq2bnskdmk2zyjhckdjcna")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/tsurucapital/vector-th-unbox")
    (synopsis "Deriver for Data.Vector.Unboxed using Template Haskell")
    (description
     "A Template Haskell deriver for unboxed vectors, given a pair of coercion
functions to and from some existing type with an Unbox instance.

Refer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.")
    (license license:bsd-3)))

haskell-9.2-vector-th-unbox

(define-public haskell-9.2-vivid-osc
  (package
    (name "haskell-9.2-vivid-osc")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vivid-osc/vivid-osc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "041m4k1aqkw35fp7l03i3ba1jyppr8lia2v2zyq7v8yzby8ngys6"))))
    (properties `((upstream-name . "vivid-osc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)))
    (home-page "https://hackage.haskell.org/package/vivid-osc")
    (synopsis "Open Sound Control encode/decode")
    (description
     "Small, simple, and well-tested implementation of the Open Sound Control
message format.

Example usage:

>>> :set -XOverloadedStrings
>>> msg = OSC \"/foo\" [OSC_S \"bar\", OSC_I 9, OSC_F 0.1, OSC_B \"this-is-binary\"]
>>> :t msg
> msg :: OSC
>>> :t encodeOSC msg
> encodeOSC msg :: ByteString
>>> decodeOSC (encodeOSC msg) == Right msg
> True

Sending it over UDP (e.g. to TidalCycles), using the 'network' package:

@@
&#123;&#45;\\# LANGUAGE OverloadedStrings \\#&#45;&#125;
@@

> import Network.Socket
> import Network.Socket.ByteString as SB
>
> import Vivid.OSC
>
> main = do
>    -- Boring Network.Socket setup:
>    (a:_) <- getAddrInfo Nothing (Just \"127.0.0.1\") (Just \"57120\")
>    s <- socket (addrFamily a) Datagram defaultProtocol
>    connect s (addrAddress a)
>
>    -- The interesting part:
>    SB.send s $ encodeOSC $
>       OSC \"/play2\" [OSC_S \"cps\", OSC_F 1.2, OSC_S \"s\", OSC_S \"bd\"]")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-vivid-osc

(define-public haskell-9.2-webrtc-vad
  (package
    (name "haskell-9.2-webrtc-vad")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://hackage.haskell.org/package/webrtc-vad")
    (synopsis "Easy voice activity detection")
    (description
     "A simple library wrapping WebRTC's voice activity detection engine.")
    (license license:expat)))

haskell-9.2-webrtc-vad

(define-public haskell-9.2-wl-pprint-annotated
  (package
    (name "haskell-9.2-wl-pprint-annotated")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (home-page "https://github.com/minad/wl-pprint-annotated#readme")
    (synopsis "Pretty printer with annotation support")
    (description
     "Wadler/Leijen pretty printer with support for annotations and modernized API. Annotations are useful for coloring. See wl-pprint-console.")
    (license license:bsd-3)))

haskell-9.2-wl-pprint-annotated

(define-public haskell-9.2-xmlgen
  (package
    (name "haskell-9.2-xmlgen")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlgen/xmlgen-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1milbbr2iqwckqbq6i9sypinvs4hs7mzqn274x350psjfy6ajvwj"))))
    (properties `((upstream-name . "xmlgen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vwnqd0lsw81llsn0psga5r6pw7jh69vfbj3rnz7c2fpkc0gjh3j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)))
    (home-page "https://hackage.haskell.org/package/xmlgen")
    (synopsis "Fast XML generation library")
    (description "Library for high-performance XML generation.")
    (license license:bsd-3)))

haskell-9.2-xmlgen

(define-public haskell-9.2-yoga
  (package
    (name "haskell-9.2-yoga")
    (version "0.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yoga/yoga-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14az05jh60ncsyw859b9v9m7lb5xcgsv2478pa3if93vxy1h40ih"))))
    (properties `((upstream-name . "yoga") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ieee754)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://hackage.haskell.org/package/yoga")
    (synopsis "Bindings to Facebook's Yoga layout library")
    (description
     "The <https://facebook.github.com/yoga Yoga> library from
<https://facebook.github.com/ Facebook> is a fast layout engine
written in C that implements flexbox. There are two
main ways to interface with these bindings. The high-level
bindings are stored in the Yoga module and provide a more
Haskell-like interface to the library. The other option is to
directly use the C-level bindings in \"Bindings.Yoga\". If you do
so you do so at your own risk (i.e. you must manage your own
memory).
The examples are not built nor included by default. Please
refer to the source tarball for examples on how to use this
library.
These bindings are not affiliated with Facebook in any way,
and have been developed separately for the sole purpose of
interfacing with their open source library.")
    (license license:bsd-3)))

haskell-9.2-yoga

