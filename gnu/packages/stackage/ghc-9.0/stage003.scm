;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage003)
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
(define-public haskell-9.0-Clipboard
  (package
    (name "haskell-9.0-Clipboard")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
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

haskell-9.0-Clipboard

(define-public haskell-9.0-FenwickTree
  (package
    (name "haskell-9.0-FenwickTree")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FenwickTree/FenwickTree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7hhkim16wsjf8l79hqkiv1lain6jm8wpiml1iycra3n9i2s5ww"))))
    (properties `((upstream-name . "FenwickTree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/mgajda/FenwickTree")
    (synopsis "Data structure for fast query and update of cumulative sums")
    (description
     "Fenwick trees are a O(log N) data structure for updating cumulative sums.
This implementation comes with an operation to find a least element for
which real-valued cumulative sum reaches certain value, and allows for
storage of arbitrary information in the nodes.")
    (license license:bsd-3)))

haskell-9.0-FenwickTree

(define-public haskell-9.0-HCodecs
  (package
    (name "haskell-9.0-HCodecs")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HCodecs/HCodecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gbspig721viwncsfg9m4qc9jbl9rz93ra74d5b1zw9pw7rhy5ji"))))
    (properties `((upstream-name . "HCodecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (home-page "http://www-db.informatik.uni-tuebingen.de/team/giorgidze")
    (synopsis
     "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.")
    (description
     "The library provides functions to read, write and manipulate MIDI, WAVE and
SoundFont2 multimedia files. It is written entirely in Haskell (without any
FFI). It uses efficient  parsing and building combinators for binary data
stored in ByteStrings (based on the one in 'binary' package).

Correctness of significant parts of the library has been validated with
QuickCheck and Haskell Program Coverage (HPC) tool-kits.")
    (license license:bsd-3)))

haskell-9.0-HCodecs

(define-public haskell-9.0-IntervalMap
  (package
    (name "haskell-9.0-IntervalMap")
    (version "0.6.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IntervalMap/IntervalMap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03smzhwk1zf5na544b0azp49j4gvafqsih9ggwf6yng38yhixwld"))))
    (properties `((upstream-name . "IntervalMap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "http://www.chr-breitkopf.de/comp/IntervalMap")
    (synopsis "Containers for intervals, with efficient search.")
    (description
     "Ordered containers of intervals, with efficient search
for all keys containing a point or overlapping an interval.
See the example code on the home page for a quick introduction.")
    (license license:bsd-3)))

haskell-9.0-IntervalMap

(define-public haskell-9.0-LibZip
  (package
    (name "haskell-9.0-LibZip")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/LibZip/LibZip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ps2psza80jz566c9k377cqn536g6jcbs558jkc60gra5lhf0dm6"))))
    (properties `((upstream-name . "LibZip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-bindings-libzip)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Bindings to libzip, a library for manipulating zip archives.")
    (description
     "libzip is a C library for reading, creating, and modifying zip archives.
This package allows to use it from Haskell code.")
    (license license:bsd-3)))

haskell-9.0-LibZip

(define-public haskell-9.0-ListZipper
  (package
    (name "haskell-9.0-ListZipper")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListZipper/ListZipper-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z3izxpl21fxz43jpx7zqs965anb3gp5vidv3pwwznr88ss2j6a9"))))
    (properties `((upstream-name . "ListZipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/ListZipper")
    (synopsis "Simple zipper for lists")
    (description
     "List zipper with O(1) get element at cursor, insert at cursor,
delete at cursor, move right, and move left operations.")
    (license license:bsd-3)))

haskell-9.0-ListZipper

(define-public haskell-9.0-Ranged-sets
  (package
    (name "haskell-9.0-Ranged-sets")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Ranged-sets/Ranged-sets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1skd2a6yw7dd5vq8x81kwh28gi8sgyzg9qqqyadxmgpvy11sh9ab"))))
    (properties `((upstream-name . "Ranged-sets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1dl69wa509yn2jvl0d4c5c036swq22i6nd73kqn0bp7vhbj4rfq4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/PaulJohnson/Ranged-sets")
    (synopsis "Ranged sets for Haskell")
    (description
     "A ranged set is an ordered list of ranges.  This allows sets such as all reals x such that:

> (0.25 < x <= 0.75 or 1.4 <= x < 2.3 or 4.5 < x)

Alternatively you can have all strings s such that:

>    (\"F\" <= s < \"G\")")
    (license license:bsd-3)))

haskell-9.0-Ranged-sets

(define-public haskell-9.0-Stream
  (package
    (name "haskell-9.0-Stream")
    (version "0.4.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Stream/Stream-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l87l0kl4awzdyx6b28npwy6xf03r39d89iharsh06zgnd4y42wr"))))
    (properties `((upstream-name . "Stream") (hidden? . #f)))
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
                     haskell-9.0-lazysmallcheck)))
    (home-page "https://hackage.haskell.org/package/Stream")
    (synopsis "A library for manipulating infinite lists.")
    (description "This package implements functions, analogous
to those from Data.List, to create and manipulate
infinite lists: @@data Stream a = Cons a (Stream a)@@.
It provides alternative definitions for those
Prelude functions that make sense for such streams.
Note that this package has (almost)
nothing to do with the work on /Stream Fusion/ by
Duncan Coutts, Roman Leshchinskiy, and Don Stewart.")
    (license license:bsd-3)))

haskell-9.0-Stream

(define-public haskell-9.0-X11-xft
  (package
    (name "haskell-9.0-X11-xft")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/X11-xft/X11-xft-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05m988r45jiqpxqsw3vafz158whlwfcl7v8z9nnqnqz9mggd4032"))))
    (properties `((upstream-name . "X11-xft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages xorg) libxft)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://hackage.haskell.org/package/X11-xft")
    (synopsis "Bindings to the Xft and some Xrender parts")
    (description
     "A Haskell bindings to the X Font library. With it, Haskell X11
applications can access high quality font renderings and provide
fonts with anti-aliasing and subpixel rendering. The bindings
also provide minimal bindings to Xrender parts.")
    (license license:bsd-3)))

haskell-9.0-X11-xft

(define-public haskell-9.0-bifunctors
  (package
    (name "haskell-9.0-bifunctors")
    (version "5.5.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bifunctors/bifunctors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1myvlzxk9xrm6vf9863wnv8py3ccgfxqxyc0sqxz0v3rwfnjgk16"))))
    (properties `((upstream-name . "bifunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "http://github.com/ekmett/bifunctors/")
    (synopsis "Bifunctors")
    (description "Bifunctors.")
    (license license:bsd-3)))

haskell-9.0-bifunctors

(define-public haskell-9.0-bimap
  (package
    (name "haskell-9.0-bimap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/joelwilliamson/bimap")
    (synopsis "Bidirectional mapping between two key types")
    (description
     "A data structure representing a bidirectional mapping between two
key types. Each value in the bimap is associated with exactly one
value of the opposite type.")
    (license license:bsd-3)))

haskell-9.0-bimap

(define-public haskell-9.0-binary-generic-combinators
  (package
    (name "haskell-9.0-binary-generic-combinators")
    (version "0.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-generic-combinators/binary-generic-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kdgfhkfxsz7315jbf0a5vm15nwmd5gpgwk9hw2kwkfzl1k6iv7x"))))
    (properties `((upstream-name . "binary-generic-combinators")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page
     "https://github.com/0xd34df00d/binary-generic-combinators#readme")
    (synopsis
     "Combinators and utilities to make Generic-based deriving of Binary easier and more expressive")
    (description
     "Please see the README on GitHub at <https://github.com/0xd34df00d/binary-generic-combinators#readme>")
    (license license:bsd-3)))

haskell-9.0-binary-generic-combinators

(define-public haskell-9.0-blas-ffi
  (package
    (name "haskell-9.0-blas-ffi")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
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

haskell-9.0-blas-ffi

(define-public haskell-9.0-boxes
  (package
    (name "haskell-9.0-boxes")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/boxes/boxes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hsnmw95i58d4bkpxby3ddsj1cawypw4mdyb18m393s5i8p7iq9q"))))
    (properties `((upstream-name . "boxes") (hidden? . #f)))
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
                     haskell-9.0-split)))
    (home-page "https://hackage.haskell.org/package/boxes")
    (synopsis "2D text pretty-printing library")
    (description "A pretty-printing library for laying out text in
two dimensions, using a simple box model.")
    (license license:bsd-3)))

haskell-9.0-boxes

(define-public haskell-9.0-bytestring-to-vector
  (package
    (name "haskell-9.0-bytestring-to-vector")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-to-vector/bytestring-to-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ji836sl72wlhy6yay11kl86w0nrcdc1lafbi94bx9c8rpf5pyyc"))))
    (properties `((upstream-name . "bytestring-to-vector") (hidden? . #f)))
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
                     haskell-9.0-byteorder)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/sheyll/bytestring-to-vector")
    (synopsis "Convert between ByteString and Vector.Storable without copying")
    (description
     "This library allows conversion between the types from @@Data.ByteString@@
(package @@bytestring@@) and @@Data.Vector.Storable@@ (package @@vector@@) without
copying the underlying data.  This is useful, for example, when @@ByteString@@
IO produces or consumes vectors of numbers in native byte order.

The conversion relies on the fact that @@ByteString@@ and @@Vector@@ use their
respective @@ForeignPtr@@s in compatible ways.

This library is a fork of the @@spool@@ package written by Keegan McAllister.")
    (license license:bsd-3)))

haskell-9.0-bytestring-to-vector

(define-public haskell-9.0-code-conjure
  (package
    (name "haskell-9.0-code-conjure")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/code-conjure/code-conjure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vv4hmqirvf24pizbb47qvzl80il2n79k9sqvvwrds4ls0dsyavh"))))
    (properties `((upstream-name . "code-conjure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-express)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-leancheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-speculate)))
    (home-page "https://github.com/rudymatela/conjure#readme")
    (synopsis "synthesize Haskell functions out of partial definitions")
    (description
     "Conjure is a tool that synthesizes Haskell functions out of partial definitions.")
    (license license:bsd-3)))

haskell-9.0-code-conjure

(define-public haskell-9.0-collect-errors
  (package
    (name "haskell-9.0-collect-errors")
    (version "0.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/collect-errors/collect-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hljcnmwpk47rivlds9901129hgkm7j8h3yhz2j1j2pga5w43ck9"))))
    (properties `((upstream-name . "collect-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/michalkonecny/collect-errors#readme")
    (synopsis "Error monad with a Float instance")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/collect-errors#readme>")
    (license license:bsd-3)))

haskell-9.0-collect-errors

(define-public haskell-9.0-concurrency
  (package
    (name "haskell-9.0-concurrency")
    (version "1.11.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/concurrency/concurrency-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c7nq4d29s49a3h9wzjdi3idm6r68vxn6ybphsbrk2vmwqyfq36y"))))
    (properties `((upstream-name . "concurrency") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)))
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

haskell-9.0-concurrency

(define-public haskell-9.0-convertible
  (package
    (name "haskell-9.0-convertible")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/convertible/convertible-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vwc6h1z88xkw4bq3js8x9x86jnk3amdskyksca77p0kwiqbs7lr"))))
    (properties `((upstream-name . "convertible") (hidden? . #f)))
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
                     haskell-9.0-old-time)))
    (home-page "http://hackage.haskell.org/package/convertible")
    (synopsis "Typeclasses and instances for converting between types")
    (description
     "convertible provides a typeclass with a single function
that is designed to help convert between different types: numeric
values, dates and times, and the like.  The conversions perform bounds
checking and return a pure Either value.  This means that you need
not remember which specific function performs the conversion you
desire.

Also included in the package are optional instances that provide
conversion for various numeric and time types, as well as utilities
for writing your own instances.

Finally, there is a function that will raise an exception on
bounds-checking violation, or return a bare value otherwise,
implemented in terms of the safer function described above.

Convertible is also used by HDBC 2.0 for handling marshalling of
data to and from databases.

Convertible is backed by an extensive test suite and passes tests
on GHC and Hugs.")
    (license license:bsd-3)))

haskell-9.0-convertible

(define-public haskell-9.0-data-clist
  (package
    (name "haskell-9.0-data-clist")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-clist/data-clist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04mj0d1yp0l27v2my51w9q5zpdrdhp29fdyvmwqgxxp8f6yiwfhw"))))
    (properties `((upstream-name . "data-clist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/sw17ch/data-clist")
    (synopsis "Simple functional ring type.")
    (description "Simple functional bidirectional ring type.
Given that the ring terminiology clashes with certain
mathematical branches, we're using the term CList or
CircularList instead.")
    (license license:bsd-3)))

haskell-9.0-data-clist

(define-public haskell-9.0-digits
  (package
    (name "haskell-9.0-digits")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/digits/digits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b3arnnwqw53cb2xqmy4j66nw9y6wrazb545qkka9y6w8nbrqjd8"))))
    (properties `((upstream-name . "digits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/digits")
    (synopsis "Converts integers to lists of digits and back.")
    (description "Converts integers to lists of digits and back.")
    (license license:bsd-3)))

haskell-9.0-digits

(define-public haskell-9.0-dlist
  (package
    (name "haskell-9.0-dlist")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dlist/dlist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0581a60xw4gw7pmqlmg5w2hr4hm9yjgx4c2z6v63y5xv51rn6g8p"))))
    (properties `((upstream-name . "dlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/spl/dlist")
    (synopsis "Difference lists")
    (description "List-like types supporting O(1) append and snoc operations.")
    (license license:bsd-3)))

haskell-9.0-dlist

(define-public haskell-9.0-doctest-exitcode-stdio
  (package
    (name "haskell-9.0-doctest-exitcode-stdio")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-exitcode-stdio/doctest-exitcode-stdio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g3c7yrqq2mwqbmvs8vkx1a3cf0p0x74b7fnn344dsk7bsfpgv0x"))))
    (properties `((upstream-name . "doctest-exitcode-stdio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0gfnxkbm126m0d4pnqgl5ca6ab8x5p1vpbxjxgz1sxczablsmk5b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (home-page "https://hub.darcs.net/thielema/doctest-exitcode-stdio/")
    (synopsis "Run doctest's in a Cabal.Test.exitcode-stdio environment")
    (description
     "Run doctest's in a Cabal.Test.exitcode-stdio environment.
For use with the @@doctest-extract@@ utility.
Normally, you should not need to import a module from this package,
only generated code will do this.")
    (license license:bsd-3)))

haskell-9.0-doctest-exitcode-stdio

(define-public haskell-9.0-dsp
  (package
    (name "haskell-9.0-dsp")
    (version "0.2.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dsp/dsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0inar9c0n4x0li9c7krr17qv7zc49162wchhyn6ix7adni8j92z0"))))
    (properties `((upstream-name . "dsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://www.haskell.org/haskellwiki/DSP")
    (synopsis "Haskell Digital Signal Processing")
    (description
     "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation")
    (license license:gpl2)))

haskell-9.0-dsp

(define-public haskell-9.0-extensible-effects
  (package
    (name "haskell-9.0-extensible-effects")
    (version "5.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extensible-effects/extensible-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ff0h24ff5m5dnfiazh8sfvmby3sdb2dil7zqxg8qwykjdc1dcy3"))))
    (properties `((upstream-name . "extensible-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-lib-werror" "-f-dump-core")
       #:cabal-revision
       ("1" "1ihcxj58a3ca80zfyxgbzjzgps9izy96vnj7h4sk9wwb9khbxl1f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://github.com/suhailshergill/extensible-effects")
    (synopsis "An Alternative to Monad Transformers")
    (description
     "This package introduces datatypes for typeclass-constrained effects,
as an alternative to monad-transformer based (datatype-constrained)
approach of multi-layered effects.
Any help is appreciated!")
    (license license:expat)))

haskell-9.0-extensible-effects

(define-public haskell-9.0-extrapolate
  (package
    (name "haskell-9.0-extrapolate")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extrapolate/extrapolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0452b377ar95jshb5qdjcyxx54r707rxyxq0xkha55zxffp0dxq4"))))
    (properties `((upstream-name . "extrapolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-express)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-leancheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-speculate)))
    (home-page "https://github.com/rudymatela/extrapolate#readme")
    (synopsis "generalize counter-examples of test properties")
    (description
     "Extrapolate is a tool able to provide generalized counter-examples of test
properties where irrelevant sub-expressions are replaces with variables.

For the incorrect property @@\\\\xs -> nub xs == (xs::[Int])@@:

* @@[0,0]@@ is a counter-example;

* @@x:x:_@@ is a generalized counter-example.")
    (license license:bsd-3)))

haskell-9.0-extrapolate

(define-public haskell-9.0-fastmemo
  (package
    (name "haskell-9.0-fastmemo")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fastmemo/fastmemo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jjsfdadf1dz516dhqd42bvbd230dymzpav7kzzvkn2yr81p456s"))))
    (properties `((upstream-name . "fastmemo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/davidspies/fastmemo#readme")
    (synopsis "Memoize functions on Generic types")
    (description
     "Please see the README on GitHub at <https://github.com/davidspies/fastmemo#readme>")
    (license license:bsd-3)))

haskell-9.0-fastmemo

(define-public haskell-9.0-filepath-bytestring
  (package
    (name "haskell-9.0-filepath-bytestring")
    (version "1.4.2.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filepath-bytestring/filepath-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1djbx4mxkzmbi6l44r4ag482r71hwd5s22fj2myz6c128lfrvlk7"))))
    (properties `((upstream-name . "filepath-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/filepath-bytestring")
    (synopsis "Library for manipulating RawFilePaths in a cross platform way.")
    (description
     "This package provides functionality for manipulating @@RawFilePath@@
values. It can be used as a drop in replacement for the filepath library
to get the benefits of using ByteStrings. It provides three modules:

* \"System.FilePath.Posix.ByteString\" manipulates POSIX\\/Linux style @@RawFilePath@@ values (with @@\\/@@ as the path separator).

* \"System.FilePath.Windows.ByteString\" manipulates Windows style @@RawFilePath@@ values (with either @@\\\\@@ or @@\\/@@ as the path separator, and deals with drives).

* \"System.FilePath.ByteString\" is an alias for the module appropriate to your platform.

All three modules provide the same API, and the same documentation (calling out differences in the different variants).")
    (license license:bsd-3)))

haskell-9.0-filepath-bytestring

(define-public haskell-9.0-finite-typelits
  (package
    (name "haskell-9.0-finite-typelits")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/finite-typelits/finite-typelits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f047dywlxiz3pl3rq6maym9wpwjwl4zjqfwlwnj0yiv7dmlaiih"))))
    (properties `((upstream-name . "finite-typelits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/mniip/finite-typelits")
    (synopsis
     "A type inhabited by finitely many values, indexed by type-level naturals")
    (description
     "A type inhabited by finitely many values, indexed by type-level naturals.")
    (license license:bsd-3)))

haskell-9.0-finite-typelits

(define-public haskell-9.0-generic-arbitrary
  (package
    (name "haskell-9.0-generic-arbitrary")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-arbitrary/generic-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12yj55lrddyxr3wfcki0pvcfa181p3q65chziw8qrmszn219yjsx"))))
    (properties `((upstream-name . "generic-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "http://github.com/typeable/generic-arbitrary#readme")
    (synopsis "Generic implementation for QuickCheck's Arbitrary")
    (description
     "Generic implementations of methods of the 'Arbitrary' class from the
QuickCheck library. The approach taken here can lead to diverging instances
for recursive types but is safe for non-recursive ones and guarantees
flat distribution for constructors of sum-types.")
    (license license:expat)))

haskell-9.0-generic-arbitrary

(define-public haskell-9.0-generic-random
  (package
    (name "haskell-9.0-generic-random")
    (version "1.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-random/generic-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02iczjf2xc4sxfi234nf6irfj5slvf3p5hpaxl8r5nc8hy052d6x"))))
    (properties `((upstream-name . "generic-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-inspect")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)))
    (home-page "http://github.com/lysxia/generic-random")
    (synopsis "Generic random generators for QuickCheck")
    (description
     "Derive instances of @@Arbitrary@@ for QuickCheck,
with various options to customize implementations.

For more information

- See the README

- \"Generic.Random.Tutorial\"

- http://blog.poisson.chat/posts/2018-01-05-generic-random-tour.html")
    (license license:expat)))

haskell-9.0-generic-random

(define-public haskell-9.0-ghc-core
  (package
    (name "haskell-9.0-ghc-core")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-core/ghc-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11byidxq2mcqams9a7df0hwwlzir639mr1s556sw5rrbi7jz6d7c"))))
    (properties `((upstream-name . "ghc-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-colorize-haskell)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/shachaf/ghc-core")
    (synopsis "Display GHC's core and assembly output in a pager")
    (description "A convenient command line wrapper for GHC that displays
GHC's optimised core and assembly output in a human
readable, colourised manner, in a pager. Unix systems
only, currently.

Usage:

> ghc-core A.hs

> ghc-core -fvia-C -optc-O3 A.hs
")
    (license license:bsd-3)))

haskell-9.0-ghc-core

(define-public haskell-9.0-hexpat
  (package
    (name "haskell-9.0-hexpat")
    (version "0.20.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hexpat/hexpat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l9zfp69r3xaxi2znjwpcrx7xckcqvaahv2c0qgkqq61a7ka1qa6"))))
    (properties `((upstream-name . "hexpat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bundle")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-List)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xml) expat)))
    (home-page "http://haskell.org/haskellwiki/Hexpat/")
    (synopsis "XML parser/formatter based on expat")
    (description
     "This package provides a general purpose Haskell XML library using Expat to
do its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML
parser written in C).  It is extensible to any string type, with @@String@@,
@@ByteString@@ and @@Text@@ provided out of the box.

Basic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).
Other features: Helpers for processing XML trees (/Proc/), trees annotated with
XML source location (/Annotated/), extended XML trees with comments,
processing instructions, etc (/Extended/), XML cursors (/Cursor/),
SAX-style parse (/SAX/), and access to the low-level interface in case speed
is paramount (/Internal.IO/).

The design goals are speed, speed, speed, interface simplicity and modularity.

For introduction and examples, see the /Text.XML.Expat.Tree/ module. For benchmarks,
<http://haskell.org/haskellwiki/Hexpat/>

If you want to do interactive I\\/O, an obvious option is to use lazy parsing
with one of the lazy I\\/O functions such as hGetContents.  However, this can be
problematic in some applications because it doesn't handle I\\/O errors properly
and can give no guarantee of timely resource cleanup. Because of the generalized
list, Hexpat is designed to allow for chunked I/O, but as of this writing I haven't
done a nice integration with enumerator and friends.

/IO/ is filed under /Internal/ because it's low-level and most users won't want
it.  The other /Internal/ modules are re-exported by /Annotated/, /Tree/ and /Extended/,
so you won't need to import them directly.

If you have trouble building on Windows, you can try the bundle flag. This will
make it build from the source of libexpat bundled inside the hexpat package:
cabal install -f bundle hexpat

Credits to Iavor Diatchki and the @@xml@@ (XML.Light) package for /Proc/ and /Cursor/.
Thanks to the many contributors.

ChangeLog: 0.15 changes intended to fix a (rare) \\\"error: a C finalizer called back into Haskell.\\\"
that seemed only to happen only on ghc6.12.X; 0.15.1 Fix broken Annotated parse;
0.16 switch from mtl to transformers; 0.17 fix mapNodeContainer & rename some things.;
0.18 rename defaultEncoding to overrideEncoding. 0.18.3 formatG and indent were demanding list
items more than once (inefficient in chunked processing); 0.19 add Extended.hs;
0.19.1 fix a memory leak introduced in 0.19, delegate parsing to bound thread
if unbound (see note above); 0.19.2 include expat source code so \\'cabal install\\' just works
on Linux, Mac and Windows (thanks Jacob Stanley); 0.19.3 fix misconfiguration of expat
which broke entity parsing; 0.19.4 bump version constraint for text; 0.19.5 bump text
to < 0.12 and fix text-0.10.0.1 breakage; 0.19.6 dependency breakage with List;
0.19.7 ghc-7.2.1 compatibility; 0.19.8 fix space leak on lazy parse under ghc-7.2.1;
0.19.9 fix formatting of > character + improve performance; 0.19.10 ghc-7.4.x compatibility;
0.20.1 fix an unfortunate crash when used in parallel processing and greatly improve
performance; 0.20.2 make parseSaxG lazier; 0.20.3 minor build issues; 0.20.4 remove
dependency on extensible-exceptions; 0.20.5 bump text upper bound; 0.20.6 bump text again
to include 1.1.x.x; 0.20.7 bump text again for 1.2.x.x; 0.20.8 bump utf8-string dep;
0.20.9 bump deepseq dep/ghc-7.10 compatibility.; 0.20.10 increase dependency upper bounds;
0.20.11 update to libexpat-2.2.1 which includes several security fixes;
0.20.12 use the system libexpat by default, but provide a bundle flag to allow a bundled
copy of expat to be used, which might make life easier on Windows: cabal install -f bundle
hexpat; 0.20.13 Fix some mistakes made in 0.20.12 cabal file.")
    (license license:bsd-3)))

haskell-9.0-hexpat

(define-public haskell-9.0-hmatrix-gsl
  (package
    (name "haskell-9.0-hmatrix-gsl")
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
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numerical computation")
    (description
     "Purely functional interface to selected numerical computations,
internally implemented using GSL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-hmatrix-gsl

(define-public haskell-9.0-hmatrix-gsl-stats
  (package
    (name "haskell-9.0-hmatrix-gsl-stats")
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
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
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

haskell-9.0-hmatrix-gsl-stats

(define-public haskell-9.0-hreader
  (package
    (name "haskell-9.0-hreader")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-hset)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://bitbucket.org/s9gf4ult/hreader")
    (synopsis "Generalization of MonadReader and ReaderT using hset")
    (description "")
    (license license:bsd-3)))

haskell-9.0-hreader

(define-public haskell-9.0-hspec-expectations-lifted
  (package
    (name "haskell-9.0-hspec-expectations-lifted")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-lifted/hspec-expectations-lifted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a1qwz0n80lph8m9cq6cb06m8bsmqgg8ifx0acpylvrrkd8g3k92"))))
    (properties `((upstream-name . "hspec-expectations-lifted")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)))
    (home-page "https://hackage.haskell.org/package/hspec-expectations-lifted")
    (synopsis "A version of hspec-expectations generalized to MonadIO")
    (description "A version of hspec-expectations generalized to MonadIO")
    (license license:expat)))

haskell-9.0-hspec-expectations-lifted

(define-public haskell-9.0-hw-fingertree
  (package
    (name "haskell-9.0-hw-fingertree")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree/hw-fingertree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aljn5c2gblvrbn1f7iwvcm2fa2dsnl497wb0g8y7rz6jzk7g06f"))))
    (properties `((upstream-name . "hw-fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "00h2vzzncfwyaa0krgsffcmy2gdb0637i9zjdlsz88mdlhynqhp3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)))
    (home-page "https://github.com/haskell-works/hw-fingertree#readme")
    (synopsis "Generic finger-tree structure, with example instances")
    (description
     "A general sequence representation with arbitrary
annotations, for use as a base for implementations of
various collection types, with examples, as described
in section 4 of

* Ralf Hinze and Ross Paterson,
\\\"Finger trees: a simple general-purpose data structure\\\",
/Journal of Functional Programming/ 16:2 (2006) pp 197-217.
<http://staff.city.ac.uk/~ross/papers/FingerTree.html>

For a tuned sequence type, see @@Data.Sequence@@ in the
@@containers@@ package, which is a specialization of
this structure.")
    (license license:bsd-3)))

haskell-9.0-hw-fingertree

(define-public haskell-9.0-intervals
  (package
    (name "haskell-9.0-intervals")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intervals/intervals-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qibvgys8lw61x9na3iy3dcglyj9qyhcbfc00glnagl7cbk1shlv"))))
    (properties `((upstream-name . "intervals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)))
    (home-page "http://github.com/ekmett/intervals")
    (synopsis "Interval Arithmetic")
    (description
     "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.

We do not control the rounding mode of the end points of the interval when
using floating point arithmetic, so be aware that in order to get precise
containment of the result, you will need to use an underlying type with
both lower and upper bounds like 'CReal'")
    (license license:bsd-3)))

haskell-9.0-intervals

(define-public haskell-9.0-language-python
  (package
    (name "haskell-9.0-language-python")
    (version "0.5.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-python/language-python-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mf3czvnh9582klv0c9g7pcn1wx4qjwpvhv8la6afaifv6y5lki2"))))
    (properties `((upstream-name . "language-python") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13lc4d2b7id49yczxlqgs3zlms1g6gv0i8amk56g1jvswli6nsn9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-monads-tf)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "http://github.com/bjpop/language-python ")
    (synopsis "Parsing and pretty printing of Python code. ")
    (description
     "language-python is a Haskell library for lexical analysis, parsing
and pretty printing Python code. It supports versions 2.x and 3.x of Python.")
    (license license:bsd-3)))

haskell-9.0-language-python

(define-public haskell-9.0-lapack-ffi
  (package
    (name "haskell-9.0-lapack-ffi")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi/lapack-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qj7l2maka7z0gnkb59kl9qnyql12g5akmmqwsjvcnhbywgiv1yr"))))
    (properties `((upstream-name . "lapack-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages maths) lapack)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hub.darcs.net/thielema/lapack-ffi/")
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

haskell-9.0-lapack-ffi

(define-public haskell-9.0-leapseconds-announced
  (package
    (name "haskell-9.0-leapseconds-announced")
    (version "2017.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leapseconds-announced/leapseconds-announced-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mm8j994106gyx9p3widkydczn8wcj79m2kiymg9fjkhmxyb4fyd"))))
    (properties `((upstream-name . "leapseconds-announced") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/bjornbm/leapseconds-announced")
    (synopsis "Leap seconds announced at library release time.")
    (description
     "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'
with the leap seconds announced at library release time.")
    (license license:bsd-3)))

haskell-9.0-leapseconds-announced

(define-public haskell-9.0-median-stream
  (package
    (name "haskell-9.0-median-stream")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/median-stream/median-stream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g8zqyv9scj2ccvj667yn782c3vqc9a25b8a37lsz78qx15w8bz9"))))
    (properties `((upstream-name . "median-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-heap)))
    (home-page "https://github.com/caneroj1/median-stream#readme")
    (synopsis "Constant-time queries for the median of a stream of numeric
data.")
    (description "Uses the two-heap approach to support O(lg n) insertions
and O(1) queries for the median.")
    (license license:bsd-3)))

haskell-9.0-median-stream

(define-public haskell-9.0-microspec
  (package
    (name "haskell-9.0-microspec")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microspec/microspec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0615gdbsk7i3w71adjp69zabw4mli965wffm2h846hp6pjj31xcb"))))
    (properties `((upstream-name . "microspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/microspec")
    (synopsis "Tiny QuickCheck test library with minimal dependencies")
    (description
     "A tiny (1 module, <500 lines) property-based (and unit) testing library with minimal dependencies.

Instead of reinventing the wheel (<https://xkcd.com/927>), we use a
RSpec/HSpec-like DSL and run tests with QuickCheck.

For many use-cases, microspec is a drop-in replacement for hspec.

> import Test.Microspec
>
> main :: IO ()
> main = microspec $ do
>    describe \"replicate\" $ do
>       it \"doubles with 2\" $
>          replicate 2 'x' === \"xx\"
>       it \"creates a list of the right size\" $
>          \\(Positive n) -> length (replicate n 'x') === n
>
>    describe \"reverse\" $ do
>       it \"reverse . reverse === id\" $ \\l ->
>          reverse (reverse l) === (l :: [Int])
>
>    describe \"tail\" $
>       it \"length is -1\" $ \\(NonEmpty l) ->
>          length (tail l :: [Int]) === length l - 1
>
>    describe \"solve the halting problem\" $
>       pending")
    (license license:bsd-3)))

haskell-9.0-microspec

(define-public haskell-9.0-monad-extras
  (package
    (name "haskell-9.0-monad-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "http://github.com/jwiegley/monad-extras")
    (synopsis "Extra utility functions for working with monads")
    (description "")
    (license license:bsd-3)))

haskell-9.0-monad-extras

(define-public haskell-9.0-monad-journal
  (package
    (name "haskell-9.0-monad-journal")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "http://github.com/phaazon/monad-journal")
    (synopsis "Pure logger typeclass and monad transformer")
    (description "This package provides a typeclass for logging in
pure code, or more generally, in any kind of
context. You can do whatever you want with
logs, especially get them, clear them or even
sink them through 'IO' if you're logging in
@@(MonadIO m) => m@@.")
    (license license:bsd-3)))

haskell-9.0-monad-journal

(define-public haskell-9.0-monadoid
  (package
    (name "haskell-9.0-monadoid")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monadoid/monadoid-" version
                    ".tar.gz"))
              (sha256
               (base32
                "073ma6429m92z1pdglxvb02d6f17wdnh90mnscrjwdvzb406w0cy"))))
    (properties `((upstream-name . "monadoid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://hackage.haskell.org/package/monadoid")
    (synopsis "A monoid for monads")
    (description "See README")
    (license license:bsd-3)))

haskell-9.0-monadoid

(define-public haskell-9.0-mwc-random
  (package
    (name "haskell-9.0-mwc-random")
    (version "0.15.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random/mwc-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ny2mw4am24d6ykrm8rbcjnrq6p2cjmzjb4m6qfk54wfdxflvmim"))))
    (properties `((upstream-name . "mwc-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15q5pax8708shpmmf2ql6ximsidzmfsrqkf4ix3dljz65jvhz7hh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/bos/mwc-random")
    (synopsis "Fast, high quality pseudo random number generation")
    (description
     "This package contains code for generating high quality random
numbers that follow either a uniform or normal distribution.  The
generated numbers are suitable for use in statistical applications.

The uniform PRNG uses Marsaglia's MWC256 (also known as MWC8222)
multiply-with-carry generator, which has a period of 2^8222 and
fares well in tests of randomness.  It is also extremely fast,
between 2 and 3 times faster than the Mersenne Twister.

Compared to the mersenne-random package, this package has a more
convenient API, is faster, and supports more statistical
distributions.")
    (license license:bsd-3)))

haskell-9.0-mwc-random

(define-public haskell-9.0-numhask
  (package
    (name "haskell-9.0-numhask")
    (version "0.10.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/numhask/numhask-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zxp98svs872qpc0d8pycdbnf47phw4xbrvpi4vrzwyri5wahsxb"))))
    (properties `((upstream-name . "numhask") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/tonyday567/numhask#readme")
    (synopsis "A numeric class hierarchy.")
    (description
     "This package provides alternative numeric classes over Prelude.

The numeric class constellation looks somewhat like:

![nh](docs/other/nh.svg)

== Usage

>>> @{-# LANGUAGE RebindableSyntax #-@}
>>> import NumHask.Prelude

See \"NumHask\" for a detailed overview.")
    (license license:bsd-3)))

haskell-9.0-numhask

(define-public haskell-9.0-operational-class
  (package
    (name "haskell-9.0-operational-class")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/operational-class/operational-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02z766b5a6fa7dgmw3qa1xryijf2im9n79gnjq0m5pd2hv5vja4b"))))
    (properties `((upstream-name . "operational-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-operational)))
    (home-page "https://github.com/srijs/haskell-operational-class")
    (synopsis "MonadProgram typeclass for the operational package")
    (description "")
    (license license:expat)))

haskell-9.0-operational-class

(define-public haskell-9.0-optparse-applicative
  (package
    (name "haskell-9.0-optparse-applicative")
    (version "0.16.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-applicative/optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16nnrkmgd28h540f17nb017ziq4gbzgkxpdraqicaczkca1jf1b2"))))
    (properties `((upstream-name . "optparse-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fprocess")
       #:cabal-revision
       ("2" "0ccpk2nb9fvj97z00w8cmlpw4fn94ayndg4ngm2ls4hrdbnj5321")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://github.com/pcapriotti/optparse-applicative")
    (synopsis "Utilities and combinators for parsing command line options")
    (description
     "optparse-applicative is a haskell library for parsing options
on the command line, and providing a powerful applicative
interface for composing them.

optparse-applicative takes care of reading and validating the
arguments passed to the command line, handling and reporting
errors, generating a usage line, a comprehensive help screen,
and enabling context-sensitive bash, zsh, and fish completions.

See the included README for detailed instructions and examples,
which is also available on github
<https://github.com/pcapriotti/optparse-applicative>.")
    (license license:bsd-3)))

haskell-9.0-optparse-applicative

(define-public haskell-9.0-palette
  (package
    (name "haskell-9.0-palette")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/palette/palette-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0820n3cj4zy9s46diln2rrs4lrxbipkhdw74p2w42gc7k1nlj54i"))))
    (properties `((upstream-name . "palette") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1h5vs204qkq0m9ks5sf7f300drpkinkhinvmnijq8x0mbjl8hsg4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Utilities for choosing and creating color schemes.")
    (description "Sets of predefined colors and tools for choosing and
creating color schemes. Random colors.")
    (license license:bsd-3)))

haskell-9.0-palette

(define-public haskell-9.0-prettyprinter-compat-ansi-wl-pprint
  (package
    (name "haskell-9.0-prettyprinter-compat-ansi-wl-pprint")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-ansi-wl-pprint/prettyprinter-compat-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mcy0621lx0zmc2csdq348r21f932f2w51y62jzyz4cby58p5ch5"))))
    (properties `((upstream-name . "prettyprinter-compat-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.0-prettyprinter-compat-ansi-wl-pprint

(define-public haskell-9.0-quickcheck-classes-base
  (package
    (name "haskell-9.0-quickcheck-classes-base")
    (version "0.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-classes-base/quickcheck-classes-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16c6gq4cqpkwnq1pzkhm6r7mrwk4an50ha5w77bmiia2qkhla6ch"))))
    (properties `((upstream-name . "quickcheck-classes-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funary-laws" "-fbinary-laws")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/andrewthad/quickcheck-classes#readme")
    (synopsis "QuickCheck common typeclasses from `base`")
    (description
     "This libary is a minimal variant of `quickcheck-classes` that
only provides laws for typeclasses from `base`. The main purpose
of splitting this out is so that `primitive` can depend on
`quickcheck-classes-base` in its test suite, avoiding the circular
dependency that arises if `quickcheck-classes` is used instead.

This library provides QuickCheck properties to ensure
that typeclass instances adhere to the set of laws that
they are supposed to. There are other libraries that do
similar things, such as `genvalidity-hspec` and `checkers`.
This library differs from other solutions by not introducing
any new typeclasses that the user needs to learn.

/Note:/ on GHC < 8.5, this library uses the higher-kinded typeclasses
('Data.Functor.Classes.Show1', 'Data.Functor.Classes.Eq1', 'Data.Functor.Classes.Ord1', etc.),
but on GHC >= 8.5, it uses `-XQuantifiedConstraints` to express these
constraints more cleanly.")
    (license license:bsd-3)))

haskell-9.0-quickcheck-classes-base

(define-public haskell-9.0-quickcheck-io
  (package
    (name "haskell-9.0-quickcheck-io")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-io/quickcheck-io-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08k4v7pkgjf30pv5j2dfv1gqv6hclxlniyq2sps8zq4zswcr2xzv"))))
    (properties `((upstream-name . "quickcheck-io") (hidden? . #f)))
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
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/hspec/quickcheck-io#readme")
    (synopsis "Use HUnit assertions as QuickCheck properties")
    (description "This package provides an orphan instance that allows you to
use HUnit assertions as QuickCheck properties.")
    (license license:expat)))

haskell-9.0-quickcheck-io

(define-public haskell-9.0-quickcheck-simple
  (package
    (name "haskell-9.0-quickcheck-simple")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-simple/quickcheck-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ah32y1p39p3d0696zp4mlf4bj67ggh73sb8nvf21snkwll86dai"))))
    (properties `((upstream-name . "quickcheck-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/quickcheck-simple")
    (synopsis "Test properties and default-mains for QuickCheck")
    (description
     "This package contains definitions of test properties and default-mains
using QuickCheck library.")
    (license license:bsd-3)))

haskell-9.0-quickcheck-simple

(define-public haskell-9.0-quickcheck-text
  (package
    (name "haskell-9.0-quickcheck-text")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-text/quickcheck-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02dbs0k6igmsa1hcw8yfvp09v7038vp4zlsp9706km3cmswgshj4"))))
    (properties `((upstream-name . "quickcheck-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/olorin/quickcheck-text")
    (synopsis "Alternative arbitrary instance for Text")
    (description
     "The usual Arbitrary instance for Text
(in
<https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>)
only has single-byte
instances and so isn't an ideal representation of a valid UTF-8
character. This package has generators for one-, two- and three-byte
UTF-8 characters (all that are currently in use).")
    (license license:expat)))

haskell-9.0-quickcheck-text

(define-public haskell-9.0-quickcheck-transformer
  (package
    (name "haskell-9.0-quickcheck-transformer")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-transformer/quickcheck-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0al0p44qi9j829zcnv43kqf4pxaxr6fb48vkq1an15hdk6svx11j"))))
    (properties `((upstream-name . "quickcheck-transformer") (hidden? . #f)))
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
                     haskell-9.0-random)))
    (home-page "http://hub.darcs.net/thielema/quickcheck-transformer/")
    (synopsis "A GenT monad transformer for QuickCheck library.")
    (description "A fork of QuickCheck-GenT that works for older GHC versions
and uses the Test module folder like QuickCheck.")
    (license license:expat)))

haskell-9.0-quickcheck-transformer

(define-public haskell-9.0-quickcheck-unicode
  (package
    (name "haskell-9.0-quickcheck-unicode")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-unicode/quickcheck-unicode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s43s1bzbg3gwsjgm7fpyksd1339f0m26dlw2famxwyzgvm0a80k"))))
    (properties `((upstream-name . "quickcheck-unicode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/bos/quickcheck-unicode")
    (synopsis "Generator and shrink functions for testing
Unicode-related software.")
    (description "Generator and shrink functions for testing
Unicode-related software.")
    (license license:bsd-2)))

haskell-9.0-quickcheck-unicode

(define-public haskell-9.0-rando
  (package
    (name "haskell-9.0-rando")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rando/rando-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cvwmp4882xdavfzhg5hwssddg0wjgwh8jxpd3251plf96jz9f4f"))))
    (properties `((upstream-name . "rando") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-tf-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/rando")
    (synopsis "Easy-to-use randomness for livecoding")
    (description
     "Easy-to-use randomness for livecoding.

The goal is to provide the simplest possible experience, e.g.

> >>> import Rando

> >>> pickOne [\"lemon\", \"lime\", \"strawberry\"]
> \"lime\" :: IO String

> >>> flipCoin
> True

> >>> shuffle [1..5]
> [2,4,1,3,5]

This library is in flux: names will change, types will change, functions
will appear and disappear and move between modules!")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-rando

(define-public haskell-9.0-random-shuffle
  (package
    (name "haskell-9.0-random-shuffle")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-shuffle/random-shuffle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0586bnlh0g2isc44jbjvafkcl4yw6lp1db8x6vr0pza0y08l8w2j"))))
    (properties `((upstream-name . "random-shuffle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://hackage.haskell.org/package/random-shuffle")
    (synopsis "Random shuffle implementation.")
    (description
     "Random shuffle implementation, on immutable lists.
Based on `perfect shuffle' implementation by Oleg Kiselyov,
available on http://okmij.org/ftp/Haskell/perfect-shuffle.txt")
    (license license:bsd-3)))

haskell-9.0-random-shuffle

(define-public haskell-9.0-repa
  (package
    (name "haskell-9.0-repa")
    (version "3.4.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repa/repa-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0saa2r94l0x52dlj9402csah96akp5wlc0xaah9p2pb8fv3yvs11"))))
    (properties `((upstream-name . "repa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-template-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://repa.ouroborus.net")
    (synopsis "High performance, regular, shape polymorphic parallel arrays.")
    (description
     "Repa provides high performance, regular, multi-dimensional, shape polymorphic
parallel arrays. All numeric data is stored unboxed. Functions written with
the Repa combinators are automatically parallel provided you supply
+RTS -Nwhatever on the command line when running the program.")
    (license license:bsd-3)))

haskell-9.0-repa

(define-public haskell-9.0-safe
  (package
    (name "haskell-9.0-safe")
    (version "0.3.19")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safe/safe-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18pp6cn9np9jgs01x9mac6wk41k34g86fx5ibfarbapqr1138115"))))
    (properties `((upstream-name . "safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/ndmitchell/safe#readme")
    (synopsis "Library of safe (exception free) functions")
    (description
     "A library wrapping @@Prelude@@/@@Data.List@@ functions that can throw exceptions, such as @@head@@ and @@!!@@.
Each unsafe function has up to four variants, e.g. with @@tail@@:

* @@tail :: [a] -> [a]@@, raises an error on @@tail []@@.

* @@tailMay :: [a] -> /Maybe/ [a]@@, turns errors into @@Nothing@@.

* @@tailDef :: /[a]/ -> [a] -> [a]@@, takes a default to return on errors.

* @@tailNote :: /String/ -> [a] -> [a]@@, takes an extra argument which supplements the error message.

* @@tailSafe :: [a] -> [a]@@, returns some sensible default if possible, @@[]@@ in the case of @@tail@@.

This package is divided into three modules:

* \"Safe\" contains safe variants of @@Prelude@@ and @@Data.List@@ functions.

* \"Safe.Foldable\" contains safe variants of @@Foldable@@ functions.

* \"Safe.Exact\" creates crashing versions of functions like @@zip@@ (errors if the lists are not equal) and @@take@@ (errors if there are not enough elements), then wraps them to provide safe variants.")
    (license license:bsd-3)))

haskell-9.0-safe

(define-public haskell-9.0-securemem
  (package
    (name "haskell-9.0-securemem")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/securemem/securemem-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19hnw2cfbsfjynxq1bq9f6djbxhsc1k751ml0y1ab3ah913mm29j"))))
    (properties `((upstream-name . "securemem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (home-page "https://github.com/vincenthz/hs-securemem")
    (synopsis
     "abstraction to an auto scrubbing and const time eq, memory chunk.")
    (description
     "SecureMem is similar to ByteString, except that it provides a memory chunk that
will be auto-scrubbed after it run out of scope.")
    (license license:bsd-3)))

haskell-9.0-securemem

(define-public haskell-9.0-selective
  (package
    (name "haskell-9.0-selective")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selective/selective-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18wd5wn8xaw0ilx34j292l06cqn6r2rri1wvxng8ygd8141sizdh"))))
    (properties `((upstream-name . "selective") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
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

haskell-9.0-selective

(define-public haskell-9.0-simple-vec3
  (package
    (name "haskell-9.0-simple-vec3")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-vec3/simple-vec3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m1aa480gnw9bxzpx4hg6pa896lmc56cdfg33fvfkngvcfbfb13m"))))
    (properties `((upstream-name . "simple-vec3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/dzhus/simple-vec3#readme")
    (synopsis "Three-dimensional vectors of doubles with basic operations")
    (description
     "Simple three-dimensional vectors of doubles with basic vector and matrix operations, supporting \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\".")
    (license license:bsd-3)))

haskell-9.0-simple-vec3

(define-public haskell-9.0-singleton-bool
  (package
    (name "haskell-9.0-singleton-bool")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-bool/singleton-bool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pc34dbzx5g3vw5w03zifvqva3whyvxzfy3yh78qkpd05f0g98sw"))))
    (properties `((upstream-name . "singleton-bool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1l4nx664awgwzk3ih5idsgnj220jqdr1c55241xjv7fz7lwyhh5r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-boring)
                  (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-dec)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-some)))
    (home-page "https://github.com/phadej/singleton-bool#readme")
    (synopsis "Type level booleans")
    (description "Type level booleans.

@@singletons@@ package provides similar functionality,
but it has tight dependency constraints.")
    (license license:bsd-3)))

haskell-9.0-singleton-bool

(define-public haskell-9.0-tagsoup
  (package
    (name "haskell-9.0-tagsoup")
    (version "0.14.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagsoup/tagsoup-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m9sx6gr9y9yxvkmcap8xsks8cnhznvma1mrfl39zljkv005azms"))))
    (properties `((upstream-name . "tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)))
    (home-page "https://github.com/ndmitchell/tagsoup#readme")
    (synopsis
     "Parsing and extracting information from (possibly malformed) HTML/XML documents")
    (description
     "TagSoup is a library for parsing HTML/XML. It supports the HTML 5 specification,
and can be used to parse either well-formed XML, or unstructured and malformed HTML
from the web. The library also provides useful functions to extract information
from an HTML document, making it ideal for screen-scraping.

Users should start from the \"Text.HTML.TagSoup\" module.")
    (license license:bsd-3)))

haskell-9.0-tagsoup

(define-public haskell-9.0-test-framework
  (package
    (name "haskell-9.0-test-framework")
    (version "0.8.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework/test-framework-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhacrzam6b8f10hyldmjw8pb7frdxh04rfg3farxcxwbnhwgbpm"))))
    (properties `((upstream-name . "test-framework") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1sal1qqvc8c1rvsqz292bniy1kr5rx6ll7z9chwsz6j2ncw5sgmg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hostname)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-posix)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis
     "Framework for running and organising tests, with HUnit and QuickCheck support")
    (description
     "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in
parallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by
command line options. All of this comes with colored test output, progress reporting and test statistics output.")
    (license license:bsd-3)))

haskell-9.0-test-framework

(define-public haskell-9.0-th-lift-instances
  (package
    (name "haskell-9.0-th-lift-instances")
    (version "0.1.20")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-lift-instances/th-lift-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6qc7xzyjymhh8hv72rlszh3n2xyzzamlfcl1hs9k6xbbww6czm"))))
    (properties `((upstream-name . "th-lift-instances") (hidden? . #f)))
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
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/bennofs/th-lift-instances/")
    (synopsis "Lift instances for template-haskell for common data types.")
    (description
     "Most data types in the haskell platform do not have Lift instances.
This package provides orphan instances for containers, text, bytestring and vector.
It also provides compat instances for older versions of @@template-haskell@@

Note that <https://hackage.haskell.org/package/th-lift th-lift> package provides
Template Haskell based derivation of @@Lift@@ instances (when you cannot use @@DeriveLift@@ extension),
and <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for TH datatypes.")
    (license license:bsd-3)))

haskell-9.0-th-lift-instances

(define-public haskell-9.0-typography-geometry
  (package
    (name "haskell-9.0-typography-geometry")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typography-geometry/typography-geometry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vi2ggpvvarqimrga985cks5wq67dqyrr5nh3a0ghy0mbdrb72ps"))))
    (properties `((upstream-name . "typography-geometry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-polynomials-bernstein)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/typography-geometry")
    (synopsis "Drawings for printed text documents")
    (description "Drawings for printed text documents")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-typography-geometry

(define-public haskell-9.0-universe-dependent-sum
  (package
    (name "haskell-9.0-universe-dependent-sum")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-dependent-sum/universe-dependent-sum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fwqx4fzs9s09fwrf715simqb0vxnx3z7q35zbv9mkj1m6nbrsk5"))))
    (properties `((upstream-name . "universe-dependent-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05spqm8sc40gpd0d68xal85h8ihhf0ys02clvjmn9ayb7rajssj3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-universe-some)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from dependent-sum")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This package adds

@@
class UniverseSome f where universeSome :: [Some f]
class UniverseSome f => FiniteSome f where universeFSome :: [Some f]; universeFSome = universe
@@

classes.")
    (license license:bsd-3)))

haskell-9.0-universe-dependent-sum

(define-public haskell-9.0-url
  (package
    (name "haskell-9.0-url")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/url/url-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0qag18wbrq9jjk1444mjigz1xl7xl03fz66b1lnya9qaihzpxwjs"))))
    (properties `((upstream-name . "url") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "http://www.haskell.org/haskellwiki/Url")
    (synopsis "A library for working with URLs.")
    (description "A library for working with URLs.")
    (license license:bsd-3)))

haskell-9.0-url

(define-public haskell-9.0-variable-media-field-optics
  (package
    (name "haskell-9.0-variable-media-field-optics")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/variable-media-field-optics/variable-media-field-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n4ccd52yy5yna28bmn4sc7cyrngyllgk976q4v7f262l49wmphj"))))
    (properties `((upstream-name . "variable-media-field-optics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-optics-th)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-variable-media-field)))
    (home-page
     "https://hackage.haskell.org/package/variable-media-field-optics")
    (synopsis "Optics for variable-media-field.")
    (description "Optics for variable-media-field.")
    (license license:expat)))

haskell-9.0-variable-media-field-optics

(define-public haskell-9.0-x11-xim
  (package
    (name "haskell-9.0-x11-xim")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/YoshikuniJujo/x11-xim_haskell/wiki/")
    (synopsis "A binding to the xim of X11 graphics library")
    (description "A binding to the xim of X11 graphics library")
    (license license:bsd-3)))

haskell-9.0-x11-xim

(define-public haskell-9.0-yjsvg
  (package
    (name "haskell-9.0-yjsvg")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yjsvg/yjsvg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zif4sqrd7kv1546vcp1q78bb8k94mkiqxh7glix6gvv7gabfdzp"))))
    (properties `((upstream-name . "yjsvg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-HaXml)))
    (home-page "https://hackage.haskell.org/package/yjsvg")
    (synopsis "make SVG string from Haskell data")
    (description
     "> import Text.XML.YJSVG
> main = putStrLn $ showSVG 500 750 [ (\"\", Line 30 40 100 200 \"yellow\" 10) ]

etc")
    (license license:bsd-3)))

haskell-9.0-yjsvg

