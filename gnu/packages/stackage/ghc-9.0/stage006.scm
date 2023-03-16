;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage006)
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
(define-public haskell-9.0-OneTuple
  (package
    (name "haskell-9.0-OneTuple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://hackage.haskell.org/package/OneTuple")
    (synopsis "Singleton Tuple")
    (description
     "This package is a compatibility package for a singleton data type

> data Solo a = Solo a

Note: it's not a @@newtype@@

@@Solo@@ is available in @@base-4.16@@ (GHC-9.2).")
    (license license:bsd-3)))

haskell-9.0-OneTuple

(define-public haskell-9.0-OpenGLRaw
  (package
    (name "haskell-9.0-OpenGLRaw")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-fixed)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-half)
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

haskell-9.0-OpenGLRaw

(define-public haskell-9.0-ascii-char
  (package
    (name "haskell-9.0-ascii-char")
    (version "1.0.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-char/ascii-char-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10vvhpl7y1gpw7gw2hpcckl0pmx7rkn35zy6yl6c9mx0hib0745a"))))
    (properties `((upstream-name . "ascii-char") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0b73pm9z5k3xbpn49fz4m8jwzw3r4z0l2v4alinf5l7n6vx4wvj0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "A Char type representing an ASCII character")
    (description "This package defines a @@Char@@ type that has
128 constructors, one for each ASCII character.")
    (license license:asl2.0)))

haskell-9.0-ascii-char

(define-public haskell-9.0-async
  (package
    (name "haskell-9.0-async")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
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

haskell-9.0-async

(define-public haskell-9.0-bcrypt
  (package
    (name "haskell-9.0-bcrypt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (home-page "https://hackage.haskell.org/package/bcrypt")
    (synopsis "Haskell bindings to the bcrypt password hash")
    (description
     "Haskell bindings to the bcrypt password hash.

Unlike other bindings already in existence, this package is designed to allow users to work directly with password hash strings that include information about the hashing algorithm, strength, and salt. This approach allows hashed passwords to be stored in a single field that can also be used by non-Haskell applications, and makes it easy to implement a policy of updating passwords hashed to an old policy next time the plaintext password is available.

Version 1.1.3 of the OpenWall C source for bcrypt is included in this package (<http://www.openwall.com/crypt/>). The only modification is that the flag which enables the use of assembler has been disabled.
Announcements about hs-bcrypt (including security announcements) will be sent to https://groups.google.com/forum/#!forum/hs-bcrypt-announce/join - if you use this library please consider subscribing. This mailing list is moderated and is expected to have a very low volume of mail traffic.")
    (license license:bsd-3)))

haskell-9.0-bcrypt

(define-public haskell-9.0-bibtex
  (package
    (name "haskell-9.0-bibtex")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-latex)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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

haskell-9.0-bibtex

(define-public haskell-9.0-bindings-GLFW
  (package
    (name "haskell-9.0-bindings-GLFW")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
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

haskell-9.0-bindings-GLFW

(define-public haskell-9.0-blaze-textual
  (package
    (name "haskell-9.0-blaze-textual")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-blaze-textual

(define-public haskell-9.0-case-insensitive
  (package
    (name "haskell-9.0-case-insensitive")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/basvandijk/case-insensitive")
    (synopsis "Case insensitive string comparison")
    (description "The module @@Data.CaseInsensitive@@ provides the 'CI' type
constructor which can be parameterised by a string-like
type like: 'String', 'ByteString', 'Text',
etc.. Comparisons of values of the resulting type will be
insensitive to cases.")
    (license license:bsd-3)))

haskell-9.0-case-insensitive

(define-public haskell-9.0-cereal-text
  (package
    (name "haskell-9.0-cereal-text")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)))
    (home-page "https://github.com/ulikoehler/cereal-text")
    (synopsis "Data.Text instances for the cereal serialization library")
    (description "Data.Text instances for the cereal serialization library.

Provides instances for Text and lazy Text.
Uses UTF-8 encoding for serialization.

Use
@@import Data.Serialize.Text ()@@
to import instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-cereal-text

(define-public haskell-9.0-cereal-vector
  (package
    (name "haskell-9.0-cereal-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/acfoltzer/cereal-vector")
    (synopsis "Serialize instances for Data.Vector types.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-cereal-vector

(define-public haskell-9.0-cipher-aes
  (package
    (name "haskell-9.0-cipher-aes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-securemem)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
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

haskell-9.0-cipher-aes

(define-public haskell-9.0-cipher-camellia
  (package
    (name "haskell-9.0-cipher-camellia")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-securemem)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Camellia block cipher primitives")
    (description "Camellia block cipher primitives")
    (license license:bsd-3)))

haskell-9.0-cipher-camellia

(define-public haskell-9.0-cipher-des
  (package
    (name "haskell-9.0-cipher-des")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-des/cipher-des-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1isazxa2nr1y13y0danfk7wghy34rfpn3f43rw714nk2xk6vrwc5"))))
    (properties `((upstream-name . "cipher-des") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-securemem)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "DES and 3DES primitives")
    (description "DES and 3DES primitives")
    (license license:bsd-3)))

haskell-9.0-cipher-des

(define-public haskell-9.0-cipher-rc4
  (package
    (name "haskell-9.0-cipher-rc4")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-crypto-cipher-tests)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-cipher-rc4")
    (synopsis "Fast RC4 cipher implementation")
    (description "Fast RC4 cipher implementation")
    (license license:bsd-3)))

haskell-9.0-cipher-rc4

(define-public haskell-9.0-code-page
  (package
    (name "haskell-9.0-code-page")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
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

haskell-9.0-code-page

(define-public haskell-9.0-concurrent-supply
  (package
    (name "haskell-9.0-concurrent-supply")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-supply/concurrent-supply-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07zjczcgxwpi8imp0w86vrb78w067b322q5d7zlqla91sbf2gy6c"))))
    (properties `((upstream-name . "concurrent-supply") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-properties")
       #:cabal-revision
       ("1" "1yzrr68k81w3jmrarx3y6z7ymzaaxwab509pp6kkd2fjia3g8wwk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "http://github.com/ekmett/concurrent-supply/")
    (synopsis "A fast concurrent unique identifier supply with a pure API")
    (description
     "A fast supply of concurrent unique identifiers suitable for use
within a single process. Once the initial 'Supply' has been initialized,
the remainder of the API is pure. See \"Control.Concurrent.Supply\" for
details.")
    (license license:bsd-3)))

haskell-9.0-concurrent-supply

(define-public haskell-9.0-crypto-api
  (package
    (name "haskell-9.0-crypto-api")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
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

haskell-9.0-crypto-api

(define-public haskell-9.0-ctrie
  (package
    (name "haskell-9.0-ctrie")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/mcschroeder/ctrie")
    (synopsis "Non-blocking concurrent map")
    (description "A non-blocking concurrent map implementation based on
/lock-free concurrent hash tries/ (aka /Ctries/).")
    (license license:expat)))

haskell-9.0-ctrie

(define-public haskell-9.0-currency
  (package
    (name "haskell-9.0-currency")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-iso3166-country-codes)))
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

haskell-9.0-currency

(define-public haskell-9.0-cutter
  (package
    (name "haskell-9.0-cutter")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cutter/cutter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hka1k012d2nwnkbhbiga6307v1p5s88s2nxkrnymvr0db1ijwqi"))))
    (properties `((upstream-name . "cutter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00fh0bhdlsrik1mq1hm3w6dg4m9c03bk22c3ans309dk5swr9hcy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-spreadsheet)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/cutter")
    (synopsis "Cut files according to a position list")
    (description
     "Cut a file into chunks according to a position list
and concatenate the chunks.
The chunks must not overlap and must be in increasing order.

Use it this way:

> cutter positions.csv <datain >dataout

The file @@positions.csv@@ must be a comma separated spreadsheet file (CSV),
where the first column contains the chunk beginnings
and the second column contains the pause beginnings.
A pause begins one byte after a chunk ends.
The other columns are ignored and may contain annotations of the chunks.

The positions file may also contain line numbers.
In this case you run the command this way:

> cutter -l positions.csv <datain >dataout

Example: remove selected attachments from e-mails in mbox file
using the @@lsmbox@@ command from <http://hackage.haskell.org/package/mbox-utility>.")
    (license license:bsd-3)))

haskell-9.0-cutter

(define-public haskell-9.0-data-fix
  (package
    (name "haskell-9.0-data-fix")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/spell-music/data-fix")
    (synopsis "Fixpoint data types")
    (description
     "Fixpoint types and recursion schemes. If you define your AST as
fixpoint type, you get fold and unfold operations for free.

Thanks for contribution to: Matej Kollar, Herbert Valerio Riedel")
    (license license:bsd-3)))

haskell-9.0-data-fix

(define-public haskell-9.0-disk-free-space
  (package
    (name "haskell-9.0-disk-free-space")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://github.com/redneb/disk-free-space")
    (synopsis "Retrieve information about disk space usage")
    (description
     "A cross-platform library for retrieving information about disk space usage.")
    (license license:bsd-3)))

haskell-9.0-disk-free-space

(define-public haskell-9.0-doctest-extract
  (package
    (name "haskell-9.0-doctest-extract")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-extract/doctest-extract-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ncrq67d6zcqw5al5m2g7q6ys8rxhsq8rrzbj1dlsyl4q63vyrms"))))
    (properties `((upstream-name . "doctest-extract") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1gmydr5gabjp7vnf8knxr8d97cx1wm85n2dmxj7529l05qhia9j6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pathtype)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/doctest-extract/")
    (synopsis
     "Alternative doctest implementation that extracts comments to modules")
    (description
     "@@doctest-extract@@ lets you write test examples and QuickCheck properties
in Haddock comments and extracts them to test modules.
It means that the user sees your tests in the documentation
and knows that the examples and properties are machine-tested,
or at least, she can run the tests herself.

I found the barrier to write tests much lower
when I do not need to write new test modules
but just add some lines to the Haddock comments.
I do not need to think of test names or filling test data structures.
The test identifier is the module name and the line number and
if a test fails I can easily jump to the failing code.


Differences to the original GHCi-based implementation of @@doctest@@:

Pros:

* Package versions for tests are consistent with tested library

* Tests run much faster, especially QuickCheck property tests

* No dependency on GHCi or GHC-as-library

* The tested package need not be ready for compilation.
Our simple parser requires only clearly recognizable Haskell comments.

* QuickCheck properties do not cause confusing type error messages
when actually only identifiers are missing.

* You can inspect extracted modules

* @@doctest@@ collects tests from the transitive hull of imports
of the specified modules.
This might help you to keep the list of modules short.
@@doctest-extract@@ only processes the specified modules
and thus allows you to focus on a module for development of tests.

* With option @@--verbose@@ test source path and line number are formatted
such that Emacs allows you to click and jump to the test definition.

* Report success only of real tests.
@@doctest@@ reports successful imports and
definition of helper types and functions as successful tests.
This makes it hard to monitor the number of real tests,
e.g. whether some tests have been dropped by accident.

Cons:

* Cannot test for output of IO functions
or error messages from partial functions.

* All free variables in QuickCheck properties
must be all-quantified using lambda.
(Could be even seen as an advantage for the reader of your doctests.)

* No support for a single-line 'let' as an example.

* The Test module does not automatically import modules
that the tested module imports.
Thus, you usually have to add a setup section with required imports.

* You need tools additional to @@Cabal@@, e.g. @@make@@ and a @@Makefile@@,
in order generate test modules.")
    (license license:bsd-3)))

haskell-9.0-doctest-extract

(define-public haskell-9.0-enumset
  (package
    (name "haskell-9.0-enumset")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-accessor)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)))
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

haskell-9.0-enumset

(define-public haskell-9.0-event-list
  (package
    (name "haskell-9.0-event-list")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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

haskell-9.0-event-list

(define-public haskell-9.0-exception-mtl
  (package
    (name "haskell-9.0-exception-mtl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-exception-transformers)))
    (home-page "https://hackage.haskell.org/package/exception-mtl")
    (synopsis "Exception monad transformer instances for mtl classes.")
    (description
     "This package provides exception monad transformer instances for
the classes defined by mtl.")
    (license license:bsd-3)))

haskell-9.0-exception-mtl

(define-public haskell-9.0-fin
  (package
    (name "haskell-9.0-fin")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-boring)
                  (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-dec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-some)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-universe-base)))
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

haskell-9.0-fin

(define-public haskell-9.0-fixed-length
  (package
    (name "haskell-9.0-fixed-length")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-tfp)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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

haskell-9.0-fixed-length

(define-public haskell-9.0-freetype2
  (package
    (name "haskell-9.0-freetype2")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://hackage.haskell.org/package/freetype2")
    (synopsis "Haskell bindings for FreeType 2 library")
    (description
     "Mostly complete and mostly raw bindings to the [FreeType2](https://www.freetype.org/) library.

Please check the README for information on how these
bindings operate.")
    (license license:bsd-3)))

haskell-9.0-freetype2

(define-public haskell-9.0-gl
  (package
    (name "haskell-9.0-gl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-fixed)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-half)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/gl")
    (synopsis "Complete OpenGL raw bindings")
    (description "Complete OpenGL raw bindings")
    (license license:bsd-3)))

haskell-9.0-gl

(define-public haskell-9.0-group-by-date
  (package
    (name "haskell-9.0-group-by-date")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/group-by-date/group-by-date-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k5bnk1kz25zgky5rqb214gq5adkz6qi6p16gk0hvy54iyjdj9sa"))))
    (properties `((upstream-name . "group-by-date") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-filemanip)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pathtype)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-shell-utility)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/group-by-date/")
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

haskell-9.0-group-by-date

(define-public haskell-9.0-hashmap
  (package
    (name "haskell-9.0-hashmap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
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

haskell-9.0-hashmap

(define-public haskell-9.0-hashtables
  (package
    (name "haskell-9.0-hashtables")
    (version "1.2.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashtables/hashtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z3h2h0wbiwzj9zs17bggynzgqa77gxcj8h4x28dq3sha81j5rx8"))))
    (properties `((upstream-name . "hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funsafe-tricks" "-f-bounds-checking" "-f-debug" "-f-detailed-profiling" "-f-sse42" "-f-portable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-hashtables

(define-public haskell-9.0-haskell-gi-base
  (package
    (name "haskell-9.0-haskell-gi-base")
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
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Foundation for libraries generated by haskell-gi")
    (description "Foundation for libraries generated by haskell-gi")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-haskell-gi-base

(define-public haskell-9.0-haskey-btree
  (package
    (name "haskell-9.0-haskey-btree")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-ordlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/haskell-haskey/haskey-btree")
    (synopsis "B+-tree implementation in Haskell.")
    (description
     "This package provides two B+-tree implementations. The first one is a pure
B+-tree of a specific order, while the second one is an impure one backed
by a page allocator.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey-btree>")
    (license license:bsd-3)))

haskell-9.0-haskey-btree

(define-public haskell-9.0-hex-text
  (package
    (name "haskell-9.0-hex-text")
    (version "0.1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hex-text/hex-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xyyr6570dbp6mgarz8v56s9kg4pfzk1dc10nw0gg51j6xl1c2zn"))))
    (properties `((upstream-name . "hex-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)))
    (home-page "https://github.com/typeclasses/hex-text")
    (synopsis "ByteString-Text hexidecimal conversions")
    (description "Encode a ByteString as a hexidecimal Text value,
or decode hexidecimal Text as a ByteString.")
    (license license:expat)))

haskell-9.0-hex-text

(define-public haskell-9.0-hfsevents
  (package
    (name "haskell-9.0-hfsevents")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/luite/hfsevents")
    (synopsis "File/folder watching for OS X")
    (description "")
    (license license:bsd-3)))

haskell-9.0-hfsevents

(define-public haskell-9.0-hidapi
  (package
    (name "haskell-9.0-hidapi")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-deepseq-generics)
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

haskell-9.0-hidapi

(define-public haskell-9.0-hopenssl
  (package
    (name "haskell-9.0-hopenssl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/peti/hopenssl")
    (synopsis "FFI Bindings to OpenSSL's EVP Digest Interface")
    (description
     "Foreign-function bindings to the <http://www.openssl.org/ OpenSSL library>.
Currently provides access to the messages digests MD5, DSS, DSS1,
RIPEMD160, and various SHA variants through the EVP digest interface.")
    (license license:bsd-3)))

haskell-9.0-hopenssl

(define-public haskell-9.0-hs-GeoIP
  (package
    (name "haskell-9.0-hs-GeoIP")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
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

haskell-9.0-hs-GeoIP

(define-public haskell-9.0-hsndfile-vector
  (package
    (name "haskell-9.0-hsndfile-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsndfile)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pulseaudio) libsndfile)))
    (home-page "http://haskell.org/haskellwiki/Hsndfile")
    (synopsis "Haskell bindings for libsndfile (Data.Vector interface)")
    (description
     "Haskell bindings for libsndfile (@@Data.Vector@@ interface).

For more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-hsndfile-vector

(define-public haskell-9.0-hspec-expectations-pretty-diff
  (package
    (name "haskell-9.0-hspec-expectations-pretty-diff")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hscolour)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-nicify-lib)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-unicode-show)))
    (home-page
     "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme>")
    (license license:expat)))

haskell-9.0-hspec-expectations-pretty-diff

(define-public haskell-9.0-hsyslog
  (package
    (name "haskell-9.0-hsyslog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
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

haskell-9.0-hsyslog

(define-public haskell-9.0-hunit-dejafu
  (package
    (name "haskell-9.0-hunit-dejafu")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-dejafu)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the HUnit test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/HUnit HUnit>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-9.0-hunit-dejafu

(define-public haskell-9.0-ki
  (package
    (name "haskell-9.0-ki")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ki/ki-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1nxmgv4kxh2whdsmj659iypf8gfjrqzyxzyzghapg1fmpffjpcyr"))))
    (properties `((upstream-name . "ki") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dejafu-tests")
       #:cabal-revision
       ("1" "0prk6bq1rw52dc7ydapqklcapl1z6yqz0vnx0fl4cm600pd9salm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-concurrency)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-dejafu)))
    (home-page "https://github.com/mitchellwrosen/ki")
    (synopsis "A lightweight, structured-concurrency library")
    (description
     "A lightweight, structured-concurrency library.

This package comes in two variants:

* \"Ki\" exposes the most stripped-down variant; start here.

* \"Ki.Implicit\" extends \"Ki\" with an implicit context that's used to
propagate soft cancellation signals.

Using this variant comes at a cost:

* You must manually add constraints to propagate the implicit context to
where it's needed.

* To remain warning-free, you must delete the implicit context constraints
where they are no longer needed.

If you don't need soft-cancellation, there is no benefit to using this
variant, and you should stick with \"Ki\".

Because you'll only ever need one variant at a time, I recommend using a
<https://cabal.readthedocs.io/en/latest/cabal-package.html#pkg-field-mixins mixin stanza>
to rename one module to @@Ki@@ while hiding the others. This also simplifies the
process of upgrading from \"Ki.Implicit\" to \"Ki\" if necessary.

@@
mixins: ki (Ki.Implicit as Ki)
@@")
    (license license:bsd-3)))

haskell-9.0-ki

(define-public haskell-9.0-libBF
  (package
    (name "haskell-9.0-libBF")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://hackage.haskell.org/package/libBF")
    (synopsis "A binding to the libBF library.")
    (description "LibBF is a C library for working with arbitray precision
IEEE 754 floating point numbers.")
    (license license:expat)))

haskell-9.0-libBF

(define-public haskell-9.0-linux-file-extents
  (package
    (name "haskell-9.0-linux-file-extents")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://github.com/redneb/linux-file-extents")
    (synopsis "Retrieve file fragmentation information under Linux")
    (description
     "This package provides a simple wrapper around the Linux FIEMAP ioctl.
It can be used to retrieve the list of all the extents of any given
file, i.e. the area of the disk where the file is actually stored. This is
similar to the @@filefrag@@ command line tool provided by the @@e2fsprogs@@
package.")
    (license license:bsd-3)))

haskell-9.0-linux-file-extents

(define-public haskell-9.0-linux-namespaces
  (package
    (name "haskell-9.0-linux-namespaces")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://github.com/redneb/hs-linux-namespaces")
    (synopsis "Work with linux namespaces: create new or enter existing ones")
    (description
     "This library provides bindings to the @@unshare(2)@@ and @@setns(2)@@ linux
system calls.")
    (license license:bsd-3)))

haskell-9.0-linux-namespaces

(define-public haskell-9.0-lmdb
  (package
    (name "haskell-9.0-lmdb")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
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

haskell-9.0-lmdb

(define-public haskell-9.0-lockfree-queue
  (package
    (name "haskell-9.0-lockfree-queue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-abstract-deque)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-abstract-deque-tests)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
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

haskell-9.0-lockfree-queue

(define-public haskell-9.0-lz4
  (package
    (name "haskell-9.0-lz4")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)))
    (home-page "http://github.com/mwotton/lz4hs")
    (synopsis "LZ4 compression for ByteStrings")
    (description
     "High level bindings to the LZ4 compression library.

Currently based on lz4 r119. C sources are included and no external
dependencies are needed other than @@cereal@@.")
    (license license:bsd-3)))

haskell-9.0-lz4

(define-public haskell-9.0-messagepack
  (package
    (name "haskell-9.0-messagepack")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)))
    (home-page "https://github.com/rodrigosetti/messagepack")
    (synopsis "Serialize instance for Message Pack Object")
    (description "Serialize instance for Message Pack Object")
    (license license:expat)))

haskell-9.0-messagepack

(define-public haskell-9.0-miniutter
  (package
    (name "haskell-9.0-miniutter")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-minimorph)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
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

haskell-9.0-miniutter

(define-public haskell-9.0-monad-par-extras
  (package
    (name "haskell-9.0-monad-par-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-abstract-par)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "Combinators and extra features for Par monads")
    (description "The modules below provide additional
data structures, and other added capabilities
layered on top of the 'Par' monad.")
    (license license:bsd-3)))

haskell-9.0-monad-par-extras

(define-public haskell-9.0-netcode-io
  (package
    (name "haskell-9.0-netcode-io")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
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

haskell-9.0-netcode-io

(define-public haskell-9.0-netwire-input
  (package
    (name "haskell-9.0-netwire-input")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-netwire)))
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

haskell-9.0-netwire-input

(define-public haskell-9.0-network
  (package
    (name "haskell-9.0-network")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
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

haskell-9.0-network

(define-public haskell-9.0-network-transport
  (package
    (name "haskell-9.0-network-transport")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport/network-transport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0izcqi3zl7ynav0qqrrfmiax8vziqwrhflprddhjj6x6nkzhp1sv"))))
    (properties `((upstream-name . "network-transport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03parnmzh2mffs6fadqbf4lw1d5bsmvr347rzamp230s303nr6yc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
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

haskell-9.0-network-transport

(define-public haskell-9.0-nfc
  (package
    (name "haskell-9.0-nfc")
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
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/centromere/nfc#readme")
    (synopsis "libnfc bindings")
    (description "nfc is a set of bindings to libnfc")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-nfc

(define-public haskell-9.0-numeric-prelude
  (package
    (name "haskell-9.0-numeric-prelude")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Numeric_Prelude")
    (synopsis "An experimental alternative hierarchy of numeric type classes")
    (description
     "The package provides an experimental alternative hierarchy
of numeric type classes.
The type classes are more oriented at mathematical structures
and their methods come with laws that the instances must fulfill.")
    (license license:bsd-3)))

haskell-9.0-numeric-prelude

(define-public haskell-9.0-opentelemetry
  (package
    (name "haskell-9.0-opentelemetry")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry/opentelemetry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10k9if33ydjc099mgjvgglp6fcmrz0zxpv6khwkhra6lcz35mylv"))))
    (properties `((upstream-name . "opentelemetry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-trace-events)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://hackage.haskell.org/package/opentelemetry")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-9.0-opentelemetry

(define-public haskell-9.0-pipes-parse
  (package
    (name "haskell-9.0-pipes-parse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)))
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

haskell-9.0-pipes-parse

(define-public haskell-9.0-pipes-random
  (package
    (name "haskell-9.0-pipes-random")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/fosskers/pipes-random")
    (synopsis "Producers for handling randomness.")
    (description "Producers for handling randomness.")
    (license license:bsd-3)))

haskell-9.0-pipes-random

(define-public haskell-9.0-pipes-safe
  (package
    (name "haskell-9.0-pipes-safe")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
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

haskell-9.0-pipes-safe

(define-public haskell-9.0-postgresql-libpq
  (package
    (name "haskell-9.0-postgresql-libpq")
    (version "0.9.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-libpq/postgresql-libpq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gfnhc5pibn7zmifdf2g0c112xrpzsk756ln2kjzqljkspf4dqp3"))))
    (properties `((upstream-name . "postgresql-libpq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-pkg-config")
       #:cabal-revision
       ("3" "02cj493a2qxl5hddiq0579079s398hdqqy164pig6d61nl7q66cs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
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

haskell-9.0-postgresql-libpq

(define-public haskell-9.0-range-set-list
  (package
    (name "haskell-9.0-range-set-list")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/phadej/range-set-list#readme")
    (synopsis "Memory efficient sets with ranges of elements.")
    (description
     "Memory efficient sets with continuous ranges of discrete, bounded elements. List- and map-based implementations. Interface mimics 'Data.Set' where possible.")
    (license license:expat)))

haskell-9.0-range-set-list

(define-public haskell-9.0-reliable-io
  (package
    (name "haskell-9.0-reliable-io")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
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

haskell-9.0-reliable-io

(define-public haskell-9.0-renderable
  (package
    (name "haskell-9.0-renderable")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
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

haskell-9.0-renderable

(define-public haskell-9.0-resolv
  (package
    (name "haskell-9.0-resolv")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)))
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

haskell-9.0-resolv

(define-public haskell-9.0-resource-pool
  (package
    (name "haskell-9.0-resource-pool")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/bos/pool")
    (synopsis "A high-performance striped resource pooling implementation")
    (description "A high-performance striped pooling abstraction for managing
flexibly-sized collections of resources such as database
connections.")
    (license license:bsd-3)))

haskell-9.0-resource-pool

(define-public haskell-9.0-saltine
  (package
    (name "haskell-9.0-saltine")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/saltine/saltine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bgr6vrmw18qr8akabxz6w3hwhlqi6zsnr23n70hkvwvcap1lnx7"))))
    (properties `((upstream-name . "saltine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages crypto) libsodium)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/saltine")
    (synopsis "Cryptography that's easy to digest (NaCl/libsodium bindings).")
    (description
     "/NaCl/ (pronounced \\\"salt\\\") is a new easy-to-use high-speed software
library for network communication, encryption, decryption,
signatures, etc. NaCl's goal is to provide all of the core
operations needed to build higher-level cryptographic tools.

<http://nacl.cr.yp.to/>

/Sodium/ is a portable, cross-compilable, installable, packageable
crypto library based on NaCl, with a compatible API.

<https://github.com/jedisct1/libsodium>

/Saltine/ is a Haskell binding to the NaCl primitives going through
Sodium for build convenience and, eventually, portability.")
    (license license:expat)))

haskell-9.0-saltine

(define-public haskell-9.0-sample-frame
  (package
    (name "haskell-9.0-sample-frame")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sample-frame/sample-frame-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ivj0bcnqqc805np62bdpvh8v4ykmw86ph5rp7k54bbv9wd31bsv"))))
    (properties `((upstream-name . "sample-frame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildbenchmarks" "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)))
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

haskell-9.0-sample-frame

(define-public haskell-9.0-scalpel-core
  (package
    (name "haskell-9.0-scalpel-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-pointedlist)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-regex-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel core provides a subset of the scalpel web scraping library that is
intended to have lightweight dependencies and to be free of all non-Haskell
dependencies.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-scalpel-core

(define-public haskell-9.0-scientific
  (package
    (name "haskell-9.0-scientific")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
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

haskell-9.0-scientific

(define-public haskell-9.0-scrypt
  (package
    (name "haskell-9.0-scrypt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
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

haskell-9.0-scrypt

(define-public haskell-9.0-setlocale
  (package
    (name "haskell-9.0-setlocale")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://gitlab.com/Kritzefitz/haskell-setlocale/")
    (synopsis "Haskell bindings to setlocale")
    (description "")
    (license license:bsd-3)))

haskell-9.0-setlocale

(define-public haskell-9.0-shared-memory
  (package
    (name "haskell-9.0-shared-memory")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://github.com/nh2/shared-memory")
    (synopsis "POSIX shared memory")
    (description "POSIX shared memory library.")
    (license license:expat)))

haskell-9.0-shared-memory

(define-public haskell-9.0-shelltestrunner
  (package
    (name "haskell-9.0-shelltestrunner")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-filemanip)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
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

haskell-9.0-shelltestrunner

(define-public haskell-9.0-smash
  (package
    (name "haskell-9.0-smash")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/smash/smash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i8a8i81xs68zrsv173q0xv0f9cmxmhkgd5k90x60kv7v5pwpqw4"))))
    (properties `((upstream-name . "smash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Combinators for Maybe types")
    (description
     "Smash products are like the 'These' datatype, only with a unit. You can
think of this type as isomorphic to 'Maybe (These a b)'.")
    (license license:bsd-3)))

haskell-9.0-smash

(define-public haskell-9.0-storable-tuple
  (package
    (name "haskell-9.0-storable-tuple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/storable-tuple/")
    (synopsis "Storable instance for pairs and triples")
    (description
     "Provides a Storable instance for pair and triple
which should be binary compatible with C99 and C++.
The only purpose of this package is to provide a standard location
for this instance so that other packages needing this instance
can play nicely together.")
    (license license:bsd-3)))

haskell-9.0-storable-tuple

(define-public haskell-9.0-strict-tuple
  (package
    (name "haskell-9.0-strict-tuple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "https://github.com/mitchellwrosen/strict-tuple")
    (synopsis "Strict tuples")
    (description "Strict tuples.")
    (license license:bsd-3)))

haskell-9.0-strict-tuple

(define-public haskell-9.0-stripe-signature
  (package
    (name "haskell-9.0-stripe-signature")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stripe-concepts)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Verification of Stripe webhook signatures")
    (description
     "When <https://stripe.com/ Stripe> sends an event to your webhook, it
includes an HTTP header named @@Stripe-Signature@@. You should use this
to verify the authenticity of the request to ensure that you are not
acting upon forged events originating from some source other than
Stripe.")
    (license license:expat)))

haskell-9.0-stripe-signature

(define-public haskell-9.0-structured-cli
  (package
    (name "haskell-9.0-structured-cli")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskeline)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (home-page "https://gitlab.com/codemonkeylabs/structured-cli#readme")
    (synopsis "Application library for building interactive console CLIs")
    (description
     "This module provides the tools to build a complete \"structured\" CLI application, similar to those found in systems like Cisco IOS or console configuration utilities etc. It aims to be easy for implementors to use.")
    (license license:bsd-3)))

haskell-9.0-structured-cli

(define-public haskell-9.0-tagchup
  (package
    (name "haskell-9.0-tagchup")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagchup/tagchup-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "127ffhggdcbapizddhzwy538h3znppvr28mh9y2lv9ihbwcfxd75"))))
    (properties `((upstream-name . "tagchup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-accessor)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-xml-basic)))
    (home-page "http://code.haskell.org/~thielema/tagchup/")
    (synopsis "alternative package for processing of tag soups")
    (description
     "Tagchup is a package for processing XML, HTML, XHTML documents
that can also be malformed.
It allows parsing, formatting and retrieval of such document.
All functions should be as lazy as possible.

I use a custom data structure based on types from xml-basic
for easy interchange with the wraxml package.

Its lazy monadic parser should be more comprehensible and easier to extend
than the one of tagsoup-0.6.
It also handles XML processing instructions and CDATA sections correctly.

The name Tagchup resembles Ketchup.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-tagchup

(define-public haskell-9.0-terminal-size
  (package
    (name "haskell-9.0-terminal-size")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)))
    (home-page "https://hackage.haskell.org/package/terminal-size")
    (synopsis "Get terminal window height and width")
    (description
     "Get terminal window height and width without ncurses dependency.")
    (license license:bsd-3)))

haskell-9.0-terminal-size

(define-public haskell-9.0-these
  (package
    (name "haskell-9.0-these")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-assoc)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
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

haskell-9.0-these

(define-public haskell-9.0-ttrie
  (package
    (name "haskell-9.0-ttrie")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
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

haskell-9.0-ttrie

(define-public haskell-9.0-unexceptionalio-trans
  (package
    (name "haskell-9.0-unexceptionalio-trans")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-unexceptionalio)))
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

haskell-9.0-unexceptionalio-trans

(define-public haskell-9.0-unique
  (package
    (name "haskell-9.0-unique")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)))
    (home-page "http://github.com/ekmett/unique/")
    (synopsis "Fully concurrent unique identifiers")
    (description "Fully concurrent unique identifiers.")
    (license license:bsd-3)))

haskell-9.0-unique

(define-public haskell-9.0-unique-logic
  (package
    (name "haskell-9.0-unique-logic")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unique-logic/unique-logic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lza0g7mvij6fj07nfyrgl7vy6hpqmmmzbnxylq71jb4a90sn28j"))))
    (properties `((upstream-name . "unique-logic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/unique-logic/")
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

haskell-9.0-unique-logic

(define-public haskell-9.0-unique-logic-tf
  (package
    (name "haskell-9.0-unique-logic-tf")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-ref)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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

haskell-9.0-unique-logic-tf

(define-public haskell-9.0-uuid-types
  (package
    (name "haskell-9.0-uuid-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
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

haskell-9.0-uuid-types

(define-public haskell-9.0-vector-th-unbox
  (package
    (name "haskell-9.0-vector-th-unbox")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/tsurucapital/vector-th-unbox")
    (synopsis "Deriver for Data.Vector.Unboxed using Template Haskell")
    (description
     "A Template Haskell deriver for unboxed vectors, given a pair of coercion
functions to and from some existing type with an Unbox instance.

Refer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.")
    (license license:bsd-3)))

haskell-9.0-vector-th-unbox

(define-public haskell-9.0-vivid-osc
  (package
    (name "haskell-9.0-vivid-osc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)))
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

haskell-9.0-vivid-osc

(define-public haskell-9.0-webrtc-vad
  (package
    (name "haskell-9.0-webrtc-vad")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/webrtc-vad")
    (synopsis "Easy voice activity detection")
    (description
     "A simple library wrapping WebRTC's voice activity detection engine.")
    (license license:expat)))

haskell-9.0-webrtc-vad

(define-public haskell-9.0-xmlgen
  (package
    (name "haskell-9.0-xmlgen")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)))
    (home-page "https://hackage.haskell.org/package/xmlgen")
    (synopsis "Fast XML generation library")
    (description "Library for high-performance XML generation.")
    (license license:bsd-3)))

haskell-9.0-xmlgen

(define-public haskell-9.0-yoga
  (package
    (name "haskell-9.0-yoga")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ieee754)
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

haskell-9.0-yoga

