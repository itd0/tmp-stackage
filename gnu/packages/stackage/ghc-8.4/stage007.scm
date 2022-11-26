;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage007)
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
(define-public haskell-8.4-Clipboard
  (package
    (name "haskell-8.4-Clipboard")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-X11)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
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

haskell-8.4-Clipboard

(define-public haskell-8.4-HSet
  (package
    (name "haskell-8.4-HSet")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HSet/HSet-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0snix2qdj1d66v6qj6fl0zizl617kjzbmxiswdd5i0b5lzjkpagb"))))
    (properties `((upstream-name . "HSet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)))
    (home-page "https://hackage.haskell.org/package/HSet")
    (synopsis "Faux heterogeneous sets")
    (description "")
    (license license:bsd-3)))

haskell-8.4-HSet

(define-public haskell-8.4-Imlib
  (package
    (name "haskell-8.4-Imlib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-X11)
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

haskell-8.4-Imlib

(define-public haskell-8.4-RefSerialize
  (package
    (name "haskell-8.4-RefSerialize")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stringsearch)))
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

haskell-8.4-RefSerialize

(define-public haskell-8.4-X11-xft
  (package
    (name "haskell-8.4-X11-xft")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-X11)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
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

haskell-8.4-X11-xft

(define-public haskell-8.4-alsa-seq
  (package
    (name "haskell-8.4-alsa-seq")
    (version "0.6.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-seq/alsa-seq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y5pw2qsga19l79pmmrxc3m7w60yrw9scl9bb71z1alk97ia3k86"))))
    (properties `((upstream-name . "alsa-seq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fmodifyfilter")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages linux) alsa-lib)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-alsa-core)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-enumset)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-poll)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/ALSA")
    (synopsis "Binding to the ALSA Library API (MIDI sequencer).")
    (description
     "This package provides access to ALSA sequencer (MIDI support).
For audio support see alsa-pcm.
Included are some simple example programs.
For more example programs including a GUI, see the alsa-gui programs.")
    (license license:bsd-3)))

haskell-8.4-alsa-seq

(define-public haskell-8.4-async-extra
  (package
    (name "haskell-8.4-async-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://github.com/agrafix/async-extra#readme")
    (synopsis "Useful concurrent combinators")
    (description "Various concurrent combinators")
    (license license:expat)))

haskell-8.4-async-extra

(define-public haskell-8.4-attoparsec
  (package
    (name "haskell-8.4-attoparsec")
    (version "0.13.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec/attoparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j6qcwd146yzlkc9mcvzvnixsyl65n2a68l28322q5v9p4g4g4yx"))))
    (properties `((upstream-name . "attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("6" "0mkh1ailbixvanbiz8r9xif1rvzwipz10p4y04bqrq02744ky051")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/bos/attoparsec")
    (synopsis "Fast combinator parsing for bytestrings and text")
    (description
     "A fast parser combinator library, aimed particularly at dealing
efficiently with network protocols and complicated text/binary
file formats.")
    (license license:bsd-3)))

haskell-8.4-attoparsec

(define-public haskell-8.4-basic-prelude
  (package
    (name "haskell-8.4-basic-prelude")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/basic-prelude/basic-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yckmnvm6i4vw0mykj4fzl4ldsf67v8d2h0vp1bakyj84n4myx8h"))))
    (properties `((upstream-name . "basic-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/snoyberg/basic-prelude#readme")
    (synopsis
     "An enhanced core prelude; a common foundation for alternate preludes.")
    (description
     "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
    (license license:expat)))

haskell-8.4-basic-prelude

(define-public haskell-8.4-binary-parsers
  (package
    (name "haskell-8.4-binary-parsers")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parsers/binary-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yi13cf36w5ilh1cyd7rvyagibbbgbjdym7gp6zgq3lm7d4raqdw"))))
    (properties `((upstream-name . "binary-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "09ag18yr1m26fl3w7ab1d5q5j201ygbw7qsbsy41bwd6iq87rq15")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/winterland1989/binary-parsers")
    (synopsis
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (description
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (license license:bsd-3)))

haskell-8.4-binary-parsers

(define-public haskell-8.4-blaze-html
  (package
    (name "haskell-8.4-blaze-html")
    (version "0.9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-html/blaze-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06xv8fqhclfjj61z74cgggn4lmx1s7diakxg84mnkgfvk11983pa"))))
    (properties `((upstream-name . "blaze-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast HTML combinator library for Haskell")
    (description "A blazingly fast HTML combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.4-blaze-html

(define-public haskell-8.4-blaze-svg
  (package
    (name "haskell-8.4-blaze-svg")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-svg/blaze-svg-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5a4wam0sidng0cfsivwkyph9snyilk7rsdx4vb6wz9l6xz397n"))))
    (properties `((upstream-name . "blaze-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vb78d0nvk0909963pm0mnzklcm57w563lhgx1wv7qzdfznpi8f9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)))
    (home-page "https://github.com/deepakjois/blaze-svg")
    (synopsis "SVG combinator library")
    (description
     "A blazingly fast SVG combinator library for the Haskell
programming language. The \"Text.Blaze.SVG\" module is a good
starting point.

Other documentation:

* Programs in the /examples/ folder of this project: <https://github.com/deepakjois/blaze-svg/tree/master/examples/>

* Jasper Van Der Jeugt has written a tutorial for /blaze-html/,
which is a sister library of /blaze-svg/. It may not be directly relevant,
but still it gives a good overview on how to use the  combinators in
\"Text.Blaze.Svg11\" and \"Text.Blaze.Svg11.Attributes\":
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.4-blaze-svg

(define-public haskell-8.4-buffer-builder
  (package
    (name "haskell-8.4-buffer-builder")
    (version "0.2.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-builder/buffer-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n1zb12zm86rm3jqpdh7j15w6dd1mii0fmaihkdqm0b1rv2zm2dk"))))
    (properties `((upstream-name . "buffer-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/chadaustin/buffer-builder")
    (synopsis
     "Library for efficiently building up buffers, one piece at a time")
    (description
     "\"Data.BufferBuilder\" is an efficient library for incrementally building
up 'ByteString's, one chunk at a time.  Early benchmarks show it
is over twice as fast as ByteString Builder, primarily because
'BufferBuilder' is built upon an ST-style restricted monad and
mutable state instead of ByteString Builder's monoidal AST.

Internally, BufferBuilder is backed by a few C functions.
Examination of GHC's output shows nearly optimal code generation
with no intermediate thunks -- and thus, continuation passing and
its associated indirect jumps and stack traffic only occur when
BufferBuilder is asked to append a non-strict ByteString.

I benchmarked four approaches with a URL encoding benchmark:

* State monad, concatenating ByteStrings: 6.98 us

* State monad, ByteString Builder: 2.48 us

* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)

* C + FFI + ReaderT: 1.11 us

Using BufferBuilder is very simple:

> import qualified Data.BufferBuilder as BB
>
> let byteString = BB.runBufferBuilder $ do
>       BB.appendBS \"http\"
>       BB.appendChar8 '/'
>       BB.appendBS \"//\"

This package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers
and \"Data.BufferBuilder.Json\" for encoding data structures into JSON.")
    (license license:bsd-3)))

haskell-8.4-buffer-builder

(define-public haskell-8.4-bytes
  (package
    (name "haskell-8.4-bytes")
    (version "0.15.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "063il2vrn0p88r9gzndh4ijs0mxj37khkc9ym9bqdsv7ngk3b683"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("1" "0k05cszpxmdwgnbxhmlmmvsxkwlanvz8dn0p3f6bzs8qlv3kbhm7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-8.4-bytes

(define-public haskell-8.4-chan
  (package
    (name "haskell-8.4-chan")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)))
    (home-page "https://github.com/athanclark/chan#readme")
    (synopsis "Some extra kit for Chans")
    (description
     "Please see the README on Github at <https://github.com/athanclark/chan#readme>")
    (license license:bsd-3)))

haskell-8.4-chan

(define-public haskell-8.4-charset
  (package
    (name "haskell-8.4-charset")
    (version "0.3.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/charset/charset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gn0m96qpjww8hpp2g1as5yy0wcwy4iq73h3kz6g0yxxhcl5sh9x"))))
    (properties `((upstream-name . "charset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0zy53crlhmyg931prmjqc99s3273frgmcgnssx889mbvp7z9x7wq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/charset")
    (synopsis
     "Fast unicode character sets based on complemented PATRICIA tries")
    (description
     "Fast unicode character sets based on complemented PATRICIA tries")
    (license license:bsd-3)))

haskell-8.4-charset

(define-public haskell-8.4-cipher-aes128
  (package
    (name "haskell-8.4-cipher-aes128")
    (version "0.7.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-aes128/cipher-aes128-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1182s7984zjxz53nnjyki5afhfq8h5wjfmg6cqy9z0x1q63qk3fd"))))
    (properties `((upstream-name . "cipher-aes128") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test" "-f-halvm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/TomMD/cipher-aes128")
    (synopsis "AES and common modes using AES-NI when available.")
    (description
     "Cipher-aes128 is an implementation of AES and common modes of operation.  It borrows Hanquez's C AES code (see 'cipher-aes') but
is unique due to including compile-time detection of
NI compiler support, a slightly more functional interface
for GCM operations, exposure of 'Ptr' based operations via the .Internal module, and build-in crypto-api support.
Cipher-aes128 was originally developed as \"'cipher-aes' plus trampolines\", which has since been adopted into cipher-aes.")
    (license license:bsd-3)))

haskell-8.4-cipher-aes128

(define-public haskell-8.4-concurrent-output
  (package
    (name "haskell-8.4-concurrent-output")
    (version "1.10.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrent-output/concurrent-output-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mwf155w89nbbkjln7hhbn8k3f8p0ylcvgrg31cm7ijpx4499i4c"))))
    (properties `((upstream-name . "concurrent-output") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-terminal-size)))
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

haskell-8.4-concurrent-output

(define-public haskell-8.4-cprng-aes
  (package
    (name "haskell-8.4-cprng-aes")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-aes)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-random)))
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

haskell-8.4-cprng-aes

(define-public haskell-8.4-crypto-api-tests
  (package
    (name "haskell-8.4-crypto-api-tests")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://trac.haskell.org/crypto-api/wiki")
    (synopsis "A test framework and KATs for cryptographic operations.")
    (description "A test framework for hash and cipher operations using
the crypto-api interface.  Known answer tests (KATs)
for common cryptographic algorithms are included.
Patches welcome (both adding KATs for more algorithms
or property tests for classes of algorithms).")
    (license license:bsd-3)))

haskell-8.4-crypto-api-tests

(define-public haskell-8.4-cryptocipher
  (package
    (name "haskell-8.4-cryptocipher")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptocipher/cryptocipher-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ip3a2as0df6drl29sryayxx22sx55v6bs60s2fh3i1nxqnydf9l"))))
    (properties `((upstream-name . "cryptocipher") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-aes)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-blowfish)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-camellia)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-des)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cipher-rc4)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-cipher-types)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Symmetrical block and stream ciphers.")
    (description "Symmetrical block and stream ciphers.")
    (license license:bsd-3)))

haskell-8.4-cryptocipher

(define-public haskell-8.4-dynamic-state
  (package
    (name "haskell-8.4-dynamic-state")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dynamic-state/dynamic-state-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0drmlb3cvx0blsnqrxzdylpff5jxvpazsy1bxq2szcp70gghpmf4"))))
    (properties `((upstream-name . "dynamic-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/dynamic-state")
    (synopsis "Optionally serializable dynamic state keyed by type")
    (description "Optionally serializable dynamic state keyed by type")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-dynamic-state

(define-public haskell-8.4-easytest
  (package
    (name "haskell-8.4-easytest")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/easytest/easytest-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gdyawzlw6d15yz7ji599xjgfr0g7l1iq11ffr4aw3j6g3dc6m8i"))))
    (properties `((upstream-name . "easytest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-optimized" "-f-quiet")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/joelburget/easytest")
    (synopsis "Simple, expressive testing library")
    (description
     "EasyTest is a simple testing toolkit, meant to replace most uses of QuickCheck, SmallCheck, HUnit, and frameworks like Tasty, etc. Here's an example usage:

> module Main where
>
> import EasyTest
> import Control.Applicative
> import Control.Monad
>
> suite :: Test ()
> suite = tests
>   [ scope \"addition.ex1\" $ expect (1 + 1 == 2)
>   , scope \"addition.ex2\" $ expect (2 + 3 == 5)
>   , scope \"list.reversal\" . fork $ do
>       -- generate lists from size 0 to 10, of Ints in (0,43)
>       -- shorthand: listsOf [0..10] (int' 0 43)
>       ns <- [0..10] `forM` \\n -> replicateM n (int' 0 43)
>       ns `forM_` \\ns -> expect (reverse (reverse ns) == ns)
>   -- equivalent to `scope \"addition.ex3\"`
>   , scope \"addition\" . scope \"ex3\" $ expect (3 + 3 == 6)
>   , scope \"always passes\" $ do
>       note \"I'm running this test, even though it always passes!\"
>       ok -- like `pure ()`, but records a success result
>   , scope \"failing test\" $ crash \"oh noes!!\" ]
>
> -- NB: `run suite` would run all tests, but we only run
> -- tests whose scopes are prefixed by \"addition\"
> main = runOnly \"addition\" suite

This generates the output:

> Randomness seed for this run is 5104092164859451056
> Raw test output to follow ...
> ------------------------------------------------------------
> OK addition.ex1
> OK addition.ex2
> OK addition.ex3
> ------------------------------------------------------------
> ✅  3 tests passed, no failures! 👍 🎉
The idea here is to write tests with ordinary Haskell code, with control flow explicit and under programmer control.")
    (license license:expat)))

haskell-8.4-easytest

(define-public haskell-8.4-ekg-core
  (package
    (name "haskell-8.4-ekg-core")
    (version "0.1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-core/ekg-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hjprlx99k7mgs2zn06yckir71dvz90xs24g2r990r97mmwxva36"))))
    (properties `((upstream-name . "ekg-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-core")
    (synopsis "Tracking of system metrics")
    (description "This library lets you defined and track system metrics.")
    (license license:bsd-3)))

haskell-8.4-ekg-core

(define-public haskell-8.4-every
  (package
    (name "haskell-8.4-every")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)))
    (home-page "https://github.com/athanclark/every#readme")
    (synopsis "Run a process every so often.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-every

(define-public haskell-8.4-expiring-cache-map
  (package
    (name "haskell-8.4-expiring-cache-map")
    (version "0.0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/expiring-cache-map/expiring-cache-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fb47hsn06ybn2yzw7r6pjkmvvfpbdx7wjhbpxcywilbjyac4fqf"))))
    (properties `((upstream-name . "expiring-cache-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k5wqilafxp3ksqb7qy90cwipk0db568f15amn3mnf9krc1qjabg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://codeberg.org/elblake/expiring-cache-map")
    (synopsis "General purpose simple caching.")
    (description
     "A simple general purpose shared state cache map with automatic expiration
of values, for caching the results of accessing a resource such as reading
a file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"
and \"Data.HashMap.Strict\", respectively.")
    (license license:bsd-3)))

haskell-8.4-expiring-cache-map

(define-public haskell-8.4-filelock
  (package
    (name "haskell-8.4-filelock")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filelock/filelock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g90wgm4bcfr5j44sc5s2jlcd7ggk092lph3jqjgf6f67sqxrw8g"))))
    (properties `((upstream-name . "filelock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)))
    (home-page "http://github.com/takano-akio/filelock")
    (synopsis "Portable interface to file locking (flock / LockFileEx)")
    (description "This package provides an interface to Windows and Unix
file locking functionalities.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-filelock

(define-public haskell-8.4-functor-classes-compat
  (package
    (name "haskell-8.4-functor-classes-compat")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/functor-classes-compat/functor-classes-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vrnl5crr7d2wsm4ryx26g98j23dpk7x5p31xrbnckd78i7zj4gg"))))
    (properties `((upstream-name . "functor-classes-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-transformers-1" "-fbase-transformers-2" "-fvector" "-fcontainers" "-funordered-containers")
       #:cabal-revision
       ("7" "0dagdnlb3wfrli6adpy4fjlgdc982pjgwcnq2sb7p3zm86ngi07v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/functor-classes-compat#readme")
    (synopsis "Data.Functor.Classes instances for core packages")
    (description "\"Data.Functor.Classes\" instances for core packages:

* containers

* vector

* unordered-containers")
    (license license:bsd-3)))

haskell-8.4-functor-classes-compat

(define-public haskell-8.4-graph-core
  (package
    (name "haskell-8.4-graph-core")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graph-core/graph-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m7820dwasix5x6ni6gphbqwswxm7qv9xxw9qgl7ifzb82m0p3rp"))))
    (properties `((upstream-name . "graph-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/factisresearch/graph-core")
    (synopsis "Fast, memory efficient and persistent graph implementation")
    (description
     "A small package providing a powerful and easy to use Haskell graph implementation.")
    (license license:expat)))

haskell-8.4-graph-core

(define-public haskell-8.4-gtk2hs-buildtools
  (package
    (name "haskell-8.4-gtk2hs-buildtools")
    (version "0.13.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gtk2hs-buildtools/gtk2hs-buildtools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yg6xmylgpylmnh5g33qwwn5x9bqckdvvv4czqzd9vrr12lnnghg"))))
    (properties `((upstream-name . "gtk2hs-buildtools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclosuresignals")
       #:cabal-revision
       ("1" "0nbghg11y4nvxjxrvdm4a7fzj8z12fr12hkj4b7p27imlryg3m10")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
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
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-gtk2hs-buildtools

(define-public haskell-8.4-hinotify
  (package
    (name "haskell-8.4-hinotify")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hinotify/hinotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17ax3n68a5c2ddazp86aciliskrh6znd3bnry0wcllmb6dbpsaxg"))))
    (properties `((upstream-name . "hinotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07z0n5rvki3w0kjr190bwv7sq8p3myspv8999ilz9rlsqf5a0324")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)))
    (home-page "https://github.com/kolmodin/hinotify.git")
    (synopsis "Haskell binding to inotify")
    (description
     "This library provides a wrapper to the Linux Kernel's inotify feature,
allowing applications to subscribe to notifications when a file is
accessed or modified.")
    (license license:bsd-3)))

haskell-8.4-hinotify

(define-public haskell-8.4-hspec-meta
  (package
    (name "haskell-8.4-hspec-meta")
    (version "2.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-meta/hspec-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qmvk01n79j6skn79r6zalg2pd0x0nqqn9qn8mhg0pgyzcdnfc9b"))))
    (properties `((upstream-name . "hspec-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-setenv)))
    (home-page "http://hspec.github.io/")
    (synopsis "A version of Hspec which is used to test Hspec itself")
    (description "A stable version of Hspec which is used to test the
in-development version of Hspec.")
    (license license:expat)))

haskell-8.4-hspec-meta

(define-public haskell-8.4-html-entity-map
  (package
    (name "haskell-8.4-html-entity-map")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entity-map/html-entity-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1l1pbmrfmh44v9cc9ka01bx9xm1x4jabbl675fc5c57v1h0dlq"))))
    (properties `((upstream-name . "html-entity-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "1776z73bs1v8z3qwpjvqqmzdlj6gm8qba93f41irhn7swdppfq72")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/mrkkrp/html-entity-map")
    (synopsis "Map from HTML5 entity names to the corresponding Unicode text")
    (description
     "Map from HTML5 entity names to the corresponding Unicode text.")
    (license license:bsd-3)))

haskell-8.4-html-entity-map

(define-public haskell-8.4-http-common
  (package
    (name "haskell-8.4-http-common")
    (version "0.8.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-common/http-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14s5a178sb2vm5k00rs21760mds5dz2gs10k9iyn22h01mxyf599"))))
    (properties `((upstream-name . "http-common") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page
     "http://research.operationaldynamics.com/projects/http-streams/")
    (synopsis "Common types for HTTP clients and servers")
    (description
     "/Overview/

Base types used by a variety of HTTP clients and servers. See http-streams
\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full
documentation. You can import @@Network.Http.Types@@ if you like, but both
http-streams and pipes-http re-export this package's types and functions.")
    (license license:bsd-3)))

haskell-8.4-http-common

(define-public haskell-8.4-http-media
  (package
    (name "haskell-8.4-http-media")
    (version "0.7.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-media/http-media-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kqjzvh5y8r6x5rw2kgd816w2963c6cbyw2qjvaj2mv59zxzqkrr"))))
    (properties `((upstream-name . "http-media") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "19py5pspx80gg679p9dzqr3iidflppxc1x4vkldamjkidyi406j8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
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

haskell-8.4-http-media

(define-public haskell-8.4-hxt-css
  (package
    (name "haskell-8.4-hxt-css")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt-css/hxt-css-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dv5xy0rhcs08zyfnmf752h026r2kfg9905d482xy8srblagqi02"))))
    (properties `((upstream-name . "hxt-css") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://github.com/redneb/hxt-css")
    (synopsis "CSS selectors for HXT")
    (description
     "This package makes it possible to easily traverse (X)HTML/XML documents
using CSS selectors. It supports all CSS level 3 selectors except the
ones that do not make sense outside a web browser (e.g. such as @@:hover@@
or @@::first-letter@@). Also, there is no support for namespaced selectors.")
    (license license:bsd-3)))

haskell-8.4-hxt-css

(define-public haskell-8.4-hxt-curl
  (package
    (name "haskell-8.4-hxt-curl")
    (version "9.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-curl/hxt-curl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sn5ngzz5qszdb3anbpqbjdijz29gmrwjrg9vsmrqsdqz65wrhfd"))))
    (properties `((upstream-name . "hxt-curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-curl)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "LibCurl interface for HXT")
    (description "LibCurl interface for HXT")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-hxt-curl

(define-public haskell-8.4-hxt-expat
  (package
    (name "haskell-8.4-hxt-expat")
    (version "9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-expat/hxt-expat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mi2f2i31nqjqzwl82iypm1qngrpxp7lz506pjgqfbn840yc9n8h"))))
    (properties `((upstream-name . "hxt-expat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-hexpat)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)))
    (propagated-inputs (list (@ (gnu packages xml) expat)))
    (home-page "http://www.fh-wedel.de/~si/HXmlToolbox/index.html")
    (synopsis "Expat parser for HXT")
    (description "The Expat interface for the HXT.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-hxt-expat

(define-public haskell-8.4-hxt-pickle-utils
  (package
    (name "haskell-8.4-hxt-pickle-utils")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-pickle-utils/hxt-pickle-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1id9459yphsbxqa0z89dhsmqqcgvk2axv91d05aw3n6r4ygs3nwx"))))
    (properties `((upstream-name . "hxt-pickle-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0d5fg718y7xzw76ip33q0w1liqk70q9074qkd198mjnijxjcrkf3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)))
    (home-page "https://github.com/silkapp/hxt-pickle-utils")
    (synopsis "Utility functions for using HXT picklers.")
    (description "Utility functions for using HXT picklers.")
    (license license:bsd-3)))

haskell-8.4-hxt-pickle-utils

(define-public haskell-8.4-hxt-tagsoup
  (package
    (name "haskell-8.4-hxt-tagsoup")
    (version "9.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-tagsoup/hxt-tagsoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10xj8jqxazfxzazc1ln9w2blp67rafbwdi87ba7arw5ccc6jjyyp"))))
    (properties `((upstream-name . "hxt-tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "TagSoup parser for HXT")
    (description "The Tagsoup interface for the HXT lazy HTML parser.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-hxt-tagsoup

(define-public haskell-8.4-hyphenation
  (package
    (name "haskell-8.4-hyphenation")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyphenation/hyphenation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5i07v2zlka29dj4zysc47p747j88x6z4zm3zwcr5i8yirm0p52"))))
    (properties `((upstream-name . "hyphenation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-embed")
       #:cabal-revision
       ("5" "00wsp69aqi5i906liqa4sfs0p2yclhr1ihz8y1700b3ymb70lzql")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/ekmett/hyphenation")
    (synopsis "Configurable Knuth-Liang hyphenation")
    (description
     "Configurable Knuth-Liang hyphenation

Uses the UTF8 encoded hyphenation patterns provided by
hyph-utf8 from
<http://www.ctan.org/tex-archive/language/hyph-utf8>

Usage:

>>> hyphenate english_US \"supercalifragilisticexpialadocious\"
[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]

>>> hyphenate english_US \"hyphenation\"
[\"hy\",\"phen\",\"ation\"]

>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"
[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]")
    (license license:bsd-2)))

haskell-8.4-hyphenation

(define-public haskell-8.4-intern
  (package
    (name "haskell-8.4-intern")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intern/intern-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "081fyiq00cvx4nyagr34kwnag9njv65wdps5j4ydin6sjq7b58wk"))))
    (properties `((upstream-name . "intern") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mav591qx20p9dx4rg4xwpavqw8rciva82n7q0icdgvc1ayy7sl5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/intern/")
    (synopsis "Efficient hash-consing for arbitrary data types")
    (description "Efficient hash-consing for arbitrary data types.")
    (license license:bsd-3)))

haskell-8.4-intern

(define-public haskell-8.4-io-memoize
  (package
    (name "haskell-8.4-io-memoize")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)))
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

haskell-8.4-io-memoize

(define-public haskell-8.4-islink
  (package
    (name "haskell-8.4-islink")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/islink/islink-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mxfs8k0znc7v2iynjnhr4k5c9as4ip37ybvxnvjfqy4dld9rgyg"))))
    (properties `((upstream-name . "islink") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/redneb/islink")
    (synopsis "Check if an HTML element is a link")
    (description
     "This package provides a function that checks whether a particular
combination of an HTML tag name and an attribute corresponds to an HTML
element that links to an external resource. For example, the combination
of the tag @@img@@ and the attribute @@src@@ is an external link whereas
the combination @@div@@ and @@style@@ is not. This is particularly useful
for web scraping.")
    (license license:bsd-3)))

haskell-8.4-islink

(define-public haskell-8.4-jack
  (package
    (name "haskell-8.4-jack")
    (version "0.7.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jack/jack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "018lsa5mgl7vb0hrd4jswa40d6w7alfq082brax8p832zf0v5bj2"))))
    (properties `((upstream-name . "jack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fpkgconfig" "-fjackfree" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-enumset)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-event-list)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-midi)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-negative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages audio) jack-1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/JACK")
    (synopsis "Bindings for the JACK Audio Connection Kit")
    (description
     "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.
It has support both for PCM audio and MIDI handling.

In order to adapt to your system,
you may have to disable pkgConfig or jackFree cabal flags.

You should compile your clients with @@ghc --make -O2 -threaded ...@@")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-jack

(define-public haskell-8.4-math-functions
  (package
    (name "haskell-8.4-math-functions")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/math-functions/math-functions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sv5vabsx332v1lpb6v3jv4zrzvpx1n7yprzd8wlcda5vsc5a6zp"))))
    (properties `((upstream-name . "math-functions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-system-expm1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vector-th-unbox)))
    (home-page "https://github.com/bos/math-functions")
    (synopsis "Special functions and Chebyshev polynomials")
    (description
     "This library provides implementations of special mathematical
functions and Chebyshev polynomials.  These functions are often
useful in statistical and numerical computing.")
    (license license:bsd-3)))

haskell-8.4-math-functions

(define-public haskell-8.4-megaparsec
  (package
    (name "haskell-8.4-megaparsec")
    (version "6.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec/megaparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12iggy7qpf8x93jm64zf0g215xwy779bqyfyjk2bhmxqqr1yzgdy"))))
    (properties `((upstream-name . "megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "1gxw58ccng85xk44z3vpw28y3msay9b0848xz435m5hyydqm82si")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parser-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Monadic parser combinators")
    (description
     "This is an industrial-strength monadic parser combinator library.
Megaparsec is a feature-rich package that strikes a nice balance between
speed, flexibility, and quality of parse errors.")
    (license license:bsd-2)))

haskell-8.4-megaparsec

(define-public haskell-8.4-mercury-api
  (package
    (name "haskell-8.4-mercury-api")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mercury-api/mercury-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h5v08k27nqksl3x8r5d4p26zgb4s7k2shgrjkg6bc2n0bn9iqzr"))))
    (properties `((upstream-name . "mercury-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "093c8afmcrnbfliz1ykpyc4w40dli2wig0qi0xcwg8445idwp2kg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/ppelleti/hs-mercury-api")
    (synopsis "Haskell binding to Mercury API for ThingMagic RFID readers")
    (description
     "This package is a Haskell binding to the \\\"Mercury API\\\" C API for
ThingMagic RFID readers.  It is especially geared toward the
<https://www.sparkfun.com/products/14066 SparkFun Simultaneous RFID Reader>,
which uses ThingMagic's M6e Nano module, but it should work with other
ThingMagic readers.  (Though currently, only support for serial readers
is compiled in.)  Most of the function and type names are the same as
their counterparts in the C API, with the @@TMR_@@ prefix dropped.  For more
in-depth, language-independent documentation of Mercury API, see
<http://www.thingmagic.com/images/Downloads/Docs/MercuryAPI_ProgrammerGuide_for_v1.27.3.pdf Mercury API Programmers Guide>.")
    (license license:expat)))

haskell-8.4-mercury-api

(define-public haskell-8.4-microlens-platform
  (package
    (name "haskell-8.4-microlens-platform")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-platform/microlens-platform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d4nhmgf9jq0ixc7qhwm7aaw3xdr0nalw58d0ydsydgf02cyazwv"))))
    (properties `((upstream-name . "microlens-platform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-ghc)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/aelve/microlens")
    (synopsis "Feature-complete microlens")
    (description
     "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @@Lens.Micro.Platform@@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @@Vector@@, @@Text@@, and @@HashMap@@.

The minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.4-microlens-platform

(define-public haskell-8.4-network-transport-composed
  (package
    (name "haskell-8.4-network-transport-composed")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-network-transport)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Compose network transports")
    (description "")
    (license license:bsd-3)))

haskell-8.4-network-transport-composed

(define-public haskell-8.4-network-transport-tests
  (package
    (name "haskell-8.4-network-transport-tests")
    (version "0.2.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport-tests/network-transport-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iyb4zm2iw805qfnlhnlwm2hh1ajhzgzlghsn8g3hnpdgszw896b"))))
    (properties `((upstream-name . "network-transport-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-network-transport)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Unit tests for Network.Transport implementations")
    (description "")
    (license license:bsd-3)))

haskell-8.4-network-transport-tests

(define-public haskell-8.4-once
  (package
    (name "haskell-8.4-once")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/once/once-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a2833v9mvjjh0m87qc5aj0n5yb8wzg5mrxhlh4g7hgsl4lccgkm"))))
    (properties `((upstream-name . "once") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page
     "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-once.git")
    (synopsis "memoization for IO actions and functions")
    (description "Please see Control.Once for examples")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-once

(define-public haskell-8.4-perfect-hash-generator
  (package
    (name "haskell-8.4-perfect-hash-generator")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/perfect-hash-generator/perfect-hash-generator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "045iyxjnx1yzl9xqk5fv8qxjz29sg2pfndry1v24z6a5r88pcwnz"))))
    (properties `((upstream-name . "perfect-hash-generator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-ordlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/kostmo/perfect-hash-generator#readme")
    (synopsis "Perfect minimal hashing implementation in native Haskell")
    (description
     "A <https://en.wikipedia.org/wiki/Perfect_hash_function perfect hash function> for a set @@S@@ is a hash function that maps distinct elements in @@S@@ to a set of integers, with __no collisions__. A <https://en.wikipedia.org/wiki/Perfect_hash_function#Minimal_perfect_hash_function minimal perfect hash function> is a perfect hash function that maps @@n@@ keys to @@n@@ __consecutive__ integers, e.g. the numbers from @@0@@ to @@n-1@@.

In contrast with the <https://hackage.haskell.org/package/PerfectHash PerfectHash package>, which is a binding to a C-based library, this package is a fully-native Haskell implementation.

It is intended primarily for generating C code for embedded applications (compare to @@<https://www.gnu.org/software/gperf/manual/gperf.html#Search-Structures gperf>@@). The output of this tool is a pair of arrays that can be included in generated C code for __<https://en.wikipedia.org/wiki/C_dynamic_memory_allocation allocation-free> hash tables__.

Though lookups also perform reasonably well for Haskell applications, it hasn't been benchmarked thorougly with respect to other data structures.

This implementation was adapted from <http://stevehanov.ca/blog/index.php?id=119 Steve Hanov's Blog>.

= Usage
The library is written generically to hash both strings and raw integers according to the <http://isthe.com/chongo/tech/comp/fnv/ FNV-1a algorithm>. Integers are split by octets before hashing.

> import Data.PerfectHash.Construction (createMinimalPerfectHash)
> import qualified Data.HashMap.Strict as HashMap
>
> tuples = [
>    (1000, 1)
>  , (5555, 2)
>  , (9876, 3)
>  ]
>
> lookup_table = createMinimalPerfectHash $ HashMap.fromList tuples

Generation of C code based on the arrays in @@lookup_table@@ is left as an exercise to the reader. Algorithm documentation in the \"Data.PerfectHash.Hashing\" and \"Data.PerfectHash.Lookup\" modules will be helpful.

See the @@hash-perfectly-strings-demo@@ and @@hash-perfectly-ints-demo@@, as well as the test suite, for working examples.

> $ stack build
> $ stack exec hash-perfectly-strings-demo")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-perfect-hash-generator

(define-public haskell-8.4-pipes-concurrency
  (package
    (name "haskell-8.4-pipes-concurrency")
    (version "2.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-concurrency/pipes-concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17aqh6p1az09n6b6vs06pxcha5aq6dvqjwskgjcdiz7221vwchs3"))))
    (properties `((upstream-name . "pipes-concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1c06nypirrd76jg5y508517smxh3izy98y6kj89k79kbpi5rncbj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
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

haskell-8.4-pipes-concurrency

(define-public haskell-8.4-pipes-parse
  (package
    (name "haskell-8.4-pipes-parse")
    (version "3.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-parse/pipes-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a87q6l610rhxr23qfzzzif3zpfjhw3mg5gfcyjwqac25hdq73yj"))))
    (properties `((upstream-name . "pipes-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)))
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

haskell-8.4-pipes-parse

(define-public haskell-8.4-protolude
  (package
    (name "haskell-8.4-protolude")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protolude/protolude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z251xxv8rhds981acdf6dr34ac2kc062mbq9gl2nj339grhqpb8"))))
    (properties `((upstream-name . "protolude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/sdiehl/protolude")
    (synopsis "A small prelude.")
    (description "A sensible set of defaults for writing custom Preludes.")
    (license license:expat)))

haskell-8.4-protolude

(define-public haskell-8.4-quickcheck-instances
  (package
    (name "haskell-8.4-quickcheck-instances")
    (version "0.3.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-instances/quickcheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mls8095ylk5pq2j787ary5lyn4as64414silq3zn4sky3zsx92p"))))
    (properties `((upstream-name . "quickcheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/qc-instances")
    (synopsis "Common quickcheck instances")
    (description
     "QuickCheck instances.

The goal is to supply QuickCheck instances for
types provided by the Haskell Platform.

Since all of these instances are provided as
orphans, I recommend that you do not use this library
within another library module, so that you don't
impose these instances on down-stream consumers of
your code.

For information on writing a test-suite with Cabal
see <https://www.haskell.org/cabal/users-guide/developing-packages.html#test-suites>")
    (license license:bsd-3)))

haskell-8.4-quickcheck-instances

(define-public haskell-8.4-regex
  (package
    (name "haskell-8.4-regex")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f2z025hif1fr24b5khq3qxxyvpxrnhyx8xmbms332arw28rpkda"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1476dxzj482j6zkvbvyszsjw1bm7jn2nwk40rq99ylvzm2sj0asn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-tdfa-text)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, omprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-8.4-regex

(define-public haskell-8.4-relational-query-HDBC
  (package
    (name "haskell-8.4-relational-query-HDBC")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query-HDBC/relational-query-HDBC-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lgzkqx4nhvwrrgdrr423d4yyadf6x8l664030l2xi4zrxjws2mk"))))
    (properties `((upstream-name . "relational-query-HDBC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-HDBC)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-HDBC-session)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-names-th)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-persistable-record)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-relational-query)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-relational-schemas)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-sql-words)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-data-compat)))
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

haskell-8.4-relational-query-HDBC

(define-public haskell-8.4-scalpel
  (package
    (name "haskell-8.4-scalpel")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scalpel/scalpel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03cbc0yahs8pzp1jz0mvfnd9sl80zd3ql18l9xswm8kh6m1ndpr0"))))
    (properties `((upstream-name . "scalpel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-curl)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scalpel-core)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel is a web scraping library inspired by libraries like Parsec and
Perl's Web::Scraper Scalpel builds on top of TagSoup to provide a
declarative and monadic interface.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-scalpel

(define-public haskell-8.4-selda
  (package
    (name "haskell-8.4-selda")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/selda/selda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l9ad4d1m0ylfihg0hpfxanxil09c658jl1bmgzn8268akqay9nj"))))
    (properties `((upstream-name . "selda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-flocalcache" "-f-haste")
       #:cabal-revision
       ("1" "13iq6f81g5xicc2bb2xxxdhmbh5lkspcmq4bjcszp481z9v4kw3x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://selda.link")
    (synopsis
     "Multi-backend, high-level EDSL for interacting with SQL databases.")
    (description
     "This package provides an EDSL for writing portable, type-safe, high-level
database code. Its feature set includes querying and modifying databases,
automatic, in-process caching with consistency guarantees, and transaction
support.
See the package readme for a brief usage tutorial.
To use this package you need at least one backend package, in addition to
this package. There are currently two different backend packages:
selda-sqlite and selda-postgresql.")
    (license license:expat)))

haskell-8.4-selda

(define-public haskell-8.4-set-cover
  (package
    (name "haskell-8.4-set-cover")
    (version "0.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/set-cover/set-cover-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qbk5y2pg6jlclszd2nras5240r0ahapsibykkcqrxhgq0hgvsxg"))))
    (properties `((upstream-name . "set-cover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")
       #:cabal-revision
       ("2" "1jpg9iyq0mymdbq392nfmicwfmcmq5mg688ndmhvjx08ljdl54ha")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-enummapset)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/set-cover/")
    (synopsis
     "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube")
    (description
     "Solver for exact set cover problems.
Included examples:
Sudoku, Nonogram, 8 Queens, Domino tiling, Mastermind,
Soma Cube, Tetris Cube, Cube of L's, Logika's Baumeister puzzle.
The generic algorithm allows to choose between
slow but flexible @@Set@@ from @@containers@@ package
and fast but cumbersome bitvectors.

For getting familiar with the package
I propose to study the Queen8 example along with \"Math.SetCover.Exact\".

Build examples with @@cabal install -fbuildExamples@@.

The package needs only Haskell 98.")
    (license license:bsd-3)))

haskell-8.4-set-cover

(define-public haskell-8.4-shake
  (package
    (name "haskell-8.4-shake")
    (version "0.16.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shake/shake-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dhlkcn1zsg1w97vzs1yrpkn6iwhlzh36dwclx2lafzbdjja6cmp"))))
    (properties `((upstream-name . "shake") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-portable")
       #:cabal-revision
       ("1" "0r7f916nsjmf1d1dapzq3pd7kgl2k1swphahx6iw1ivw1q7qhhxs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-js-flot)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-js-jquery)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://shakebuild.com")
    (synopsis
     "Build system library, like Make, but more accurate dependencies.")
    (description
     "Shake is a Haskell library for writing build systems - designed as a
replacement for @@make@@. See \"Development.Shake\" for an introduction,
including an example. The homepage contains links to a user
manual, an academic paper and further information:
<https://shakebuild.com>

To use Shake the user writes a Haskell program
that imports \"Development.Shake\", defines some build rules, and calls
the 'Development.Shake.shakeArgs' function. Thanks to do notation and infix
operators, a simple Shake build system
is not too dissimilar from a simple Makefile. However, as build systems
get more complex, Shake is able to take advantage of the excellent
abstraction facilities offered by Haskell and easily support much larger
projects. The Shake library provides all the standard features available in other
build systems, including automatic parallelism and minimal rebuilds.
Shake also provides more accurate dependency tracking, including seamless
support for generated files, and dependencies on system information
(e.g. compiler version).")
    (license license:bsd-3)))

haskell-8.4-shake

(define-public haskell-8.4-skein
  (package
    (name "haskell-8.4-skein")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
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

haskell-8.4-skein

(define-public haskell-8.4-special-values
  (package
    (name "haskell-8.4-special-values")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/minad/special-values#readme")
    (synopsis "Typeclass providing special values")
    (description
     "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.")
    (license license:expat)))

haskell-8.4-special-values

(define-public haskell-8.4-svg-builder
  (package
    (name "haskell-8.4-svg-builder")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-builder/svg-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k420f497lzkymmxin88ql6ib8dziic43avykv31yq65rgrf7l2g"))))
    (properties `((upstream-name . "svg-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1cprm8ya1rdid4pz1dk6692mv0kqkaxrsqaxg83bca5z4dkgqi2z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/diagrams/svg-builder.git")
    (synopsis "DSL for building SVG.")
    (description "Fast, easy to write SVG.")
    (license license:bsd-3)))

haskell-8.4-svg-builder

(define-public haskell-8.4-text-latin1
  (package
    (name "haskell-8.4-text-latin1")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-checked)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/mvv/text-latin1")
    (synopsis "Latin-1 (including ASCII) utility functions")
    (description
     "This package provides various functions over the ASCII ang Latin-1
portions of the 'Char' and 'Word8' data types.")
    (license license:bsd-3)))

haskell-8.4-text-latin1

(define-public haskell-8.4-through-text
  (package
    (name "haskell-8.4-through-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)))
    (home-page "https://www.github.com/bergmark/through-text")
    (synopsis
     "Convert textual types through Text without needing O(n^2) instances.")
    (description
     "Convert textual types through Text without needing O(n^2) instances.

See the README for more information: <https://github.com/bergmark/through-text/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.4-through-text

(define-public haskell-8.4-tmapchan
  (package
    (name "haskell-8.4-tmapchan")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapchan/tmapchan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q0ia2p8c5ac91n5l3wk6rfmvj93lb9027p9rfq77lydwv1b8vg8"))))
    (properties `((upstream-name . "tmapchan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/athanclark/tmapchan#readme")
    (synopsis
     "An insert-ordered multimap (indexed FIFO) which consumes values as you lookup")
    (description "")
    (license license:bsd-3)))

haskell-8.4-tmapchan

(define-public haskell-8.4-tostring
  (package
    (name "haskell-8.4-tostring")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://hackage.haskell.org/package/tostring")
    (synopsis "The ToString class")
    (description "A type class for converting text types to String.")
    (license license:bsd-3)))

haskell-8.4-tostring

(define-public haskell-8.4-unboxed-ref
  (package
    (name "haskell-8.4-unboxed-ref")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/winterland1989/unboxed-ref")
    (synopsis "Fast unboxed references for ST and IO monad")
    (description "Fast unboxed references for ST and IO monad")
    (license license:bsd-3)))

haskell-8.4-unboxed-ref

(define-public haskell-8.4-uniplate
  (package
    (name "haskell-8.4-uniplate")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniplate/uniplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dx8f9aw27fz8kw0ad1nm6355w5rdl7bjvb427v2bsgnng30pipw"))))
    (properties `((upstream-name . "uniplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftypeable_fingerprint" "-fseparate_syb")
       #:cabal-revision
       ("1" "0gsrs2mk58jg3x36dyzxi4y46isd5p6q0rd6m9l834h5r7ds6a54")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://community.haskell.org/~ndm/uniplate/")
    (synopsis "Help writing simple, concise and fast generic operations.")
    (description
     "Uniplate is library for writing simple and concise generic operations.
Uniplate has similar goals to the original Scrap Your Boilerplate work,
but is substantially simpler and faster. The Uniplate manual is available at
<http://community.haskell.org/~ndm/darcs/uniplate/uniplate.htm>.

To get started with Uniplate you should import one of the three following
modules:

* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.
Most users should start by importing this module.

* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"
with substantially higher performance (around 5 times), but requires writing
instance declarations.

* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined
by Uniplate. Both the above two modules re-export this module.

In addition, some users may want to make use of the following modules:

* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.

* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.

* \"Data.Generics.Compos\" - users transitioning from the Compos library.

* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @@Data@@ and @@Direct@@
to avoid getting instance conflicts.")
    (license license:bsd-3)))

haskell-8.4-uniplate

(define-public haskell-8.4-uuid
  (package
    (name "haskell-8.4-uuid")
    (version "1.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/uuid/uuid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09xhk42yhxvqmka0iqrv3338asncz8cap3j0ic0ps896f2581b6z"))))
    (properties `((upstream-name . "uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "06w8i9hi9ha84nmj6fcj44apzv61m3ryc0a1yxxqq5n8vznk2iya")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network-info)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)))
    (home-page "https://github.com/hvr/uuid")
    (synopsis
     "For creating, comparing, parsing and printing Universally Unique Identifiers")
    (description
     "This library is useful for creating, comparing, parsing and
printing Universally Unique Identifiers.

See <http://en.wikipedia.org/wiki/UUID> for the general idea.")
    (license license:bsd-3)))

haskell-8.4-uuid

(define-public haskell-8.4-vault
  (package
    (name "haskell-8.4-vault")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vault/vault-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "072mbrihsdsb8c6xvg6lvk0rqjgvxvi8qkg4n6wwym5hq0pfa04y"))))
    (properties `((upstream-name . "vault") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuseghc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/HeinrichApfelmus/vault")
    (synopsis "a persistent store for values of arbitrary types")
    (description
     "A /vault/ is a persistent store for values of arbitrary types.
It's like having first-class access to the storage space behind IORefs.

The data structure is analogous to a bank vault,
where you can access different bank boxes with different keys;
hence the name.

Also provided is a /locker/ type, representing a store for a single element.")
    (license license:bsd-3)))

haskell-8.4-vault

(define-public haskell-8.4-vivid-supercollider
  (package
    (name "haskell-8.4-vivid-supercollider")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vivid-supercollider/vivid-supercollider-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15fkqjf3hfhc262slr5znh4f320lw68h318wr4sdprml0sy9xdw3"))))
    (properties `((upstream-name . "vivid-supercollider") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vivid-osc)))
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

haskell-8.4-vivid-supercollider

(define-public haskell-8.4-x11-xim
  (package
    (name "haskell-8.4-x11-xim")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-X11)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/YoshikuniJujo/x11-xim_haskell/wiki/")
    (synopsis "A binding to the xim of X11 graphics library")
    (description "A binding to the xim of X11 graphics library")
    (license license:bsd-3)))

haskell-8.4-x11-xim

