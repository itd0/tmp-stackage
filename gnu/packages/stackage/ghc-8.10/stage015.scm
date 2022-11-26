;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage015)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.10))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.10-ChannelT
  (package
    (name "haskell-8.10-ChannelT")
    (version "0.0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ChannelT/ChannelT-" version
                    ".tar.gz"))
              (sha256
               (base32
                "183pghm74vk1vdcn0mdn6g5q284sncpl1cc49lpczz1wbr15s89y"))))
    (properties `((upstream-name . "ChannelT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/pthariensflame/ChannelT")
    (synopsis "Generalized stream processors")
    (description
     "A mutual generalization of <https://hackage.haskell.org/package/pipes pipes> and <https://hackage.haskell.org/package/machines machines>; a library for exploring a particular corner of the design space of streaming IO (and other related tasks) in Haskell.")
    (license license:bsd-3)))

haskell-8.10-ChannelT

(define-public haskell-8.10-DBFunctor
  (package
    (name "haskell-8.10-DBFunctor")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/DBFunctor/DBFunctor-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ikb4s9g1mrp4pdz1119dq1vci7mfcvcw92xs47rcin26a3ysdcz"))))
    (properties `((upstream-name . "DBFunctor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/nkarag/haskell-DBFunctor#readme")
    (synopsis
     "DBFunctor - Functional Data Management =>  ETL/ELT Data Processing in Haskell")
    (description
     "Please see the README on Github at https://github.com/nkarag/haskell-DBFunctor")
    (license license:bsd-3)))

haskell-8.10-DBFunctor

(define-public haskell-8.10-HaTeX
  (package
    (name "haskell-8.10-HaTeX")
    (version "3.22.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaTeX/HaTeX-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vgyixd8j3nzpy8s04cy3q7gj2gfblba2z0ppr58rdm8qgj16j5c"))))
    (properties `((upstream-name . "HaTeX") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-bibtex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Daniel-Diaz/HaTeX/blob/master/README.md")
    (synopsis "The Haskell LaTeX library.")
    (description
     "This library implements the LaTeX syntax and provides some useful abstractions.

Some of the things you can do with HaTeX are:

* Write LaTeX documents with all the advantages you already have in Haskell: recursion,
type system, high order functions, ...

* Create a LaTeX backend for your own program.

* Parse a LaTeX file and obtain its Abstract Syntax Tree (AST).

* Pretty-print Haskell values in LaTeX.

* Generate TikZ scripts (images!) easily.

Browse the @@examples@@ directory in the source distribution to see some simple examples.
It might help you to get started. The HaTeX User's Guide is available at
<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>.

If you prefer to write in LaTeX and all you want is to /program/ some parts of the document,
or if you already have the LaTeX document written and you just want to add some automatically
generated LaTeX code somewhere, check haskintex: <http://daniel-diaz.github.io/projects/haskintex>.
It allows you to embed Haskell in LaTeX. It also makes you easy to use HaTeX within a LaTeX document.")
    (license license:bsd-3)))

haskell-8.10-HaTeX

(define-public haskell-8.10-PyF
  (package
    (name "haskell-8.10-PyF")
    (version "0.9.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/PyF/PyF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1x1zryq3di5z3mc1wind6ma1b7cpsvf90y7k5dyvwkn1kisz3jf8"))))
    (properties `((upstream-name . "PyF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-python_test")
       #:cabal-revision
       ("1" "11c41wp33h9p77l3d1csdiw203kbpd81f700cfa8dfzyrm7ns7c5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://hackage.haskell.org/package/PyF")
    (synopsis "Quasiquotations for a python like interpolated string formater")
    (description
     "Quasiquotations for a python like interpolated string formater.")
    (license license:bsd-3)))

haskell-8.10-PyF

(define-public haskell-8.10-QuasiText
  (package
    (name "haskell-8.10-QuasiText")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuasiText/QuasiText-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06giw0q5lynx05c4h45zwnlcifg91w291h3gwrg68qsjw9lx40g8"))))
    (properties `((upstream-name . "QuasiText") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-8.10-QuasiText

(define-public haskell-8.10-RSA
  (package
    (name "haskell-8.10-RSA")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/RSA/RSA-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hchsqrxpfw7mqrqwscfy8ig1w2di6w3nxpzi873w0gibv2diibj"))))
    (properties `((upstream-name . "RSA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-SHA)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-crypto-api)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-crypto-pubkey-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/RSA")
    (synopsis
     "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.")
    (description
     "This library implements the RSA encryption and signature
algorithms for arbitrarily-sized ByteStrings. While the
implementations work, they are not necessarily the fastest ones
on the planet. Particularly key generation. The algorithms
included are based of RFC 3447, or the Public-Key Cryptography
Standard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).")
    (license license:bsd-3)))

haskell-8.10-RSA

(define-public haskell-8.10-Rasterific
  (package
    (name "haskell-8.10-Rasterific")
    (version "0.7.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Rasterific/Rasterific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07silf2b85kxq7wvl5mnwrg5p0gwzlapipj9hi224i9ix1knn5f1"))))
    (properties `((upstream-name . "Rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fembed_linear")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-FontyFruity)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/Rasterific")
    (synopsis "A pure haskell drawing engine.")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAA7VBMVEUBhsECh8EFiMIIisMLi8QMjMQOjcQSj8UTj8YVkMYZkscakscbk8ghlskmmMozns02oM44oc86os9CpdFEptJXr9Zbsdddsthes9hhtNljtdlsudtxvNx+wuB/wuCAw+CCxOGDxOGExeGHxuKVzeWb0Oed0Oek1Omm1emo1uqp1uqr1+ux2uyy2uy02+223O294O/J5fLK5vLM5/PN5/PY7PbZ7fbj8vjk8vjl8/nm8/np9frq9frr9vrs9vru9/vw+Pv2+/33+/37/f6g0ug8otBNq9S63u6Jx+IEiMJfs9hzvd3f8Pcqmsv///+OsMg+AAAFP0lEQVR4XuzPSQ0AIAwAQcT15PIvhy8OaMiOg2n7E0TeI0KECJH6iBAhQoQIESJEiEyXGN10ZbvkUusjxGf9yGHvjhpRW8Iwjj+oIIQQlh0FgBARiEIs7eb7f5xzdW5m9j5nzbPe1rwX/b7B343VzDszD+f1yvIs/tfscqV+/qAz5PlksJqHl/zq4ORZVUjnaHMepPnNo46OkNbeElJa2muFDrmvDSFiWLsPF9I7LkNQ+bgXJOSlOgNhM9WXzEPa2znIQ267nWnIUzSJEZmMnjIL6dYKGKFCrZtNSGMBI7bQyCDkbR0ZWH8bdcjFHDIxdzHSkG40gYxMRN3RhbRLyFCpPaqQZhGZKjZHE3KWQ8ZyZ6MI2Y+RuXhfPmQXQewSIXzHVKlSPby8ef03+vXm8rBaKU2JlMiG7ONvCmsHLfMXrYO1AtLalww5i/FHizvX7+Y/vV/vLCKV+EwupJnDn5SvTCJXZaSRa0qFtItwxRu3JrHbjRi8YlsmpFuCq39nvNz1wSt1RUIiOKZPjbfTadAiiZCLCdhWHg3hcQWsiYv0IW9zsG31DKW3BdbcW+qQddh+GdovsNbThjS4DvmSRrqQ7gIsWyaVLZAWuqlCarCs9EwqvRWQamlCngpWx/SjSelxGpzCU4qQCJZTk9opSBEf0rbXE/tGQB+cyTYdsm11xHdGwF0MzjYb8pKzQjaMiA1wci9kSBWWWyPiFqQqF9Kz9z/KRkgZnJkeFXIMy5URcgXSMRHi/t0WjZhFcMpMyD0sO0bMDkj3REgNlmsj5hqkGhEytDoK70bMewGcoX9IC5Y1I2gNpJZ3yB4sB0bQAUh73iFL7t9CUAukJd+QDixTRtQUSB3PkCNYSkZUCaQjz5BNWCpGVAWkTc+QeViqRlQVpHm/kGfYDo2oQ7CevUJOYLs0oi7BOvEKGcB2Y0TdgDXwClmF7dWIegVr1SskD5sRBlbeJ+QBekPw4BFyrjnk3COkrjmk7hFS0RxS8QhZ1hyy7BEyqzlk1iMEmkOQPOQ3oPcfIvA7ccgXoPcTBfhKHPIB6P1oBD4Sh3wDej/jge/EIQM45H9Y8QaJQ37gkP+py/tJHNKHQ37xgddPHPIJh/xyEO8zccgQDvkFOt4wcUgMh/ySKS9OHAJL2EVsFxGiaFuBD1G20cOHaNt640OUbYbyIdq2p/kQZQMDfIi2EQ4+JORQjXyI/JhToBD5wbOgIfKjgDzmozH8cKYrZj7jw4/LuobUD6vgA8yuT+qnbvCRclefW3wIPeTv+iGXgwIfu3AN2AW6sAdhXN/skmnYo0muD3oRO+hhMdcXv60Q9vgev61g4JA/UMlLtfUmfsSVN5tqM5Q/dCxuOd32dIBj4ALb03UoVidGOFQ6J4ZqVHogxpw0yhODZyqtEqOAKg2I4UyVTohxWZWeiQFmjeaJkXKVNokhf5WOiGMXKnWIgzAaLRFHk1TaIw6LqdRiju8pNKQOVCpUo464KnTPHTpWp0weA1fnmD2Yrwl/MN9UoUyVv7xCldwLf52IKtsCF7wEIHnBi4mgSCRwCVIA7CVI+r9TagIXhWmw0BW4uk2DhsBlehqsS1xvqMDcm8iFkwGQF05q/2cSSV3KGlipK3ZNblDFtuDFxQHlmqJXSQcTn8le7h3MvvR164Hsji/A1/UkwfiRCF3PdowfUtH1tM34sSFVzz+NH+RS9UTa+NE6Tc8Ijh921PTU5vjxU8XP0Y4fCB4/2cw/ov1Pe3cgAwAAACDM3zqOtmdwgmzNjeZBQEA+gYCAgICAgICAgIAETuKXxaAVTVgAAAAASUVORK5CYII=>>

Rasterific is a vector drawing library (a rasterizer)
implemented in pure haskell.

Can render vector graphics to an image and export vector data to PDF.")
    (license license:bsd-3)))

haskell-8.10-Rasterific

(define-public haskell-8.10-ad
  (package
    (name "haskell-8.10-ad")
    (version "4.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ad/ad-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1afpqk0my4n50xvq9f0rhcs8kzy3w1xxjql462xc0mvvhsgp6s6g"))))
    (properties `((upstream-name . "ad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("3" "0dixfii8fk4drly5iwzy1ihnx5phmns0i8cbdhl6ylp79yyrdv2h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-data-reify)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-erf)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-nats)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "http://github.com/ekmett/ad")
    (synopsis "Automatic Differentiation")
    (description
     "Forward-, reverse- and mixed- mode automatic differentiation combinators with a common API.

Type-level \\\"branding\\\" is used to both prevent the end user from confusing infinitesimals
and to limit unsafe access to the implementation details of each Mode.

Each mode has a separate module full of combinators.

* @@Numeric.AD.Mode.Forward@@ provides basic forward-mode AD. It is good for computing simple derivatives.

* @@Numeric.AD.Mode.Reverse@@ uses benign side-effects to compute reverse-mode AD. It is good for computing gradients in one pass. It generates a Wengert list (linear tape) using @@Data.Reflection@@.

* @@Numeric.AD.Mode.Kahn@@ uses benign side-effects to compute reverse-mode AD. It is good for computing gradients in one pass. It generates a tree-like tape that needs to be topologically sorted in the end.

* @@Numeric.AD.Mode.Sparse@@ computes a sparse forward-mode AD tower. It is good for higher derivatives or large numbers of outputs.

* @@Numeric.AD.Mode.Tower@@ computes a dense forward-mode AD tower useful for higher derivatives of single input functions.

* @@Numeric.AD@@ computes using whichever mode or combination thereof is suitable to each individual combinator.

While not every mode can provide all operations, the following basic operations are supported, modified as
appropriate by the suffixes below:

* 'grad' computes the gradient (partial derivatives) of a function at a point.

* 'jacobian' computes the Jacobian matrix of a function at a point.

* 'diff' computes the derivative of a function at a point.

* 'du' computes a directional derivative of a function at a point.

* 'hessian' computes the Hessian matrix (matrix of second partial derivatives) of a function at a point.

The following suffixes alter the meanings of the functions above as follows:

* @@\\'@@ -- also return the answer

* @@With@@ lets the user supply a function to blend the input with the output

* @@F@@ is a version of the base function lifted to return a 'Traversable' (or 'Functor') result

* @@s@@ means the function returns all higher derivatives in a list or f-branching 'Stream'

* @@T@@ means the result is transposed with respect to the traditional formulation.

* @@0@@ means that the resulting derivative list is padded with 0s at the end.

* @@NoEq@@ means that an infinite list of converging values is returned rather than truncating the list when they become constant")
    (license license:bsd-3)))

haskell-8.10-ad

(define-public haskell-8.10-adjunctions
  (package
    (name "haskell-8.10-adjunctions")
    (version "4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/adjunctions/adjunctions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sbal7cbhm12crfnfhkk322jnzgx7lhw3jzq0p463bipagsjwz2h"))))
    (properties `((upstream-name . "adjunctions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1yfsjx7dqikg3hvld7i91xfsg5lawmr5980lvfd794sybmgxsf17")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "http://github.com/ekmett/adjunctions/")
    (synopsis "Adjunctions and representable functors")
    (description "Adjunctions and representable functors.")
    (license license:bsd-3)))

haskell-8.10-adjunctions

(define-public haskell-8.10-aern2-real
  (package
    (name "haskell-8.10-aern2-real")
    (version "0.2.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aern2-real/aern2-real-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13nk4s5r7h7wg4q0x01f8aiy432zngynd5qbqsqi9fz149k7mik1"))))
    (properties `((upstream-name . "aern2-real") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aern2-mp)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-collect-errors)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mixed-types-num)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Real numbers as sequences of MPBalls")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-8.10-aern2-real

(define-public haskell-8.10-aeson-qq
  (package
    (name "haskell-8.10-aeson-qq")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-qq/aeson-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dpklq2xdhrkg1rdc7zfdjnzm6c3qxx2i1xskrqdxpqi84ffnlyh"))))
    (properties `((upstream-name . "aeson-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/sol/aeson-qq#readme")
    (synopsis "JSON quasiquoter for Haskell")
    (description "@@aeson-qq@@ provides a JSON quasiquoter for Haskell.

This package exposes the function `aesonQQ` that compile-time
converts a string representation of a JSON value into a
`Data.Aeson.Value`.  `aesonQQ` has the signature

>aesonQQ :: QuasiQuoter

Consult the @@README@@ for documentation:
<https://github.com/sol/aeson-qq#readme>")
    (license license:expat)))

haskell-8.10-aeson-qq

(define-public haskell-8.10-alex-meta
  (package
    (name "haskell-8.10-alex-meta")
    (version "0.3.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alex-meta/alex-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lbralcid373p25m4qhrhrjak87p8wp4as3304sj6ba6xka89q3v"))))
    (properties `((upstream-name . "alex-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1r84p34insanbsmmn529qc0ymna1v4mxm77j4m2l4iraj7qhvfnl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/alex-meta")
    (synopsis "Quasi-quoter for Alex lexers")
    (description
     "A Template-Haskell based version of the Alex lexer generator. It is used by BNFC-meta to generate lexers and currently this is the only feature known to be working.")
    (license license:bsd-3)))

haskell-8.10-alex-meta

(define-public haskell-8.10-attoparsec-path
  (package
    (name "haskell-8.10-attoparsec-path")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-path/attoparsec-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "035n430iwqkfkxpphgn8xjd3h5qav8dwd1gm4a3v3z8h49i2cwfh"))))
    (properties `((upstream-name . "attoparsec-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)))
    (home-page "https://github.com/athanclark/attoparsec-path#readme")
    (synopsis "Convenience bindings between path and attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-8.10-attoparsec-path

(define-public haskell-8.10-auto-update
  (package
    (name "haskell-8.10-auto-update")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/auto-update/auto-update-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i36xc2i34aync8271x3pv515l3zb53i518dybn8ghqkhzf27q7l"))))
    (properties `((upstream-name . "auto-update") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Efficiently run periodic, on-demand actions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/auto-update>.")
    (license license:expat)))

haskell-8.10-auto-update

(define-public haskell-8.10-bech32
  (package
    (name "haskell-8.10-bech32")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bech32/bech32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1iyjnyy7l0jf2azbgg6lc5k7n25h1r41fyyqfagyaz79vhi1k7j8"))))
    (properties `((upstream-name . "bech32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-release" "-f-static")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-base58-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis
     "Implementation of the Bech32 cryptocurrency address format (BIP 0173).")
    (description
     "Implementation of the Bech32 cryptocurrency address format documented in the
BIP (Bitcoin Improvement Proposal) 0173.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-bech32

(define-public haskell-8.10-binary-tagged
  (package
    (name "haskell-8.10-binary-tagged")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-tagged/binary-tagged-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01d1wb8h5mz76l09r2azphvhm1y3nar8pqrh2waxn797bd2dh6fp"))))
    (properties `((upstream-name . "binary-tagged") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0w0n299j37w4xyf69wlfs1s06m01y6yyh9r5clacrr5m893rxy9a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-structured)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://hackage.haskell.org/package/binary-tagged")
    (synopsis "Tagged binary serialisation.")
    (description
     "Structurally tag binary serialisation stream.

Say you have:

Say you have a data type

@@
data Record = Record
\\  @{ _recordFields  :: HM.HashMap Text (Integer, ByteString)
\\  , _recordEnabled :: Bool
\\  @}
\\  deriving (Eq, Show, Generic)

instance @@Binary@@ Record
instance 'Structured' Record
@@

then you can serialise and deserialise @@Record@@ values with a structure tag by simply

@@
'structuredEncode' record :: LBS.ByteString
'structuredDecode' lbs    :: IO Record
@@

If structure of @@Record@@ changes in between, deserialisation will fail early.

The overhead is next to non-observable.

@@
benchmarking encode/Binary
time                 352.8 μs   (349.5 μs .. 355.9 μs)

benchmarking encode/Tagged
time                 350.8 μs   (349.0 μs .. 353.1 μs)

benchmarking decode/Binary
time                 346.8 μs   (344.7 μs .. 349.9 μs)

benchmarking decode/Tagged
time                 353.8 μs   (352.0 μs .. 355.8 μs)
@@")
    (license license:bsd-3)))

haskell-8.10-binary-tagged

(define-public haskell-8.10-bitvec
  (package
    (name "haskell-8.10-bitvec")
    (version "1.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bitvec/bitvec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h7c5kpx43bm6qqnkpbzma9n201987cnq1231zg33p3xp7qc1hm2"))))
    (properties `((upstream-name . "bitvec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libgmp")
       #:cabal-revision
       ("1" "0kf70z3adgdhmwc91ymr2y3jlg9irnz4hzck3l9im1d3zxs1lyvs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/bitvec")
    (synopsis "Space-efficient bit vectors")
    (description
     "A newtype over 'Bool' with a better 'Vector' instance: 8x less memory, up to 1000x faster.

The <https://hackage.haskell.org/package/vector vector>
package represents unboxed arrays of 'Bool'
spending 1 byte (8 bits) per boolean.
This library provides a newtype wrapper 'Bit' and a custom instance
of unboxed 'Vector', which packs bits densely,
achieving __8x less memory footprint.__
The performance stays mostly the same;
the most significant degradation happens for random writes
(up to 10% slower).
On the other hand, for certain bulk bit operations
'Vector' 'Bit' is up to 1000x faster than 'Vector' 'Bool'.

=== Thread safety

* \"Data.Bit\" is faster, but writes and flips are thread-unsafe.
This is because naive updates are not atomic:
read the whole word from memory,
then modify a bit, then write the whole word back.
* \"Data.Bit.ThreadSafe\" is slower (up to 20%),
but writes and flips are thread-safe.

=== Similar packages

* <https://hackage.haskell.org/package/bv bv> and
<https://hackage.haskell.org/package/bv-little bv-little>
do not offer mutable vectors.

* <https://hackage.haskell.org/package/array array>
is memory-efficient for 'Bool', but lacks
a handy 'Vector' interface and is not thread-safe.")
    (license license:bsd-3)))

haskell-8.10-bitvec

(define-public haskell-8.10-bower-json
  (package
    (name "haskell-8.10-bower-json")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bower-json/bower-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wvygg3rdbxzrmr61a9w6ddv9pfric85ih8hnxyk0ydzn7i59abs"))))
    (properties `((upstream-name . "bower-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-better-errors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/hdgarrood/bower-json")
    (synopsis "Read bower.json from Haskell")
    (description
     "Bower is a package manager for the web (see <http://bower.io>).
This package provides a data type and ToJSON/FromJSON instances for Bower's
package manifest file, bower.json.")
    (license license:expat)))

haskell-8.10-bower-json

(define-public haskell-8.10-cabal-plan
  (package
    (name "haskell-8.10-cabal-plan")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-plan/cabal-plan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "118g2ywzgjny57c2iysnj5f7rlriwic3f0k9c54f6bvkc0a3sfi3"))))
    (properties `((upstream-name . "cabal-plan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fexe" "-f-license-report" "-f-_")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-semialign)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-singleton-bool)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-topograph)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/cabal-plan")
    (synopsis "Library and utility for processing cabal's plan.json file")
    (description
     "This package provides a library (see \"Cabal.Plan\") for decoding @@plan.json@@ files as
well as the simple tool @@cabal-plan@@ for extracting and pretty printing
the information contained in the @@plan.json@@ file.

@@plan.json@@ files are generated by [cabal](https://hackage.haskell.org/package/cabal-install)'s [Nix-style local builds](http://cabal.readthedocs.io/en/latest/nix-local-build.html) and contain detailed information about the build/install plan computed by the cabal solver.

== @@cabal-plan@@ utility

The @@cabal-plan@@ executable (enabled via the @@exe@@ cabal flag) provides various operations:

[info] Show basic report of dependency tree
[show] Dump 'PlanJson' data-structure via 'Show' instance
[tred] Show dependency tree as a graph
[diff] Diff two install plans
[list-bins] List all binaries
[list-bin] List single binary (useful for scripting, e.g. @@cabal list-bin exe:cabal-plan@@)
[fingerprint] Print SHA256 sums of dependencies' source tarballs and cabal files
[dot] Generate graph of dependencies in @@.dot@@ format
[topo] Print plan topologically sorted
[license-report] Generate license report for a component (only available when built with @@license-report@@ flag enabled); see <src/example/cabal-plan.md report example for cabal-plan> (<src/example/cabal-plan.html Pandoc rendered HTML>)

See also [\"New things in Haskell package QA\" Blogpost](http://oleg.fi/gists/posts/2018-01-08-haskell-package-qa.html) for a description of the @@topo@@ and @@dot@@ operations as well as how to enable tab-completion.")
    (license license:gpl2+)))

haskell-8.10-cabal-plan

(define-public haskell-8.10-cborg-json
  (package
    (name "haskell-8.10-cborg-json")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cborg-json/cborg-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nsind3yiix6mb3xgwcnb267d8w9k0dvfnj78jc58gybx5hl9n53"))))
    (properties `((upstream-name . "cborg-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-cborg)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A library for encoding JSON as CBOR")
    (description "This package implements the bijection between JSON and
CBOR defined in the CBOR specification, RFC 7049.")
    (license license:bsd-3)))

haskell-8.10-cborg-json

(define-public haskell-8.10-character-cases
  (package
    (name "haskell-8.10-character-cases")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/character-cases/character-cases-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq461ij8h529skb55yn7afvx846r0va97kzbd1c16z1n4h94nhy"))))
    (properties `((upstream-name . "character-cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aiya000/hs-character-cases#readme")
    (synopsis "Exposes subspecies types of Char. And naming cases.")
    (description
     "e.g. meaning of [a-z], [A-Z], [0-9], PascalCase, camelCase, and snake_case. Please see https://github.com/aiya000/hs-character-cases#README.md")
    (license license:expat)))

haskell-8.10-character-cases

(define-public haskell-8.10-cheapskate-highlight
  (package
    (name "haskell-8.10-cheapskate-highlight")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-cheapskate)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-highlighting-kate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cheapskate-highlight")
    (synopsis "Code highlighting for cheapskate")
    (description
     "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,
returns cheapskate AST with code blocks highlighted.")
    (license license:bsd-3)))

haskell-8.10-cheapskate-highlight

(define-public haskell-8.10-cheapskate-lucid
  (package
    (name "haskell-8.10-cheapskate-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-lucid/cheapskate-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibjfy5dbkizg8cw4avhwl62xpk735a1a7bc0nkhf9zxpq9fb0pm"))))
    (properties `((upstream-name . "cheapskate-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "197nx95xw21i7zyvgzcgnr36ab6vrk17c66iz8ndwz61vp1jf6hc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-cheapskate)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cheapskate-lucid")
    (synopsis "Use cheapskate with Lucid")
    (description
     "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-8.10-cheapskate-lucid

(define-public haskell-8.10-chronos-bench
  (package
    (name "haskell-8.10-chronos-bench")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chronos-bench/chronos-bench-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2v4nzgpr4ivn1xw0n6mlphnzjzz3b1iym6sfxd1nkk56q8060v"))))
    (properties `((upstream-name . "chronos-bench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-chronos)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)))
    (home-page "https://github.com/knupfer/chronos")
    (synopsis "Benchmarking tool with focus on comparing results.")
    (description
     "This tool performs lazy benchmarking of functions and shell commands with continuous feedback and improving precision.")
    (license license:bsd-3)))

haskell-8.10-chronos-bench

(define-public haskell-8.10-commonmark-pandoc
  (package
    (name "haskell-8.10-commonmark-pandoc")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark-pandoc/commonmark-pandoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dpi8zvjshab96w56qfqcys9h09f46lld8sc9q4xzb0y1p6lwmap"))))
    (properties `((upstream-name . "commonmark-pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-commonmark)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-commonmark-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Bridge between commonmark and pandoc AST.")
    (description "This library provides typeclasses for rendering
commonmark to Pandoc types.")
    (license license:bsd-3)))

haskell-8.10-commonmark-pandoc

(define-public haskell-8.10-conduino
  (package
    (name "haskell-8.10-conduino")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduino/conduino-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jdhj71nva9v8f40wzkd2wzikpgwlzqid0inyfdlj4wnn83qwwk2"))))
    (properties `((upstream-name . "conduino") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-list-transformer)))
    (home-page "https://github.com/mstksg/conduino#readme")
    (synopsis "Lightweight composable continuation-based stream processors")
    (description
     "A lightweight continuation-based stream processing library.

It is similar in nature to pipes and conduit, but useful if you just want
something quick to manage composable stream processing without focus on IO.

See README for more information.")
    (license license:bsd-3)))

haskell-8.10-conduino

(define-public haskell-8.10-control-dsl
  (package
    (name "haskell-8.10-control-dsl")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/Atry/Control.Dsl#readme")
    (synopsis "An alternative to monads in do-notation")
    (description
     "This \\\"control-dsl\\\" package is a toolkit to create extensible Domain Specific Languages in @@do@@-notation.

See \"Control.Dsl\" for more information.")
    (license license:bsd-3)))

haskell-8.10-control-dsl

(define-public haskell-8.10-core-text
  (package
    (name "haskell-8.10-core-text")
    (version "0.3.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-text/core-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0h6m0wrkyhzzqchzqwpvkskpmnvzm1qynf8jhqwk759w5yxmxycw"))))
    (properties `((upstream-name . "core-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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
    (license license:expat)))

haskell-8.10-core-text

(define-public haskell-8.10-country
  (package
    (name "haskell-8.10-country")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/country/country-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nc9vjwagmih0m8h423lbsamkbxxyzhk3cr9cm7a7wwbl2bddq3a"))))
    (properties `((upstream-name . "country") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/country#readme")
    (synopsis "Country data type and functions")
    (description
     "The `country` library provides a data type for dealing with
the set of countries as defined by ISO 3166. The representation
is compact and is well-suited to use with vectors and
primitive arrays. Additionally, this library exports functions
that provide the following encodings and decodings:

* ISO Alpha-2 (two-letter country code)

* ISO Alpha-3 (three-letter country code)

* ISO Numeric (three-digit country code)


The main differences between this library and `iso3166-country-codes` are:

* it doesn't use an ADT to represent countries, instead it uses the country's three-digit country code.

* it doesn't use `String` for encoding/decoding

* it provides two-alpha and three-alpha country codes.

* it provides `Prim` instances from the `primitive` package to allow types to be used in unboxed vectors/arrays.

* BSD3 licence instead of LGPL

Please open up an issue on github if there is anything
you would like to see added.")
    (license license:bsd-3)))

haskell-8.10-country

(define-public haskell-8.10-crackNum
  (package
    (name "haskell-8.10-crackNum")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crackNum/crackNum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qavlqz1ca2c0v029kijlnf51l2sdiwk6dkx8kyk6xqp97bhx8rk"))))
    (properties `((upstream-name . "crackNum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-libBF)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-sbv)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)))
    (home-page "http://github.com/LeventErkok/CrackNum")
    (synopsis "Crack various integer and floating-point data formats")
    (description
     "Crack IEEE-754 float formats and arbitrary sized words and integers, showing the layout.

For details, please see: <http://github.com/LeventErkok/crackNum/>")
    (license license:bsd-3)))

haskell-8.10-crackNum

(define-public haskell-8.10-criterion
  (package
    (name "haskell-8.10-criterion")
    (version "1.5.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion/criterion-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19vrlldgw2kz5426j0iwsvvhxkbnrnan859vr6ryqh13nrg59a72"))))
    (properties `((upstream-name . "criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast" "-f-embed-data-files")
       #:cabal-revision
       ("2" "09s70kqkp1j78idaqrpnz8v870vy6xyclnpz9g4x70cr4r67lqkd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-binary-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-code-page)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-criterion-measurement)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-chart)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-microstache)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-statistics)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-criterion

(define-public haskell-8.10-crypto-pubkey
  (package
    (name "haskell-8.10-crypto-pubkey")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey/crypto-pubkey-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmmx2fqq2xc3xfavy22i2nyynpk88jhmjr62qgxw5w5qgsz5k60"))))
    (properties `((upstream-name . "crypto-pubkey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-crypto-numbers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-random)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cryptohash)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-crypto-pubkey")
    (synopsis "Public Key cryptography")
    (description
     "Public Key cryptography

Supports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.

Also have primitive support for Diffie Hellman, and ElGamal encryption")
    (license license:bsd-3)))

haskell-8.10-crypto-pubkey

(define-public haskell-8.10-cursor-brick
  (package
    (name "haskell-8.10-cursor-brick")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-brick/cursor-brick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "108pmv6f8y3szrh3n96dyl7hsfr6qim8axikf82dgs1fd2nx61vw"))))
    (properties `((upstream-name . "cursor-brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-brick)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-cursor)))
    (home-page "https://github.com/NorfairKing/cursor-brick#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/cursor-brick#readme>")
    (license license:expat)))

haskell-8.10-cursor-brick

(define-public haskell-8.10-cursor-gen
  (package
    (name "haskell-8.10-cursor-gen")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-gen/cursor-gen-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sy7ypz4x9xhirfj9i2dk8r854gzr238qgaijgi221k7681jdcqb"))))
    (properties `((upstream-name . "cursor-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-cursor)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-hspec-optics)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Generators for Purely Functional Cursors")
    (description
     "Generators for Purely Functional Cursors for common data structures")
    (license license:expat)))

haskell-8.10-cursor-gen

(define-public haskell-8.10-data-interval
  (package
    (name "haskell-8.10-data-interval")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-interval/data-interval-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gxdf1pi54s9fvxgp112b0l9f4q4r29f03caz04wbhv1f6cbs912"))))
    (properties `((upstream-name . "data-interval") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flattices")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ChasingBottoms)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-extended-reals)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-lattices)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/data-interval")
    (synopsis
     "Interval datatype, interval arithmetic and interval-based containers")
    (description
     "Interval datatype, interval arithmetic and interval-based containers for Haskell.
Unlike the intervals package (<http://hackage.haskell.org/package/intervals>),
this package provides both open and closed intervals and is intended to be used
with exact number types such as Rational and Integer.")
    (license license:bsd-3)))

haskell-8.10-data-interval

(define-public haskell-8.10-data-serializer
  (package
    (name "haskell-8.10-data-serializer")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-serializer/data-serializer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzxdz8kr094qdx1rq5ma671r7pfykfnmi42cq07g33wxzgbz85l"))))
    (properties `((upstream-name . "data-serializer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-endian)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-serializer")
    (synopsis "Common API for serialization libraries")
    (description
     "This package provides a common API for serialization libraries like
<http://hackage.haskell.org/package/binary binary> and
<http://hackage.haskell.org/package/cereal cereal>.")
    (license license:bsd-3)))

haskell-8.10-data-serializer

(define-public haskell-8.10-data-textual
  (package
    (name "haskell-8.10-data-textual")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-textual/data-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16pcfpr5y66q6cga1hs5ggqg03qqcymgjyrhv4yj091zs36fi7jb"))))
    (properties `((upstream-name . "data-textual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-text-latin1)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-text-printer)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-type-hint)))
    (home-page "https://github.com/mvv/data-textual")
    (synopsis "Human-friendly textual representations.")
    (description
     "This package provides an interface for converting between data and its
(human-friendly) textual representation.")
    (license license:bsd-3)))

haskell-8.10-data-textual

(define-public haskell-8.10-dependent-sum
  (package
    (name "haskell-8.10-dependent-sum")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-sum/dependent-sum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aj63gvak0y4mgxndykqfg5w958hf7lp5blml2z647rjgy85bjw1"))))
    (properties `((upstream-name . "dependent-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0d7wb1ag60mcm56axcrx9pd6hgrsxmqynyplbcfl01ms2i60fhr9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-constraints-extras)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-some)))
    (home-page "https://github.com/obsidiansystems/dependent-sum")
    (synopsis "Dependent sum type")
    (description "A dependent sum is a generalization of a
particular way of thinking about the @@Either@@
type.  @@Either a b@@ can be thought of as a
2-tuple @@(tag, value)@@, where the value of the
tag determines the type of the value.  In
particular, either @@tag = Left@@ and @@value :: a@@
or @@tag = Right@@ and @@value :: b@@.

This package allows you to define your own
dependent sum types by using your own \\\"tag\\\"
types.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-dependent-sum

(define-public haskell-8.10-dialogflow-fulfillment
  (package
    (name "haskell-8.10-dialogflow-fulfillment")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dialogflow-fulfillment/dialogflow-fulfillment-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yy4h8pariapyi7pr1b237i73y4k8icjk862i9jxh9g9lilkpyzq"))))
    (properties `((upstream-name . "dialogflow-fulfillment") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/mauriciofierrom/dialogflow-fulfillment")
    (synopsis "A Dialogflow Fulfillment library for Haskell.")
    (description
     "A library to create responses for Google's Dialogflow fulfillment webhook.

Dialogflow is an end-to-end, build-once deploy-everywhere development suite
for creating conversational interfaces for websites, mobile applications,
popular messaging platforms, and IoT devices. Find more at the Google Cloud
<https://cloud.google.com/dialogflow/ site for the project>.

Check how fulfillment works in the Dialogflow
<https://cloud.google.com/dialogflow/docs/fulfillment-how documentation>.")
    (license license:bsd-3)))

haskell-8.10-dialogflow-fulfillment

(define-public haskell-8.10-dirichlet
  (package
    (name "haskell-8.10-dirichlet")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dirichlet/dirichlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1awypb4ww1mgmvyd16hx1wxjws83slv65i3dc059b7w5nrmwqg49"))))
    (properties `((upstream-name . "dirichlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-log-domain)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/dirichlet")
    (synopsis "Multivariate Dirichlet distribution")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/dirichlet#readme>")
    (license license:bsd-3)))

haskell-8.10-dirichlet

(define-public haskell-8.10-elynx-tree
  (package
    (name "haskell-8.10-elynx-tree")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-tree/elynx-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wjhj48jbyjvmydsa9wcppzlambm2r5pmd5wjfjn0k7s5sc3zf5k"))))
    (properties `((upstream-name . "elynx-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-elynx-nexus)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-statistics)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-8.10-elynx-tree

(define-public haskell-8.10-equational-reasoning
  (package
    (name "haskell-8.10-equational-reasoning")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equational-reasoning/equational-reasoning-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xp5vmz19idc29xidr7q65hsnhfnl3ca80hxxfllsqpyyh32qlhn"))))
    (properties `((upstream-name . "equational-reasoning") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bi5xmaq5cbs1jqz6naw4706wv5yjgx1g4vibp872iqzcjc86yka")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-th-desugar)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://hackage.haskell.org/package/equational-reasoning")
    (synopsis "Proof assistant for Haskell using DataKinds & PolyKinds")
    (description
     "A simple convenient library to write equational / preorder proof as in Agda.
Since 0.6.0.0, this no longer depends on @@singletons@@ package, and the @@Proof.Induction@@ module goes to @@equational-reasoning-induction@@ package.")
    (license license:bsd-3)))

haskell-8.10-equational-reasoning

(define-public haskell-8.10-exp-pairs
  (package
    (name "haskell-8.10-exp-pairs")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exp-pairs/exp-pairs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01s3g34b08qcvzlzhp5vpswj5c6v8pc2rx8z5xzjlrawxlbnzdnp"))))
    (properties `((upstream-name . "exp-pairs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/exp-pairs")
    (synopsis "Linear programming over exponent pairs")
    (description
     "Package implements an algorithm to minimize rational objective function over the set of exponent pairs")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-exp-pairs

(define-public haskell-8.10-flat-mcmc
  (package
    (name "haskell-8.10-flat-mcmc")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flat-mcmc/flat-mcmc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xdmiw96hb0iw87bzyks5bm58rgcv348aj09ax7gy2qjpq969iv"))))
    (properties `((upstream-name . "flat-mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-formatting)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mcmc-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-monad-par)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mwc-probability)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jtobin/flat-mcmc")
    (synopsis "Painless general-purpose sampling.")
    (description
     "flat-mcmc is a Haskell library for painless, efficient, general-purpose
sampling from continuous distributions.

flat-mcmc uses an ensemble sampler that is invariant to affine
transformations of space.  It wanders a target probability distribution's
parameter space as if it had been \"flattened\" or \"unstretched\" in some sense,
allowing many particles to explore it locally and in parallel.

In general this sampler is useful when you want decent performance without
dealing with any tuning parameters or local proposal distributions.

flat-mcmc exports an 'mcmc' function that prints a trace to stdout, as well
as a 'flat' transition operator that can be used more generally.

> import Numeric.MCMC.Flat
> import qualified Data.Vector.Unboxed as U (unsafeIndex)
>
> rosenbrock :: Particle -> Double
> rosenbrock xs = negate (5  * (x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2) where
>   x0 = U.unsafeIndex xs 0
>   x1 = U.unsafeIndex xs 1
>
> origin :: Ensemble
> origin = ensemble [
>     particle [negate 1.0, negate 1.0]
>   , particle [negate 1.0, 1.0]
>   , particle [1.0, negate 1.0]
>   , particle [1.0, 1.0]
>   ]
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 12500 origin rosenbrock")
    (license license:expat)))

haskell-8.10-flat-mcmc

(define-public haskell-8.10-freer-simple
  (package
    (name "haskell-8.10-freer-simple")
    (version "1.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freer-simple/freer-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ypffdkpaxc03hlik6ymilhnk41fy7m92zzwqjma97g614vn0lw"))))
    (properties `((upstream-name . "freer-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-natural-transformation)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lexi-lambda/freer-simple")
    (synopsis "A friendly effect system for Haskell.")
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

haskell-8.10-freer-simple

(define-public haskell-8.10-fuzzy
  (package
    (name "haskell-8.10-fuzzy")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fuzzy/fuzzy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16pl4ba9f3wlx69pg8va1c2qg4zb9c0w50d7f6d84x9b5ysaza5w"))))
    (properties `((upstream-name . "fuzzy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-monoid-subclasses)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/joom/fuzzy")
    (synopsis "Filters a list based on a fuzzy string search.")
    (description "")
    (license license:expat)))

haskell-8.10-fuzzy

(define-public haskell-8.10-genvalidity-aeson
  (package
    (name "haskell-8.10-genvalidity-aeson")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-aeson/genvalidity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8n7k9v32izir9x0qrsnk4zkv3qhpghjzzpig4mk861cgycd42h"))))
    (properties `((upstream-name . "genvalidity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-vector)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-validity-aeson)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for aeson")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-genvalidity-aeson

(define-public haskell-8.10-ghc-exactprint
  (package
    (name "haskell-8.10-ghc-exactprint")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-exactprint/ghc-exactprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a6baza962d4pz2m02hxmh8234i47zkizmwhsy68namr05dmlgpw"))))
    (properties `((upstream-name . "ghc-exactprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-roundtrip" "-f-dev")
       #:cabal-revision
       ("1" "0qil5rlsvxhwrbciixha8mdaw8wfci797n4wcyxn41mr4a4783f5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://hackage.haskell.org/package/ghc-exactprint")
    (synopsis "ExactPrint for GHC")
    (description "Using the API Annotations available from GHC 7.10.2, this
library provides a means to round trip any code that can
be compiled by GHC, currently excluding lhs files.

It does this with a phased approach

* Delta - converts GHC API Annotations into relative
offsets, indexed by SrcSpan

* Transform - functions to facilitate changes to
the AST, adjusting the annotations generated in the
Delta phase to suit the changes.

* Print - converts an AST and its annotations to
properly formatted source text.

* Pretty - adds annotations to an AST (fragment) so that
the output can be parsed back to the same AST.


Note: requires GHC 7.10.2 or later")
    (license license:bsd-3)))

haskell-8.10-ghc-exactprint

(define-public haskell-8.10-gingersnap
  (package
    (name "haskell-8.10-gingersnap")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gingersnap/gingersnap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10lcs2p14rk1l280h3xkywbagy82cp2yy4zgs8l531hyqfzrsl01"))))
    (properties `((upstream-name . "gingersnap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-snap-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/gingersnap")
    (synopsis
     "Consistent and safe JSON APIs with snap-core and (by default) postgresql-simple")
    (description
     "Straightforward JSON API tools and idioms for snap-core and datastore access
(by default PostgreSQL via postgresql-simple), that provide:

- Safe access to pools of DB connections (preventing connection leaks)
- Simple and consistent JSON responses for successes and failures
(including unexpected failures)
- An optional read-only/maintenance mode for keeping services up during
e.g. database migrations

See the README for a tutorial and example use.")
    (license license:bsd-3)))

haskell-8.10-gingersnap

(define-public haskell-8.10-glabrous
  (package
    (name "haskell-8.10-glabrous")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/glabrous/glabrous-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yxyyjjhfi30ymd0v80xrn4m81m2hs3v5slbdd2hc856k91lmghg"))))
    (properties `((upstream-name . "glabrous") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-cereal-text)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/MichelBoucey/glabrous")
    (synopsis "A template DSL library")
    (description "A minimalistic, Mustache-like syntax, truly logic-less,
pure Text template DSL library")
    (license license:bsd-3)))

haskell-8.10-glabrous

(define-public haskell-8.10-goldplate
  (package
    (name "haskell-8.10-goldplate")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/goldplate/goldplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f2n981676ykrv08fgdj87mj5r4841a18ywvgpc2hgapsgwbgma1"))))
    (properties `((upstream-name . "goldplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0h1ayys29md2nbiqshdrhr8kz06dikiwkb4ikcg3wfzb4k1lpzvl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/fugue/goldplate")
    (synopsis "A lightweight golden test runner")
    (description
     "Language-agnostic golden test runner for command-line applications.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-goldplate

(define-public haskell-8.10-greskell-core
  (package
    (name "haskell-8.10-greskell-core")
    (version "0.1.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-core/greskell-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lffgrc4q9iwfdgn7qfxyhk459x47fl2fg6rvgqr4jqz1xp7x9cy"))))
    (properties `((upstream-name . "greskell-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis
     "Haskell binding for Gremlin graph query language - core data types and tools")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package contains only core data types and tools used commonly by other related packages.")
    (license license:bsd-3)))

haskell-8.10-greskell-core

(define-public haskell-8.10-happy-meta
  (package
    (name "haskell-8.10-happy-meta")
    (version "0.2.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happy-meta/happy-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vgv5fx1fya7wfh3zwdgy0hm0lyzp171gnpp6ymfd6kqmqkl3293"))))
    (properties `((upstream-name . "happy-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1p50xyx6hl0iyqmqxacisfmpq702rm797fjhfaxjjw6733k5zmrc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/happy-meta")
    (synopsis "Quasi-quoter for Happy parsers")
    (description
     "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.")
    (license license:bsd-3)))

haskell-8.10-happy-meta

(define-public haskell-8.10-haxr
  (package
    (name "haskell-8.10-haxr")
    (version "3000.11.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/haxr/haxr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12f3acc253x88pk20b60z1qzyhbngvg7zzb9j6azbii0hx8yxxhy"))))
    (properties `((upstream-name . "haxr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("3" "0w3v3rmz71bpbv8blkl46qvlmxyx8kkadqxq105k3l5al51qrphp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-HaXml)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-streams)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mtl-compat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.haskell.org/haskellwiki/HaXR")
    (synopsis "XML-RPC client and server library.")
    (description "HaXR is a library for writing XML-RPC
client and server applications in Haskell.")
    (license license:bsd-3)))

haskell-8.10-haxr

(define-public haskell-8.10-hedn
  (package
    (name "haskell-8.10-hedn")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedn/hedn-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06js9mcif99k8bfyrsynlg1w5rjygydk5l0qhlrk6pa5v288a7wv"))))
    (properties `((upstream-name . "hedn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13cmpyx7givc5ay43slf2ss4dqgnhb91nvyxp4201zznl5w570nh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-deriving-compat)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hedn")
    (synopsis "EDN parsing and encoding")
    (description
     "A EDN parsing and encoding library.

Based on \"specs\" published at <https://github.com/edn-format/edn>.")
    (license license:bsd-3)))

haskell-8.10-hedn

(define-public haskell-8.10-here
  (package
    (name "haskell-8.10-here")
    (version "1.2.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/here/here-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "001wfyvigl2xswqysnpignkl124hybf833875mkcsn8yp8krqvs0"))))
    (properties `((upstream-name . "here") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-8.10-here

(define-public haskell-8.10-heterocephalus
  (package
    (name "haskell-8.10-heterocephalus")
    (version "1.0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heterocephalus/heterocephalus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15bgmgnyrf721d0a3bpmvbz723a79hbh56wa6a2v087v3qrlx05g"))))
    (properties `((upstream-name . "heterocephalus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-template-haskell-compat-v0208)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/heterocephalus#readme")
    (synopsis
     "A type-safe template engine for working with front end development tools")
    (description
     "Recent front end development tools and languages are growing fast and have
quite a complicated ecosystem. Few front end developers want to be forced
use Shakespeare templates. Instead, they would rather use @@node@@-friendly
engines such that @@pug@@, @@slim@@, and @@haml@@. However, in using these
template engines, we lose the compile-time variable interpolation and type
checking from Shakespeare.

Heterocephalus is intended for use with another feature rich template
engine and provides a way to interpolate server side variables into a
precompiled template file with @@forall@@, @@if@@, and @@case@@ statements.")
    (license license:expat)))

haskell-8.10-heterocephalus

(define-public haskell-8.10-hmm-lapack
  (package
    (name "haskell-8.10-hmm-lapack")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmm-lapack/hmm-lapack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f0xf1fjsqqfimxx7skdwddw8zbdmas3l31y6921mxzy1syys30w"))))
    (properties `((upstream-name . "hmm-lapack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10dg0s6nrvb93ksyzgappmr28av4k204kmc8lb3vc2ribqhpb177")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-fixed-length)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-lapack)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lazy-csv)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-empty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-prelude-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tfp)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/hmm-lapack")
    (synopsis "Hidden Markov Models using LAPACK primitives")
    (description
     "Hidden Markov Models implemented using LAPACK data types and operations.
<http://en.wikipedia.org/wiki/Hidden_Markov_Model>

It implements:

* generation of samples of emission sequences,

* computation of the likelihood of an observed sequence of emissions,

* construction of most likely state sequence
that produces an observed sequence of emissions,

* supervised and unsupervised training of the model by Baum-Welch algorithm.

It supports any kind of emission distribution,
where discrete and multivariate Gaussian distributions
are implemented as examples.

For an introduction please refer to the examples:

* \"Math.HiddenMarkovModel.Example.TrafficLight\"

* \"Math.HiddenMarkovModel.Example.SineWave\"

* \"Math.HiddenMarkovModel.Example.Circle\"

An alternative package without foreign calls is @@hmm@@.")
    (license license:bsd-3)))

haskell-8.10-hmm-lapack

(define-public haskell-8.10-hslua-aeson
  (package
    (name "haskell-8.10-hslua-aeson")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-aeson/hslua-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kvsk0lfhg29dy5qlays9xbd5h9as01mcdbdx2ingx94br6d3h5r"))))
    (properties `((upstream-name . "hslua-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tarleb/hslua-aeson#readme")
    (synopsis "Allow aeson data types to be used with lua.")
    (description "This package provides instances to push and receive any
datatype encodable as JSON to and from the Lua stack.")
    (license license:expat)))

haskell-8.10-hslua-aeson

(define-public haskell-8.10-hspec-checkers
  (package
    (name "haskell-8.10-hspec-checkers")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-checkers/hspec-checkers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16by6gw5gg4sifb44w0cdabrfhh7398kvgivf83bixbwabf7knz7"))))
    (properties `((upstream-name . "hspec-checkers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-checkers)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/hspec-checkers")
    (synopsis "Allows to use checkers properties from hspec")
    (description
     "Allows to use <http://hackage.haskell.org/package/checkers checkers>
properties from <http://hackage.haskell.org/package/hspec hspec>.")
    (license license:bsd-3)))

haskell-8.10-hspec-checkers

(define-public haskell-8.10-http-api-data
  (package
    (name "haskell-8.10-http-api-data")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data/http-api-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xzfvxxh33ivlnrnzmm19cni3jgb5ph18n9hykkw3d6l3rhwzcnl"))))
    (properties `((upstream-name . "http-api-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-text-show")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/fizruk/http-api-data")
    (synopsis
     "Converting to/from HTTP API data like URL pieces, headers and query parameters.")
    (description
     "This package defines typeclasses used for converting Haskell data types to and from HTTP API data.

Please see README.md")
    (license license:bsd-3)))

haskell-8.10-http-api-data

(define-public haskell-8.10-http-client
  (package
    (name "haskell-8.10-http-client")
    (version "0.6.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client/http-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y12xfh6xvsfvyapbssmgrpjz025rmyccprbnmzhs0y1cmlz6hjp"))))
    (properties `((upstream-name . "http-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mime-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "An HTTP client engine")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-8.10-http-client

(define-public haskell-8.10-hvega
  (package
    (name "haskell-8.10-hvega")
    (version "0.11.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvega/hvega-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13w2637ylmmwv4kylf1rc2rvd85281a50p82x3888bc1cnzv536x"))))
    (properties `((upstream-name . "hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-tools")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "Create Vega-Lite visualizations (version 4) in Haskell.")
    (description
     "This is based on the elm-vegalite package
(<http://package.elm-lang.org/packages/gicentre/elm-vegalite/latest>)
by Jo Wood of the giCentre at the City University of London.")
    (license license:bsd-3)))

haskell-8.10-hvega

(define-public haskell-8.10-hw-diagnostics
  (package
    (name "haskell-8.10-hw-diagnostics")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-diagnostics/hw-diagnostics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "111g54c5bhgjii6vbyb116bg3dxywa9l693r8xjjrxpamzvi0avj"))))
    (properties `((upstream-name . "hw-diagnostics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0mfixppzi2x528z9vl8m22rifksg3r8czbg5z6n4x0p1pav20im9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)))
    (home-page "http://github.com/haskell-works/hw-diagnostics#readme")
    (synopsis "Diagnostics library")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-diagnostics

(define-public haskell-8.10-hw-hedgehog
  (package
    (name "haskell-8.10-hw-hedgehog")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hedgehog/hw-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a2pic2h983kdkai68wabclzwjbk5i9vz229jlwvs0hyw6b0mzz9"))))
    (properties `((upstream-name . "hw-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1fwgxwbfz6yfj6xfl9471q7fpsckm2wvpb8wxwb32c3x5122ly5v")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-8.10-hw-hedgehog

(define-public haskell-8.10-hw-hspec-hedgehog
  (package
    (name "haskell-8.10-hw-hspec-hedgehog")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hspec-hedgehog/hw-hspec-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04r30hb4664yciwfl3kyx0xn6sqc6abwhavb4wxiaas8b4px9kyn"))))
    (properties `((upstream-name . "hw-hspec-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0byjlgisygdak9pf9dfnpbj576mrjd7knx4kyfm12l6l5qhcw8n1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/haskell-works/hw-hspec-hedgehog#readme")
    (synopsis "Interoperability between hspec and hedgehog")
    (description "Interoperability between hspec and hedgehog.")
    (license license:bsd-3)))

haskell-8.10-hw-hspec-hedgehog

(define-public haskell-8.10-inline-c
  (package
    (name "haskell-8.10-inline-c")
    (version "0.9.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c/inline-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0a0m3bhh910c5g46cwkxgflsgw5ab7lzymwll9hijyvwgnsw3h7i"))))
    (properties `((upstream-name . "inline-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-gsl-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://hackage.haskell.org/package/inline-c")
    (synopsis
     "Write Haskell source files including C code inline. No FFI required.")
    (description
     "See <https://github.com/fpco/inline-c/blob/master/README.md>.")
    (license license:expat)))

haskell-8.10-inline-c

(define-public haskell-8.10-inliterate
  (package
    (name "haskell-8.10-inliterate")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inliterate/inliterate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17z3s5w49x8j57v6myz2r6i0knnm60ydg3y8d0v008xrwdjcr5id"))))
    (properties `((upstream-name . "inliterate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-cheapskate)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-lucid-extras)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-plotlyhs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diffusionkinetics/open/inliterate")
    (synopsis "Interactive literate programming")
    (description
     "Evaluate markdown code blocks to show the results of running the code.")
    (license license:expat)))

haskell-8.10-inliterate

(define-public haskell-8.10-input-parsers
  (package
    (name "haskell-8.10-input-parsers")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/input-parsers/input-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q928kmvhn3rahskjy60wywnzd5v5k2jlfc6fqkm4lzf0l8mnr05"))))
    (properties `((upstream-name . "input-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/input-parsers")
    (synopsis
     "Extension of the parsers library with more capability and efficiency")
    (description
     "Extended version of the parsers library, with the additional classes providing more
capable and efficient methods.")
    (license license:bsd-3)))

haskell-8.10-input-parsers

(define-public haskell-8.10-interpolate
  (package
    (name "haskell-8.10-interpolate")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolate/interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03jrkj9c62w0c2awym8mhpsgpd0jffl50cqwfrm7bbdfhd8dsxi7"))))
    (properties `((upstream-name . "interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)))
    (home-page "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license license:expat)))

haskell-8.10-interpolate

(define-public haskell-8.10-interpolatedstring-perl6
  (package
    (name "haskell-8.10-interpolatedstring-perl6")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolatedstring-perl6/interpolatedstring-perl6-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dvv9dsf5mr6y7aikd57c0qlh1lkbq3y37bvn3hy2g15cn5ix2ss"))))
    (properties `((upstream-name . "interpolatedstring-perl6") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-interpolatedstring-perl6

(define-public haskell-8.10-invertible-grammar
  (package
    (name "haskell-8.10-invertible-grammar")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible-grammar/invertible-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14i0xf5j01j6ayvxix32qr2m0bz3818q26z3b4xyw41ikbhxmkp2"))))
    (properties `((upstream-name . "invertible-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0dg32s4rvdrfxyr4dd1rcmzyx7cd9fd7ksqyg98vhiacnd54y4ix")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/esmolanka/invertible-grammar")
    (synopsis "Invertible parsing combinators framework")
    (description
     "Grammar combinator framework to build invertible parsing libraries
for concrete syntax.")
    (license license:bsd-3)))

haskell-8.10-invertible-grammar

(define-public haskell-8.10-ip6addr
  (package
    (name "haskell-8.10-ip6addr")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ip6addr/ip6addr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16dbvrsbg7l4z31faxm1pxps0plg89d4ny2mxsgwyq8r351irmwc"))))
    (properties `((upstream-name . "ip6addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-IPv6Addr)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis
     "Commandline tool to deal with IPv6 address text representations")
    (description
     "Commandline tool to validate, canonize and generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-8.10-ip6addr

(define-public haskell-8.10-ipynb
  (package
    (name "haskell-8.10-ipynb")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ipynb/ipynb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qky4l5aaiq7ypwbxh0mr7s572290fi596f18dg68qpyzc49a9kx"))))
    (properties `((upstream-name . "ipynb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/ipynb")
    (synopsis "Data structure for working with Jupyter notebooks (ipynb).")
    (description "ipynb defines a data structure for representing Jupyter
notebooks, along with ToJSON and FromJSON instances
for conversion to and from JSON .ipynb files.")
    (license license:bsd-3)))

haskell-8.10-ipynb

(define-public haskell-8.10-json-rpc-generic
  (package
    (name "haskell-8.10-json-rpc-generic")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc-generic/json-rpc-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qzqf4vnlpkj1gl48kds4lxmb0glf4k33bv6dq0hdyrv62aw52m4"))))
    (properties `((upstream-name . "json-rpc-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-generic-compat)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/khibino/haskell-json-rpc-generic")
    (synopsis "Generic encoder and decode for JSON-RPC")
    (description
     "This package contains generic encoder and decode for JSON-RPC")
    (license license:bsd-3)))

haskell-8.10-json-rpc-generic

(define-public haskell-8.10-jsonpath
  (package
    (name "haskell-8.10-jsonpath")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonpath/jsonpath-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gabkpag3ivxnxmd519411qmly3bcdcsan7kfqclgd49bi1i5jvv"))))
    (properties `((upstream-name . "jsonpath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-casing)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/akshaymankar/jsonpath-hs#readme")
    (synopsis "Library to parse and execute JSONPath")
    (description
     "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>")
    (license license:bsd-3)))

haskell-8.10-jsonpath

(define-public haskell-8.10-kanji
  (package
    (name "haskell-8.10-kanji")
    (version "3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kanji/kanji-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pgzmwn738yl2ac7al0fzr8cabp8gh1qzbhhi0ylxy4x6s90ll2r"))))
    (properties `((upstream-name . "kanji") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (home-page "https://github.com/fosskers/kanji")
    (synopsis
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji")
    (description
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.")
    (license license:bsd-3)))

haskell-8.10-kanji

(define-public haskell-8.10-kazura-queue
  (package
    (name "haskell-8.10-kazura-queue")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kazura-queue/kazura-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zi3b6d97ql3ixml238r50lpmp8aghz2mbc5yi94fyp9xvq42m2y"))))
    (properties `((upstream-name . "kazura-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/asakamirai/kazura-queue#readme")
    (synopsis "Fast concurrent queues much inspired by unagi-chan")
    (description
     "\\\"kazura-queue\\\" provides an implementation of FIFO queue.
It is faster than Chan, TQueue or TChan by the benefit of fetch-and-add
instruction.

Main motivation of this package is to solve some difficulty of
\"unagi-chan\" package.

- In \"unagi-chan\", the item in the queue/chan can be lost when async
exception is throwed to the read thread while waiting for read.
(Although it has handler to recover lost item,
it is difficult to keep FIFO in such case)

- In \"unagi-chan\", garbage items of the queue cannot be collected
immediately.
Since the buffer in the queue has the reference to the items until the
buffer is garbage-collected.

\\\"kazura-queue\\\" is slightly slower than \"unagi-chan\" instead of solving
these issues.

\\\"kazura-queue\\\" lost broadcast function to improve the second issue.
It means that kazura-queue is not \\\"Chan\\\" but is just \\\"Queue\\\".")
    (license license:bsd-3)))

haskell-8.10-kazura-queue

(define-public haskell-8.10-keys
  (package
    (name "haskell-8.10-keys")
    (version "3.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/keys/keys-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ik6wsff306dnbz0v3gpiajlj5b558hrk9176fzcb2fclf4447nm"))))
    (properties `((upstream-name . "keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1sb7ii9mhx77rhviqbmdc5r6wlimkmadxi1pyk7k3imdqcdzgjlp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/ekmett/keys/")
    (synopsis "Keyed functors and containers")
    (description
     "This package provides a bunch of ad hoc classes for accessing parts of a container.

In practice this package is largely subsumed by the
<https://hackage.haskell.org/package/lens lens package>,
but it is maintained for now as it has much
simpler dependencies.")
    (license license:bsd-3)))

haskell-8.10-keys

(define-public haskell-8.10-language-bash
  (package
    (name "haskell-8.10-language-bash")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-bash/language-bash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pkl0cvkxhlpx492qlklizc27xw3yax6n8h27xq3bw1vlk3c0a36"))))
    (properties `((upstream-name . "language-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/knrafto/language-bash/")
    (synopsis "Parsing and pretty-printing Bash shell scripts")
    (description "A library for parsing, pretty-printing, and manipulating
Bash shell scripts.")
    (license license:bsd-3)))

haskell-8.10-language-bash

(define-public haskell-8.10-language-c-quote
  (package
    (name "haskell-8.10-language-c-quote")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c-quote/language-c-quote-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02axz6498sg2rf24qds39n9gysc4lm3v354h2qyhrhadlfq8sf6d"))))
    (properties `((upstream-name . "language-c-quote") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")
       #:cabal-revision
       ("1" "1vl92h4z294ycg87140qk7v40r7vz43n8anpd2w1jdnwd6w4f4m3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-exception-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-exception-transformers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mainland-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-srcloc)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-8.10-language-c-quote

(define-public haskell-8.10-language-docker
  (package
    (name "haskell-8.10-language-docker")
    (version "10.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-docker/language-docker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x8lwc28j2f4rdk1yfhb4jkkrlvvhj46m0d42yv2f94y6v8adkr8"))))
    (properties `((upstream-name . "language-docker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hadolint/language-docker#readme")
    (synopsis "Dockerfile parser, pretty-printer and embedded DSL")
    (description
     "All functions for parsing and pretty-printing Dockerfiles are exported through @@Language.Docker@@. For more fine-grained operations look for specific modules that implement a certain functionality.
See the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-language-docker

(define-public haskell-8.10-linear-circuit
  (package
    (name "haskell-8.10-linear-circuit")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linear-circuit/linear-circuit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cf2lq8p2yppns8qn732drky8ghhd4ri9zxv7nbvas10ha0p19lm"))))
    (properties `((upstream-name . "linear-circuit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-comfort-graph)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-lapack)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-empty)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/linear-circuit")
    (synopsis "Compute resistance of linear electrical circuits")
    (description "Compute resistance of linear electrical circuits.

For examples see test directory.")
    (license license:bsd-3)))

haskell-8.10-linear-circuit

(define-public haskell-8.10-list-t
  (package
    (name "haskell-8.10-list-t")
    (version "1.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/list-t/list-t-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0apcqxz5i0swwfkszwh5rdrda641n4jzkdc5kp3q78ja932vavwy"))))
    (properties `((upstream-name . "list-t") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-logict)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/nikita-volkov/list-t")
    (synopsis "ListT done right")
    (description "A correct implementation of the list monad-transformer.
Useful for basic streaming.")
    (license license:expat)))

haskell-8.10-list-t

(define-public haskell-8.10-magico
  (package
    (name "haskell-8.10-magico")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/magico/magico-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kcqa7xcz378q6v8aypg3ngcmiwj5c730n58rnfi3ywwl01l0x4x"))))
    (properties `((upstream-name . "magico") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-lapack)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/magico")
    (synopsis "Compute solutions for Magico puzzle")
    (description
     "Compute solutions for Magico puzzle:
<http://www.spectra-verlag.de/oesterreich/SID=0/shopneu/lernspiel/lern7.php3>")
    (license license:bsd-3)))

haskell-8.10-magico

(define-public haskell-8.10-massiv
  (package
    (name "haskell-8.10-massiv")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j3br93kxxyb1q5mdf440f8l8d2lc0gi9vhc3h3ri94ls4ix099v"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")
       #:cabal-revision
       ("3" "0ilfp0jdjxgpgr2n1nd4kf78f77kq7fsakbaaib0yff33pirg9pk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-scheduler)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-8.10-massiv

(define-public haskell-8.10-mod
  (package
    (name "haskell-8.10-mod")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mod/mod-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0m92yd323kjjwnphqlima2aj0hh7i1gnpblc8a29ks25gj0sv66v"))))
    (properties `((upstream-name . "mod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemirings" "-fvector")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semirings)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/mod")
    (synopsis "Fast type-safe modular arithmetic")
    (description
     "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,
promoting moduli to the type level, with an emphasis on performance.
Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-8.10-mod

(define-public haskell-8.10-model
  (package
    (name "haskell-8.10-model")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/model/model-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yynva6zk986yl04ilkr171m2m8k649fihc2z1lkvfn6vl8qpw0d"))))
    (properties `((upstream-name . "model") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-convertible)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-filemanip)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "http://github.com/Quid2/model")
    (synopsis "Derive a model of a data type using Generics")
    (description "See the <http://github.com/Quid2/model online tutorial>.")
    (license license:bsd-3)))

haskell-8.10-model

(define-public haskell-8.10-mono-traversable
  (package
    (name "haskell-8.10-mono-traversable")
    (version "1.0.15.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable/mono-traversable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dvlp7r7r1lc3fxkwaz68f1nffg83240q8a989x24x1x67rj1clq"))))
    (properties `((upstream-name . "mono-traversable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
     "Please see the README at <https://www.stackage.org/package/mono-traversable>")
    (license license:expat)))

haskell-8.10-mono-traversable

(define-public haskell-8.10-morpheus-graphql-app
  (package
    (name "haskell-8.10-morpheus-graphql-app")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-app/morpheus-graphql-app-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l3brvcv7ang83yiv1bdg4v8hvajq4cbq2dr28q1j39a4r85f9xz"))))
    (properties `((upstream-name . "morpheus-graphql-app") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-relude)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Core")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-8.10-morpheus-graphql-app

(define-public haskell-8.10-morpheus-graphql-client
  (package
    (name "haskell-8.10-morpheus-graphql-client")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-client/morpheus-graphql-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1djgxy59s98na1s182p5a06qjhw8n862zka96wwp8ckyx2jpjkq3"))))
    (properties `((upstream-name . "morpheus-graphql-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-relude)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Client")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-8.10-morpheus-graphql-client

(define-public haskell-8.10-network-messagepack-rpc
  (package
    (name "haskell-8.10-network-messagepack-rpc")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-messagepack-rpc/network-messagepack-rpc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "118agkkbvfyynk6qg5yzazbs0s7w0bw9n0ndj8nm35yy6cil9lky"))))
    (properties `((upstream-name . "network-messagepack-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-data-msgpack)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc")
    (synopsis "MessagePack RPC")
    (description
     "[MessagePack RPC](https://github.com/msgpack-rpc/msgpack-rpc/blob/master/spec.md) library based on the \"data-msgpack\" package.")
    (license license:bsd-3)))

haskell-8.10-network-messagepack-rpc

(define-public haskell-8.10-opaleye
  (package
    (name "haskell-8.10-opaleye")
    (version "0.7.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/opaleye/opaleye-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dln0r4qk5k4gmjg06275zgbzgivwxw471sd0y4l01j3x7ix3q46"))))
    (properties `((upstream-name . "opaleye") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dq8h20072nnir5bp17qyz27l2gnbwdr2dvyz84f8cgr2jvyhspb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-product-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/tomjaguarpaw/haskell-opaleye")
    (synopsis "An SQL-generating DSL targeting PostgreSQL")
    (description "An SQL-generating DSL targeting PostgreSQL.  Allows
Postgres queries to be written within Haskell in a
typesafe and composable fashion.")
    (license license:bsd-3)))

haskell-8.10-opaleye

(define-public haskell-8.10-password
  (package
    (name "haskell-8.10-password")
    (version "3.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password/password-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kdc1lwya9sq3vb5wvvs2bz0z38mqn9cpim4f6awym99c57g01rk"))))
    (properties `((upstream-name . "password") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "151z62mwqzblddcwj83dhwz2qfj53g0nl6sbdcsf489xbb9z3vk9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-base64)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-password-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password#readme")
    (synopsis "Hashing and checking of passwords")
    (description
     "A library providing functionality for working with plain-text and hashed passwords
with different types of algorithms.

== API

Every supported hashing algorithm has its own module (e.g. \"Data.Password.Bcrypt\")
which exports its own @@hashPassword@@ and @@checkPassword@@ functions, as well as all the
types and functions in this module. If you are not sure about the specifics of an
algorithm you want to use, you can rest assured that by using the @@hashPassword@@ function
of the respective algorithm you are not making any big mistakes, security-wise.

Of course, if you know what you're doing and you want more fine-grained control
over the hashing function, you can adjust it using the @@hashPasswordWithParams@@
function of the respective algorithm.

== Algorithms

Generally, the most \"secure\" algorithm is believed to be @@Argon2@@, then @@scrypt@@,
then @@bcrypt@@, and lastly @@PBKDF2@@.
@@bcrypt@@ and @@PBKDF2@@ are the most established algorithms, so they have been tried and
tested, though they both lack a memory cost, and therefore have a greater vulnerability
to specialized hardware attacks.

When choosing an algorithm, and you have no idea which to pick, just go for @@bcrypt@@ if
your password does not need the highest security possible.
It's still a fine way for hashing passwords, and the cost is easily adjustable if needed.
If your needs do require stronger protection, you should find someone who can advise you
on this topic. (And if you're already knowledgeable enough, you know what to do)")
    (license license:bsd-3)))

haskell-8.10-password

(define-public haskell-8.10-path-binary-instance
  (package
    (name "haskell-8.10-path-binary-instance")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-binary-instance/path-binary-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19ck3ja66vcgl90wyw6r9d2h50kdv9gjs7sxjgciam6v6867vb0y"))))
    (properties `((upstream-name . "path-binary-instance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)))
    (home-page "https://hackage.haskell.org/package/path-binary-instance")
    (synopsis "Binary instance for Path.")
    (description "Binary instance for Path.")
    (license license:expat)))

haskell-8.10-path-binary-instance

(define-public haskell-8.10-path-extensions
  (package
    (name "haskell-8.10-path-extensions")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extensions/path-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pvjb26arsj892addi9x26v8naislh87x6av70k8fjnsish3pnj5"))))
    (properties `((upstream-name . "path-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)))
    (home-page "https://hackage.haskell.org/package/path-extensions")
    (synopsis
     "Enumeration of common filetype extensions for use with the path library.")
    (description
     "Enumeration of common filetype extensions for use with the path library, add variants for adding an extension to a path and with variants for replacing an existing extension.")
    (license license:expat)))

haskell-8.10-path-extensions

(define-public haskell-8.10-path-extra
  (package
    (name "haskell-8.10-path-extra")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extra/path-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fh4m3vidf75j43rk1n46y3bsn0j4247bz71s35651vi9s8vw27b"))))
    (properties `((upstream-name . "path-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/path-extra#readme")
    (synopsis "URLs without host information")
    (description
     "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>")
    (license license:bsd-3)))

haskell-8.10-path-extra

(define-public haskell-8.10-path-io
  (package
    (name "haskell-8.10-path-io")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dnc48hf8x83p0jy05qi8j8gmfmsy50swnql9ssdv74lsryp615n"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "0rsr9r2175lf7zcz2sns0mhxkvl21pm50sjidjq5v75nalrsw6rp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-8.10-path-io

(define-public haskell-8.10-path-like
  (package
    (name "haskell-8.10-path-like")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-like/path-like-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hr58zcgcybd34zzas5kf0jgcm5z2wdlbhskwj9233503nnlwkq9"))))
    (properties `((upstream-name . "path-like") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)))
    (home-page "https://hackage.haskell.org/package/path-like")
    (synopsis
     "PathLike, FileLike and DirLike type classes for the Path library.")
    (description
     "Type classes for the Path library. Exports PathLike, FileLike and DirLike classes so that stricter types may be used as Paths.")
    (license license:expat)))

haskell-8.10-path-like

(define-public haskell-8.10-path-text-utf8
  (package
    (name "haskell-8.10-path-text-utf8")
    (version "0.0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-text-utf8/path-text-utf8-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xi60cw75qzhb03z2a66xfxgr17xz39bdk7wmjc7yprqy0v016jj"))))
    (properties `((upstream-name . "path-text-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)))
    (home-page "https://github.com/chris-martin/path-text-utf8")
    (synopsis "Read and write UTF-8 text files")
    (description "This is a trivial integration of the @@path@@ and @@text@@
packages, providing convenient functions to read and
write UTF-8 text files.")
    (license license:asl2.0)))

haskell-8.10-path-text-utf8

(define-public haskell-8.10-pcre-heavy
  (package
    (name "haskell-8.10-pcre-heavy")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-heavy/pcre-heavy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lfbjgvl55jh226n307c2w8mrb3l1myzbkjh4j0jfcb8nybzcp4a"))))
    (properties `((upstream-name . "pcre-heavy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "053b667iqj5riz4mabhapcbn44saas5flklhxy09246y1prkddqy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pcre-light)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/pcre-heavy")
    (synopsis
     "A regexp (regex) library on top of pcre-light you can actually use.")
    (description
     "A regular expressions library that does not suck.
Based on <https://hackage.haskell.org/package/pcre-light pcre-light>.
Takes and returns <https://hackage.haskell.org/package/stringable Stringables> everywhere.
Includes a QuasiQuoter for regexps that does compile time checking.
SEARCHES FOR MULTIPLE MATCHES! DOES REPLACEMENT!")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-pcre-heavy

(define-public haskell-8.10-peregrin
  (package
    (name "haskell-8.10-peregrin")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/peregrin/peregrin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hiv9rzpjmjywwc4j6bqkqvqwv2gr6d512hv0l6m5c6idsyk2v12"))))
    (properties `((upstream-name . "peregrin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://hackage.haskell.org/package/peregrin")
    (synopsis "Database migration support for use in other libraries.")
    (description "Database migration support for use in other libraries.
Currently only supports PostgreSQL.")
    (license license:expat)))

haskell-8.10-peregrin

(define-public haskell-8.10-pg-transact
  (package
    (name "haskell-8.10-pg-transact")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-transact/pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ch44w9hdvylpcnz1d89v75m4y0rjv1h572bcmcx2n77zs19w45g"))))
    (properties `((upstream-name . "pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "A postgresql-simple transaction monad")
    (description "A postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-8.10-pg-transact

(define-public haskell-8.10-pipes-group
  (package
    (name "haskell-8.10-pipes-group")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-group/pipes-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1issfj3syi6lfbcdn3bhlbnlh86s92ldsb04c4ac69xipsgyhwqk"))))
    (properties `((upstream-name . "pipes-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0g6xrp4xi4gzar5l4jhpfi617zvy1hv0i9rg7gg23fcqfyc1kh22")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lens-family-core)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-parse)))
    (home-page "https://hackage.haskell.org/package/pipes-group")
    (synopsis "Group streams into substreams")
    (description
     "@@pipes-group@@ uses @@FreeT@@ and lenses to group streams into
sub-streams.  Notable features include:

* /Perfect Streaming/: Group elements without collecting them into memory

* /Lens Support/: Use lenses to simplify many common operations

@@Pipes.Group@@ contains the full documentation for this library.

Read @@Pipes.Group.Tutorial@@ for an extensive tutorial.")
    (license license:bsd-3)))

haskell-8.10-pipes-group

(define-public haskell-8.10-pipes-ordered-zip
  (package
    (name "haskell-8.10-pipes-ordered-zip")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-ordered-zip/pipes-ordered-zip-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jgqnx5jdra5v0r7v564zzd96jfv42lbkdxgk1k7ip8gcikb1zdm"))))
    (properties `((upstream-name . "pipes-ordered-zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-safe)))
    (home-page "https://github.com/githubuser/pipes-ordered-zip#readme")
    (synopsis "merge two ordered Producers into a new Producer")
    (description
     "provides a simple function to merge two Pipes-Producers into a new Producer that yields pairs of values of the original producers, but using Maybes to indicate values that are only present in the first, second or both producers. Useful to perform Left-Joins, Right-Joins and Inner-Joins on the fly using Haskell Pipes.")
    (license license:bsd-3)))

haskell-8.10-pipes-ordered-zip

(define-public haskell-8.10-postgres-options
  (package
    (name "haskell-8.10-postgres-options")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgres-options/postgres-options-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dfr15bg77117y27rr1kvbxcsyh36ha30c8rgiqd15y7pjd4apy4"))))
    (properties `((upstream-name . "postgres-options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-generic-monoid)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-uri-bytestring)))
    (home-page "https://github.com/jfischoff/postgres-options#readme")
    (synopsis "An Options type representing options for postgres connections")
    (description
     "This package exports an Options type representing options for postgres connections")
    (license license:bsd-3)))

haskell-8.10-postgres-options

(define-public haskell-8.10-postgresql-orm
  (package
    (name "haskell-8.10-postgresql-orm")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-orm/postgresql-orm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fqas5ycxx43lvc8zm6ljh3lqgrhwrn712r2ijyjswdqrmf7wl53"))))
    (properties `((upstream-name . "postgresql-orm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql)))
    (home-page "https://hackage.haskell.org/package/postgresql-orm")
    (synopsis
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL.")
    (description
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL. See
\"Database.PostgreSQL.ORM\" for documentation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-postgresql-orm

(define-public haskell-8.10-pretty-relative-time
  (package
    (name "haskell-8.10-pretty-relative-time")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-relative-time/pretty-relative-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17w7bs0xj2bbjqc9qzcq40xsq5virdaqw57r0wfgfs6akj2i9r5d"))))
    (properties `((upstream-name . "pretty-relative-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-time)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-time)))
    (home-page "https://github.com/NorfairKing/pretty-relative-time#readme")
    (synopsis "Pretty relative time")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>")
    (license license:expat)))

haskell-8.10-pretty-relative-time

(define-public haskell-8.10-prettyprinter-ansi-terminal
  (package
    (name "haskell-8.10-prettyprinter-ansi-terminal")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-ansi-terminal/prettyprinter-ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cqxbcmy9ykk4pssq5hp6h51g2h547zfz549awh0c1fni8q3jdw1"))))
    (properties `((upstream-name . "prettyprinter-ansi-terminal")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis "ANSI terminal backend for the »prettyprinter« package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.10-prettyprinter-ansi-terminal

(define-public haskell-8.10-prettyprinter-compat-annotated-wl-pprint
  (package
    (name "haskell-8.10-prettyprinter-compat-annotated-wl-pprint")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-annotated-wl-pprint/prettyprinter-compat-annotated-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0plkzvwbqilmh711fbbki9r37i01n00kmzr6cxjgjw0ak1m2djbn"))))
    (properties `((upstream-name . "prettyprinter-compat-annotated-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »annotated-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.10-prettyprinter-compat-annotated-wl-pprint

(define-public haskell-8.10-prettyprinter-compat-wl-pprint
  (package
    (name "haskell-8.10-prettyprinter-compat-wl-pprint")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-wl-pprint/prettyprinter-compat-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffrbh79da9ihn3lbk9vq9329sdhddf6ccnag1k148z3ividxc63"))))
    (properties `((upstream-name . "prettyprinter-compat-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.10-prettyprinter-compat-wl-pprint

(define-public haskell-8.10-protocol-buffers-descriptor
  (package
    (name "haskell-8.10-protocol-buffers-descriptor")
    (version "2.4.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-buffers-descriptor/protocol-buffers-descriptor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dir8v79hzc8smlf405a8m3y5jhjqiphj2jm6rbshd1vg6l3vjia"))))
    (properties `((upstream-name . "protocol-buffers-descriptor")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zin8qqvb1hg5kq2s17rkik55pjnws556xflg76x1xrqkyivhqlg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-protocol-buffers)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis
     "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification")
    (description "Uses protocol-buffers package")
    (license license:bsd-3)))

haskell-8.10-protocol-buffers-descriptor

(define-public haskell-8.10-qm-interpolated-string
  (package
    (name "haskell-8.10-qm-interpolated-string")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brbs4qwvb16bkmcg51spjjrzc83hwgi1fbsix25vrri2myk6sz8"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-qm-interpolated-string

(define-public haskell-8.10-random-fu
  (package
    (name "haskell-8.10-random-fu")
    (version "0.2.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-fu/random-fu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jk5qv7iddbqcyciih9vfylrwhbcabmy348waw5c7gchabxvqrl4"))))
    (properties `((upstream-name . "random-fu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4_2" "-fmtl2")
       #:cabal-revision
       ("1" "16nhymfriygqr2by9v72vdzv93v6vhd9z07pgaji4zvv66jikv82")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-erf)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-random-shuffle)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-random-source)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-rvar)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Random number generation")
    (description "Random number generation based on modeling random
variables in two complementary ways: first, by the
parameters of standard mathematical distributions and,
second, by an abstract type ('RVar') which can be
composed and manipulated monadically and sampled in
either monadic or \\\"pure\\\" styles.

The primary purpose of this library is to support
defining and sampling a wide variety of high quality
random variables.  Quality is prioritized over speed,
but performance is an important goal too.

In my testing, I have found it capable of speed
comparable to other Haskell libraries, but still
a fair bit slower than straight C implementations of
the same algorithms.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-random-fu

(define-public haskell-8.10-range
  (package
    (name "haskell-8.10-range")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/range/range-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kvb5bl4k2gwm0hd71plwh7hmwbgk17g77iq39d7lqw4nmlg3j0k"))))
    (properties `((upstream-name . "range") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)))
    (home-page "https://bitbucket.org/robertmassaioli/range")
    (synopsis "An efficient and versatile range library.")
    (description
     "The range library alows the use of performant and versatile ranges in your code.
It supports bounded and unbounded ranges, ranges in a nested manner (like library
versions), an efficient algebra of range computation and even a simplified interface
for ranges for the common cases. This library is far more efficient than using the
default Data.List functions to approximate range behaviour. Performance is the major
value offering of this library.
If this is your first time using this library it is highly recommended that you start
with \"Data.Range\"; it contains the basics of this library that meet most use
cases.")
    (license license:expat)))

haskell-8.10-range

(define-public haskell-8.10-recursion-schemes
  (package
    (name "haskell-8.10-recursion-schemes")
    (version "5.2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/recursion-schemes/recursion-schemes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "018l7j9pk8izi817vqyrakrkjsxr332jh24d6j0yl35i5wm4khv6"))))
    (properties `((upstream-name . "recursion-schemes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("1" "1l6wbzx8804pb6p8gvk45hal6sz8r1gvyxb8aa9ih6j8pqv4q04c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-fix)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "http://github.com/ekmett/recursion-schemes/")
    (synopsis
     "Representing common recursion patterns as higher-order functions")
    (description
     "Many recursive functions share the same structure, e.g. pattern-match on the input and, depending on the data constructor, either recur on a smaller input or terminate the recursion with the base case. Another one: start with a seed value, use it to produce the first element of an infinite list, and recur on a modified seed in order to produce the rest of the list. Such a structure is called a recursion scheme. Using higher-order functions to implement those recursion schemes makes your code clearer, faster, and safer. See README for details.")
    (license license:bsd-2)))

haskell-8.10-recursion-schemes

(define-public haskell-8.10-reform-hamlet
  (package
    (name "haskell-8.10-reform-hamlet")
    (version "0.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-hamlet/reform-hamlet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rilrrrm681ndgfszv6yxkmfiq8r4gmqd507m0cc3vn3kww2j9si"))))
    (properties `((upstream-name . "reform-hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-reform)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using Hamlet with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Hamlet.")
    (license license:bsd-3)))

haskell-8.10-reform-hamlet

(define-public haskell-8.10-replace-attoparsec
  (package
    (name "haskell-8.10-replace-attoparsec")
    (version "1.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-attoparsec/replace-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mr7d6w5x6igsvl6mccchr2wbxxr5p86kpyxlbk7m17dplvwazcq"))))
    (properties `((upstream-name . "replace-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)))
    (home-page "https://github.com/jamesdbrock/replace-attoparsec")
    (synopsis
     "Find, replace, and split string patterns with Attoparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Attoparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-8.10-replace-attoparsec

(define-public haskell-8.10-resistor-cube
  (package
    (name "haskell-8.10-resistor-cube")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resistor-cube/resistor-cube-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jdpyxpbqhlbd66gy1qlrjqm31mhvg636yp8nrm9qbksllzdi6n6"))))
    (properties `((upstream-name . "resistor-cube") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-lapack)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/resistor-cube")
    (synopsis "Compute total resistance of a cube of resistors")
    (description
     "This is an example of how to compute the total resistance
of a non-trivial circuit of resistors.
It demonstrates how to build the necessary matrix.
We obtain the voltages and currents
by solving simultaneous linear equations according to this matrix.

* For an explanation see <http://code.henning-thielemann.de/bob2019/main.pdf>.

* For a generalized version see the tests of the @@linear-circuit@@ package.")
    (license license:bsd-3)))

haskell-8.10-resistor-cube

(define-public haskell-8.10-rhbzquery-notests
  (package
    (name "haskell-8.10-rhbzquery-notests")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhbzquery/rhbzquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00175smanmcr6k8b83kj7mif47jggxn0pvy64yjc4ikpbw822c2q"))))
    (properties `((upstream-name . "rhbzquery") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-config-ini)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-email-validate)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-simple-cmd)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)))
    (home-page "https://github.com/juhp/rhbzquery")
    (synopsis "Bugzilla query tool")
    (description
     "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-rhbzquery-notests

(define-public haskell-8.10-rio-prettyprint
  (package
    (name "haskell-8.10-rio-prettyprint")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-prettyprint/rio-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h092l46pfm6k3n0vb6c67gb64kahzc97qv45rhvp0cq2y5bqykf"))))
    (properties `((upstream-name . "rio-prettyprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)))
    (home-page "https://github.com/commercialhaskell/rio-prettyprint#readme")
    (synopsis "Pretty-printing for RIO")
    (description "Combine RIO's log capabilities with pretty printing")
    (license license:bsd-3)))

haskell-8.10-rio-prettyprint

(define-public haskell-8.10-rocksdb-haskell-jprupp
  (package
    (name "haskell-8.10-rocksdb-haskell-jprupp")
    (version "2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-haskell-jprupp/rocksdb-haskell-jprupp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c647kahnglwf881hd3ksan1p7j4m65s84wyw8i4jvikm4jzgqsh"))))
    (properties `((upstream-name . "rocksdb-haskell-jprupp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-haskell#readme")
    (synopsis "Haskell bindings for RocksDB")
    (description
     "See README at <https://github.com/jprupp/rocksdb-haskell#readme>")
    (license license:bsd-3)))

haskell-8.10-rocksdb-haskell-jprupp

(define-public haskell-8.10-sampling
  (package
    (name "haskell-8.10-sampling")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sampling/sampling-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xkq8p656xybbpvkxp42qkkgc1majp18w384ap7l4sbxrxif7kv"))))
    (properties `((upstream-name . "sampling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jtobin/sampling")
    (synopsis "Sample values from collections.")
    (description
     "Basic sampling tools.

Exports variations on two simple functions for sampling from arbitrary
'Foldable' collections:

* 'sample', for sampling without replacement

* 'resample', for sampling with replacement (i.e., a bootstrap)

Each variation can be prefixed with 'p' to sample from a container of values
weighted by probability.")
    (license license:expat)))

haskell-8.10-sampling

(define-public haskell-8.10-secp256k1-haskell
  (package
    (name "haskell-8.10-secp256k1-haskell")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/secp256k1-haskell/secp256k1-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18mp6ljqwrymvk5gl7v09xq0r7c2fhkvjfs8gdlzwgql35di5g7d"))))
    (properties `((upstream-name . "secp256k1-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages crypto) libsecp256k1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://github.com/haskoin/secp256k1-haskell#readme")
    (synopsis "Bindings for secp256k1")
    (description "Sign and verify signatures using the secp256k1 library.")
    (license license:expat)))

haskell-8.10-secp256k1-haskell

(define-public haskell-8.10-semialign-optics
  (package
    (name "haskell-8.10-semialign-optics")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-optics/semialign-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ffibnk1hsdnny5jm85j07f05k81pzzai4jljlj12nn687rbb59y"))))
    (properties `((upstream-name . "semialign-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "011kjr5ya0s7l1dic7gvzvgvps02rn033125v8c9r9dp2mlgyjam")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-optics-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-semialign)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/isomorphism/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package provides @@SemialignWithIndex@@ with two members

@@
class (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where
\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c
@@

@@
class (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where
\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c
@@

Superclass @@FunctorWithIndex@@ is from @@optics-extra@@ package.
See https://hackage.haskell.org/package/semialign-indexed for @@lens@@ variant.")
    (license license:bsd-3)))

haskell-8.10-semialign-optics

(define-public haskell-8.10-ses-html
  (package
    (name "haskell-8.10-ses-html")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ses-html/ses-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13x0m3i8gs0rapshniwxhzwz0311fzan7k87s6ink3jk7gh6xxyg"))))
    (properties `((upstream-name . "ses-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cryptohash)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-streams)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-8.10-ses-html

(define-public haskell-8.10-shake-plus
  (package
    (name "haskell-8.10-shake-plus")
    (version "0.3.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-plus/shake-plus-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0022npwhvzlpz6d6xl75kx0f7ydr8fqqcy04zkv70gwsv0gp5zbm"))))
    (properties `((upstream-name . "shake-plus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1az2234agrza3qhsd400bw94qj3dcxjh3fi0aq24ihbm8yx1a21s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-shake)))
    (home-page "https://hackage.haskell.org/package/shake-plus")
    (synopsis "Re-export of Shake using well-typed paths and ReaderT.")
    (description
     "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions.")
    (license license:expat)))

haskell-8.10-shake-plus

(define-public haskell-8.10-snap-server
  (package
    (name "haskell-8.10-snap-server")
    (version "1.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-server/snap-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w4yv9a5ilpma0335ariwap2iscmdbaaif88lq3cm7px910nyc4j"))))
    (properties `((upstream-name . "snap-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-openssl" "-f-build-pong" "-f-build-testserver" "-f-debug")
       #:cabal-revision
       ("2" "0dzsn3y7jnha1jbp0n5igjrg4cb8kggps798rlix60d66iy8r1l2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-http-common)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-streams)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-io-streams-haproxy)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-snap-core)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-threads)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://snapframework.com/")
    (synopsis "A web server for the Snap Framework")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

The Snap HTTP server is a high performance web server library written in
Haskell. Together with the @@snap-core@@ library upon which it depends, it
provides a clean and efficient Haskell programming interface to the HTTP
protocol.")
    (license license:bsd-3)))

haskell-8.10-snap-server

(define-public haskell-8.10-string-interpolate
  (package
    (name "haskell-8.10-string-interpolate")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-interpolate/string-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hhzvrs9msyqsxwsqqm55lyxf85vhg4vcsszl735zsbs7431av69"))))
    (properties `((upstream-name . "string-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extended-benchmarks" "-f-text-builder" "-f-bytestring-builder")
       #:cabal-revision
       ("3" "0kpk5mwmi7qzvx0hkiq6pwfyid99ic95zmxc36xxfpw4qxfc7024")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-text)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-unicode)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page
     "https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md")
    (synopsis "Haskell string/text/bytestring interpolation that just works")
    (description
     "Unicode-aware string interpolation that handles all textual types.

See the README at <https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md> for more info.")
    (license license:bsd-3)))

haskell-8.10-string-interpolate

(define-public haskell-8.10-tasty-lua
  (package
    (name "haskell-8.10-tasty-lua")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-lua/tasty-lua-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wa73ihkjcxi50lgpdzwwdx7s903lqi79hw7hxlvhbcvdly1cq53"))))
    (properties `((upstream-name . "tasty-lua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1m5mdn3riwwmvri430iq9m3yl09xsacvkp8w7vyqdmd70w3f9pcw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-hslua)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/tasty-lua")
    (synopsis "Write tests in Lua, integrate into tasty.")
    (description "Allow users to define tasty tests from Lua.")
    (license license:expat)))

haskell-8.10-tasty-lua

(define-public haskell-8.10-tdigest
  (package
    (name "haskell-8.10-tdigest")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tdigest/tdigest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dvkf7cs8dcr13wza5iyq2qgvz75r33mzgfmhdihw62xzxsqb6d3"))))
    (properties `((upstream-name . "tdigest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0a39vwf37hkh06rn79blr3bw7ij05pgpxrkc9cldgdd5p4gvn1qn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-reducers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (home-page "https://github.com/phadej/haskell-tdigest#readme")
    (synopsis "On-line accumulation of rank-based statistics")
    (description
     "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.

See original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl
for more details <https://github.com/tdunning/t-digest/blob/07b8f2ca2be8d0a9f04df2feadad5ddc1bb73c88/docs/t-digest-paper/histo.pdf>.")
    (license license:bsd-3)))

haskell-8.10-tdigest

(define-public haskell-8.10-texmath
  (package
    (name "haskell-8.10-texmath")
    (version "0.12.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zccnb61z0l2h6yzvnqh78bhqrqjd8237rrw4llsyzz149m7j3n8"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-pandoc-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
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

haskell-8.10-texmath

(define-public haskell-8.10-text-show-instances
  (package
    (name "haskell-8.10-text-show-instances")
    (version "3.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show-instances/text-show-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vsrf4vjq4z759srnzvyk3hn90ck4k91vy8cn625m8hy1zddqj2q"))))
    (properties `((upstream-name . "text-show-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")
       #:cabal-revision
       ("2" "1k5q21j0276jafyy4icgncz45r5gab2mj8964xayhh548rzj5cm6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-text-show)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/RyanGlScott/text-show-instances")
    (synopsis "Additional instances for text-show")
    (description
     "@@text-show-instances@@ is a supplemental library to @@text-show@@
that provides additional @@Show@@ instances for data types in
common Haskell libraries and GHC dependencies that are not
encompassed by @@text-show@@. Currently, @@text-show-instances@@
covers these libraries:

* @@<http://hackage.haskell.org/package/bifunctors           bifunctors>@@

* @@<http://hackage.haskell.org/package/binary               binary>@@

* @@<http://hackage.haskell.org/package/containers           containers>@@

* @@<http://hackage.haskell.org/package/directory            directory>@@

* @@<http://hackage.haskell.org/package/ghc-boot-th          ghc-boot-th>@@

* @@<http://hackage.haskell.org/package/haskeline            haskeline>@@

* @@<http://hackage.haskell.org/package/hpc                  hpc>@@

* @@<http://hackage.haskell.org/package/old-locale           old-locale>@@

* @@<http://hackage.haskell.org/package/old-time             old-time>@@

* @@<http://hackage.haskell.org/package/pretty               pretty>@@

* @@<http://hackage.haskell.org/package/random               random>@@

* @@<http://hackage.haskell.org/package/tagged               tagged>@@

* @@<http://hackage.haskell.org/package/template-haskell     template-haskell>@@

* @@<http://hackage.haskell.org/package/terminfo             terminfo>@@

* @@<https://hackage.haskell.org/package/text-short          text-short>@@

* @@<http://hackage.haskell.org/package/time                 time>@@

* @@<http://hackage.haskell.org/package/transformers         transformers>@@

* @@<http://hackage.haskell.org/package/unix                 unix>@@

* @@<http://hackage.haskell.org/package/unordered-containers unordered-containers>@@

* @@<http://hackage.haskell.org/package/vector               vector>@@

* @@<http://hackage.haskell.org/package/Win32                Win32>@@

* @@<http://hackage.haskell.org/package/xhtml                xhtml>@@

One can use these instances by importing
\"TextShow.Instances\". Alternatively, there are monomorphic
versions of the @@showb@@ function available in the other submodules
of \"TextShow\".")
    (license license:bsd-3)))

haskell-8.10-text-show-instances

(define-public haskell-8.10-time-parsers
  (package
    (name "haskell-8.10-time-parsers")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-parsers/time-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "102k6l9888kbgng045jk170qjbmdnwv2lbzlc12ncybfk2yk7wdv"))))
    (properties `((upstream-name . "time-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0dbqqlh98m06qj8jh1fs55lcxj4x4555x4p48xi3bjh5fdg4dkw0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)))
    (home-page "https://github.com/phadej/time-parsers#readme")
    (synopsis "Parsers for types in `time`.")
    (description
     "Parsers for types in `time` using 'parser' library.

Originally forked from aeson parsers.

See also <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.")
    (license license:bsd-3)))

haskell-8.10-time-parsers

(define-public haskell-8.10-timerep
  (package
    (name "haskell-8.10-timerep")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/timerep/timerep-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l67gbfjydq0xapry5k9pwzxmp6z7ixzyvwshnszryspcckagxif"))))
    (properties `((upstream-name . "timerep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1sk6bd6d0qvfbhn8b8na2m2z784gcbmxmgm1i6xcfbb8bls7bx7q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-timerep

(define-public haskell-8.10-tomland
  (package
    (name "haskell-8.10-tomland")
    (version "1.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tomland/tomland-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yj39mh4z3v3jqri38s3ylrglv657g3m7gqr2rz8ydlvx2draknc"))))
    (properties `((upstream-name . "tomland") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-validation-selective)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kowainik/tomland")
    (synopsis "Bidirectional TOML serialization")
    (description
     "Implementation of bidirectional TOML serialization. Simple codecs look like this:

@@
__data__ User = User
\\    @{ userName :: Text
\\    , userAge  :: Int
\\    @}
\\
\\userCodec :: TomlCodec User
\\userCodec = User
\\    \\<$\\> Toml.text \"name\" .= userName
\\    \\<*\\> Toml.int  \"age\"  .= userAge
@@

The following blog post has more details about library design:

* [tomland: Bidirectional TOML serialization](https://kowainik.github.io/posts/2019-01-14-tomland)")
    (license license:mpl2.0)))

haskell-8.10-tomland

(define-public haskell-8.10-tree-diff
  (package
    (name "haskell-8.10-tree-diff")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-diff/tree-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p1pvbqgrwkxmv4b8xmw9mx6a1xpyl6j8ivg1qs65q5nd7xaxqvp"))))
    (properties `((upstream-name . "tree-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "12smpqjg5ah2sr593d4glx8ib5yjj3wh1mhy6v4xy82xj27mhh11")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-semialign)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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
\\  @{fooBool = [-True, +False, False, +True],
\\   fooInt = 42,
\\   fooString = -\"old\" +\"new\"@}
@@")
    (license license:gpl2+)))

haskell-8.10-tree-diff

(define-public haskell-8.10-turtle
  (package
    (name "haskell-8.10-turtle")
    (version "1.5.24")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/turtle/turtle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06n9k8cchmy090k6azl6ld8ygkljw8wrpw3cigsgz48hqchq8c2p"))))
    (properties `((upstream-name . "turtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hostname)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-managed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-optional-args)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-system-fileio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-system-filepath)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/turtle")
    (synopsis "Shell programming, Haskell-style")
    (description
     "@@turtle@@ is a reimplementation of the Unix command line environment
in Haskell so that you can use Haskell as both a shell and a scripting
language.

Features include:

* Batteries included: Command an extended suite of predefined utilities

* Interoperability: You can still run external shell commands

* Portability: Works on Windows, OS X, and Linux

* Exception safety: Safely acquire and release resources

* Streaming: Transform or fold command output in constant space

* Patterns: Use typed regular expressions that can parse structured values

* Formatting: Type-safe @@printf@@-style text formatting

* Modern: Supports @@text@@ and @@system-filepath@@

Read \"Turtle.Tutorial\" for a detailed tutorial or \"Turtle.Prelude\" for a
quick-start guide

@@turtle@@ is designed to be beginner-friendly, but as a result lacks certain
features, like tracing commands.  If you feel comfortable using @@turtle@@
then you should also check out the @@Shelly@@ library which provides similar
functionality.")
    (license license:bsd-3)))

haskell-8.10-turtle

(define-public haskell-8.10-uri-bytestring-aeson
  (package
    (name "haskell-8.10-uri-bytestring-aeson")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring-aeson/uri-bytestring-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02bm5r0i1anwy3wv2xdfhnsmmgllv5vs7npy01fpmp91x7dcqak1"))))
    (properties `((upstream-name . "uri-bytestring-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-uri-bytestring)))
    (home-page "https://github.com/reactormonk/uri-bytestring-aeson")
    (synopsis "Aeson instances for URI Bytestring")
    (description "")
    (license license:bsd-3)))

haskell-8.10-uri-bytestring-aeson

(define-public haskell-8.10-validity-path
  (package
    (name "haskell-8.10-validity-path")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-path/validity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00p02jgqp5x34yjshylbalsbi44ksdywwjf5c8fwbqjkykwx98px"))))
    (properties `((upstream-name . "validity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "")
    (license license:expat)))

haskell-8.10-validity-path

(define-public haskell-8.10-wai
  (package
    (name "haskell-8.10-wai")
    (version "3.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai/wai-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1y19h9v0cq1fl17ywcyyvd6419fhgyw2s0yk0ki8z60021adcx2m"))))
    (properties `((upstream-name . "wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Web Application Interface.")
    (description
     "Provides a common protocol for communication between web applications and web servers.

API docs and the README are available at <http://www.stackage.org/package/wai>.")
    (license license:expat)))

haskell-8.10-wai

(define-public haskell-8.10-witherable
  (package
    (name "haskell-8.10-witherable")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/witherable/witherable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0121ic4xkv3k568j23zp22a5lrv0k11h94fq7cbijd18fjr2n3br"))))
    (properties `((upstream-name . "witherable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1f2bvl41by904lnr0dk6qgasqwadq2w48l7fj51bp2h8bqbkdjyc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/witherable")
    (synopsis "filterable traversable")
    (description
     "A stronger variant of `traverse` which can remove elements and generalised mapMaybe, catMaybes, filter")
    (license license:bsd-3)))

haskell-8.10-witherable

(define-public haskell-8.10-wordpress-auth
  (package
    (name "haskell-8.10-wordpress-auth")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wordpress-auth/wordpress-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10drplm0bg72ph87apbdmm4ar7gh09x6w6sgwgvdkz4zpkc48s0j"))))
    (properties `((upstream-name . "wordpress-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hs-php-session)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-uri-encode)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/prikhi/wordpress-auth#readme")
    (synopsis
     "Validate Wordpress Cookies & Nonces; Build Wordpress Hashes & Salts")
    (description
     "This package is used for validating Cookie data & Nonces from Wordpress.

You may find it useful if you're trying to serve a Haskell application alongside a Wordpress site. By validating the Cookies set by Wordpress, you can access the currently logged-in Wordpress user in Haskell without having to devise a Wordpress-to-Haskell authentication scheme.

It includes a generalized authentication function, as well as various helpers, validators, & hashers if you'd like to build a custom authentication process.

Servant users may want to just use the @@servant-auth-wordpress@@ package.")
    (license license:bsd-3)))

haskell-8.10-wordpress-auth

(define-public haskell-8.10-x509
  (package
    (name "haskell-8.10-x509")
    (version "1.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "114qjgx080zxbw5w9c3yy28k905bq99rwl6zgbsa0y3gawx9mmd5"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-asn1-parse)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-8.10-x509

(define-public haskell-8.10-zipper-extra
  (package
    (name "haskell-8.10-zipper-extra")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zipper-extra/zipper-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cq21hf40qp025ir9kihsp6b09bsrlgiqd5cfq688w57c2vhcmci"))))
    (properties `((upstream-name . "zipper-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-comonad-extras)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://hackage.haskell.org/package/zipper-extra")
    (synopsis "Zipper utils that weren't in Control.Comonad.Store.Zipper")
    (description
     "Adds some utility functions for and reexports Control.Comonad.Store.Zipper")
    (license license:expat)))

haskell-8.10-zipper-extra

