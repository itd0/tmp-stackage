;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage012)
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
(define-public haskell-8.4-GLURaw
  (package
    (name "haskell-8.4-GLURaw")
    (version "2.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLURaw/GLURaw-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i2xi35n5z0d372px9mh6cyhgg1m0cfaiy3fnspkf6kbn9fgsqxq"))))
    (properties `((upstream-name . "GLURaw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-OpenGLRaw)
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

haskell-8.4-GLURaw

(define-public haskell-8.4-Network-NineP
  (package
    (name "haskell-8.4-Network-NineP")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Network-NineP/Network-NineP-"
                    version ".tar.gz"))
              (sha256
               (base32
                "119v9iimpgd5cym5q7az0gg70irja9034r2mhvq2k4ygmmz0lazy"))))
    (properties `((upstream-name . "Network-NineP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-NineP)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-monad-peel)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-mstate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stateref)))
    (home-page "https://hackage.haskell.org/package/Network-NineP")
    (synopsis "High-level abstraction over 9P protocol")
    (description
     "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-Network-NineP

(define-public haskell-8.4-asn1-types
  (package
    (name "haskell-8.4-asn1-types")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-types/asn1-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05vjchyqiy9n275cygffhn0ma7fz7jx52j0dcdm9qm8h9bziymqc"))))
    (properties `((upstream-name . "asn1-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)))
    (home-page "http://github.com/vincenthz/hs-asn1-types")
    (synopsis "ASN.1 types")
    (description "ASN.1 standard types")
    (license license:bsd-3)))

haskell-8.4-asn1-types

(define-public haskell-8.4-astro
  (package
    (name "haskell-8.4-astro")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/astro/astro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0agy9a91n1sy6rgdgwvdz354x452j2lg7nr3by7z9r22rwdxwpfs"))))
    (properties `((upstream-name . "astro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-matrix)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/aligusnet/astro")
    (synopsis "Amateur astronomical computations")
    (description
     "Amateur astronomical computations: rise and set times and azimuths,
coordinates, distances, angular sizes and other parameters
of the Sun, the Moon, planets and stars.")
    (license license:bsd-3)))

haskell-8.4-astro

(define-public haskell-8.4-atomic-write
  (package
    (name "haskell-8.4-atomic-write")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-write/atomic-write-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xs3shwnlj8hmnm3q6jc8nv78z0481i5n4hrqqdmbpx8grvlnqyl"))))
    (properties `((upstream-name . "atomic-write") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://github.com/stackbuilders/atomic-write")
    (synopsis "Atomically write to a file")
    (description
     "
Atomically write to a file on POSIX-compliant systems while preserving
permissions.

On most Unix systems, `mv` is an atomic operation. This makes it simple to write
to a file atomically just by using the mv operation. However, this will
destroy the permissions on the original file. This library does the following
to preserve permissions while atomically writing to a file:

* If an original file exists, take those permissions and apply them to the
temp file before `mv`ing the file into place.

* If the original file does not exist, create a following with default
permissions (based on the currently-active umask).

This way, when the file is `mv`'ed into place, the permissions will be the ones
held by the original file.

This library is based on similar implementations found in common libraries in
Ruby and Python:

* <http://apidock.com/rails/File/atomic_write/class Ruby on Rails includes a similar method called atomic_write>

* <https://github.com/chef/chef/blob/c4631816132fcfefaba3d123a1d0dfe8bc2866bb/lib/chef/file_content_management/deploy/mv_unix.rb#L23:L71 Chef includes atomic update functionality>

* <https://github.com/sashka/atomicfile There is a python library for atomically updating a file>

To use `atomic-write`, import the module corresponding to the type you wish to
write atomically, e.g., to write a (strict) ByteString atomically:

> import System.AtomicWrite.Writer.ByteString

Then you can use the atomicWriteFile function that accepts a `FilePath` and a
`ByteString`, e.g.:

> atomicWriteFile myFilePath myByteString")
    (license license:expat)))

haskell-8.4-atomic-write

(define-public haskell-8.4-blas-hs
  (package
    (name "haskell-8.4-blas-hs")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/blas-hs/blas-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11mhjvqjnap4lj70f6lxjrjrdlkw8gnmd1lz4cfkjawq4w4npq40"))))
    (properties `((upstream-name . "blas-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-netlib" "-f-no-accelerate" "-f-openblas" "-f-mkl" "-f-cblas")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/Rufflewind/blas-hs")
    (synopsis "Low-level Haskell bindings to Blas.")
    (description
     "This package provides a complete low-level binding to Blas via the foreign
function interface, allowing Haskell programs to take advantage of optimized
routines for vector and matrix operations in Haskell.

More information can be found at the
<https://github.com/Rufflewind/blas-hs repository>.")
    (license license:expat)))

haskell-8.4-blas-hs

(define-public haskell-8.4-bno055-haskell
  (package
    (name "haskell-8.4-bno055-haskell")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bno055-haskell/bno055-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n4s0ljlgf1qrlyzaj161nbx7sa162v26p0i2i17n12m8zwjkp3s"))))
    (properties `((upstream-name . "bno055-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-h2c)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (home-page "https://bitbucket.org/fmapE/bno055-haskell")
    (synopsis
     "Library for communication with the Bosch BNO055 orientation sensor")
    (description
     "Library for controlling and reading the Bosch BNO055 absolute orientation sensor.")
    (license license:expat)))

haskell-8.4-bno055-haskell

(define-public haskell-8.4-brick
  (package
    (name "haskell-8.4-brick")
    (version "0.37.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brick/brick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "176rq7xpwww1c3h7hm6n6z7sxbd3wc2zhxvnk65llk9lipc6rf3w"))))
    (properties `((upstream-name . "brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdemos")
       #:cabal-revision
       ("1" "0cj98cjlr400yf47lg50syj5zpvh6q9mm1hp4blns6ndz2xys5rz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-config-ini)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-data-clist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-text-zipper)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-vty)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word-wrap)))
    (home-page "https://github.com/jtdaugherty/brick/")
    (synopsis "A declarative terminal user interface library")
    (description
     "Write terminal applications painlessly with 'brick'! You write an
event handler and a drawing function and the library does the rest.


> module Main where
>
> import Brick
>
> ui :: Widget ()
> ui = str \"Hello, world!\"
>
> main :: IO ()
> main = simpleMain ui


To get started, see:

* <https://github.com/jtdaugherty/brick/blob/master/README.md The README>

* The <https://github.com/jtdaugherty/brick/blob/master/docs/guide.rst Brick user guide>

* The demonstration programs in the 'programs' directory


This package deprecates <http://hackage.haskell.org/package/vty-ui vty-ui>.")
    (license license:bsd-3)))

haskell-8.4-brick

(define-public haskell-8.4-cheapskate-highlight
  (package
    (name "haskell-8.4-cheapskate-highlight")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-highlight/cheapskate-highlight-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6k694gmnx7h8ix79z8scsdl65zbilxni1vjr90ka2fdfrazxss"))))
    (properties `((upstream-name . "cheapskate-highlight") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c8kxqdqf0j962xjdrrjfcbjsl0c1kax31rjykymv7w16d6hmlj4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cheapskate)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-highlighting-kate)))
    (home-page "http://github.com/aelve/cheapskate-highlight")
    (synopsis "Code highlighting for cheapskate")
    (description
     "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,
returns cheapskate AST with code blocks highlighted.")
    (license license:bsd-3)))

haskell-8.4-cheapskate-highlight

(define-public haskell-8.4-chronologique
  (package
    (name "haskell-8.4-chronologique")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chronologique/chronologique-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05ly96mdm4nxmn7yz04wq9kgzlq8biaaaxs1mvsc3f8wgcpbqf65"))))
    (properties `((upstream-name . "chronologique") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/afcowie/chronologique/")
    (synopsis "Time to manipulate time")
    (description
     "A simple type useful for representing timestamps as generated by system
events, along with conveniences for converting between time types from common
Haskell time libraries.

Our original use was wanting to conveniently measure things happening on
distributed computer systems. Since machine clock cycles are in units of
nanoseconds, this has the nice property that, assuming the system clock is not
corrupted, two subsequent events from the same source process are likely to
have monotonically increasing timestamps. And even if the system clock has
skew, they're still decently likely to be unique per device. These TimeStamps
thus make good keys when building Maps.

The core type is in \"Chrono.TimeStamp\", see there for full documentation.")
    (license license:bsd-3)))

haskell-8.4-chronologique

(define-public haskell-8.4-comonad
  (package
    (name "haskell-8.4-comonad")
    (version "5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/comonad/comonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09g870c4flp4k3fgbibsd0mmfjani1qcpbcl685v8x89kxzrva3q"))))
    (properties `((upstream-name . "comonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-fcontainers" "-fcontravariant" "-fdistributive")
       #:cabal-revision
       ("1" "1hm3784gfcxbj5al1jhp0i8cgmnmq3kdl3y1nph0al424z1zvgvh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/comonad/")
    (synopsis "Comonads")
    (description "Comonads.")
    (license license:bsd-3)))

haskell-8.4-comonad

(define-public haskell-8.4-control-dsl
  (package
    (name "haskell-8.4-control-dsl")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/control-dsl/control-dsl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rv9wpjnr3y957vd6l8vmn87f9gi97nhk07bkgpr8083avi9biz8"))))
    (properties `((upstream-name . "control-dsl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "18jypzsawq0mp12i35f58px80i3k07ri0g07wcrh6af93vqkhvil")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-doctest-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/Atry/Control.Dsl#readme")
    (synopsis "An alternative to monads in do-notation")
    (description
     "This \\\"control-dsl\\\" package is a toolkit to create extensible Domain Specific Languages in @@do@@-notation.

See \"Control.Dsl\" for more information.")
    (license license:bsd-3)))

haskell-8.4-control-dsl

(define-public haskell-8.4-criterion
  (package
    (name "haskell-8.4-criterion")
    (version "1.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion/criterion-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v429araqkcw3wwwi6fsp0g7g1hy3l47p061lcy7r4m7d9khd4y4"))))
    (properties `((upstream-name . "criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast" "-f-embed-data-files")
       #:cabal-revision
       ("3" "1b0gbvq5yq4ff5s5504ghypblw4vdgrl69fg09a44q4sv7y0ispl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-code-page)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-js-flot)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-js-jquery)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-microstache)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-statistics)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "http://www.serpentine.com/criterion")
    (synopsis "Robust, reliable performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.

The fastest way to get started is to read the
<http://www.serpentine.com/criterion/tutorial.html online tutorial>,
followed by the documentation and examples in the \"Criterion.Main\"
module.

For examples of the kinds of reports that criterion generates, see
<http://www.serpentine.com/criterion the home page>.")
    (license license:bsd-3)))

haskell-8.4-criterion

(define-public haskell-8.4-cryptonite
  (package
    (name "haskell-8.4-cryptonite")
    (version "0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite/cryptonite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "131wbbdr5yavs5k1ah9sz6fqx1ffyvaxf66pwjzsfc47mwc1mgl9"))))
    (properties `((upstream-name . "cryptonite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_aesni" "-fsupport_rdrand" "-f-support_pclmuldq" "-f-support_sse" "-finteger-gmp" "-fsupport_deepseq" "-f-old_toolchain_inliner" "-f-check_alignment")
       #:cabal-revision
       ("1" "00mp1cjkbvlwax3cbgjmxp2597mc8ap468kfjq40fqk8i1iny72p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-basement)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-kat)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/haskell-crypto/cryptonite")
    (synopsis "Cryptography Primitives sink")
    (description
     "A repository of cryptographic primitives.

* Symmetric ciphers: AES, DES, 3DES, CAST5, Blowfish, Twofish, Camellia, RC4, Salsa, XSalsa, ChaCha.

* Hash: SHA1, SHA2, SHA3, SHAKE, MD2, MD4, MD5, Keccak, Skein, Ripemd, Tiger, Whirlpool, Blake2

* MAC: HMAC, Poly1305

* Asymmetric crypto: DSA, RSA, DH, ECDH, ECDSA, ECC, Curve25519, Curve448, Ed25519, Ed448

* Key Derivation Function: PBKDF2, Scrypt, HKDF, Argon2

* Cryptographic Random generation: System Entropy, Deterministic Random Generator

* Data related: Anti-Forensic Information Splitter (AFIS)

If anything cryptographic related is missing from here, submit
a pull request to have it added. This package strive to be a
cryptographic kitchen sink that provides cryptography for everyone.

Evaluate the security related to your requirements before using.

Read \"Crypto.Tutorial\" for a quick start guide.")
    (license license:bsd-3)))

haskell-8.4-cryptonite

(define-public haskell-8.4-csp
  (package
    (name "haskell-8.4-csp")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/csp/csp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15ilx5ycvh12c71wza2d25cp4llvncxc9csmmisjcxwny5gpz1q8"))))
    (properties `((upstream-name . "csp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-nondeterminism)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/csp")
    (synopsis "Discrete constraint satisfaction problem (CSP) solver.")
    (description "Constraint satisfaction problem (CSP) solvers")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-csp

(define-public haskell-8.4-cyclotomic
  (package
    (name "haskell-8.4-cyclotomic")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cyclotomic/cyclotomic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zazdzsiv42p244f0js2fj81l6wkv0s46rfcl9hyabzcq6x9h87p"))))
    (properties `((upstream-name . "cyclotomic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-arithmoi)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-smallcheck)))
    (home-page "https://hackage.haskell.org/package/cyclotomic")
    (synopsis "A subfield of the complex numbers for exact calculation.")
    (description "The cyclotomic numbers are a subset of the
complex numbers that are represented exactly, enabling exact
computations and equality comparisons.  They
contain the Gaussian rationals (complex numbers
of the form p + q i with p and q rational), as well
as all complex roots of unity.  The
cyclotomic numbers contain the square roots of
all rational numbers.  They contain the sine and
cosine of all rational multiples of pi.
The cyclotomic numbers form a field, being closed under
addition, subtraction, mutiplication, and division.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-cyclotomic

(define-public haskell-8.4-data-dword
  (package
    (name "haskell-8.4-data-dword")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-dword/data-dword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "084invjg8zj7ndxnz9clqmq06ch47k1d9lhxwap6xs0x4807crvb"))))
    (properties `((upstream-name . "data-dword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16jy0kccpyy88kbxj58yxq8xzchycigc292jwqxzybsp92pjknm6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-data-bword)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/mvv/data-dword")
    (synopsis "Stick two binary words together to get a bigger one")
    (description
     "This package provides Template Haskell utilities for declaring fixed-length
binary word data types. Signed and unsigned 96, 128, 160, 192, 224, and
256-bit types are predefined.")
    (license license:bsd-3)))

haskell-8.4-data-dword

(define-public haskell-8.4-data-serializer
  (package
    (name "haskell-8.4-data-serializer")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-serializer/data-serializer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ijy8l5lxmm8wpzx4h2vh9q21zz66xgh979s32aa4b16l9m1b4z7"))))
    (properties `((upstream-name . "data-serializer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-endian)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/mvv/data-serializer")
    (synopsis "Common API for serialization libraries")
    (description
     "This package provides a common API for serialization libraries like
<http://hackage.haskell.org/package/binary binary> and
<http://hackage.haskell.org/package/cereal cereal>.")
    (license license:bsd-3)))

haskell-8.4-data-serializer

(define-public haskell-8.4-data-textual
  (package
    (name "haskell-8.4-data-textual")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-textual/data-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c4qs923dj4jnvvkjvbij0c1yg922iw66140cq6wb1m4h6q31ia4"))))
    (properties `((upstream-name . "data-textual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-text-latin1)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-text-printer)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-type-hint)))
    (home-page "https://github.com/mvv/data-textual")
    (synopsis "Human-friendly textual representations.")
    (description
     "This package provides an interface for converting between data and its
(human-friendly) textual representation.")
    (license license:bsd-3)))

haskell-8.4-data-textual

(define-public haskell-8.4-di-handle
  (package
    (name "haskell-8.4-di-handle")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/di-handle/di-handle-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1v4jn1dvvfa6nbqx34hhjg47lbjafkmdps8aalq3n5sah99iy26d"))))
    (properties `((upstream-name . "di-handle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-di-core)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)))
    (home-page "https://github.com/k0001/di")
    (synopsis "IO support for file handles in di-core")
    (description "IO support for file handles in di-core")
    (license license:bsd-3)))

haskell-8.4-di-handle

(define-public haskell-8.4-di-monad
  (package
    (name "haskell-8.4-di-monad")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/di-monad/di-monad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s2f2rvchfc6ha8w75rcz5w9706vf9zmxgrimav211vph3hpjkdq"))))
    (properties `((upstream-name . "di-monad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-di-core)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (description
     "mtl flavoured typeful hierarchical structured logging for di-core.")
    (license license:bsd-3)))

haskell-8.4-di-monad

(define-public haskell-8.4-direct-sqlite
  (package
    (name "haskell-8.4-direct-sqlite")
    (version "2.3.23")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/direct-sqlite/direct-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ywkah9gmjnx0zdlvinc2i898jsbdrw4ba315zkpijaaldp6znqz"))))
    (properties `((upstream-name . "direct-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-ffulltextsearch" "-furifilenames" "-fhaveusleep" "-fjson1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/IreneKnapp/direct-sqlite")
    (synopsis "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.")
    (description
     "This package is not very different from the other SQLite3 bindings out
there, but it fixes a few deficiencies I was finding.  As compared to
bindings-sqlite3, it is slightly higher-level, in that it supports
marshalling of data values to and from the database.  In particular, it
supports strings encoded as UTF8, and BLOBs represented as ByteStrings.")
    (license license:bsd-3)))

haskell-8.4-direct-sqlite

(define-public haskell-8.4-drifter-postgresql
  (package
    (name "haskell-8.4-drifter-postgresql")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/drifter-postgresql/drifter-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p7ddvfmjhf22psga0phhw2m0sdhymsc5k13jrwrdawsxivh2clk"))))
    (properties `((upstream-name . "drifter-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-drifter)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/michaelxavier/drifter-postgresql")
    (synopsis "PostgreSQL support for the drifter schema migration tool")
    (description "Support for postgresql-simple Query migrations as well as
arbitrary Haskell IO functions. Be sure to check the
examples dir for a usage example.")
    (license license:expat)))

haskell-8.4-drifter-postgresql

(define-public haskell-8.4-dunai
  (package
    (name "haskell-8.4-dunai")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dunai/dunai-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05xqhbz0x7wzfka4wl2wvfhzr242nx4ci4r3zvm89mcyxn9q7x6n"))))
    (properties `((upstream-name . "dunai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-hlint" "-f-test-doc-coverage")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
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

haskell-8.4-dunai

(define-public haskell-8.4-elerea
  (package
    (name "haskell-8.4-elerea")
    (version "2.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elerea/elerea-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10b68j3mr85sy2riyrq49l30zxpins5ygqhgn81phn9j1dk224lh"))))
    (properties `((upstream-name . "elerea") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://hackage.haskell.org/package/elerea")
    (synopsis "A minimalistic FRP library")
    (description
     "Elerea (Eventless reactivity) is a tiny discrete time FRP
implementation without the notion of event-based switching and
sampling, with first-class signals (time-varying values).  Reactivity
is provided through various higher-order constructs that also allow
the user to work with arbitrary time-varying structures containing
live signals.  Signals have precise and simple denotational
semantics.

Stateful signals can be safely generated at any time through a
monadic interface, while stateless combinators can be used in a
purely applicative style.  Elerea signals can be defined recursively,
and external input is trivial to attach.  The library comes in two
major variants:

* Simple: signals are plain discrete streams isomorphic to functions
over natural numbers;

* Param: adds a globally accessible input signal for convenience;

This is a minimal library that defines only some basic primitives,
and you are advised to install @@elerea-examples@@ as well to get an
idea how to build non-trivial systems with it.  The examples are
separated in order to minimise the dependencies of the core library.
The @@dow@@ package contains a full game built on top of the simple
variant.

The basic idea of the implementation is described in the WFLP 2010
paper /Efficient and Compositional Higher-Order Streams/
(<http://sgate.emt.bme.hu/documents/patai/publications/PataiWFLP2010.pdf>).

Additional contributions: Takano Akio, Mitsutoshi Aoe")
    (license license:bsd-3)))

haskell-8.4-elerea

(define-public haskell-8.4-envelope
  (package
    (name "haskell-8.4-envelope")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/envelope/envelope-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ybyhq3yfcyaj1q1pwm41xzyfjdkmy6lls0n7kn5ks06z7inykfg"))))
    (properties `((upstream-name . "envelope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-envelope

(define-public haskell-8.4-eventful-core
  (package
    (name "haskell-8.4-eventful-core")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-core/eventful-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06chbjrxfxk0fr9lgdic6bmylnv3kz398l9drqr85r6qk1s5xxg0"))))
    (properties `((upstream-name . "eventful-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-sum-type-boilerplate)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Core module for eventful")
    (description "Core module for eventful")
    (license license:expat)))

haskell-8.4-eventful-core

(define-public haskell-8.4-fft
  (package
    (name "haskell-8.4-fft")
    (version "0.1.8.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fft/fft-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hjv3r09imb2ypgbz3qj9hf4f36v977z38gdcad3qa0334qdin1f"))))
    (properties `((upstream-name . "fft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fbase4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-carray)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ix-shapable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-8.4-fft

(define-public haskell-8.4-fileplow
  (package
    (name "haskell-8.4-fileplow")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fileplow/fileplow-" version
                    ".tar.gz"))
              (sha256
               (base32
                "017f3f3w69fvlhdagivb5xp72vwzmimcjd94zw9l9ylp5jv7vp4x"))))
    (properties `((upstream-name . "fileplow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-binary-search)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/agrafix/fileplow#readme")
    (synopsis
     "Library to process and search large files or a collection of files")
    (description
     "Library to process and search large files or a collection of files")
    (license license:bsd-3)))

haskell-8.4-fileplow

(define-public haskell-8.4-freer-simple
  (package
    (name "haskell-8.4-freer-simple")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freer-simple/freer-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00dvn620xg24pxw1h9p7dgl5wj25q77mfdsmxlmijsr0ysqwv611"))))
    (properties `((upstream-name . "freer-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-natural-transformation)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/lexi-lambda/freer-simple#readme")
    (synopsis "Implementation of a friendly effect system for Haskell.")
    (description
     "An implementation of an effect system for Haskell (a fork of
<http://hackage.haskell.org/package/freer-effects freer-effects>), which is
based on the work of Oleg Kiselyov et al.:

* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>
* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>
* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>

The key features are:

* An efficient effect system for Haskell - as a library!
* Reimplementations of several common Haskell monad transformers as effects.
* Core components for defining your own Effects.")
    (license license:bsd-3)))

haskell-8.4-freer-simple

(define-public haskell-8.4-general-games
  (package
    (name "haskell-8.4-general-games")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/general-games/general-games-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2h6dbd12xzvgwm7a26scpjyfkcwkmpdkw98nkmb2vk8qsrx3lb"))))
    (properties `((upstream-name . "general-games") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-random-shuffle)))
    (home-page "https://github.com/cgorski/general-games")
    (synopsis "Library supporting simulation of a number of games")
    (description
     "Library providing framework for simulating outcomes of a variety
of games, including Poker.")
    (license license:expat)))

haskell-8.4-general-games

(define-public haskell-8.4-genvalidity-property
  (package
    (name "haskell-8.4-genvalidity-property")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-property/genvalidity-property-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cjw5i2pydidda9bnp6x37ylhxdk9g874x5sadr6sscg5kq85a1b"))))
    (properties `((upstream-name . "genvalidity-property") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard properties for functions on `Validity` types")
    (description "Standard properties for functions on `Validity` types")
    (license license:expat)))

haskell-8.4-genvalidity-property

(define-public haskell-8.4-genvalidity-time
  (package
    (name "haskell-8.4-genvalidity-time")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x3qddniy2a0qfyaxi1mfw9kqijky2gwyp19bcsp1gfxxl3c4mf5"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-time

(define-public haskell-8.4-ghc-typelits-knownnat
  (package
    (name "haskell-8.4-ghc-typelits-knownnat")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-knownnat/ghc-typelits-knownnat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yvdb3y82wrm41p9sbbsmfq91cp9kzx7mmqr20wgxrqamhnw952v"))))
    (properties `((upstream-name . "ghc-typelits-knownnat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "http://clash-lang.org/")
    (synopsis "Derive KnownNat constraints from other KnownNat constraints")
    (description
     "A type checker plugin for GHC that can derive \\\"complex\\\" @@KnownNat@@
constraints from other simple/variable @@KnownNat@@ constraints. i.e. without
this plugin, you must have both a @@KnownNat n@@ and a @@KnownNat (n+2)@@
constraint in the type signature of the following function:

@@
f :: forall n . (KnownNat n, KnownNat (n+2)) => Proxy n -> Integer
f _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))
@@

Using the plugin you can omit the @@KnownNat (n+2)@@ constraint:

@@
f :: forall n . KnownNat n => Proxy n -> Integer
f _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))
@@

The plugin can derive @@KnownNat@@ constraints for types consisting of:

* Type variables, when there is a corresponding @@KnownNat@@ constraint

* Type-level naturals

* Applications of the arithmetic expression: +,-,*,^

* Type functions, when there is either:

1. a matching given @@KnownNat@@ constraint; or

2. a corresponding @@KnownNat\\<N\\>@@ instance for the type function

To use the plugin, add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.KnownNat.Solver
@@

Pragma to the header of your file.")
    (license license:bsd-2)))

haskell-8.4-ghc-typelits-knownnat

(define-public haskell-8.4-gnuplot
  (package
    (name "haskell-8.4-gnuplot")
    (version "0.5.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gnuplot/gnuplot-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0105ajc5szgrh091x5fxdcydc96rdh75gg2snyfr2y2rhf120x2g"))))
    (properties `((upstream-name . "gnuplot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-executepipe" "-f-executeshell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-data-accessor-transformers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Gnuplot")
    (synopsis "2D and 3D plots using gnuplot")
    (description
     "This is a wrapper to gnuplot
which lets you create 2D and 3D plots.

Start a simple session with @@make ghci@@.
This loads the module \"Graphics.Gnuplot.Simple\"
which is ready for use in GHCi.
It does not address all fancy gnuplot features
in order to stay simple.
For more sophisticated plots,
especially batch generated graphics,
I recommend \"Graphics.Gnuplot.Advanced\".
This module contains also an overview
of the hierarchy of objects.

Examples for using this interface can be found in the \"Demo\" module.
In order to compile this and install an example data file,
use the Cabal flag @@buildExamples@@:

> $ cabal install -fbuildExamples gnuplot

With the Cabal flags executePipe and executeShell
you can switch to more convenient
but probably less portable ways
of feeding gnuplot with a script.

Alternative packages: @@plot@@, @@HPlot@@, @@Chart@@, @@textPlot@@, @@easyplot@@")
    (license license:bsd-3)))

haskell-8.4-gnuplot

(define-public haskell-8.4-graphviz
  (package
    (name "haskell-8.4-graphviz")
    (version "2999.20.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphviz/graphviz-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kj7ap0gnliviq2p8lscw1m06capnsa90vpvcys24nqy5nw2wrp7"))))
    (properties `((upstream-name . "graphviz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-parsing")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-polyparse)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-wl-pprint-text)))
    (home-page "http://projects.haskell.org/graphviz/")
    (synopsis "Bindings to Graphviz for graph visualisation.")
    (description
     "This library provides bindings for the Dot language used by the
Graphviz (<http://graphviz.org/>) suite of programs for visualising
graphs, as well as functions to call those programs.

Main features of the graphviz library include:

* Almost complete coverage of all Graphviz attributes and syntax.

* Support for specifying clusters.

* The ability to use a custom node type.

* Functions for running a Graphviz layout tool with all specified
output types.

* The ability to not only generate but also parse Dot code with two
options: strict and liberal (in terms of ordering of statements).

* Functions to convert FGL graphs and other graph-like data structures
to Dot code - including support to group them into clusters - with a
high degree of customisation by specifying which attributes to use
and limited support for the inverse operation.

* Round-trip support for passing an FGL graph through Graphviz to
augment node and edge labels with positional information, etc.")
    (license license:bsd-3)))

haskell-8.4-graphviz

(define-public haskell-8.4-greskell-websocket
  (package
    (name "haskell-8.4-greskell-websocket")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-websocket/greskell-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rydw93dscnq41a1j4l7fchbpxgbqgf2kx8c58kb0m8qxi7v6qlh"))))
    (properties `((upstream-name . "greskell-websocket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-server-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-greskell-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell client for Gremlin Server using WebSocket serializer")
    (description
     "Haskell client for [Gremlin Server](http://tinkerpop.apache.org/docs/current/reference/#gremlin-server) using WebSocket serializer.
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is based on [greskell-core](http://hackage.haskell.org/package/greskell-core),
and best used with [greskell](http://hackage.haskell.org/package/greskell) package.")
    (license license:bsd-3)))

haskell-8.4-greskell-websocket

(define-public haskell-8.4-hint
  (package
    (name "haskell-8.4-hint")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hint/hint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h8wan0hb16m1gcil1csaay9f9f1pq3kfgbzfsfpjszmr1i2sw1f"))))
    (properties `((upstream-name . "hint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/mvdan/hint")
    (synopsis "Runtime Haskell interpreter (GHC API wrapper)")
    (description
     "This library defines an Interpreter monad. It allows to load Haskell
modules, browse them, type-check and evaluate strings with Haskell
expressions and even coerce them into values. The library is thread-safe
and type-safe (even the coercion of expressions to values).
It is, essentially, a huge subset of the GHC API wrapped in a simpler
API.")
    (license license:bsd-3)))

haskell-8.4-hint

(define-public haskell-8.4-hledger-interest
  (package
    (name "haskell-8.4-hledger-interest")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-Decimal)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hledger-lib)))
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

haskell-8.4-hledger-interest

(define-public haskell-8.4-hmatrix
  (package
    (name "haskell-8.4-hmatrix")
    (version "0.19.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hmatrix/hmatrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10jd69nby29dggghcyjk6ykyr5wrn97nrv1dkpyrp0y5xm12xssj"))))
    (properties `((upstream-name . "hmatrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-openblas" "-f-disable-default-paths")
       #:cabal-revision
       ("3" "12pqfzlz6b02846mciwz6f7hx02hyl38i9cisg3kgar8nay31npk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numeric Linear Algebra")
    (description
     "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.

Standard interface: \"Numeric.LinearAlgebra\".

Safer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".

Code examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>")
    (license license:bsd-3)))

haskell-8.4-hmatrix

(define-public haskell-8.4-hourglass-orphans
  (package
    (name "haskell-8.4-hourglass-orphans")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hourglass-orphans/hourglass-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1x6w5zpszr783gzsl3v2fizas4mh5wwgdgdnr93lydngrsj2wz"))))
    (properties `((upstream-name . "hourglass-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)))
    (home-page "https://github.com/psibi/hourglass-orphans#readme")
    (synopsis "Orphan Aeson instances to hourglass")
    (description "Orphan Aeson instances to hourglass")
    (license license:bsd-3)))

haskell-8.4-hourglass-orphans

(define-public haskell-8.4-hsass
  (package
    (name "haskell-8.4-hsass")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsass/hsass-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mqsj1jm37pqc1vwjs5y5mh4sfhdyclp1vdr7q5nq2a3pa3qwxbk"))))
    (properties `((upstream-name . "hsass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hlibsass)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages web) libsass)))
    (home-page "https://github.com/jakubfijalkowski/hsass")
    (synopsis "Integrating Sass into Haskell applications.")
    (description
     "This package provides quite simple (but not too simple) API for
compilation of <http://sass-lang.com/ Sass> code. It uses
<http://libsass.org libsass> (hlibsass) underneath, so the code it
parses/generates should be compatible with original Sass implementation (or at
least <http://libsass.org/#sassc sassc>).
This package tries to minimize C API usage, so the only place where it is used
is in the 'compileFile' / 'compileString' methods. This allows us to stay pure
as long as we can and not waste performance for going back and forth.
If you feel that compilation options constrain you too much, you may use rest
of modules without it. With them, you can use Haskell types and mechanisms to
manage libsass's data(eg. importers, options, values) and modify compilation
process as you like.")
    (license license:expat)))

haskell-8.4-hsass

(define-public haskell-8.4-hsc2hs
  (package
    (name "haskell-8.4-hsc2hs")
    (version "0.68.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsc2hs/hsc2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1clj6bgs9vmiv3mjzp82lvyyik5zr5411nxab7hydbrgq94pbk70"))))
    (properties `((upstream-name . "hsc2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-in-ghc-tree")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/hsc2hs")
    (synopsis
     "A preprocessor that helps with writing Haskell bindings to C code")
    (description
     "The hsc2hs program can be used to automate some parts of the
process of writing Haskell bindings to C code.  It reads an
almost-Haskell source file with embedded special constructs, and
outputs a real Haskell file with these constructs processed, based
on information taken from some C headers.  The extra constructs
provide Haskell counterparts of C types, values of C constants,
including sizes of C types, and access to fields of C structs.

For more details, see the
<http://downloads.haskell.org/~ghc/master/users-guide/utils.html#writing-haskell-interfaces-to-c-code-hsc2hs hsc2hs section>
in the GHC User's Guide.")
    (license license:bsd-3)))

haskell-8.4-hsc2hs

(define-public haskell-8.4-hslua-aeson
  (package
    (name "haskell-8.4-hslua-aeson")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-aeson/hslua-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qfqq2xz5jqws1bh7iwznnv50kgqc1v5xxvnrraqkmz7hh4wyam2"))))
    (properties `((upstream-name . "hslua-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hslua)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/tarleb/hslua-aeson#readme")
    (synopsis "Allow aeson data types to be used with lua.")
    (description "This package provides instances to push and receive any
datatype encodable as JSON to and from the Lua stack.")
    (license license:expat)))

haskell-8.4-hslua-aeson

(define-public haskell-8.4-hslua-module-text
  (package
    (name "haskell-8.4-hslua-module-text")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-text/hslua-module-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bcfpb1dhnxp0gr376ai4w7vczr9zrjl1r3r6w7kcxivfkwq9cxf"))))
    (properties `((upstream-name . "hslua-module-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vajlsd7y6pwa08635q0cx8z5c1c55bk7fvavw7g2vmyvxqjzx6n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hslua)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/hslua/hslua-module-test")
    (synopsis "Lua module for text")
    (description "UTF-8 aware subset of Lua's `string` module.")
    (license license:expat)))

haskell-8.4-hslua-module-text

(define-public haskell-8.4-htoml
  (package
    (name "haskell-8.4-htoml")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/htoml/htoml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vw59kmwwqcr6ja9rx2q5l7s78n384cl7fdbq1azp03g6a5diy08"))))
    (properties `((upstream-name . "htoml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1aci42zkrsbnxh090aah3j2c094gqkb0yh7i2prvlkhfsfi8r70b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/cies/htoml")
    (synopsis "Parser for TOML files")
    (description "TOML is an obvious and minimal format for config files.

This package provides a TOML parser,
build with the Parsec library. It exposes a JSON
interface using the Aeson library.")
    (license license:bsd-3)))

haskell-8.4-htoml

(define-public haskell-8.4-http-client
  (package
    (name "haskell-8.4-http-client")
    (version "0.5.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client/http-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0irnvrxlsr9f7ybvzbpv24zbq3lhxjzh6bavjnl527020jbl0l4f"))))
    (properties `((upstream-name . "http-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "0xw5ac4cvcd4hcwl7j12adi7sgffjryqhk0x992k3qs1cxyv5028")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "An HTTP client engine")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-8.4-http-client

(define-public haskell-8.4-http-link-header
  (package
    (name "haskell-8.4-http-link-header")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-link-header/http-link-header-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b9a3kax6zvn8aaflys63lanqan65hsv0dr8vwhbpbhyvxrxn9ns"))))
    (properties `((upstream-name . "http-link-header") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0swjwxzghl1vl1j6hfk6lzwz9fcrsvbazinpjf8by6cjn2ylbyyl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis
     "A parser and writer for the HTTP Link header as specified in RFC 5988 \"Web Linking\".")
    (description "https://codeberg.org/valpackett/http-link-header")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-http-link-header

(define-public haskell-8.4-inline-c
  (package
    (name "haskell-8.4-inline-c")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c/inline-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vbfrsqsi7mdziqsnj68bsqlwbqxxhvrmy9rv6w8z18d1m8w3n6h"))))
    (properties `((upstream-name . "inline-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-gsl-example")
       #:cabal-revision
       ("1" "0cvmxab6fp87ad9kyssh9r09nnl24msn53drwfmbb9k9mq2l1dhx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://hackage.haskell.org/package/inline-c")
    (synopsis
     "Write Haskell source files including C code inline. No FFI required.")
    (description
     "See <https://github.com/fpco/inline-c/blob/master/README.md>.")
    (license license:expat)))

haskell-8.4-inline-c

(define-public haskell-8.4-intervals
  (package
    (name "haskell-8.4-intervals")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intervals/intervals-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00vyxf3ba9d7aas3npfapr53w71fslgh69fczjb25axr66fvzqww"))))
    (properties `((upstream-name . "intervals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("4" "1qx3q0v13l1zaln9zdk8chxpxhshbz5x0vqm0qda7d1kpv7h6a7r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "http://github.com/ekmett/intervals")
    (synopsis "Interval Arithmetic")
    (description
     "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.

We do not control the rounding mode of the end points of the interval when
using floating point arithmetic, so be aware that in order to get precise
containment of the result, you will need to use an underlying type with
both lower and upper bounds like 'CReal'")
    (license license:bsd-3)))

haskell-8.4-intervals

(define-public haskell-8.4-io-streams-haproxy
  (package
    (name "haskell-8.4-io-streams-haproxy")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams-haproxy/io-streams-haproxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nh9q158mgnvvb23s5ffg87lkhl5smk039yl43jghxmb214z0bp"))))
    (properties `((upstream-name . "io-streams-haproxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "06c51a057n5bc9xfbp2m4jz5ds4z1xvmsx5mppch6qfwbz7x5i9l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "HAProxy protocol 1.5 support for io-streams")
    (description
     "HAProxy protocol version 1.5 support (see
<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications
using io-streams. The proxy protocol allows information about a networked
peer (like remote address and port) to be propagated through a forwarding
proxy that is configured to speak this protocol.")
    (license license:bsd-3)))

haskell-8.4-io-streams-haproxy

(define-public haskell-8.4-ip6addr
  (package
    (name "haskell-8.4-ip6addr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ip6addr/ip6addr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wc03z05fiylg6fmi0whj8scnm1n81bzmns02zkv1pvysx9bw1g8"))))
    (properties `((upstream-name . "ip6addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-IPv6Addr)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis "Commandline tool to generate IPv6 address text representations")
    (description
     "Commandline tool to generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-8.4-ip6addr

(define-public haskell-8.4-irc-dcc
  (package
    (name "haskell-8.4-irc-dcc")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/irc-dcc/irc-dcc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pyj4ngh6rw0k1cd9nlrhwb6rr3jmpiwaxs6crik8gbl6f3s4234"))))
    (properties `((upstream-name . "irc-dcc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1ya1bl8pdzbs3gxkq7hsyvkaajf8prrdhr1lx5hm9pi1nqsi879z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/JanGe/irc-dcc")
    (synopsis "A DCC message parsing and helper library for IRC clients")
    (description "DCC (Direct Client-to-Client) is an IRC sub-protocol for
establishing and maintaining direct connections to
exchange messages and files.

See <http://www.irchelp.org/irchelp/rfc/ctcpspec.html> for
more details.")
    (license license:expat)))

haskell-8.4-irc-dcc

(define-public haskell-8.4-kanji
  (package
    (name "haskell-8.4-kanji")
    (version "3.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kanji/kanji-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wc17b5515vb19ah7wm1zwmpf7b3jgjzrhk21hk8ysr14pcxwifr"))))
    (properties `((upstream-name . "kanji") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1bcc3kh6kndmkqi3vaxp27mg1qb7xbg1h8pgjc1kk1iawnhl930j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (home-page "https://github.com/fosskers/kanji")
    (synopsis
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji")
    (description
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.")
    (license license:bsd-3)))

haskell-8.4-kanji

(define-public haskell-8.4-leveldb-haskell
  (package
    (name "haskell-8.4-leveldb-haskell")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leveldb-haskell/leveldb-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3csz8zmjjp90ji1yqrc3h7rb1b612i6v4kfwxagswd0s4b05x4"))))
    (properties `((upstream-name . "leveldb-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)))
    (home-page "http://github.com/kim/leveldb-haskell")
    (synopsis "Haskell bindings to LevelDB")
    (description
     "From <http://code.google.com/p/snappy>:

LevelDB is a fast key-value storage library written at Google that provides
an ordered mapping from string keys to string values.


This library provides a Haskell language binding to LeveldDB. It is in very
early stage and has seen very limited testing.

Note: as of v1.3, LevelDB can be built as a shared library. Thus, as of
v0.1.0 of this library, LevelDB is no longer bundled and must be installed
on the target system (version 1.7 or greater is required).")
    (license license:bsd-3)))

haskell-8.4-leveldb-haskell

(define-public haskell-8.4-llvm-hs
  (package
    (name "haskell-8.4-llvm-hs")
    (version "6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/llvm-hs/llvm-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10v13f0pcsjaz7lhpg5wr520qp9rgajbv5c3pqx4v79nmfv797jd"))))
    (properties `((upstream-name . "llvm-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fshared-llvm" "-f-debug")
       #:cabal-revision
       ("2" "08rm1y7icxp2bdmv65n5nxg5mkppqpqd3m62n50gk6991kki9qdf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-llvm-hs-pure)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages llvm) llvm-6)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "General purpose LLVM bindings")
    (description
     "llvm-hs is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,
it uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it
handles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not
only from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.")
    (license license:bsd-3)))

haskell-8.4-llvm-hs

(define-public haskell-8.4-load-env
  (package
    (name "haskell-8.4-load-env")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/load-env/load-env-" version
                    ".tar.gz"))
              (sha256
               (base32
                "063zd2nbwbyndfy1hrir9x270f99wzbyarfj561r9dddak2754w1"))))
    (properties `((upstream-name . "load-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/pbrisbin/load-env#readme")
    (synopsis "Load environment variables from a file.")
    (description
     "Parse a .env file and load any declared variables into the current process's environment. This allows for a .env file to specify development-friendly defaults for configuration values normally set in the deployment environment.")
    (license license:bsd-3)))

haskell-8.4-load-env

(define-public haskell-8.4-logger-thread
  (package
    (name "haskell-8.4-logger-thread")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logger-thread/logger-thread-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ajaq3mfvzy58b3nmbdhkgsqxdcz76flv710fpwzdkv9380582mc"))))
    (properties `((upstream-name . "logger-thread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)))
    (home-page "https://github.com/joe9/logger-thread#readme")
    (synopsis
     "Run FastLogger in a thread and direct all queued messages to it.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-logger-thread

(define-public haskell-8.4-massiv-io
  (package
    (name "haskell-8.4-massiv-io")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-io/massiv-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yah1g7cm959kzzlqkgbzrx5aswd697518v89z7r5380f6hqq4cc"))))
    (properties `((upstream-name . "massiv-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16x597qby7rpffvsd0mzqnx97m3ciqs0733mdgwvdjwrmfjpvfjr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-massiv)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-netpbm)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Import/export of Image files into massiv Arrays")
    (description
     "This package contains functionality for import/export of arrays
into the real world. For now it only has the ability to read/write
image files in various formats.")
    (license license:bsd-3)))

haskell-8.4-massiv-io

(define-public haskell-8.4-mixed-types-num
  (package
    (name "haskell-8.4-mixed-types-num")
    (version "0.3.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixed-types-num/mixed-types-num-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n60s5vy6l6mbc5z7di91whb3hn0qav2c98fmb7l7inxq8abzw3w"))))
    (properties `((upstream-name . "mixed-types-num") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)))
    (home-page "https://github.com/michalkonecny/mixed-types-num")
    (synopsis
     "Alternative Prelude with numeric and logic expressions typed bottom-up")
    (description
     "This package provides a version of Prelude where
unary and binary operations such as @@not@@, @@+@@, @@==@@
have their result type derived from the parameter type(s)
and thus supports mixed-type arithmetic and comparisons.

Partial operations such as division, sqrt and power
do not throw exceptions even when errors such as division by zero
occur.  Instead, these errors are propagated bottom-up in
a bespoke error-accumulating functor.

This library is a by-product of developing the
<https://github.com/michalkonecny/aern2 AERN2> library for interval and exact real computation.
Certain aspects are specifically tailored for interval or exact real arithmetics,
including three-valued numerical comparisons
and distinguishing potential and certain errors.

See module \"MixedTypesNumPrelude\" for further documentation.

/Ghci 8.0.* fails when loading this package/ due to ghc bug <https://ghc.haskell.org/trac/ghc/ticket/13385#ticket 13385>.
This bug does not affect ghci 7.10.3 and ghci 8.2.* and above.")
    (license license:bsd-3)))

haskell-8.4-mixed-types-num

(define-public haskell-8.4-mockery
  (package
    (name "haskell-8.4-mockery")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mockery/mockery-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09ypgm3z69gq8mj6y66ss58kbjnk15r8frwcwbqcfbfksfnfv8dp"))))
    (properties `((upstream-name . "mockery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-logging-facade)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://hackage.haskell.org/package/mockery")
    (synopsis "Support functions for automated testing")
    (description "Support functions for automated testing")
    (license license:expat)))

haskell-8.4-mockery

(define-public haskell-8.4-monad-control
  (package
    (name "haskell-8.4-monad-control")
    (version "1.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-control/monad-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c92833gr6cadidjdp8mlznkpp8lyxl0w3y7d19y8yi3klc3843c"))))
    (properties `((upstream-name . "monad-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/basvandijk/monad-control")
    (synopsis
     "Lift control operations, like exception catching, through monad transformers")
    (description
     "This package defines the type class @@MonadBaseControl@@, a subset of
@@MonadBase@@ into which generic control operations such as @@catch@@ can be
lifted from @@IO@@ or any other base monad. Instances are based on monad
transformers in @@MonadTransControl@@, which includes all standard monad
transformers in the @@transformers@@ library except @@ContT@@.

See the <http://hackage.haskell.org/package/lifted-base lifted-base>
package which uses @@monad-control@@ to lift @@IO@@
operations from the @@base@@ library (like @@catch@@ or @@bracket@@) into any monad
that is an instance of @@MonadBase@@ or @@MonadBaseControl@@.

Note that this package is a rewrite of Anders Kaseorg's @@monad-peel@@
library. The main difference is that this package provides CPS style operators
and exploits the @@RankNTypes@@ and @@TypeFamilies@@ language extensions to
simplify and speedup most definitions.")
    (license license:bsd-3)))

haskell-8.4-monad-control

(define-public haskell-8.4-monad-control-aligned
  (package
    (name "haskell-8.4-monad-control-aligned")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-control-aligned/monad-control-aligned-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xhiw1g0p8zljhy8yz43ljnwhhqn6dwxqi06mdsfji365p9qzrs4"))))
    (properties `((upstream-name . "monad-control-aligned") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/athanclark/monad-control#readme")
    (synopsis
     "Just like monad-control, except less efficient, and the monadic state terms are all * -> *")
    (description "")
    (license license:bsd-3)))

haskell-8.4-monad-control-aligned

(define-public haskell-8.4-mwc-random
  (package
    (name "haskell-8.4-mwc-random")
    (version "0.13.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random/mwc-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05j7yh0hh9nxic3dijmzv44kc6gzclvamdph7sq7w19wq57k6pq6"))))
    (properties `((upstream-name . "mwc-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-math-functions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-statistics)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-mwc-random

(define-public haskell-8.4-netlib-ffi
  (package
    (name "haskell-8.4-netlib-ffi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-ffi/netlib-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ckwa5r8fx2j7qb5phy6gm3xbg9crr9amglcicdxgnzgjd8aap2h"))))
    (properties `((upstream-name . "netlib-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/netlib-ffi/")
    (synopsis "Helper modules for FFI to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-ffi@@ and @@lapack-ffi@@.")
    (license license:bsd-3)))

haskell-8.4-netlib-ffi

(define-public haskell-8.4-om-elm
  (package
    (name "haskell-8.4-om-elm")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/om-elm/om-elm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0i674vjbp03nkr76fdi7bjylv264nxwnxw0ija11fkpd1rdg045g"))))
    (properties `((upstream-name . "om-elm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "https://github.com/owensmurray/om-elm")
    (synopsis "Haskell utilities for building embedded Elm programs.")
    (description "This package provides utilities for serving Elm programs
directly from your Haskell binary. It uses TemplateHaskell
to compile your Elm program at build time, and construct a
WAI Middleware which intercepts requests appropriate to
the Elm program, and passing other requests to a
downstream WAI Application. It is useful for bundling the
browser side of a web application with its backing web
services implementation.")
    (license license:expat)))

haskell-8.4-om-elm

(define-public haskell-8.4-openexr-write
  (package
    (name "haskell-8.4-openexr-write")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openexr-write/openexr-write-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qh5kb3gj746y6s2jggccjgp8qyzdydz016z62854vg39sk5a1ib"))))
    (properties `((upstream-name . "openexr-write") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-vector-split)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "git://klacansky.com/openexr-write.git")
    (synopsis "Library for writing images in OpenEXR HDR file format.")
    (description
     "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-openexr-write

(define-public haskell-8.4-openssl-streams
  (package
    (name "haskell-8.4-openssl-streams")
    (version "1.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openssl-streams/openssl-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pwghr7ygv59k572xsj1j97rilkbjz66qaiyj0ra2wfg6pl70wfw"))))
    (properties `((upstream-name . "openssl-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1004kgdryflpkp19dv4ikilhcn0xbfc5dsp6v3ib34580pcfj7wy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/openssl-streams")
    (synopsis "OpenSSL network support for io-streams.")
    (description
     "The openssl-streams library contains io-streams routines for secure
networking using OpenSSL (by way of HsOpenSSL).")
    (license license:bsd-3)))

haskell-8.4-openssl-streams

(define-public haskell-8.4-path-io
  (package
    (name "haskell-8.4-path-io")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g9m3qliqjk1img894wsb89diym5zrq51qkkrwhz4sbm9a8hbv1a"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1h9hsibbflkxpjl2fqamqiv3x3gasf51apnmklrs9l9x8r32hzcc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-8.4-path-io

(define-public haskell-8.4-pdfinfo
  (package
    (name "haskell-8.4-pdfinfo")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-process-extras)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)))
    (home-page "https://github.com/chrisdone/pdfinfo")
    (synopsis "Wrapper around the pdfinfo command.")
    (description
     "Just a wrapper around the pdfinfo command (for collecting PDF file info). See man pdfinfo.")
    (license license:bsd-3)))

haskell-8.4-pdfinfo

(define-public haskell-8.4-pipes-wai
  (package
    (name "haskell-8.4-pipes-wai")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-wai/pipes-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0akd0n2qgv32pcq717j2xr2g29qmaz2v610ddx7vc4hc2kgp19h4"))))
    (properties `((upstream-name . "pipes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "http://github.com/iand675/pipes-wai")
    (synopsis "A port of wai-conduit for the pipes ecosystem")
    (description
     "A light-weight wrapper around Network.Wai to provide easy pipes support.")
    (license license:expat)))

haskell-8.4-pipes-wai

(define-public haskell-8.4-prettyprinter
  (package
    (name "haskell-8.4-prettyprinter")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter/prettyprinter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kvza7jp5n833m8rj0bc35bd2p8wx3fq0iqflm9nbh3wm05kwrg7"))))
    (properties `((upstream-name . "prettyprinter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildreadme")
       #:cabal-revision
       ("1" "133n28la2dxhpvm5zbarcf0yc9hpl97lkjds3wxzgl7irfyk9w7n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-pgp-wordlist)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "A modern, easy to use, well-documented, extensible pretty-printer.")
    (description
     "A modern, easy to use, well-documented, extensible pretty-printer. For more see README.md")
    (license license:bsd-2)))

haskell-8.4-prettyprinter

(define-public haskell-8.4-pushbullet-types
  (package
    (name "haskell-8.4-pushbullet-types")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pushbullet-types/pushbullet-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ny8nlk50cn6zgikg7xwylkrablj05vcm5gjm9y4zdzhbz7s4qb4"))))
    (properties `((upstream-name . "pushbullet-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/pushbullet-types")
    (synopsis "Datatypes used by the Pushbullet APIs")
    (description "")
    (license license:expat)))

haskell-8.4-pushbullet-types

(define-public haskell-8.4-rainbow
  (package
    (name "haskell-8.4-rainbow")
    (version "0.30.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbow/rainbow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1isy1xfgsp25x0254gmqkakc185g87wil3n19w5s1rn3bfq1w0my"))))
    (properties `((upstream-name . "rainbow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-lens-simple)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-rainbow

(define-public haskell-8.4-rank2classes
  (package
    (name "haskell-8.4-rank2classes")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rank2classes/rank2classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iw2xanyv7rw995sy3c0dvkjl3js4bd7n2hz0x509pkz8hzsa93w"))))
    (properties `((upstream-name . "rank2classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse-template-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)))
    (home-page "https://github.com/blamario/grampa/tree/master/rank2classes")
    (synopsis
     "standard type constructor class hierarchy, only with methods of rank 2 types")
    (description
     "A mirror image of the standard type constructor class hierarchy rooted in 'Functor', except with methods of rank 2
types and class instances of kind @@(k->*)->*@@. The classes enable generic handling of heterogenously typed data
structures and other neat tricks.")
    (license license:bsd-3)))

haskell-8.4-rank2classes

(define-public haskell-8.4-regex-applicative-text
  (package
    (name "haskell-8.4-regex-applicative-text")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative-text/regex-applicative-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ng2qhk4mvpzl8fx91ig7ldv09v9aqdsvn6yl9yjapc6h0ghb4xh"))))
    (properties `((upstream-name . "regex-applicative-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0v4k5hvqcabgiiycn4xayg9kahwifqg4nc0m1wkm3ixcywwg8i88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-regex-applicative)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-8.4-regex-applicative-text

(define-public haskell-8.4-require
  (package
    (name "haskell-8.4-require")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/require/require-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cf19mcjmqn50gz2fc32b67s8za6bb7i2k0h6sj25b457xv9rdx2"))))
    (properties `((upstream-name . "require") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-universum)))
    (home-page "https://github.com/theam/require#readme")
    (synopsis "Scrap your qualified import clutter")
    (description "See <https://theam.github.io/require>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-require

(define-public haskell-8.4-reroute
  (package
    (name "haskell-8.4-reroute")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/reroute/reroute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wl7g4z37rwghckwpi34qgg5b3rdy9h1zyf8dcgrm6hdfaabp65r"))))
    (properties `((upstream-name . "reroute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1lyrm0ca4a9312b26a5gsi1s9vr6b6vlizwblc49h33hviy78q1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hvect)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/agrafix/Spock")
    (synopsis "abstract implementation of typed and untyped web routing")
    (description
     "abstraction over how urls with/without parameters are mapped to their corresponding handlers")
    (license license:expat)))

haskell-8.4-reroute

(define-public haskell-8.4-serialise
  (package
    (name "haskell-8.4-serialise")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serialise/serialise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17m1xs3hdvbkba1b8qjcv58drhl2wgvjkp7a2m38mkwn6xxvpg1k"))))
    (properties `((upstream-name . "serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime15")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cborg)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-half)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A binary serialisation library for Haskell values.")
    (description
     "This package (formerly @@binary-serialise-cbor@@) provides pure, efficient
serialization of Haskell values directly into @@ByteString@@s for storage or
transmission purposes. By providing a set of type class instances, you can
also serialise any custom data type you have as well.

The underlying binary format used is the 'Concise Binary Object
Representation', or CBOR, specified in RFC 7049. As a result,
serialised Haskell values have implicit structure outside of the
Haskell program itself, meaning they can be inspected or analyzed
without custom tools.

An implementation of the standard bijection between CBOR and JSON is provided
by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility for
working with CBOR data.")
    (license license:bsd-3)))

haskell-8.4-serialise

(define-public haskell-8.4-servant
  (package
    (name "haskell-8.4-servant")
    (version "0.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servant/servant-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "083layvq76llq3y49k27cdqzxka6mjgw541jhzndxx4avlcjzym7"))))
    (properties `((upstream-name . "servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1n9lwm77w0xi6jzqrhyn6akf71z140wngj4s5x2zkndq8wmg4rg4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-natural-transformation)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-singleton-bool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-string-conversions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://haskell-servant.readthedocs.org/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.4-servant

(define-public haskell-8.4-serversession
  (package
    (name "haskell-8.4-serversession")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession/serversession-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08j8v6a2018bmvwsb7crdg0ajak74jggb073pdpx9s0pf3cfzyrz"))))
    (properties `((upstream-name . "serversession") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0i5faxzxgvpfylmrr175f8l4asyh4phncc90jkfag53gnspcv028")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-nonce)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "Secure, modular server-side sessions.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession>")
    (license license:expat)))

haskell-8.4-serversession

(define-public haskell-8.4-silently
  (package
    (name "haskell-8.4-silently")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/silently/silently-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f9qm3f7y0hpxn6mddhhg51mm1r134qkvd2kr8r6192ka1ijbxnf"))))
    (properties `((upstream-name . "silently") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-nanospec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/hspec/silently")
    (synopsis "Prevent or capture writing to stdout and other handles.")
    (description "Prevent or capture writing to stdout and other handles.")
    (license license:bsd-3)))

haskell-8.4-silently

(define-public haskell-8.4-singletons
  (package
    (name "haskell-8.4-singletons")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons/singletons-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kzrl9njvkbvxylk9jg61vy3ksmxmzymci5hdp0ilpsah4620yjx"))))
    (properties `((upstream-name . "singletons") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vz1b9a2hmdjxdf3pvzpcd0qp1rgn631vrsy9ppzm5wgh5nzb89d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-th-desugar)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A framework for generating singleton types")
    (description
     "This library generates singleton types, promoted functions, and singleton
functions using Template Haskell. It is useful for programmers who wish
to use dependently typed programming techniques. The library was originally
presented in /Dependently Typed Programming with Singletons/, published
at the Haskell Symposium, 2012.
(<https://cs.brynmawr.edu/~rae/papers/2012/singletons/paper.pdf>)
Version 1.0 and onwards works a lot harder to promote functions. See the
paper published at Haskell Symposium, 2014:
<https://cs.brynmawr.edu/~rae/papers/2014/promotion/promotion.pdf>.")
    (license license:bsd-3)))

haskell-8.4-singletons

(define-public haskell-8.4-streaming
  (package
    (name "haskell-8.4-streaming")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming/streaming-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04fdw4f51yb16bv3b7z97vqxbns8rv2ag2aphglm29jsd527fsss"))))
    (properties `((upstream-name . "streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0cfxibcf0lkzbbyxl96dpnmacxv39ljwrlr3935bxykihr83j9xf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming")
    (synopsis "an elementary streaming prelude and general stream type.")
    (description
     "This package contains two modules, <http://hackage.haskell.org/package/streaming/docs/Streaming.html Streaming>
and <http://hackage.haskell.org/package/streaming/docs/Streaming-Prelude.html Streaming.Prelude>.
The principal module, <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming-Prelude.html Streaming.Prelude>, exports an elementary streaming prelude focused on
a simple \\\"source\\\" or \\\"producer\\\" type, namely @@Stream (Of a) m r@@.
This is a sort of effectful version of
@@([a],r)@@ in which successive elements of type @@a@@ arise from some sort of monadic
action before the succession ends with a value of type @@r@@.
Everything in the library is organized to make
programming with this type as simple as possible,
by the simple expedient of making it as close to @@Prelude@@
and @@Data.List@@ as possible. Thus for example
the trivial program

> >>> S.sum $ S.take 3 (S.readLn :: Stream (Of Int) IO ())
> 1<Enter>
> 2<Enter>
> 3<Enter>
> 6 :> ()

sums the first three valid integers from user input. Similarly,

> >>> S.stdoutLn $ S.map (map toUpper) $ S.take 2 S.stdinLn
> hello<Enter>
> HELLO
> world!<Enter>
> WORLD!

upper-cases the first two lines from stdin as they arise,
and sends them to stdout. And so on,
with filtering, mapping, breaking, chunking, zipping, unzipping, replicating
and so forth:
we program with streams of @@Int@@s or @@String@@s directly as
if they constituted something like a list. That's because streams really do constitute something
like a list, and the associated operations can mostly have the same names.
(A few, like @@reverse@@, don't stream and thus disappear;
others like @@unzip@@ are here given properly streaming formulation for the first time.)
And we everywhere
oppose \\\"extracting a pure list from IO\\\",
which is the origin of typical Haskell memory catastrophes.
Basically any case where you are
tempted to use @@mapM@@, @@replicateM@@, @@traverse@@ or @@sequence@@
with Haskell lists, you would do better to use something like
@@Stream (Of a) m r@@. The type signatures are a little fancier, but
the programs themselves are mostly the same. /In fact, they are mostly simpler./ Thus,
consider the trivial demo program mentioned in
<http://stackoverflow.com/questions/24068399/haskell-performance-of-iorefs this SO question>

> main = mapM newIORef [1..10^8::Int] >>= mapM readIORef >>= mapM_ print

The new user notices that this exhausts memory, and worries about the efficiency of Haskell @@IORefs@@.
But of course it exhausts memory! Look what it says!
The problem is immediately cured by writing

> main = S.print $ S.mapM readIORef $ S.mapM newIORef $ S.each [1..10^8::Int]

which really does what the other program was meant to do,
uses no more memory than @@hello-world@@, /and is simpler anyway/, since it
doesn't involve the detour of \\\"extracting a list from IO\\\". Almost
every use of list @@mapM@@, @@replicateM@@, @@traverse@@ and @@sequence@@ produces
this problem on a smaller scale. People get used to it, as if it were
characteristic of Haskell programs to use a lot of memory. But in truth
\\\"extracting a list or sequence from IO\\\" is mostly just bad practice pure and simple.
Of course, @@mapM@@, @@replicateM@@, @@traverse@@ and @@sequence@@ make sense for lists,
under certain conditions! But @@unsafePerformIO@@ also makes sense under
certain conditions.

The <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming.html Streaming> module exports the general type,
@@Stream f m r@@, which can be used to stream successive distinct
steps characterized by /any/
functor @@f@@, though we are mostly interested in organizing computations
of the form @@Stream (Of a) m r@@. The streaming-IO libraries have
various devices for dealing
with effectful variants of @@[a]@@ or @@([a],r)@@ in which the emergence of
successive elements somehow depends on IO. But it is only with
the general type @@Stream f m r@@, or some equivalent,
that one can envisage (for example) the connected streaming of their
sorts of stream - as one makes lists of lists in the Haskell
@@Prelude@@ and @@Data.List@@. One needs some such type if we are
to express properly streaming equivalents of e.g.

> group :: Ord a => [a] -> [[a]]
> chunksOf :: Int -> [a] -> [[a]]
> lines :: [Char] -> [[Char]] -- but similarly with byte streams, etc.

to mention a few obviously desirable operations.
(This is explained more elaborately in the <https://hackage.haskell.org/package/streaming#readme readme> below.)

One could of course throw something
like the present @@Stream@@ type on top of a prior stream concept: this is how @@pipes@@ and
@@pipes-group@@ (which are very much our model here) use @@FreeT@@.
But once one grasps the iterable stream concept needed to express
those functions then one will also see that,
with it, one is /already/ in possession of a complete
elementary streaming library - since one possesses @@Stream ((,) a) m r@@
or equivalently @@Stream (Of a) m r@@. This
is the type of a \\'generator\\' or \\'producer\\' or \\'source\\' or whatever
you call an effectful stream of items.
/The present Streaming.Prelude is thus the simplest streaming library that can replicate anything like the API of the Prelude and Data.List/.

The emphasis of the library is on interoperation; for
the rest its advantages are: extreme simplicity, re-use of
intuitions the user has gathered from mastery of @@Prelude@@ and
@@Data.List@@, and a total and systematic rejection of type synonyms.
The two conceptual pre-requisites are some
comprehension of monad transformers and some familiarity
with \\'rank 2 types\\'. It is hoped that experimentation with this
simple material, starting with the ghci examples in @@Streaming.Prelude@@,
will give people who are new to these concepts some
intuition about their importance. The most fundamental purpose of the
library is to express elementary streaming ideas without reliance on
a complex framework, but in a way that integrates transparently with
the rest of Haskell, using ideas - e.g. rank 2 types, which are here
implicit or explicit in most mapping - that the user can carry elsewhere,
rather than chaining her understanding to the curiosities of
a so-called streaming IO framework (as necessary as that is for certain purposes.)

See the
<https://hackage.haskell.org/package/streaming#readme readme>
below for further explanation, including the examples linked there.
Elementary usage can be divined from the ghci examples in
@@Streaming.Prelude@@ and perhaps from this rough beginning of a
<https://github.com/michaelt/streaming-tutorial/blob/master/tutorial.md tutorial>.
Note also the
<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>
and
<https://hackage.haskell.org/package/streaming-utils streaming utils>
packages. Questions about usage can be put
raised on StackOverflow with the tag @@[haskell-streaming]@@,
or as an issue on Github, or on the
<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>
(the package understands itself as part of the pipes \\'ecosystem\\'.)

The simplest form of interoperation with
<http://hackage.haskell.org/package/pipes pipes>
is accomplished with this isomorphism:

> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r
> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r

Interoperation with
<http://hackage.haskell.org/package/io-streams io-streams>
is thus:

> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()
> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)

With
<http://hackage.haskell.org/package/conduit conduit>
one might use, e.g.:

> Conduit.unfoldM Streaming.uncons                        :: Stream (Of a) m () -> Source m a
> \\str -> Streaming.mapM_ Conduit.yield (hoist lift str)  :: Stream (Of o) m r  -> ConduitM i o m r
> \\src -> hoist lift str $$ Conduit.mapM_ Streaming.yield :: Source m a         -> Stream (Of a) m ()

These conversions should never be more expensive than a single @@>->@@ or @@=$=@@.
The simplest interoperation with regular Haskell lists is provided by, say

> Streaming.each                                 :: [a]               -> Stream (Of a) m ()
> Streaming.toList_                              :: Stream (Of a) m r -> m [a]

The latter of course accumulates the whole list in memory, and is mostly what we are trying
to avoid. Every use of @@Prelude.mapM f@@ should be reconceived as using the
composition @@Streaming.toList_ . Streaming.mapM f . Streaming.each@@ with a view to
considering whether the accumulation required by @@Streaming.toList_@@ is really necessary.

Here are the results of some
<https://gist.github.com/michaelt/96606bbf05b29bf43a05aba081dc9bd4#file-benchmachines-hs microbenchmarks>
based on the
<https://github.com/ekmett/machines/blob/master/benchmarks/Benchmarks.hs benchmarks>
included in the machines package:

<<http://i.imgur.com/YbQtlXm.png>>

Because these are microbenchmarks for individual functions,
they represent a sort of \\\"worst case\\\"; many other factors can influence
the speed of a complex program.
")
    (license license:bsd-3)))

haskell-8.4-streaming

(define-public haskell-8.4-tasty-golden
  (package
    (name "haskell-8.4-tasty-golden")
    (version "2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-golden/tasty-golden-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k3ibjhjc9vcwzrjnl4rnwvfm8l81q347nb7dgvcib6n5wm3s404"))))
    (properties `((upstream-name . "tasty-golden") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-temporary-rc)))
    (home-page "https://github.com/feuerbach/tasty-golden")
    (synopsis "Golden tests support for tasty")
    (description
     "This package provides support for «golden testing».
A golden test is an IO action that writes its result to a file.
To pass the test, this output file should be identical to the corresponding
«golden» file, which contains the correct result for the test.
To get started with golden testing and this library, see
<https://ro-che.info/articles/2017-12-04-golden-tests Introduction to golden testing>.")
    (license license:expat)))

haskell-8.4-tasty-golden

(define-public haskell-8.4-tasty-silver
  (package
    (name "haskell-8.4-tasty-silver")
    (version "3.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-silver/tasty-silver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6cz0z8xmhc3gqyb68lkx0j94kagbdgc5gagknmfj6an2i33fly"))))
    (properties `((upstream-name . "tasty-silver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1bp36v0q50s4j5a2z55b0mwq2vz1avn6ms1vv6mx3x4h5mkzali0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-process-extras)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/phile314/tasty-silver")
    (synopsis "A fancy test runner, including support for golden tests.")
    (description
     "This package provides a fancy test runner and support for «golden testing».
A golden test is an IO action that writes its result to a file.
To pass the test, this output file should be identical to the corresponding
«golden» file, which contains the correct result for the test.
The test runner allows filtering tests using regexes, and to interactively
inspect the result of golden tests.
This package is a heavily extended fork of tasty-golden.")
    (license license:expat)))

haskell-8.4-tasty-silver

(define-public haskell-8.4-texmath
  (package
    (name "haskell-8.4-texmath")
    (version "0.11.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wac48qlcwrfm5j1yng27929iqnj2x0zkj7ffrwkj3rchf0i4grp"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-pandoc-types)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (home-page "http://github.com/jgm/texmath")
    (synopsis "Conversion between formats used to represent mathematics.")
    (description "The texmath library provides functions to read and
write TeX math, presentation MathML, and OMML (Office
Math Markup Language, used in Microsoft Office).
Support is also included for converting math formats
to Gnu eqn and to pandoc's native format (allowing
conversion, via pandoc, to a variety of different
markup formats).  The TeX reader supports basic LaTeX
and AMS extensions, and it can parse and apply LaTeX
macros.  (See <http://johnmacfarlane.net/texmath here>
for a live demo of bidirectional conversion between LaTeX
and MathML.)

The package also includes several utility modules which
may be useful for anyone looking to manipulate either
TeX math or MathML.  For example, a copy of the MathML
operator dictionary is included.

Use the @@executable@@ flag to install a standalone
executable, @@texmath@@, that by default reads a LaTeX
formula from @@stdin@@ and writes MathML to @@stdout@@.
With flags all the functionality exposed by
'Text.TeXMath' can be accessed through this executable.
(Use the @@--help@@ flag for a description of all
functionality)

The @@texmath@@ executable can also be used as a CGI
script, when renamed as @@texmath-cgi@@.
It will expect query parameters for @@from@@, @@to@@,
@@input@@, and optionally @@inline@@, and return a JSON
object with either @@error@@ and a message or
@@success@@ and the converted result.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-texmath

(define-public haskell-8.4-throttle-io-stream
  (package
    (name "haskell-8.4-throttle-io-stream")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/throttle-io-stream/throttle-io-stream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13icrx3nrgidnb7j3ixqz93rcsc63qmczkvjyg74pjrb0rlsi5z8"))))
    (properties `((upstream-name . "throttle-io-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-say)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/mtesseract/throttle-io-stream#readme")
    (synopsis "Throttler between arbitrary IO producer and consumer functions")
    (description
     "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.")
    (license license:bsd-3)))

haskell-8.4-throttle-io-stream

(define-public haskell-8.4-time-parsers
  (package
    (name "haskell-8.4-time-parsers")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-parsers/time-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "091wpcqj1kjvyjgj1y1invn0g5lhdxc92az2bcbwbrpq2c7x8l2f"))))
    (properties `((upstream-name . "time-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0im963wjcmwf6ii9a00mbi8lhmx5cy7cs6rmp0qi2j2jddba78j2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)))
    (home-page "https://github.com/phadej/time-parsers#readme")
    (synopsis "Parsers for types in `time`.")
    (description
     "Parsers for types in `time` using 'parser' library.

Originally forked from aeson parsers.

See also <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.")
    (license license:bsd-3)))

haskell-8.4-time-parsers

(define-public haskell-8.4-tinylog
  (package
    (name "haskell-8.4-tinylog")
    (version "0.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tinylog/tinylog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01yz41l45qmc878gzhbchzkvr4ha2cfmvvjv31hwivgwgl8rcgni"))))
    (properties `((upstream-name . "tinylog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-double-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unix-time)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://gitlab.com/twittner/tinylog/")
    (synopsis "Simplistic logging using fast-logger.")
    (description "Trivial logger on top of fast-logger.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-tinylog

(define-public haskell-8.4-tmp-postgres
  (package
    (name "haskell-8.4-tmp-postgres")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-postgres/tmp-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qz85flbg2ihkcsjdhambgj07xrz75pgpiz8wpapj0gnady5ap9c"))))
    (properties `((upstream-name . "tmp-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/tmp-postgres#readme")
    (synopsis "Start and stop a temporary postgres for testing")
    (description
     "This module provides functions creating a temporary postgres instance on a random port for testing.

> result <- start []
> case result of
>   Left err -> print err
>   Right tempDB -> do
>     -- Do stuff
>     stop tempDB

The are few different methods for starting @@postgres@@ which provide different
methods of dealing with @@stdout@@ and @@stderr@@.

The start methods use a config based on the one used by pg_tmp (http://ephemeralpg.org/), but can be overriden
by different values to the first argument of the start functions.

WARNING!!
Ubuntu's PostgreSQL installation does not put @@initdb@@ on the @@PATH@@. We need to add it manually. The necessary binaries are in the @@\\/usr\\/lib\\/postgresql\\/VERSION\\/bin\\/@@ directory, and should be added to the @@PATH@@

> echo \"export PATH=$PATH:/usr/lib/postgresql/VERSION/bin/\" >> /home/ubuntu/.bashrc
")
    (license license:bsd-3)))

haskell-8.4-tmp-postgres

(define-public haskell-8.4-tree-diff
  (package
    (name "haskell-8.4-tree-diff")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-diff/tree-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zlviaikyk50l577q7h06w5z058v1ngjlhwzfn965xkp978hnsgq"))))
    (properties `((upstream-name . "tree-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "07pz7mhzvh7iwgn2rvw29valfdm4y845zqqffxb89ywbb6gnm8x8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-MemoTrie)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/phadej/tree-diff")
    (synopsis "Diffing of (expression) trees.")
    (description
     "Common diff algorithm works on list structures:

@@
diff :: Eq a => [a] -> [a] -> [Edit a]
@@

This package works on trees.

@@
treeDiff :: Eq a => Tree a -> Tree a -> Edit (EditTree a)
@@

This package also provides a way to diff arbitrary ADTs,
using @@Generics@@-derivable helpers.

This package differs from <http://hackage.haskell.org/package/gdiff gdiff>,
in a two ways: @@tree-diff@@ doesn't have patch function,
and the \"edit-script\" is a tree itself, which is useful for pretty-printing.

@@
>>> prettyEditExpr $ ediff (Foo 42 [True, False] \"old\") (Foo 42 [False, False, True] \"new\")
Foo
@{fooBool = [-True, +False, False, +True],
fooInt = 42,
fooString = -\"old\" +\"new\"@}
@@")
    (license license:bsd-3)))

haskell-8.4-tree-diff

(define-public haskell-8.4-typed-process
  (package
    (name "haskell-8.4-typed-process")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typed-process/typed-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j36vrc9w841m5qbwqra1lwiznx31xfnhin1sm8x2c2739csbpn0"))))
    (properties `((upstream-name . "typed-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05mg8cggrdvplb7l3rgdfrn2rnrbxx394qi37n0ldfr6v3jirf0p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://haskell-lang.org/library/typed-process")
    (synopsis "Run external processes, with strong typing of streams")
    (description
     "Please see the tutorial at <https://haskell-lang.org/library/typed-process>")
    (license license:expat)))

haskell-8.4-typed-process

(define-public haskell-8.4-users-postgresql-simple
  (package
    (name "haskell-8.4-users-postgresql-simple")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/users-postgresql-simple/users-postgresql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0061dvlj706rqrfq4wyqx0ylghac13j0x9bicb5smpkckhn5s6q5"))))
    (properties `((upstream-name . "users-postgresql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-users)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "A PostgreSQL backend for the users package")
    (description
     "This library is a backend driver using <http://hackage.haskell.org/package/postgresql-simple postgresql-simple> for
<http://hackage.haskell.org/package/users the \"users\" library>.

It supports all postgres versions starting from 8.3 and requires the included extensions uuid-ossp.

The package itself does not expose any bindings but provides an instance for 'UserStorageBackend'.

Usage:

> module Foo where
> import Web.Users.Types
> import Web.Users.Postgresql ()
> -- code goes here")
    (license license:expat)))

haskell-8.4-users-postgresql-simple

(define-public haskell-8.4-users-test
  (package
    (name "haskell-8.4-users-test")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/users-test/users-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gmcbimbp8sj282c915m9bka4fj238xsf8szqmnv20n01kx4k1gn"))))
    (properties `((upstream-name . "users-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-users)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "Library to test backends for the users library")
    (description
     "Provides HSpec helpers for backends of <http://hackage.haskell.org/package/users users package>.

All backend packages should conform to this specification.")
    (license license:expat)))

haskell-8.4-users-test

(define-public haskell-8.4-validity-aeson
  (package
    (name "haskell-8.4-validity-aeson")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-aeson/validity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "010x1sprssj282gv85n63955fmn6ngz6h6qii3174vrxrwlkvh7s"))))
    (properties `((upstream-name . "validity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l71imxhynk6rxyfs7fklg86mcf9zmnvm8jhd4cxfhz602j2xw5q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-text)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for aeson")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-aeson

(define-public haskell-8.4-vector-mmap
  (package
    (name "haskell-8.4-vector-mmap")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-mmap/vector-mmap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12l6ka6vgl5g193sycn3k6gr2q3k64jaq196p825vawh46qdsfg5"))))
    (properties `((upstream-name . "vector-mmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/pumpkin/vector-mmap")
    (synopsis "Memory map immutable and mutable vectors")
    (description "Memory map immutable and mutable vectors.")
    (license license:bsd-3)))

haskell-8.4-vector-mmap

(define-public haskell-8.4-vector-space
  (package
    (name "haskell-8.4-vector-space")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-space/vector-space-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05yn93vnhzhpp2i6qb4b3dasvmpk71rab6vhssqvpb3qhdvxb482"))))
    (properties `((upstream-name . "vector-space") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1p9vibym0ggr1rjyak0wphswdl4vik2b2w85afgvyj9zn32w28bw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-Boolean)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-MemoTrie)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-NumInstances)))
    (home-page "https://hackage.haskell.org/package/vector-space")
    (synopsis "Vector & affine spaces, linear maps, and derivatives")
    (description
     "/vector-space/ provides classes and generic operations for vector
spaces and affine spaces.  It also defines a type of infinite towers
of generalized derivatives.  A generalized derivative is a linear
transformation rather than one of the common concrete representations
(scalars, vectors, matrices, ...).

/Warning/: this package depends on type families working fairly well,
requiring GHC version at least 6.9.

Project wiki page: <http://haskell.org/haskellwiki/vector-space>

&#169; 2008-2012 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.4-vector-space

(define-public haskell-8.4-wai-cors
  (package
    (name "haskell-8.4-wai-cors")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-cors/wai-cors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11m9d8hn9pb9brprz0kglldmcqj83kjkjdwdpxdbl12430ii1ina"))))
    (properties `((upstream-name . "wai-cors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers-3" "-f-wai-1" "-f-wai-2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "https://github.com/larskuhtz/wai-cors")
    (synopsis "CORS for WAI")
    (description "This package provides an implemenation of
Cross-Origin resource sharing (CORS) for
<http://hackage.haskell.org/package/wai Wai>
that aims to be compliant with <http://www.w3.org/TR/cors>.")
    (license license:expat)))

haskell-8.4-wai-cors

(define-public haskell-8.4-wai-eventsource
  (package
    (name "haskell-8.4-wai-eventsource")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-eventsource/wai-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5zlqky7ldqbmiaixizhk1s8ghf5i3ha1xfz8flxgzr7gr0al3q"))))
    (properties `((upstream-name . "wai-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI support for server-sent events (deprecated)")
    (description "Since WAI 3.0, this code has been merged into wai-extra.")
    (license license:expat)))

haskell-8.4-wai-eventsource

(define-public haskell-8.4-wai-logger
  (package
    (name "haskell-8.4-wai-logger")
    (version "2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-logger/wai-logger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0w5ldq4gplc16zzk5ikmbbjw79imaqvw8p6lylaw3hlsbn3zzm4d"))))
    (properties `((upstream-name . "wai-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1xffnd0ia4bnl37sbc3vyvb2s2jw1bff811wf41mhi32a10hb7da")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteorder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unix-time)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "https://hackage.haskell.org/package/wai-logger")
    (synopsis "A logging system for WAI")
    (description "A logging system for WAI")
    (license license:bsd-3)))

haskell-8.4-wai-logger

(define-public haskell-8.4-wai-middleware-caching
  (package
    (name "haskell-8.4-wai-middleware-caching")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching/wai-middleware-caching-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13fp08ba46wn7gianfbirag8yj14s2x41fkhdb5mx7arjafgpd8m"))))
    (properties `((upstream-name . "wai-middleware-caching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme")
    (synopsis "WAI Middleware to cache things")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-wai-middleware-caching

(define-public haskell-8.4-wai-session
  (package
    (name "haskell-8.4-wai-session")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session/wai-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lq0gqndb9simd1zkz355m604dwrpcdwxcl3bgagi6kb8h12fffj"))))
    (properties `((upstream-name . "wai-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "https://github.com/singpolyma/wai-session")
    (synopsis "Flexible session middleware for WAI")
    (description
     "Provides a generic, cookie-based middleware for sessions that is
parameterised over the session store, the cookie name, and the
cookie parameters (such as path, expiry, etc).  Passes a pair of
functions (lookup key, set key) for the current session through the
'Vault' in the 'Request'.

Also provides a simple example session store based on threadsafe
'IORef's and 'Data.Map'.

See example/Main.hs in git for example usage.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-wai-session

(define-public haskell-8.4-wave
  (package
    (name "haskell-8.4-wave")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wave/wave-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03zycmwrchhqvi37fdvlzz2d1vl4hy0i8xyys1zznw38qfq0h2i5"))))
    (properties `((upstream-name . "wave") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0zs0mw42z9xzs1r935pd5dssf0x10qbkhxlpfknv0x75n2k0azzj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/mrkkrp/wave")
    (synopsis "Work with WAVE and RF64 files")
    (description "Work with WAVE and RF64 files.")
    (license license:bsd-3)))

haskell-8.4-wave

(define-public haskell-8.4-web-routes-hsp
  (package
    (name "haskell-8.4-web-routes-hsp")
    (version "0.24.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-hsp/web-routes-hsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1arc22l7xk49fp80i1fkvj8xj71lqxrs2g5gnvjzwlkc0azzaz6a"))))
    (properties `((upstream-name . "web-routes-hsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-hsp)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-web-routes)))
    (home-page "https://hackage.haskell.org/package/web-routes-hsp")
    (synopsis "Adds XMLGenerator instance for RouteT monad")
    (description
     "The module makes it easy to use type-safe URLs in HSP templates")
    (license license:bsd-3)))

haskell-8.4-web-routes-hsp

(define-public haskell-8.4-web-routes-wai
  (package
    (name "haskell-8.4-web-routes-wai")
    (version "0.24.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-wai/web-routes-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j9h22nsj7zf5qpf4i07jdcih00r2fivdilvj8wsylk4d23x27wf"))))
    (properties `((upstream-name . "web-routes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-web-routes)))
    (home-page "https://hackage.haskell.org/package/web-routes-wai")
    (synopsis
     "Library for maintaining correctness of URLs within an application.")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-8.4-web-routes-wai

(define-public haskell-8.4-weigh
  (package
    (name "haskell-8.4-weigh")
    (version "0.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/weigh/weigh-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zw2a997gxgdzqmd7j730kxgynzmjvvlkw84dajmfzf1v9pbij7x"))))
    (properties `((upstream-name . "weigh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02rc1xbsy36pwbmn267ziz170msadhijwmmfypfsldv764b87wl7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/fpco/weigh#readme")
    (synopsis "Measure allocations of a Haskell functions/values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-weigh

(define-public haskell-8.4-wire-streams
  (package
    (name "haskell-8.4-wire-streams")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-binary-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/winterland1989/wire-streams")
    (synopsis "Fast binary io-streams adapter.")
    (description "Fast binary io-streams adapter.")
    (license license:bsd-3)))

haskell-8.4-wire-streams

(define-public haskell-8.4-wl-pprint-console
  (package
    (name "haskell-8.4-wl-pprint-console")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-console/wl-pprint-console-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05dq90zh2ywmaz0z9vr7114f4c6gacp7b7hlbl3sx31km92v8xnb"))))
    (properties `((upstream-name . "wl-pprint-console") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colorful-monoids)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-wl-pprint-annotated)))
    (home-page "https://github.com/minad/wl-pprint-console#readme")
    (synopsis
     "Wadler/Leijen pretty printer supporting colorful console output.")
    (description
     "Wadler/Leijen pretty printer with support for annotations and colorful console output. Additional useful display routines are provided, e.g, for HTML output.")
    (license license:expat)))

haskell-8.4-wl-pprint-console

(define-public haskell-8.4-yi-language
  (package
    (name "haskell-8.4-yi-language")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yi-language/yi-language-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17mnjfhxr6vhpfx7l4zg606f2vffjr39ga4j5qmnp7cf4y5n5vja"))))
    (properties `((upstream-name . "yi-language") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-microlens-platform)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-oo-prototypes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-pointedlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/yi-editor/yi#readme")
    (synopsis "Collection of language-related Yi libraries.")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-yi-language

(define-public haskell-8.4-zip-archive
  (package
    (name "haskell-8.4-zip-archive")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-archive/zip-archive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kf8xyac168bng8a0za2jwrbss7a4ralvci9g54hnvl0gkkxx2lq"))))
    (properties `((upstream-name . "zip-archive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")
       #:cabal-revision
       ("1" "0z0s2abc9bywapjrs8frgz6qdnc0yfc9ac9lyj2p5y2r61jp3y2k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-digest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)
                  (@ (gnu packages compression) unzip)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jgm/zip-archive")
    (synopsis "Library for creating and modifying zip archives.")
    (description
     "The zip-archive library provides functions for creating, modifying,
and extracting files from zip archives.")
    (license license:bsd-3)))

haskell-8.4-zip-archive

