;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage006)
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
(define-public haskell-8.8-Earley
  (package
    (name "haskell-8.8-Earley")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-ListLike)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-8.8-Earley

(define-public haskell-8.8-RefSerialize
  (package
    (name "haskell-8.8-RefSerialize")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hashtables)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stringsearch)))
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

haskell-8.8-RefSerialize

(define-public haskell-8.8-STMonadTrans
  (package
    (name "haskell-8.8-STMonadTrans")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/STMonadTrans/STMonadTrans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kly2zjizk8m84jzmkd93h6qpqgb03i4cjhm9q7rzr284qn5x09m"))))
    (properties `((upstream-name . "STMonadTrans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://hackage.haskell.org/package/STMonadTrans")
    (synopsis "A monad transformer version of the ST monad")
    (description
     "A monad transformer version of the ST monad
Warning! This monad transformer should not be used with monads that
can contain multiple answers, like the list monad. The reason is that
the state token will be duplicated across the different answers and
this causes Bad Things to happen (such as loss of referential
transparency). Safe monads include the monads State, Reader, Writer,
Maybe and combinations of their corresponding monad transformers.")
    (license license:bsd-3)))

haskell-8.8-STMonadTrans

(define-public haskell-8.8-X11
  (package
    (name "haskell-8.8-X11")
    (version "1.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/X11/X11-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "013yny4dwbs98kp7245j8dv81h4p1cdwn2rsf2hvhsplg6ixkc05"))))
    (properties `((upstream-name . "X11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
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

haskell-8.8-X11

(define-public haskell-8.8-alsa-pcm
  (package
    (name "haskell-8.8-alsa-pcm")
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
       (list "-f-buildexamples" "-f-buildsynthesizer" "-f-debug")
       #:cabal-revision
       ("1" "1bq0rmawwn7xaqny6gvp0qh0pggqcxr9b64346fm4a8fsq71a6wi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-alsa-core)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-sample-frame)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (PCM audio).")
    (description
     "This package provides access to ALSA realtime audio signal input and output.
For MIDI support see alsa-seq.")
    (license license:bsd-3)))

haskell-8.8-alsa-pcm

(define-public haskell-8.8-audacity
  (package
    (name "haskell-8.8-audacity")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/audacity/audacity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1916phnj3m12apyjarmda48xr2bq19rfn7sn6nskkbg6qjqxzlnr"))))
    (properties `((upstream-name . "audacity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-empty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-storable-record)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-storablevector)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tagchup)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-xml-basic)))
    (home-page "http://hub.darcs.net/thielema/audacity")
    (synopsis "Interchange with the Audacity sound signal editor")
    (description
     "This package provides functions
for interchange with the Audacity sound signal editor.
Currently we support import and export of label tracks,
export of Audacity projects and
limited import of tracks from Audacity projects.

We provide some examples that are useful on its own:

* @@sox-split@@:
Split an audio file according to a label track.
Audacity provides this function by itself.
You can use placeholders like @@%s@@ and @@%02d@@
in order to compose the names of the parts from the labels and positions.

* @@sox-concat@@:
Concatenate a sequence of sound files with matching
sampling rates and numbers of channels using SoX
and generate an Audacity label track file
that shows the origins of the parts.

* @@audacity-concat@@:
Create an Audacity project file
containing a virtual concatenation of the input sound files
and a label track showing the origins of the sound files.

* @@audacity-combine@@:
Put several audio and label files into tracks of a new Audacity project.
Opening one or even multiple such projects is much easier
than loading individual tracks into Audacity.")
    (license license:bsd-3)))

haskell-8.8-audacity

(define-public haskell-8.8-base16
  (package
    (name "haskell-8.8-base16")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base16/base16-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "192wnfqb97qhpjrjlq2da5jrjz9zjqjp57rgh1xdvdrnp7900r0s"))))
    (properties `((upstream-name . "base16") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-random-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-text-short)))
    (home-page "https://github.com/emilypi/base16")
    (synopsis "RFC 4648-compliant Base16 encodings/decodings")
    (description
     "RFC 4648-compliant Base16 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-8.8-base16

(define-public haskell-8.8-base32
  (package
    (name "haskell-8.8-base32")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base32/base32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xvilxcdcvz07f3qpad35whjd35c9ykicip2cdsd54ysxg71mwzm"))))
    (properties `((upstream-name . "base32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0chbgkq65mh6nc48a3hywcv7idfqgb3acv4b7gmz8m6szqq4mx95")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-byteorder)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-random-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-text-short)))
    (home-page "https://github.com/emilypi/base32")
    (synopsis "Fast RFC 4648-compliant Base32 encoding")
    (description
     "RFC 4648-compliant Base32 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-8.8-base32

(define-public haskell-8.8-base64
  (package
    (name "haskell-8.8-base64")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base64/base64-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05ins0i1561d4gfz6h7fxx8pj8i1qkskz8dgh8pfxa1llzmr856i"))))
    (properties `((upstream-name . "base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "19m4zw5qrj56pflnxr93jyz6m66p8z7xa5hjqy8zm16fb1mrsdss")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-byteorder)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-random-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-text-short)))
    (home-page "https://github.com/emilypi/base64")
    (synopsis "Fast RFC 4648-compliant Base64 encoding")
    (description
     "RFC 4648-compliant padded and unpadded base64 and base64url encoding and decoding. This library provides
performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-8.8-base64

(define-public haskell-8.8-bcrypt
  (package
    (name "haskell-8.8-bcrypt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)))
    (home-page "https://hackage.haskell.org/package/bcrypt")
    (synopsis "Haskell bindings to the bcrypt password hash")
    (description
     "Haskell bindings to the bcrypt password hash.

Unlike other bindings already in existence, this package is designed to allow users to work directly with password hash strings that include information about the hashing algorithm, strength, and salt. This approach allows hashed passwords to be stored in a single field that can also be used by non-Haskell applications, and makes it easy to implement a policy of updating passwords hashed to an old policy next time the plaintext password is available.

Version 1.1.3 of the OpenWall C source for bcrypt is included in this package (<http://www.openwall.com/crypt/>). The only modification is that the flag which enables the use of assembler has been disabled.
Announcements about hs-bcrypt (including security announcements) will be sent to https://groups.google.com/forum/#!forum/hs-bcrypt-announce/join - if you use this library please consider subscribing. This mailing list is moderated and is expected to have a very low volume of mail traffic.")
    (license license:bsd-3)))

haskell-8.8-bcrypt

(define-public haskell-8.8-bimap
  (package
    (name "haskell-8.8-bimap")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bimap/bimap-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1794iykd7rhj29y0w4vyjyn6wnw28hi8sxzvm1j5ivdzmf39d8yi"))))
    (properties `((upstream-name . "bimap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "111wyqh17a6pkjhyaz8n1891m69hwr2gybqcpacw4xdmarxmi7f5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)))
    (home-page "https://github.com/joelwilliamson/bimap")
    (synopsis "Bidirectional mapping between two key types")
    (description
     "A data structure representing a bidirectional mapping between two
key types. Each value in the bimap is associated with exactly one
value of the opposite type.")
    (license license:bsd-3)))

haskell-8.8-bimap

(define-public haskell-8.8-blaze-markup
  (package
    (name "haskell-8.8-blaze-markup")
    (version "0.8.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-markup/blaze-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r4fij8qs1z4dfrh6cjzjbnx9f3jyx01zgj15wvy961d8bnqjr4b"))))
    (properties `((upstream-name . "blaze-markup") (hidden? . #f)))
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
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast markup combinator library for Haskell")
    (description
     "Core modules of a blazingly fast markup combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.8-blaze-markup

(define-public haskell-8.8-bounded-queue
  (package
    (name "haskell-8.8-bounded-queue")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://gitlab.com/fosskers/bounded-queue")
    (synopsis "A strict, immutable, thread-safe, single-ended, bounded queue.")
    (description
     "A strict, immutable, thread-safe, single-ended, bounded queue
which automatically forgets old values instead of blocking.")
    (license license:bsd-3)))

haskell-8.8-bounded-queue

(define-public haskell-8.8-bytestring-conversion
  (package
    (name "haskell-8.8-bytestring-conversion")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-double-conversion)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/twittner/bytestring-conversion/")
    (synopsis "Type-classes to convert values to and from ByteString.")
    (description "Defines the type-classes 'ToByteString' and 'FromByteString'
to convert values to and from ByteString.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-bytestring-conversion

(define-public haskell-8.8-casing
  (package
    (name "haskell-8.8-casing")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/casing")
    (synopsis "Convert between various source code casing conventions")
    (description
     "Converts between camelCase, PascalCase, kebab-case, and three
flavors of snake_case.")
    (license license:expat)))

haskell-8.8-casing

(define-public haskell-8.8-co-log-concurrent
  (package
    (name "haskell-8.8-co-log-concurrent")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-concurrent/co-log-concurrent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07z4aklk7dc2fhbc30kd9hbdvq71sa4ip6r2pyifcpn3p2pr3mna"))))
    (properties `((upstream-name . "co-log-concurrent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-co-log-core)))
    (home-page "https://github.com/qnikst/co-log-concurrent/")
    (synopsis "Asynchronous backend for co-log library")
    (description "Buiding block for writing asynchronous logger pipelines.")
    (license license:mpl2.0)))

haskell-8.8-co-log-concurrent

(define-public haskell-8.8-concurrency
  (package
    (name "haskell-8.8-concurrency")
    (version "1.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrency/concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19a4za0c65gi2a5n882nyi26cgxrsry64rkd3qiqhvzf7m34cjxd"))))
    (properties `((upstream-name . "concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)))
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

haskell-8.8-concurrency

(define-public haskell-8.8-concurrent-output
  (package
    (name "haskell-8.8-concurrent-output")
    (version "1.10.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-output/concurrent-output-"
                    version ".tar.gz"))
              (sha256
               (base32
                "081wpag1d5znr0ynrjvkc14xl816m88vz9hgfm3g3sp6ak7s3y47"))))
    (properties `((upstream-name . "concurrent-output") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xh4a1cc0bqbbbcq6rg2h8lagj0qvdazrd4b4qn8fvyxssh0m4n8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-terminal-size)))
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

haskell-8.8-concurrent-output

(define-public haskell-8.8-cookie
  (package
    (name "haskell-8.8-cookie")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-8.8-cookie

(define-public haskell-8.8-cprng-aes
  (package
    (name "haskell-8.8-cprng-aes")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-cipher-aes)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-random)))
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

haskell-8.8-cprng-aes

(define-public haskell-8.8-data-bword
  (package
    (name "haskell-8.8-data-bword")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-8.8-data-bword

(define-public haskell-8.8-diagrams-solve
  (package
    (name "haskell-8.8-diagrams-solve")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-solve/diagrams-solve-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qzycw3aj4107dqpgir3ak7pnja3a6i4ax15gd2q2fjzmp4p3z24"))))
    (properties `((upstream-name . "diagrams-solve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-8.8-diagrams-solve

(define-public haskell-8.8-drinkery
  (package
    (name "haskell-8.8-drinkery")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/drinkery/drinkery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c5mv0klhdavbsaa1mng0q15vy0cz6x8ijfzgaf1f18yyxvb0q1q"))))
    (properties `((upstream-name . "drinkery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)))
    (home-page "https://github.com/fumieval/drinkery#readme")
    (synopsis "Boozy streaming library")
    (description
     "Please see the README on Github at <https://github.com/fumieval/drinkery#readme>")
    (license license:bsd-3)))

haskell-8.8-drinkery

(define-public haskell-8.8-dunai
  (package
    (name "haskell-8.8-dunai")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dunai/dunai-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gii02d557ak0h4sq5ra4n40y4sl88z74n6mwd0937xxlpiahwsh"))))
    (properties `((upstream-name . "dunai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-hlint" "-f-test-doc-coverage")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-MonadRandom)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-affine-space)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
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

haskell-8.8-dunai

(define-public haskell-8.8-errors
  (package
    (name "haskell-8.8-errors")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/errors/errors-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x8znwn31qcx6kqx99wp7bc86kckfb39ncz3zxvj1s07kxlfawk7"))))
    (properties `((upstream-name . "errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0sji6ny86f4j9ch1cyf2p1mcr5b2ighvw4bb9rssvypxb6k2r68f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/errors")
    (synopsis "Simplified error-handling")
    (description
     "The one-stop shop for all your error-handling needs!  Just import
\"Control.Error\".

This library encourages an error-handling style that directly uses the type
system, rather than out-of-band exceptions.")
    (license license:bsd-3)))

haskell-8.8-errors

(define-public haskell-8.8-free-vl
  (package
    (name "haskell-8.8-free-vl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "http://github.com/aaronlevin/free-vl")
    (synopsis "van Laarhoven encoded Free Monad with Extensible Effects")
    (description
     "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.

For more information on the van Laarhoven Free Monads, including examples,
please see the following blog posts:

Initial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>

Adding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>")
    (license license:bsd-3)))

haskell-8.8-free-vl

(define-public haskell-8.8-ghc-source-gen
  (package
    (name "haskell-8.8-ghc-source-gen")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-source-gen/ghc-source-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ch3nahhbm0lvz0x5dlmiv07rd0a6398bf046byx36fwrkqglswh"))))
    (properties `((upstream-name . "ghc-source-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-paths)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/google/ghc-source-gen#readme")
    (synopsis "Constructs Haskell syntax trees for the GHC API.")
    (description
     "@@ghc-source-gen@@ is a library for generating Haskell source code.
It uses the <https://hackage.haskell.org/package/ghc ghc> library
to support recent language extensions, and provides a simple, consistent
interface across several major versions of GHC.

To get started, take a look at the \"GHC.SourceGen\" module.

For more information, please see the <https://github.com/google/ghc-source-gen README>.")
    (license license:bsd-3)))

haskell-8.8-ghc-source-gen

(define-public haskell-8.8-ghc-typelits-natnormalise
  (package
    (name "haskell-8.8-ghc-typelits-natnormalise")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-natnormalise/ghc-typelits-natnormalise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14lynjsmiml19wma9fk2bbhfz43wzbbyvrxp8xpch2lkh5zkfkny"))))
    (properties `((upstream-name . "ghc-typelits-natnormalise")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
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

haskell-8.8-ghc-typelits-natnormalise

(define-public haskell-8.8-haskell-src-exts-util
  (package
    (name "haskell-8.8-haskell-src-exts-util")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-util/haskell-src-exts-util-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fvqi72m74p7q5sbpy8m2chm8a1lgy10mfrcxcz8wrh59vngj0n8"))))
    (properties `((upstream-name . "haskell-src-exts-util") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-8.8-haskell-src-exts-util

(define-public haskell-8.8-hourglass
  (package
    (name "haskell-8.8-hourglass")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/vincenthz/hs-hourglass")
    (synopsis "simple performant time related library")
    (description
     "Simple time library focusing on simple but powerful and performant API

The backbone of the library are the Timeable and Time type classes.

Each Timeable instances can be converted to type that has a Time instances,
and thus are different representations of current time.")
    (license license:bsd-3)))

haskell-8.8-hourglass

(define-public haskell-8.8-hpc-codecov
  (package
    (name "haskell-8.8-hpc-codecov")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpc-codecov/hpc-codecov-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gbgrq5xv393mg7xgqddw18hqwhrz11nrqblcrcjpm4cdbkxwf5q"))))
    (properties `((upstream-name . "hpc-codecov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-tar)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/8c6794b6/hpc-codecov#readme")
    (synopsis "Generate codecov report from hpc data")
    (description
     "The hpc-codecov package contains an executable and library codes for
generating <https://codecov.io Codeocv> JSON coverage report from
@@.tix@@ and @@.mix@@ files made with
<https://hackage.haskell.org/package/hpc hpc>.  See the
<https://github.com/8c6794b6/hpc-codecov#readme README> for
more info.")
    (license license:bsd-3)))

haskell-8.8-hpc-codecov

(define-public haskell-8.8-hreader
  (package
    (name "haskell-8.8-hreader")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-hset)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://bitbucket.org/s9gf4ult/hreader")
    (synopsis "Generalization of MonadReader and ReaderT using hset")
    (description "")
    (license license:bsd-3)))

haskell-8.8-hreader

(define-public haskell-8.8-hspec
  (package
    (name "haskell-8.8-hspec")
    (version "2.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hspec/hspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ynd111mwm5ykl74nb7ac7mz1b9xvs1hqjdksfm83dy2sj4axwpx"))))
    (properties `((upstream-name . "hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)))
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

haskell-8.8-hspec

(define-public haskell-8.8-immortal
  (package
    (name "haskell-8.8-immortal")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (home-page "https://github.com/feuerbach/immortal")
    (synopsis "Spawn threads that never die (unless told to do so)")
    (description "A small library to create threads that never die.
This is useful e.g. for writing servers.")
    (license license:expat)))

haskell-8.8-immortal

(define-public haskell-8.8-inflections
  (package
    (name "haskell-8.8-inflections")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inflections/inflections-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1054v250p86gb1kvbrp60fzwds8v8nsqap1970j7hgk5hjwq1xj1"))))
    (properties `((upstream-name . "inflections") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/stackbuilders/inflections-hs")
    (synopsis "Inflections library for Haskell")
    (description
     "Inflections provides methods for singularization, pluralization,
dasherizing, etc. The library is based on Rails' inflections library.")
    (license license:expat)))

haskell-8.8-inflections

(define-public haskell-8.8-jira-wiki-markup
  (package
    (name "haskell-8.8-jira-wiki-markup")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jira-wiki-markup/jira-wiki-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0riwi6i0vvmfffprzd4gklxjivjv1x7cmb2vx43x6n8yfrd75yzv"))))
    (properties `((upstream-name . "jira-wiki-markup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/tarleb/jira-wiki-markup")
    (synopsis "Handle Jira wiki markup")
    (description "Parse jira wiki text into an abstract syntax tree for easy
transformation to other formats.")
    (license license:expat)))

haskell-8.8-jira-wiki-markup

(define-public haskell-8.8-language-java
  (package
    (name "haskell-8.8-language-java")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-alex)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-8.8-language-java

(define-public haskell-8.8-linenoise
  (package
    (name "haskell-8.8-linenoise")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linenoise/linenoise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hs910k358mfx1s1cmrc76f8ra3r34748h22m68a64mspibd2frx"))))
    (properties `((upstream-name . "linenoise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (home-page "https://github.com/ejconlon/haskell-linenoise#readme")
    (synopsis "A lightweight readline-replacement library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/haskell-linenoise#readme>")
    (license license:bsd-3)))

haskell-8.8-linenoise

(define-public haskell-8.8-listsafe
  (package
    (name "haskell-8.8-listsafe")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/listsafe/listsafe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0scd74fv6gzl7yi5ssb1z9kwwfyx9p39yqprnzbpvspvxm3k41qs"))))
    (properties `((upstream-name . "listsafe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)))
    (home-page "https://github.com/ombocomp/listsafe")
    (synopsis
     "Safe wrappers for partial list functions, supporting MonadThrow.")
    (description "Data.List includes a handful of partial functions that throw
uncatchable exceptions when given empty lists. This package
provides safe alternatives for such functions based on
MonadThrow which can provide a variety of failure
cases: Nothing, IOException, Left, etc.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-listsafe

(define-public haskell-8.8-little-rio
  (package
    (name "haskell-8.8-little-rio")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/little-rio/little-rio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yxxmad9709h1gpxzjhvqmjhn3m8dcishd9gs6bakc2hrapw2ss2"))))
    (properties `((upstream-name . "little-rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (home-page "https://github.com/ejconlon/little-rio#readme")
    (synopsis "When you need just the RIO monad")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/little-rio#readme>")
    (license license:bsd-3)))

haskell-8.8-little-rio

(define-public haskell-8.8-llvm-hs-pure
  (package
    (name "haskell-8.8-llvm-hs-pure")
    (version "9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/llvm-hs-pure/llvm-hs-pure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pxb5ah8r5pzpz2ibqw3g9g1isigb4z7pbzfrwr8kmcjn74ab3kf"))))
    (properties `((upstream-name . "llvm-hs-pure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14vn4yyzwg5kh6wx67ax0vd06n94x1y9rzqj6k2qr8liayhmbxhh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "Pure Haskell LLVM functionality (no FFI).")
    (description
     "llvm-hs-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.
It includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-hs package
builds on this one with FFI bindings to LLVM, but llvm-hs-pure does not require LLVM to be available.")
    (license license:bsd-3)))

haskell-8.8-llvm-hs-pure

(define-public haskell-8.8-logict
  (package
    (name "haskell-8.8-logict")
    (version "0.7.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logict/logict-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0psihirap7mrn3ly1h9dvgvgjsqbqwji8m13fm48zl205mpfh73r"))))
    (properties `((upstream-name . "logict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13hxmzaxd5iv9hjad5kw9infq0lxsgypqqb2z1i1939604a90qp4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/Bodigrim/logict#readme")
    (synopsis "A backtracking logic-programming monad.")
    (description "A continuation-based, backtracking, logic programming monad.
An adaptation of the two-continuation implementation found
in the paper \"Backtracking, Interleaving, and Terminating
Monad Transformers\" available here:
<http://okmij.org/ftp/papers/LogicT.pdf>")
    (license license:bsd-3)))

haskell-8.8-logict

(define-public haskell-8.8-matrices
  (package
    (name "haskell-8.8-matrices")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-8.8-matrices

(define-public haskell-8.8-mfsolve
  (package
    (name "haskell-8.8-mfsolve")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mtl-compat)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-8.8-mfsolve

(define-public haskell-8.8-midi
  (package
    (name "haskell-8.8-midi")
    (version "0.2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/midi/midi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fv9980k35qv9qk73g2mp88xvhchyq0lq37cl7i26gx4f64vaz6y"))))
    (properties `((upstream-name . "midi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sa17aphsnk0lc42k1niisbd4jck7j4xij95mjjc5nlrcx1zd123")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-event-list)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-monoid-transformer)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-non-negative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/MIDI")
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

haskell-8.8-midi

(define-public haskell-8.8-monad-loops
  (package
    (name "haskell-8.8-monad-loops")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/mokus0/monad-loops")
    (synopsis "Monadic loops")
    (description "Some useful control operators for looping.

New in 0.4: STM loop operators have been split into a
new package instead of being conditionally-built.

New in 0.3.2.0: various functions for traversing lists and
computing minima/maxima using arbitrary procedures to compare
or score the elements.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-monad-loops

(define-public haskell-8.8-monad-metrics
  (package
    (name "haskell-8.8-monad-metrics")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-metrics/monad-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13wsz9c02jsh5sh2kka1v7kna1aij51794n7g52ib27qmxgg9qvq"))))
    (properties `((upstream-name . "monad-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y5733zs49jyi2qyx8nk2p2ddzkkih1nw33qjrc9ppk05m3030hi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ekg-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/parsonsmatt/monad-metrics#readme")
    (synopsis "A convenient wrapper around EKG metrics")
    (description
     "A convenient wrapper for collecting application metrics. Please see the README.md for more information.")
    (license license:expat)))

haskell-8.8-monad-metrics

(define-public haskell-8.8-netlib-comfort-array
  (package
    (name "haskell-8.8-netlib-comfort-array")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-comfort-array)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-netlib-ffi)))
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

haskell-8.8-netlib-comfort-array

(define-public haskell-8.8-nondeterminism
  (package
    (name "haskell-8.8-nondeterminism")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/nondeterminism")
    (synopsis
     "A monad and monad transformer for nondeterministic computations.")
    (description "Nondeterministic computations")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-nondeterminism

(define-public haskell-8.8-openpgp-asciiarmor
  (package
    (name "haskell-8.8-openpgp-asciiarmor")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "http://floss.scru.org/openpgp-asciiarmor")
    (synopsis "OpenPGP (RFC4880) ASCII Armor codec")
    (description "OpenPGP (RFC4880) ASCII Armor codec")
    (license license:expat)))

haskell-8.8-openpgp-asciiarmor

(define-public haskell-8.8-opentelemetry
  (package
    (name "haskell-8.8-opentelemetry")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry/opentelemetry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12myg932dpf6zz38ahf9dmx449dkp9kf9pi79j8bdlz4v2fl3jzj"))))
    (properties `((upstream-name . "opentelemetry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)))
    (home-page "https://hackage.haskell.org/package/opentelemetry")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-8.8-opentelemetry

(define-public haskell-8.8-optics
  (package
    (name "haskell-8.8-optics")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optics/optics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0q80rambmw387dq23nsywzpwrvi8vjy9sg1fl2qwc2is6xki6pcl"))))
    (properties `((upstream-name . "optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-indexed-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-inspection-testing)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-optics-extra)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-optics-th)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/optics")
    (synopsis "Optics as an abstract interface")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface. See the main module \"Optics\"
for the documentation.

This is the \"batteries-included\" variant with many dependencies; see the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package and
other @@optics-*@@ dependencies if you need a more limited dependency footprint.

Note: Hackage does not yet display documentation for reexported-modules,
but you can start from the \"Optics\" module documentation or see the module
list in @@<https://hackage.haskell.org/package/optics-core optics-core>@@.")
    (license license:bsd-3)))

haskell-8.8-optics

(define-public haskell-8.8-paripari
  (package
    (name "haskell-8.8-paripari")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/minad/paripari#readme")
    (synopsis
     "Parser combinators with fast-path and slower fallback for error reporting")
    (description
     "PariPari offers two parsing strategies. There is a fast Acceptor and a slower Reporter which are evaluated in parallel. If the Acceptor fails, the Reporter returns a report about the parsing errors. Like Attoparsec, the parser combinators backtrack by default.")
    (license license:expat)))

haskell-8.8-paripari

(define-public haskell-8.8-pgp-wordlist
  (package
    (name "haskell-8.8-pgp-wordlist")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-pgp-wordlist

(define-public haskell-8.8-pipes
  (package
    (name "haskell-8.8-pipes")
    (version "4.3.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pipes/pipes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11r8cqy98w1y0avgn53x1fzqxpdfg7wvwwkfppnk9yip0lkcp3yv"))))
    (properties `((upstream-name . "pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://hackage.haskell.org/package/pipes")
    (synopsis "Compositional pipelines")
    (description
     "`pipes` is a clean and powerful stream processing library that lets you build
and connect reusable streaming components

Advantages over traditional streaming libraries:

* /Concise API/: Use simple commands like 'for', ('>->'), 'await', and 'yield'

* /Blazing fast/: Implementation tuned for speed, including shortcut fusion

* /Lightweight Dependency/: @@pipes@@ is small and compiles very rapidly,
including dependencies

* /Elegant semantics/: Use practical category theory

* /ListT/: Correct implementation of 'ListT' that interconverts with pipes

* /Bidirectionality/: Implement duplex channels

* /Extensive Documentation/: Second to none!

Import \"Pipes\" to use the library.

Read \"Pipes.Tutorial\" for an extensive tutorial.")
    (license license:bsd-3)))

haskell-8.8-pipes

(define-public haskell-8.8-poll
  (package
    (name "haskell-8.8-poll")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poll/poll-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0agdl2bxw7ca05kqyc8dix4kvjdh67i91hn1scmcngjd3gz8gzmr"))))
    (properties `((upstream-name . "poll") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-enumset)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "https://hackage.haskell.org/package/poll")
    (synopsis "Bindings to poll.h")
    (description
     "Poll functionality allows to wait on different FileDescriptors simultaneously.")
    (license license:bsd-3)))

haskell-8.8-poll

(define-public haskell-8.8-primitive
  (package
    (name "haskell-8.8-primitive")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive/primitive-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pgpjzlfn037lw7lsszpqmqhbf33fnd86jna1whdd4pl57cbg2yx"))))
    (properties `((upstream-name . "primitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "https://github.com/haskell/primitive")
    (synopsis "Primitive memory-related operations")
    (description
     "This package provides various primitive memory-related operations.")
    (license license:bsd-3)))

haskell-8.8-primitive

(define-public haskell-8.8-proto3-wire
  (package
    (name "haskell-8.8-proto3-wire")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto3-wire/proto3-wire-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f8vllbysz6d7njkqd6f52k4nixjj4wf2k4nh4gb4b7dihdzhnmg"))))
    (properties `((upstream-name . "proto3-wire") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ws072947d8lmchknyhrzpg9mh6dacya872a4b9dw0cdgkn13zm8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/proto3-wire")
    (synopsis
     "A low-level implementation of the Protocol Buffers (version 3) wire format")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-proto3-wire

(define-public haskell-8.8-read-env-var
  (package
    (name "haskell-8.8-read-env-var")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)))
    (home-page "https://github.com/cdepillabout/read-env-var#readme")
    (synopsis "Functions for safely reading environment variables.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-read-env-var

(define-public haskell-8.8-relational-schemas
  (package
    (name "haskell-8.8-relational-schemas")
    (version "0.1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-schemas/relational-schemas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "012b3jqxpyv41vwxvrk6nxall7hvbczkxwmld3w3jzg20z0535l4"))))
    (properties `((upstream-name . "relational-schemas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-relational-query)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-sql-words)))
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

haskell-8.8-relational-schemas

(define-public haskell-8.8-repline
  (package
    (name "haskell-8.8-repline")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repline/repline-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06f5df05j295v84j5c4k8bffwkpmrncbz4kpw4sh1pjszp1yv4d1"))))
    (properties `((upstream-name . "repline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1x4f1cbn9ylg82h853mqhm0sda6lz76ssk45d0x842pjbn3y46xx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)))
    (home-page "https://github.com/sdiehl/repline")
    (synopsis "Haskeline wrapper for GHCi-like REPL interfaces.")
    (description
     "Haskeline wrapper for GHCi-like REPL interfaces. Composable with normal mtl transformers.")
    (license license:expat)))

haskell-8.8-repline

(define-public haskell-8.8-rope-utf16-splay
  (package
    (name "haskell-8.8-rope-utf16-splay")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/ollef/rope-utf16-splay")
    (synopsis "Ropes optimised for updating using UTF-16 code units and
row/column pairs.")
    (description "Ropes optimised for updating using UTF-16 code units and
row/column pairs.  This implementation uses splay trees
instead of the usual finger trees. According to my
benchmarks, splay trees are faster in most situations.")
    (license license:bsd-3)))

haskell-8.8-rope-utf16-splay

(define-public haskell-8.8-sample-frame-np
  (package
    (name "haskell-8.8-sample-frame-np")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-numeric-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-sample-frame)))
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

haskell-8.8-sample-frame-np

(define-public haskell-8.8-scalpel-core
  (package
    (name "haskell-8.8-scalpel-core")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scalpel-core/scalpel-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07mjff8aqwabx8yhq8bd7jpnarkkrjqss8h8s2wkfmfj808fllmf"))))
    (properties `((upstream-name . "scalpel-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1dn9ffblmfrr5ly3v1kbcmzc3z6m4x4p5mym8pfwc9p1vfxqbvz7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-pointedlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel core provides a subset of the scalpel web scraping library that is
intended to have lightweight dependencies and to be free of all non-Haskell
dependencies.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-scalpel-core

(define-public haskell-8.8-selda
  (package
    (name "haskell-8.8-selda")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/selda/selda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gd7fdgqw6q507wn7h1pln9wb7kh65vd7iv0s1ydg54r36qdlrgl"))))
    (properties `((upstream-name . "selda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sdzfgsmgw20idxnvvf4sbp8bkl3n7qa7qkphv63pfmqvzyplkwg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uuid-types)))
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

haskell-8.8-selda

(define-public haskell-8.8-selective
  (package
    (name "haskell-8.8-selective")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selective/selective-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ix9080g4qcs3w89bmilr6f84kg6vw9hyx5cs5hiw9xnp7dh4sdc"))))
    (properties `((upstream-name . "selective") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
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

haskell-8.8-selective

(define-public haskell-8.8-semver
  (package
    (name "haskell-8.8-semver")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/brendanhay/semver")
    (synopsis
     "Representation, manipulation, and de/serialisation of Semantic Versions.")
    (description
     "Representation, manipulation, and de/serialisation of a Version type
following the Semantic Versioning specification.

For more information see: <http://semver.org>")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-semver

(define-public haskell-8.8-sitemap-gen
  (package
    (name "haskell-8.8-sitemap-gen")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sitemap-gen/sitemap-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dq87yix1ii6mna8qzbgrqn07ph41283bjzy40rpwm7aqdpv2z0z"))))
    (properties `((upstream-name . "sitemap-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wizn0h8vwjrfgznb4bikpvil37v9iy42ginq584k85kiysxxmqa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-xmlgen)))
    (home-page "https://github.com/prikhi/sitemap-gen#readme")
    (synopsis "Generate XML Sitemaps & Sitemap Indexes")
    (description
     "The @@sitemap-gen@@ package uses the @@xmlgen@@ package to generate XML
sitemaps that are compliant with the sitemaps.org XML schema.

See the \"Web.Sitemap.Gen\" module and the
<https://github.com/prikhi/sitemap-gen/blob/master/README.md README> file
for documentation & usage details.")
    (license license:bsd-3)))

haskell-8.8-sitemap-gen

(define-public haskell-8.8-sox
  (package
    (name "haskell-8.8-sox")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-sample-frame)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-sox

(define-public haskell-8.8-soxlib
  (package
    (name "haskell-8.8-soxlib")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/soxlib/soxlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f7ci58yls5rhq1vy1q1imlsgkbvadv8646fvvymg0jq2mjwgsfd"))))
    (properties `((upstream-name . "soxlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-sample-frame)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-storablevector)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages audio) sox)))
    (home-page "http://www.haskell.org/haskellwiki/Sox")
    (synopsis "Write, read, convert audio signals using libsox")
    (description
     "This is an FFI binding to @@libsox@@ of the Sox (Sound Exchanger) project
<http://sox.sourceforge.net/>.
It lets write, read and convert audio signals
in various formats, resolutions, and numbers of channels.

The package @@sox@@ has similar functionality
but calls the @@sox@@ shell command.")
    (license license:bsd-3)))

haskell-8.8-soxlib

(define-public haskell-8.8-structs
  (package
    (name "haskell-8.8-structs")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/structs/structs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y8w44lsybzrkhnv2nrk4zpsp01hny66syibh3xwqpi06k18h2lr"))))
    (properties `((upstream-name . "structs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-8.8-structs

(define-public haskell-8.8-structured-cli
  (package
    (name "haskell-8.8-structured-cli")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://gitlab.com/codemonkeylabs/structured-cli#readme")
    (synopsis "Application library for building interactive console CLIs")
    (description
     "This module provides the tools to build a complete \"structured\" CLI application, similar to those found in systems like Cisco IOS or console configuration utilities etc. It aims to be easy for implementors to use.")
    (license license:bsd-3)))

haskell-8.8-structured-cli

(define-public haskell-8.8-tasty-kat
  (package
    (name "haskell-8.8-tasty-kat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-8.8-tasty-kat

(define-public haskell-8.8-tasty-quickcheck
  (package
    (name "haskell-8.8-tasty-quickcheck")
    (version "0.10.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-quickcheck/tasty-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i1i78587znqzwps49milyr5n2k388ld2kr9ysz1vw8gcw51qq49"))))
    (properties `((upstream-name . "tasty-quickcheck") (hidden? . #f)))
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
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pcre-light)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "QuickCheck support for the Tasty test framework.")
    (description "QuickCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-8.8-tasty-quickcheck

(define-public haskell-8.8-tasty-th
  (package
    (name "haskell-8.8-tasty-th")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-th/tasty-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b2ivrw2257m4cy4rjnkwqlarh83j1y3zywnmaqqqbvy667sqnj3"))))
    (properties `((upstream-name . "tasty-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "http://github.com/bennofs/tasty-th")
    (synopsis "Automatic tasty test case discovery using TH")
    (description
     "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.")
    (license license:bsd-3)))

haskell-8.8-tasty-th

(define-public haskell-8.8-temporary
  (package
    (name "haskell-8.8-temporary")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/feuerbach/temporary")
    (synopsis "Portable temporary file and directory support")
    (description "Functions for creating temporary files and directories.")
    (license license:bsd-3)))

haskell-8.8-temporary

(define-public haskell-8.8-temporary-rc
  (package
    (name "haskell-8.8-temporary-rc")
    (version "1.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/temporary-rc/temporary-rc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nqih0qks439k3pr5kmbbc8rjdw730slrxlflqb27fbxbzb8skqs"))))
    (properties `((upstream-name . "temporary-rc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)))
    (home-page "http://www.github.com/feuerbach/temporary")
    (synopsis
     "Portable temporary file and directory support for Windows and Unix, based on code from Cabal")
    (description
     "The functions for creating temporary files and directories in the base library are quite limited. The unixutils
package contains some good ones, but they aren't portable to Windows.
This library just repackages the Cabal implementations of its own temporary file and folder functions so that
you can use them without linking against Cabal or depending on it being installed.
This is a better maintained fork of the \"temporary\" package.")
    (license license:bsd-3)))

haskell-8.8-temporary-rc

(define-public haskell-8.8-text-manipulate
  (package
    (name "haskell-8.8-text-manipulate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
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

haskell-8.8-text-manipulate

(define-public haskell-8.8-titlecase
  (package
    (name "haskell-8.8-titlecase")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-8.8-titlecase

(define-public haskell-8.8-traverse-with-class
  (package
    (name "haskell-8.8-traverse-with-class")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/traverse-with-class")
    (synopsis "Generic applicative traversals")
    (description "This is a generic programming library in the spirit of
\\\"Scrap your boilerplate with class\\\", but with several
improvements — most notably, it's based on the @@gtraverse@@
function instead of @@gfoldl@@.
@@gtraverse@@ is equivalent in power to @@gfoldl@@, but lets
you more easily write non-standard views of the data type.")
    (license license:expat)))

haskell-8.8-traverse-with-class

(define-public haskell-8.8-ttc
  (package
    (name "haskell-8.8-ttc")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttc/ttc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0yp92aa62xzzgnlwaw45p8cp9m3w2mmpdr3r2h3zw3dcqvq6hx1l"))))
    (properties `((upstream-name . "ttc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/ExtremaIS/ttc-haskell#readme")
    (synopsis "Textual Type Classes")
    (description
     "This library provides type classes for conversion between data types and
textual data types (strings).  Please see the README on GitHub at
<https://github.com/ExtremaIS/ttc-haskell#readme>.")
    (license license:expat)))

haskell-8.8-ttc

(define-public haskell-8.8-type-errors
  (package
    (name "haskell-8.8-type-errors")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-first-class-families)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)))
    (home-page "https://github.com/isovector/type-errors#readme")
    (synopsis "Tools for writing better type errors")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>")
    (license license:bsd-3)))

haskell-8.8-type-errors

(define-public haskell-8.8-unexceptionalio-trans
  (package
    (name "haskell-8.8-unexceptionalio-trans")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-unexceptionalio)))
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

haskell-8.8-unexceptionalio-trans

(define-public haskell-8.8-vector-bytes-instances
  (package
    (name "haskell-8.8-vector-bytes-instances")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-8.8-vector-bytes-instances

(define-public haskell-8.8-vector-rotcev
  (package
    (name "haskell-8.8-vector-rotcev")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-rotcev/vector-rotcev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sl5jwmpmzzvknalgqrbpy3yhqclgqxf75wnpb24rn416kdscy6j"))))
    (properties `((upstream-name . "vector-rotcev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1wnml6ypm68k3i92m9wfkl1qckcr697z4dbchj6pwv9pf6rih9bc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/Bodigrim/rotcev")
    (synopsis "Vectors with O(1) reverse")
    (description
     "A wrapper for an arbitrary @@Vector@@ with O(1) @@reverse@@.
Instead of creating a copy, it just flips a flag, which inverts indexing.
Imagine it as a vector with a switch between little-endianness and big-endianness.")
    (license license:bsd-3)))

haskell-8.8-vector-rotcev

(define-public haskell-8.8-vector-split
  (package
    (name "haskell-8.8-vector-split")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-8.8-vector-split

(define-public haskell-8.8-vector-th-unbox
  (package
    (name "haskell-8.8-vector-th-unbox")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/vector-th-unbox")
    (synopsis "Deriver for Data.Vector.Unboxed using Template Haskell")
    (description
     "A Template Haskell deriver for unboxed vectors, given a pair of coercion
functions to and from some existing type with an Unbox instance.

Refer to \"Data.Vector.Unboxed.Deriving\" for documentation and examples.")
    (license license:bsd-3)))

haskell-8.8-vector-th-unbox

(define-public haskell-8.8-versions
  (package
    (name "haskell-8.8-versions")
    (version "3.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1n6mayi2qinlv12bf83qskiazwzgl37d4nxvglmwmddb7lpyxbrw"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://github.com/fosskers/versions")
    (synopsis "Types and parsers for software version numbers.")
    (description
     "A library for parsing and comparing software version numbers. We like to give
version numbers to our software in a myriad of ways. Some ways follow strict
guidelines for incrementing and comparison. Some follow conventional wisdom
and are generally self-consistent. Some are just plain asinine. This library
provides a means of parsing and comparing /any/ style of versioning, be it a
nice Semantic Version like this:

> 1.2.3-r1+git123

...or a monstrosity like this:

> 2:10.2+0.0093r3+1-1

Please switch to <http://semver.org Semantic Versioning> if you aren't
currently using it. It provides consistency in version incrementing and has
the best constraints on comparisons.")
    (license license:bsd-3)))

haskell-8.8-versions

(define-public haskell-8.8-wl-pprint-annotated
  (package
    (name "haskell-8.8-wl-pprint-annotated")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/minad/wl-pprint-annotated#readme")
    (synopsis "Pretty printer with annotation support")
    (description
     "Wadler/Leijen pretty printer with support for annotations and modernized API. Annotations are useful for coloring. See wl-pprint-console.")
    (license license:bsd-3)))

haskell-8.8-wl-pprint-annotated

(define-public haskell-8.8-writer-cps-exceptions
  (package
    (name "haskell-8.8-writer-cps-exceptions")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-exceptions/writer-cps-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzfqmndlhqhb3l84fa1g51ydkf3py5vip5c1l6rzqak7b2ms6ls"))))
    (properties `((upstream-name . "writer-cps-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-writer-cps-transformers)))
    (home-page "https://github.com/minad/writer-cps-exceptions")
    (synopsis
     "Control.Monad.Catch instances for the stricter CPS WriterT and RWST")
    (description
     "Control.Monad.Catch instances for the stricter WriterT and RWST from writer-cps-transformers.")
    (license license:bsd-3)))

haskell-8.8-writer-cps-exceptions

(define-public haskell-8.8-zeromq4-haskell
  (package
    (name "haskell-8.8-zeromq4-haskell")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
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

haskell-8.8-zeromq4-haskell

