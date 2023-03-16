;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage005)
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
(define-public haskell-8.8-ConfigFile
  (package
    (name "haskell-8.8-ConfigFile")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ConfigFile/ConfigFile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "057mw146bip9wzs7j4b5xr1x24d8w0kr4i3inri5m57jkwspn25f"))))
    (properties `((upstream-name . "ConfigFile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildtests")
       #:cabal-revision
       ("1" "10qqg7x6pa2nryk3j56im65kvbh1v9psf6ic3nkabfxvigw83d2c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-MissingH)))
    (home-page "http://software.complete.org/configfile")
    (synopsis "Configuration file reading & writing")
    (description
     "Parser and writer for handling sectioned config files in
Haskell.

The ConfigFile module works with configuration files in a standard
format that is easy for the user to edit, easy for the programmer
to work with, yet remains powerful and flexible.  It is inspired by,
and compatible with, Python's ConfigParser module.  It uses files
that resemble Windows .INI-style files, but with numerous
improvements.

ConfigFile provides simple calls to both read and write config files.
It's possible to make a config file parsable by this module,
the Unix shell, and make.")
    (license license:bsd-3)))

haskell-8.8-ConfigFile

(define-public haskell-8.8-JuicyPixels-scale-dct
  (package
    (name "haskell-8.8-JuicyPixels-scale-dct")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-carray)
                  (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-fft)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-8.8-JuicyPixels-scale-dct

(define-public haskell-8.8-al
  (package
    (name "haskell-8.8-al")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)
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

haskell-8.8-al

(define-public haskell-8.8-alsa-mixer
  (package
    (name "haskell-8.8-alsa-mixer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-alsa-core)
                  (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)))
    (home-page "https://github.com/ttuegel/alsa-mixer")
    (synopsis "Bindings to the ALSA simple mixer API.")
    (description
     "This package provides bindings to the ALSA simple mixer API.")
    (license license:bsd-3)))

haskell-8.8-alsa-mixer

(define-public haskell-8.8-bibtex
  (package
    (name "haskell-8.8-bibtex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-latex)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-bibtex

(define-public haskell-8.8-bits
  (package
    (name "haskell-8.8-bits")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives.")
    (license license:bsd-3)))

haskell-8.8-bits

(define-public haskell-8.8-blas-carray
  (package
    (name "haskell-8.8-blas-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-blas-ffi)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-carray)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-netlib-carray)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-storable-complex)))
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

haskell-8.8-blas-carray

(define-public haskell-8.8-bson
  (package
    (name "haskell-8.8-bson")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bson/bson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xmxhq1f8v00mbq2l1sb7akzhy0gd9wcylkanpizn68wczqkdi3b"))))
    (properties `((upstream-name . "bson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-network-bsd)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "http://github.com/mongodb-haskell/bson")
    (synopsis "BSON documents are JSON-like objects with a standard binary
encoding.")
    (description
     "A BSON Document is an untyped (dynamically type-checked) record.
I.e. it is a list of name-value pairs, where a Value is a single
sum type with constructors for basic types (Bool, Int, Float,
String, and Time), compound types (List, and (embedded) Document),
and special types (Binary, Javascript, ObjectId, RegEx, and a few
others).
A BSON Document is serialized to a standard binary encoding
defined at <http://bsonspec.org>. This implements version 1 of
that spec.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-bson

(define-public haskell-8.8-cipher-aes
  (package
    (name "haskell-8.8-cipher-aes")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsupport_aesni")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-securemem)))
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

haskell-8.8-cipher-aes

(define-public haskell-8.8-cipher-camellia
  (package
    (name "haskell-8.8-cipher-camellia")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-securemem)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Camellia block cipher primitives")
    (description "Camellia block cipher primitives")
    (license license:bsd-3)))

haskell-8.8-cipher-camellia

(define-public haskell-8.8-cipher-des
  (package
    (name "haskell-8.8-cipher-des")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "DES and 3DES primitives")
    (description "DES and 3DES primitives")
    (license license:bsd-3)))

haskell-8.8-cipher-des

(define-public haskell-8.8-cipher-rc4
  (package
    (name "haskell-8.8-cipher-rc4")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-cipher-types)))
    (home-page "http://github.com/vincenthz/hs-cipher-rc4")
    (synopsis "Fast RC4 cipher implementation")
    (description "Fast RC4 cipher implementation")
    (license license:bsd-3)))

haskell-8.8-cipher-rc4

(define-public haskell-8.8-co-log-core
  (package
    (name "haskell-8.8-co-log-core")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-core/co-log-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04w8j39n1cfmzvvllbjj21w7g53lgppf5crk7n4i9hgspaxbwyik"))))
    (properties `((upstream-name . "co-log-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mib449rp5g02f62nl4phfgjm4f8dj5v6qwxyx0cccglkiccn28j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
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

haskell-8.8-co-log-core

(define-public haskell-8.8-comfort-array
  (package
    (name "haskell-8.8-comfort-array")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array/comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jvksvvslvg5wiqin5pd0q0q8a7snhfjh26a98mdakk8dziw1p1m"))))
    (properties `((upstream-name . "comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsetindex")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prelude-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/comfort-array/")
    (synopsis "Arrays where the index type is a function of the shape type")
    (description
     "Arrays from the basic @@array@@ package are already very powerful
compared with arrays in other languages.
They may have any number of dimensions, are type safe
and defined in a uniform way using the Ix class
with free choice of the lower bounds (0, 1, or whatever you like).

This package goes one step further:
The shape and the index type are different,
but the index type is a type function of the shape type.
This offers much more flexibility and type safety.

Some examples are:

* @@Range@@:
Allow dynamic choice of lower and upper array bounds
such as in the 'Array's from the @@array@@ package.
You can combine it with other shapes in other dimensions.
It allows you to describe the bounds of each dimension individually.

* @@Shifted@@:
Describe array bounds by start index and length.
It is sometimes more natural to use these parameters.
E.g. a non-negative index type like 'Word' cannot represent @@-1@@
and thus cannot encode an empty range starting with index @@0@@.

* @@ZeroBased, OneBased@@:
Arrays with fixed lower bound, either 0 or 1, respectively.

* @@Zero, ()@@:
Arrays with fixed size 0 or 1, respectively.

* @@Enumeration@@:
Arrays with indices like 'LT', 'EQ', 'GT' and a shape of fixed size.

* @@(:+:)@@:
The Append type constructor allows to respresent block arrays,
e.g. block matrices.
It also allows to represent non-empty arrays via @@():+:sh@@.

* @@Set@@: Use an arbitrary ordered set as index set.

* @@Triangular@@:
A 2D array with the shape of a lower or upper triangular matrix.

* @@Tagged@@: Statically distinguish shapes and indices that are isomorphic.

The @@lapack@@ package defines even more fancy shapes
like tall rectangular matrices, triangular matrices and banded matrices.")
    (license license:bsd-3)))

haskell-8.8-comfort-array

(define-public haskell-8.8-configurator-pg
  (package
    (name "haskell-8.8-configurator-pg")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-pg/configurator-pg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wmdg9zxfz8vhhsq5rraynhrhqc8fjrdhfrky2mfajzbp8dpaqsm"))))
    (properties `((upstream-name . "configurator-pg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protolude)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (home-page "https://github.com/robx/configurator-pg")
    (synopsis "Reduced parser for configurator-ng config files")
    (description
     "This module provides a simplified and updated interface to the
configuration file format of
<https://hackage.haskell.org/package/configurator configurator> and
<https://hackage.haskell.org/package/configurator-ng configurator-ng>.
Its aim is primarily to allow updating programs that depend on
configurator-ng to new versions of GHC without changing the
configuration file format.")
    (license license:bsd-3)))

haskell-8.8-configurator-pg

(define-public haskell-8.8-core-text
  (package
    (name "haskell-8.8-core-text")
    (version "0.2.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-text/core-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13sdgym8xhljpc465bq1h066mrcvk77568viklhib255skjl56gn"))))
    (properties `((upstream-name . "core-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-text-short)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "A rope type based on a finger tree over UTF-8 fragments")
    (description
     "A rope data type for text, built as a finger tree over UTF-8 text
fragments. The package also includes utiltiy functions for breaking and
re-wrapping lines, conveniences for pretty printing and colourizing
terminal output, and a simple mechanism for multi-line Rope literals.

The main @@Rope@@ type and its usage are described at \"Core.Text.Rope\" in
this package.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:bsd-3)))

haskell-8.8-core-text

(define-public haskell-8.8-crypto-numbers
  (package
    (name "haskell-8.8-crypto-numbers")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-numbers/crypto-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19l9y5jzvqrqfam13xin9m9ca0s5ql86yv0cjn6dzkydx4byn2j2"))))
    (properties `((upstream-name . "crypto-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-finteger-gmp")
       #:cabal-revision
       ("1" "1jjkhid8kwrz5894nad537rqxzzyx6b687bmgyk70nv0ny336j9b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/vincenthz/hs-crypto-numbers")
    (synopsis "Cryptographic numbers: functions and algorithms")
    (description "Cryptographic numbers: functions and algorithms")
    (license license:bsd-3)))

haskell-8.8-crypto-numbers

(define-public haskell-8.8-cubicspline
  (package
    (name "haskell-8.8-cubicspline")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/cubicspline")
    (synopsis "Natural cubic spline interpolation.")
    (description "Natural cubic spline interpolation.")
    (license license:bsd-3)))

haskell-8.8-cubicspline

(define-public haskell-8.8-cutter
  (package
    (name "haskell-8.8-cutter")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-spreadsheet)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-cutter

(define-public haskell-8.8-data-default
  (package
    (name "haskell-8.8-data-default")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-data-default-instances-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-data-default-instances-old-locale)))
    (home-page "https://hackage.haskell.org/package/data-default")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-8.8-data-default

(define-public haskell-8.8-data-hash
  (package
    (name "haskell-8.8-data-hash")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-hash/data-hash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ghbqvc48gf9p8wiy71hdpaj7by3b9cw6wgwi3qqz8iw054xs5wi"))))
    (properties `((upstream-name . "data-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/data-hash")
    (synopsis "Combinators for building fast hashing functions.")
    (description "Combinators for building fast hashing functions. Includes
hashing functions for all basic Haskell98 types.")
    (license license:bsd-3)))

haskell-8.8-data-hash

(define-public haskell-8.8-enumset
  (package
    (name "haskell-8.8-enumset")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/enumset/enumset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d9lnl7mmcwydfhb4iazh6gcdbxvdh7b3gar3c9l1k5xmc4r8qii"))))
    (properties `((upstream-name . "enumset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-accessor)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)))
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

haskell-8.8-enumset

(define-public haskell-8.8-event-list
  (package
    (name "haskell-8.8-event-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-negative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-event-list

(define-public haskell-8.8-exceptions
  (package
    (name "haskell-8.8-exceptions")
    (version "0.10.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exceptions/exceptions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kw4pmx7j7zwbdwm0dyn9rcs6kp4byfxy48861yxdz6gam1zn2sd"))))
    (properties `((upstream-name . "exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftransformers-0-4")
       #:cabal-revision
       ("3" "0b9bml5j46zz62ik2827ndsd5293dh8630086x1mngb80gnrml3y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/exceptions/")
    (synopsis "Extensible optionally-pure exceptions")
    (description "Extensible optionally-pure exceptions.")
    (license license:bsd-3)))

haskell-8.8-exceptions

(define-public haskell-8.8-exomizer
  (package
    (name "haskell-8.8-exomizer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)))
    (home-page "https://github.com/alexkazik/exomizer#readme")
    (synopsis "Compression and decompression in the exomizer format")
    (description
     "This package provides a pure interface for compressing and decompressing data represented as strict @@ByteStrings@@.

Only the @@raw@@, @@mem@@ and @@level@@ compressions are supported.

This library uses the @@exomizer 2.0.10@@.

@@exomizer@@ is created by Magnus Lind (magli143@@gmail.com) https://bitbucket.org/magli143/exomizer/wiki/Home")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-exomizer

(define-public haskell-8.8-file-modules
  (package
    (name "haskell-8.8-file-modules")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-modules/file-modules-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjy3axfhgv5nkvwbaylc8hc8d1fjb53n2rhmpxfzppa6yjvspz"))))
    (properties `((upstream-name . "file-modules") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-MissingH)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-regex-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-pcre)))
    (home-page "https://github.com/yamadapc/stack-run-auto")
    (synopsis "Takes a Haskell source-code file and outputs its modules.")
    (description
     "Uses @@haskell-src-exts@@ to parse module imports and follows links
. to local modules in order to build a list of module dependencies.")
    (license license:expat)))

haskell-8.8-file-modules

(define-public haskell-8.8-first-class-families
  (package
    (name "haskell-8.8-first-class-families")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/first-class-families/first-class-families-"
                    version ".tar.gz"))
              (sha256
               (base32
                "190jl3vs7glkbm8ap90x9yzlj01yzxd818s3i0w4pz21b6d6sxav"))))
    (properties `((upstream-name . "first-class-families") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02z6wixk9kdgshxsz99lag29lb70kadg9wn6vsgk906wj014fv52")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/Lysxia/first-class-families#readme")
    (synopsis "First class type families")
    (description "First class type families,
eval-style defunctionalization

See \"Fcf\".")
    (license license:expat)))

haskell-8.8-first-class-families

(define-public haskell-8.8-fixed-length
  (package
    (name "haskell-8.8-fixed-length")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-length/fixed-length-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bx46n11k9dpr5hhfhxiwdd5npaqf9xwvqvjd0nlbylfmsmgd14y"))))
    (properties `((upstream-name . "fixed-length") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)
                  (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-tfp)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/fixed-length/")
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

haskell-8.8-fixed-length

(define-public haskell-8.8-fixed-vector-hetero
  (package
    (name "haskell-8.8-fixed-vector-hetero")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector-hetero/fixed-vector-hetero-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gc40wh887hd6am6kjswkxn9qnzxp30ni6larnq6ghrs5zalg67r"))))
    (properties `((upstream-name . "fixed-vector-hetero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0gzmjn7cw1ywggfwqz8i5i46q93blg8l4fx7ifhzwwzarpxgkpkj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-fixed-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Library for working with product types generically")
    (description
     "Library allow to work with arbitrary product types in generic
manner. They could be constructed, destucted, converted provided
they are product of identical types.")
    (license license:bsd-3)))

haskell-8.8-fixed-vector-hetero

(define-public haskell-8.8-from-sum
  (package
    (name "haskell-8.8-from-sum")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/cdepillabout/from-sum")
    (synopsis "Combinators for working with Maybe and Either")
    (description
     "Provides many functions for working with 'Maybe' and 'Either', including canonical 'fromMaybeM' and 'fromEitherM' functions.  Please see @@README.md@@.")
    (license license:bsd-3)))

haskell-8.8-from-sum

(define-public haskell-8.8-gi-cairo-render
  (package
    (name "haskell-8.8-gi-cairo-render")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo-render/gi-cairo-render-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0arbynn7ilrc3shddff1rxcvlg6k3m617lrq4fdsqfas3amxarm4"))))
    (properties `((upstream-name . "gi-cairo-render") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcairo_pdf" "-fcairo_ps" "-fcairo_svg")
       #:cabal-revision
       ("1" "10lpmb8js19zfgnph31yz4nzyv7kbqvq1lx07w12q702khqcqb7z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "Cairo is a library to render high quality vector graphics. There
exist various backends that allows rendering to Gtk windows, PDF,
PS, PNG and SVG documents, amongst others.")
    (license license:bsd-3)))

haskell-8.8-gi-cairo-render

(define-public haskell-8.8-group-by-date
  (package
    (name "haskell-8.8-group-by-date")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-filemanip)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-pathtype)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-shell-utility)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-group-by-date

(define-public haskell-8.8-hashtables
  (package
    (name "haskell-8.8-hashtables")
    (version "1.2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashtables/hashtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vgggm7bqq55zmqj6qji89bfj3k1rdkikkfhyg81vsqf0f3bzhqa"))))
    (properties `((upstream-name . "hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funsafe-tricks" "-f-bounds-checking" "-f-debug" "-f-detailed-profiling" "-f-sse42" "-f-portable")
       #:cabal-revision
       ("1" "170m0vidlcm1vazxmx0vgc9l9dkdqv3z9licvgvmh30qbck599fb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-hashtables

(define-public haskell-8.8-hmatrix-gsl
  (package
    (name "haskell-8.8-hmatrix-gsl")
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
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numerical computation")
    (description
     "Purely functional interface to selected numerical computations,
internally implemented using GSL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-hmatrix-gsl

(define-public haskell-8.8-hmatrix-gsl-stats
  (package
    (name "haskell-8.8-hmatrix-gsl-stats")
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
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-storable-complex)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
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

haskell-8.8-hmatrix-gsl-stats

(define-public haskell-8.8-hmatrix-morpheus
  (package
    (name "haskell-8.8-hmatrix-morpheus")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-openblas")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
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

haskell-8.8-hmatrix-morpheus

(define-public haskell-8.8-hspec-discover
  (package
    (name "haskell-8.8-hspec-discover")
    (version "2.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-discover/hspec-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12n26rxdrpk54fqrgrdj7r8kyq3fla3na10j4pnsjkir72bvhd17"))))
    (properties `((upstream-name . "hspec-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-meta)))
    (home-page "http://hspec.github.io/")
    (synopsis "Automatically discover and run Hspec tests")
    (description "Automatically discover and run Hspec tests

<http://hspec.github.io/hspec-discover.html>")
    (license license:expat)))

haskell-8.8-hspec-discover

(define-public haskell-8.8-hsshellscript
  (package
    (name "haskell-8.8-hsshellscript")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "http://www.volker-wysk.de/hsshellscript/")
    (synopsis "Haskell for Unix shell scripting tasks")
    (description "A Haskell-library for tasks which are usually done in
shell scripts. This includes parsing command line
arguments; dealing with paths; some commands for dealing
with files; calling external programs and subroutines as
separate processes; pipes and redirection of input and
output; and error handling.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-hsshellscript

(define-public haskell-8.8-human-readable-duration
  (package
    (name "haskell-8.8-human-readable-duration")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
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

haskell-8.8-human-readable-duration

(define-public haskell-8.8-lapack-carray
  (package
    (name "haskell-8.8-lapack-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-carray)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-netlib-carray)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-storable-complex)))
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

haskell-8.8-lapack-carray

(define-public haskell-8.8-lapack-ffi-tools
  (package
    (name "haskell-8.8-lapack-ffi-tools")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cassava)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-pathtype)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-lapack-ffi-tools

(define-public haskell-8.8-mcmc-types
  (package
    (name "haskell-8.8-mcmc-types")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mcmc-types/mcmc-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vpwrszhpl0ygs1qjk9v8gakl4rjia0cl4y3vna7cmh51c1jajrw"))))
    (properties `((upstream-name . "mcmc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-mwc-probability)))
    (home-page "http://github.com/jtobin/mcmc-types")
    (synopsis "Common types for sampling.")
    (description
     "Common types for implementing Markov Chain Monte Carlo (MCMC) algorithms.

An instance of an MCMC problem can be characterized by the following:

* A /target distribution/ over some parameter space

* A /parameter space/ for a Markov chain to wander over

* A /transition operator/ to drive the Markov chain

/mcmc-types/ provides the suitably-general 'Target', 'Chain', and
'Transition' types for representing these things respectively.")
    (license license:expat)))

haskell-8.8-mcmc-types

(define-public haskell-8.8-monad-par
  (package
    (name "haskell-8.8-monad-par")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-chaselev" "-f-newgeneric")
       #:cabal-revision
       ("2" "1q4npp0vrsjpxk7n7rcf3lgqg1sf2qx628ciiw48al9y9xlznsaz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-abstract-deque)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-abstract-par)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-th)))
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

haskell-8.8-monad-par

(define-public haskell-8.8-nettle
  (package
    (name "haskell-8.8-nettle")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nettle/nettle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pbxpxr9xdw3ha5lm9vnsbsvq0kzzsqv6gfk041ijllf1sc0hgyg"))))
    (properties `((upstream-name . "nettle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fusepkgconfig")
       #:cabal-revision
       ("2" "0szkcrp9ws984ah282jwwfsmzn85khvpmkphv2b1jgxfwzqg426z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-securemem)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages nettle) nettle)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/stbuehler/haskell-nettle")
    (synopsis "safe nettle binding")
    (description
     "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.
Tested with 3.4, might work with 3.2 (but not earlier).")
    (license license:expat)))

haskell-8.8-nettle

(define-public haskell-8.8-numeric-prelude
  (package
    (name "haskell-8.8-numeric-prelude")
    (version "0.4.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-prelude/numeric-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vd777ax2yvxknfxp9isgjk7cabjv3q86dgf3hybv78hc4ji5gmq"))))
    (properties `((upstream-name . "numeric-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-negative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Numeric_Prelude")
    (synopsis "An experimental alternative hierarchy of numeric type classes")
    (description
     "The package provides an experimental alternative hierarchy
of numeric type classes.
The type classes are more oriented at mathematical structures
and their methods come with laws that the instances must fulfill.")
    (license license:bsd-3)))

haskell-8.8-numeric-prelude

(define-public haskell-8.8-persist
  (package
    (name "haskell-8.8-persist")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/persist/persist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19s0jpbcas6c64lzl9plhp1b3qk89g3jrqhj2ljxvkzk81dbr2r3"))))
    (properties `((upstream-name . "persist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-force-unaligned" "-f-force-aligned")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (home-page "https://github.com/minad/persist")
    (synopsis "Minimal serialization library with focus on performance")
    (description
     "A binary serialization library with focus on performance similar to store and cereal")
    (license license:bsd-3)))

haskell-8.8-persist

(define-public haskell-8.8-prettyprinter-compat-ansi-wl-pprint
  (package
    (name "haskell-8.8-prettyprinter-compat-ansi-wl-pprint")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-ansi-wl-pprint/prettyprinter-compat-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gzpjddnxl4z8pvb0lyal13jbr94dk900k8g4qwcq9fs26vnnb81"))))
    (properties `((upstream-name . "prettyprinter-compat-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rzvap56ygygzs95091ipmcdc7n76sczc2dk88g4nr7zskb2nf1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.8-prettyprinter-compat-ansi-wl-pprint

(define-public haskell-8.8-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-8.8-prettyprinter-convert-ansi-wl-pprint")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-convert-ansi-wl-pprint/prettyprinter-convert-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgf2np1ymy6zsd1qacndgyipcf0bamw1wkkikaq57npbb7psc41"))))
    (properties `((upstream-name . "prettyprinter-convert-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.8-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-8.8-qrcode-juicypixels
  (package
    (name "haskell-8.8-qrcode-juicypixels")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-juicypixels/qrcode-juicypixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kiyi084hmd2l50fd8miwgw0y94sd1lkf34jw7z3sb33bbp70f3g"))))
    (properties `((upstream-name . "qrcode-juicypixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-qrcode-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "Converts a qrcode-core image to JuicyPixels")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-juicypixels#readme>")
    (license license:expat)))

haskell-8.8-qrcode-juicypixels

(define-public haskell-8.8-relational-query
  (package
    (name "haskell-8.8-relational-query")
    (version "0.12.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query/relational-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zjqk0gkzdhg1l8rw0bz7iwvp55p585xaqp8dc3sbbr0abhmsgi5"))))
    (properties `((upstream-name . "relational-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-names-th)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-persistable-record)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-sql-words)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-constraint-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-reify-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)))
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

haskell-8.8-relational-query

(define-public haskell-8.8-rpmbuild-order
  (package
    (name "haskell-8.8-rpmbuild-order")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rpmbuild-order/rpmbuild-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xa4crcqm4avkpdcksj610gpzk7crfkwa2pk2nn1qsmjsrixfc2b"))))
    (properties `((upstream-name . "rpmbuild-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fgl)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-simple-cmd-args)))
    (home-page "https://github.com/juhp/rpmbuild-order")
    (synopsis "Order RPM packages by dependencies")
    (description
     "The rpmbuild-order tool orders RPM packages by dependencies, so that they can
be built in the correct order. It does this by reading RPM package spec files
and then topologically sorts them according to their dependencies.
The code originates from cabal-sort by Henning Thielemann.
It can also output the ordered dependencies or reverse depends
for one or more packages, provided all the packages are checked out
in neighboring directories. This is also useful to see what packages
are affected when a low-level package changes.")
    (license license:bsd-3)))

haskell-8.8-rpmbuild-order

(define-public haskell-8.8-sample-frame
  (package
    (name "haskell-8.8-sample-frame")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)))
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

haskell-8.8-sample-frame

(define-public haskell-8.8-set-cover
  (package
    (name "haskell-8.8-set-cover")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/set-cover/set-cover-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04jjcmjll0azz24rx91p0dp5b8ya5jc0qacr21764ri1dbkfflgw"))))
    (properties `((upstream-name . "set-cover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-llvm")
       #:cabal-revision
       ("2" "05kisz47xka696fwszlxkvna2zv5qczaww8mpmn1g66sdppa5kzg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-enummapset)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prelude-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-psqueues)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://hub.darcs.net/thielema/set-cover/")
    (synopsis
     "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube")
    (description
     "Solver for exact set cover problems.
Included examples:
Sudoku, Nonogram, 8 Queens, Domino tiling, Mastermind, Alphametics,
Soma Cube, Tetris Cube, Cube of L's,
Logika's Baumeister puzzle, Lonpos pyramid, Conway's puzzle.
The generic algorithm allows to choose between
slow but flexible @@Set@@ from @@containers@@ package
and fast but cumbersome bitvectors.

For getting familiar with the package
I propose to study the Queen8 example along with \"Math.SetCover.Exact\".

The Sudoku and Nonogram examples also demonstrate
how to interpret the set-cover solution in a human-friendly way.

Build examples with @@cabal install -fbuildExamples@@.

The package needs only Haskell 98.
There is also an experimental implementation using LLVM and @@knead@@.
Do not rely on that interface in released packages.")
    (license license:bsd-3)))

haskell-8.8-set-cover

(define-public haskell-8.8-shelltestrunner
  (package
    (name "haskell-8.8-shelltestrunner")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-filemanip)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
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

haskell-8.8-shelltestrunner

(define-public haskell-8.8-slist
  (package
    (name "haskell-8.8-slist")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slist/slist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "046v580i8kxx9fpsvavwpydyfsffky3m735c45dafixrkbhjz55d"))))
    (properties `((upstream-name . "slist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/vrom911/slist")
    (synopsis "Sized list")
    (description
     "This package implements @@Slist@@ data structure that stores the size
of the list along with the list itself.")
    (license license:mpl2.0)))

haskell-8.8-slist

(define-public haskell-8.8-storable-tuple
  (package
    (name "haskell-8.8-storable-tuple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/storable-tuple/")
    (synopsis "Storable instance for pairs and triples")
    (description
     "Provides a Storable instance for pair and triple
which should be binary compatible with C99 and C++.
The only purpose of this package is to provide a standard location
for this instance so that other packages needing this instance
can play nicely together.")
    (license license:bsd-3)))

haskell-8.8-storable-tuple

(define-public haskell-8.8-storablevector
  (package
    (name "haskell-8.8-storablevector")
    (version "0.2.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storablevector/storablevector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06fgxbnc5vwmiv7dxywj7ncjhmxv0wjs0bys5hza6mrwn3sw5r2w"))))
    (properties `((upstream-name . "storablevector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fseparatesyb")
       #:cabal-revision
       ("1" "10zazrk5fxhwmr5q2h8g0mgdgm1sd35268zjij0sv480v1znsy4i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-negative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unsafe)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Storable_Vector")
    (synopsis
     "Fast, packed, strict storable arrays with a list interface like ByteString")
    (description
     "Fast, packed, strict storable arrays
with a list interface,
a chunky lazy list interface with variable chunk size
and an interface for write access via the @@ST@@ monad.
This is much like @@bytestring@@ and @@binary@@
but can be used for every 'Foreign.Storable.Storable' type.
See also package
<http://hackage.haskell.org/package/vector>
with a similar intention.

We do not provide advanced fusion optimization,
since especially for lazy vectors
this would either be incorrect or not applicable.
However we provide fusion with lazy lists in the package
<http://hackage.haskell.org/package/storablevector-streamfusion>.")
    (license license:bsd-3)))

haskell-8.8-storablevector

(define-public haskell-8.8-swish
  (package
    (name "haskell-8.8-swish")
    (version "0.10.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swish/swish-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rad5rx8hxh0ay4q0lfbn4jggvl3wf3chhjf34rpppzdd6b7r75m"))))
    (properties `((upstream-name . "swish") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-w3ctests" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-intern)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-polyparse)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (home-page "https://gitlab.com/dburke/swish")
    (synopsis "A semantic web toolkit. ")
    (description
     "Swish is a framework, written in the purely functional
programming language Haskell, for performing deductions in
RDF data using a variety of techniques. Swish is conceived
as a toolkit for experimenting with RDF inference, and for
implementing stand-alone RDF file processors (usable in
similar style to CWM, but with a view to being extensible
in declarative style through added Haskell function and data
value declarations). It explores Haskell as \\\"a scripting
language for the Semantic Web\\\".

Swish is a work-in-progress, and currently incorporates:

* Turtle, Notation3 and NTriples input and output. The N3 support is
incomplete (no handling of @@\\@@forAll@@).

* RDF graph isomorphism testing and merging.

* Display of differences between RDF graphs.

* Inference operations in forward chaining, backward chaining and proof-checking modes.

* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.

* Class restriction rule implementation, primarily for datatype inferences.

* RDF formal semantics entailment rule implementation.

* Complete, ready-to-run, command-line and script-driven programs.

Changes are given in the <https://gitlab.com/dburke/swish/raw/master/CHANGELOG> file.

References:

- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>

- <http://www.ninebynine.org/Software/swish-0.2.1.html>

- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>
")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-swish

(define-public haskell-8.8-tagchup
  (package
    (name "haskell-8.8-tagchup")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-accessor)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-xml-basic)))
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

haskell-8.8-tagchup

(define-public haskell-8.8-tasty-discover
  (package
    (name "haskell-8.8-tasty-discover")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)))
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

haskell-8.8-tasty-discover

(define-public haskell-8.8-tasty-expected-failure
  (package
    (name "haskell-8.8-tasty-expected-failure")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
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

haskell-8.8-tasty-expected-failure

(define-public haskell-8.8-tasty-hunit
  (package
    (name "haskell-8.8-tasty-hunit")
    (version "0.10.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gz6zz3w7s44pymw33xcxnawryl27zk33766sab96nz2xh91kvxp"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.

Note that this package does not depend on HUnit but
implements the relevant subset of its API. The name is a
legacy of the early versions of tasty-hunit and of
test-framework-hunit, which did depend on HUnit.")
    (license license:expat)))

haskell-8.8-tasty-hunit

(define-public haskell-8.8-tasty-hunit-notests
  (package
    (name "haskell-8.8-tasty-hunit-notests")
    (version "0.10.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hunit/tasty-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gz6zz3w7s44pymw33xcxnawryl27zk33766sab96nz2xh91kvxp"))))
    (properties `((upstream-name . "tasty-hunit") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "HUnit support for the Tasty test framework.")
    (description "HUnit support for the Tasty test framework.

Note that this package does not depend on HUnit but
implements the relevant subset of its API. The name is a
legacy of the early versions of tasty-hunit and of
test-framework-hunit, which did depend on HUnit.")
    (license license:expat)))

haskell-8.8-tasty-hunit-notests

(define-public haskell-8.8-tasty-leancheck
  (package
    (name "haskell-8.8-tasty-leancheck")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/rudymatela/tasty-leancheck#readme")
    (synopsis "LeanCheck support for the Tasty test framework.")
    (description
     "LeanCheck support for the Tasty test framework.

This package can be used to incorporate LeanCheck tests into Tasty test
suites by means of the @@Test.Tasty.LeanCheck.testProperty@@ function.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.8-tasty-leancheck

(define-public haskell-8.8-tasty-program
  (package
    (name "haskell-8.8-tasty-program")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
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

haskell-8.8-tasty-program

(define-public haskell-8.8-tasty-quickcheck-notests
  (package
    (name "haskell-8.8-tasty-quickcheck-notests")
    (version "0.10.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i1i78587znqzwps49milyr5n2k388ld2kr9ysz1vw8gcw51qq49"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.8-tasty-quickcheck-notests

(define-public haskell-8.8-tasty-rerun
  (package
    (name "haskell-8.8-tasty-rerun")
    (version "1.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-rerun/tasty-rerun-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sccp5zx9v2rx741nbmgd8mzjhy5m4v74hk26d23xz93ph8aqx7s"))))
    (properties `((upstream-name . "tasty-rerun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1i2van23247h62sz94kjiyyb6xvz88z6kkjqqsbxi4m74pga27hn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "http://github.com/ocharles/tasty-rerun")
    (synopsis "Rerun only tests which failed in a previous test run")
    (description
     "This ingredient
for the <https://hackage.haskell.org/package/tasty tasty> testing framework
allows filtering a test tree depending
on the outcome of the previous run.
This may be useful in many scenarios,
especially when a test suite grows large.")
    (license license:bsd-3)))

haskell-8.8-tasty-rerun

(define-public haskell-8.8-type-errors-pretty
  (package
    (name "haskell-8.8-type-errors-pretty")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors-pretty/type-errors-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z6rqah3qnvnlckcw3xhsp4yyfd21harw6kzqbz20y6k7a22jlf0"))))
    (properties `((upstream-name . "type-errors-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qfm0018ids9s7kdwf6d3r1cwnb5aqn55in4vdwklas3ydi8mmrx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/chshersh/type-errors-pretty")
    (synopsis "Combinators for writing pretty type errors easily")
    (description
     "This library provides replacements for the @@ErrorMessage@@ constructors to
write the text of custom error messages easily.")
    (license license:mpl2.0)))

haskell-8.8-type-errors-pretty

(define-public haskell-8.8-type-level-kv-list
  (package
    (name "haskell-8.8-type-level-kv-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/arowM/type-level-kv-list#readme")
    (synopsis "A module for hash map like object with type level keys.")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.8-type-level-kv-list

(define-public haskell-8.8-unexceptionalio
  (package
    (name "haskell-8.8-unexceptionalio")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unexceptionalio/unexceptionalio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07py2nffdgxpz8sryvqcghzb2kiiagpdf5ja1dia4z0rpwi79smh"))))
    (properties `((upstream-name . "unexceptionalio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (home-page "https://github.com/singpolyma/unexceptionalio")
    (synopsis "IO without any non-error, synchronous exceptions")
    (description
     "When you've caught all the exceptions that can be handled safely,
this is what you're left with.

It is intended that you use qualified imports with this library.

> import UnexceptionalIO (UIO)
> import qualified UnexceptionalIO as UIO

You may also wish to investigate unexceptionalio-trans if you like
monad transformers.

Blog post: http://sngpl.ma/p4uT0")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-unexceptionalio

(define-public haskell-8.8-unique-logic
  (package
    (name "haskell-8.8-unique-logic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-unique-logic

(define-public haskell-8.8-unique-logic-tf
  (package
    (name "haskell-8.8-unique-logic-tf")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-data-ref)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-unique-logic-tf

