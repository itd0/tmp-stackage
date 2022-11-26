;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage016)
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
(define-public haskell-8.4-BiobaseNewick
  (package
    (name "haskell-8.4-BiobaseNewick")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BiobaseNewick/BiobaseNewick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g8kdmraxv0qf3nzm7hi36nhw0j8kyjmjlwslp7a5n2zly2gcck4"))))
    (properties `((upstream-name . "BiobaseNewick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-ForestStructures)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-text)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-test-framework-th)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-text-binary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/choener/BiobaseNewick")
    (synopsis "Newick file format parser.")
    (description
     "This is a simple parser for Newick trees. The parser returns a
rose tree. Each node is labelled with the node name (or an
empty string for anonymous nodes) and a distance (0 if not
given).

Includes conversion to an efficient static forest.")
    (license license:bsd-3)))

haskell-8.4-BiobaseNewick

(define-public haskell-8.4-ChannelT
  (package
    (name "haskell-8.4-ChannelT")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/pthariensflame/ChannelT")
    (synopsis "Generalized stream processors")
    (description
     "A mutual generalization of <https://hackage.haskell.org/package/pipes pipes> and <https://hackage.haskell.org/package/machines machines>; a library for exploring a particular corner of the design space of streaming IO (and other related tasks) in Haskell.")
    (license license:bsd-3)))

haskell-8.4-ChannelT

(define-public haskell-8.4-HaTeX
  (package
    (name "haskell-8.4-HaTeX")
    (version "3.19.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaTeX/HaTeX-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ja7w9l1pnf4pgbggr8cmsq0234cvsn75b9jzvd64jplhajpgn8z"))))
    (properties `((upstream-name . "HaTeX") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-matrix)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-wl-pprint-extras)))
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
We also have a mailing list (<http://projects.haskell.org/cgi-bin/mailman/listinfo/hatex>)
and an IRC channel (@@#hatex@@). If you just want to read a short introduction, read
the \"Text.LaTeX\" module.

If you prefer to write in LaTeX and all you want is to /program/ some parts of the document,
or if you already have the LaTeX document written and you just want to add some automatically
generated LaTeX code somewhere, check haskintex: <http://daniel-diaz.github.io/projects/haskintex>.
It allows you to embed Haskell in LaTeX. It also makes you easy to use HaTeX within a LaTeX document.")
    (license license:bsd-3)))

haskell-8.4-HaTeX

(define-public haskell-8.4-Rasterific
  (package
    (name "haskell-8.4-Rasterific")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Rasterific/Rasterific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13f5ay9wmva9k15a6pk4imxz6rj80gwc1f16906m7a6rm9vgwvlq"))))
    (properties `((upstream-name . "Rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fembed_linear")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-FontyFruity)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/Rasterific")
    (synopsis "A pure haskell drawing engine.")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAA7VBMVEUBhsECh8EFiMIIisMLi8QMjMQOjcQSj8UTj8YVkMYZkscakscbk8ghlskmmMozns02oM44oc86os9CpdFEptJXr9Zbsdddsthes9hhtNljtdlsudtxvNx+wuB/wuCAw+CCxOGDxOGExeGHxuKVzeWb0Oed0Oek1Omm1emo1uqp1uqr1+ux2uyy2uy02+223O294O/J5fLK5vLM5/PN5/PY7PbZ7fbj8vjk8vjl8/nm8/np9frq9frr9vrs9vru9/vw+Pv2+/33+/37/f6g0ug8otBNq9S63u6Jx+IEiMJfs9hzvd3f8Pcqmsv///+OsMg+AAAFP0lEQVR4XuzPSQ0AIAwAQcT15PIvhy8OaMiOg2n7E0TeI0KECJH6iBAhQoQIESJEiEyXGN10ZbvkUusjxGf9yGHvjhpRW8Iwjj+oIIQQlh0FgBARiEIs7eb7f5xzdW5m9j5nzbPe1rwX/b7B343VzDszD+f1yvIs/tfscqV+/qAz5PlksJqHl/zq4ORZVUjnaHMepPnNo46OkNbeElJa2muFDrmvDSFiWLsPF9I7LkNQ+bgXJOSlOgNhM9WXzEPa2znIQ267nWnIUzSJEZmMnjIL6dYKGKFCrZtNSGMBI7bQyCDkbR0ZWH8bdcjFHDIxdzHSkG40gYxMRN3RhbRLyFCpPaqQZhGZKjZHE3KWQ8ZyZ6MI2Y+RuXhfPmQXQewSIXzHVKlSPby8ef03+vXm8rBaKU2JlMiG7ONvCmsHLfMXrYO1AtLalww5i/FHizvX7+Y/vV/vLCKV+EwupJnDn5SvTCJXZaSRa0qFtItwxRu3JrHbjRi8YlsmpFuCq39nvNz1wSt1RUIiOKZPjbfTadAiiZCLCdhWHg3hcQWsiYv0IW9zsG31DKW3BdbcW+qQddh+GdovsNbThjS4DvmSRrqQ7gIsWyaVLZAWuqlCarCs9EwqvRWQamlCngpWx/SjSelxGpzCU4qQCJZTk9opSBEf0rbXE/tGQB+cyTYdsm11xHdGwF0MzjYb8pKzQjaMiA1wci9kSBWWWyPiFqQqF9Kz9z/KRkgZnJkeFXIMy5URcgXSMRHi/t0WjZhFcMpMyD0sO0bMDkj3REgNlmsj5hqkGhEytDoK70bMewGcoX9IC5Y1I2gNpJZ3yB4sB0bQAUh73iFL7t9CUAukJd+QDixTRtQUSB3PkCNYSkZUCaQjz5BNWCpGVAWkTc+QeViqRlQVpHm/kGfYDo2oQ7CevUJOYLs0oi7BOvEKGcB2Y0TdgDXwClmF7dWIegVr1SskD5sRBlbeJ+QBekPw4BFyrjnk3COkrjmk7hFS0RxS8QhZ1hyy7BEyqzlk1iMEmkOQPOQ3oPcfIvA7ccgXoPcTBfhKHPIB6P1oBD4Sh3wDej/jge/EIQM45H9Y8QaJQ37gkP+py/tJHNKHQ37xgddPHPIJh/xyEO8zccgQDvkFOt4wcUgMh/ySKS9OHAJL2EVsFxGiaFuBD1G20cOHaNt640OUbYbyIdq2p/kQZQMDfIi2EQ4+JORQjXyI/JhToBD5wbOgIfKjgDzmozH8cKYrZj7jw4/LuobUD6vgA8yuT+qnbvCRclefW3wIPeTv+iGXgwIfu3AN2AW6sAdhXN/skmnYo0muD3oRO+hhMdcXv60Q9vgev61g4JA/UMlLtfUmfsSVN5tqM5Q/dCxuOd32dIBj4ALb03UoVidGOFQ6J4ZqVHogxpw0yhODZyqtEqOAKg2I4UyVTohxWZWeiQFmjeaJkXKVNokhf5WOiGMXKnWIgzAaLRFHk1TaIw6LqdRiju8pNKQOVCpUo464KnTPHTpWp0weA1fnmD2Yrwl/MN9UoUyVv7xCldwLf52IKtsCF7wEIHnBi4mgSCRwCVIA7CVI+r9TagIXhWmw0BW4uk2DhsBlehqsS1xvqMDcm8iFkwGQF05q/2cSSV3KGlipK3ZNblDFtuDFxQHlmqJXSQcTn8le7h3MvvR164Hsji/A1/UkwfiRCF3PdowfUtH1tM34sSFVzz+NH+RS9UTa+NE6Tc8Ijh921PTU5vjxU8XP0Y4fCB4/2cw/ov1Pe3cgAwAAACDM3zqOtmdwgmzNjeZBQEA+gYCAgICAgICAgIAETuKXxaAVTVgAAAAASUVORK5CYII=>>

Rasterific is a vector drawing library (a rasterizer)
implemented in pure haskell.

Can render vector graphics to an image and export vector data to PDF.")
    (license license:bsd-3)))

haskell-8.4-Rasterific

(define-public haskell-8.4-ad
  (package
    (name "haskell-8.4-ad")
    (version "4.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ad/ad-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0q4dvi02k21jq8xf0ywgmcs5mph4hpx5s3y3pj839y0g3x5paplw"))))
    (properties `((upstream-name . "ad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("5" "0yzyfqhsafzaqzj8wmjrj5ghm6jwbxya3wxc9sjl59j9q20jc4nq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-reify)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-erf)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
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

haskell-8.4-ad

(define-public haskell-8.4-adjunctions
  (package
    (name "haskell-8.4-adjunctions")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/adjunctions/")
    (synopsis "Adjunctions and representable functors")
    (description "Adjunctions and representable functors.")
    (license license:bsd-3)))

haskell-8.4-adjunctions

(define-public haskell-8.4-aeson-typescript
  (package
    (name "haskell-8.4-aeson-typescript")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-typescript/aeson-typescript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sx4gavp0pvnxlxwix1di34vm2bfi5d02mzgzs402grqhh1v38vp"))))
    (properties `((upstream-name . "aeson-typescript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y5baadwfpyszd78dfbcln93ypg7ai6qvbdz7r95ili8p0vwikbk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-interpolate)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/codedownio/aeson-typescript#readme")
    (synopsis "Generate TypeScript definition files from your ADTs")
    (description
     "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>")
    (license license:bsd-3)))

haskell-8.4-aeson-typescript

(define-public haskell-8.4-authenticate-oauth
  (package
    (name "haskell-8.4-authenticate-oauth")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate-oauth/authenticate-oauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xc37yql79r9idjfdhzg85syrwwgaxggcv86myi6zq2pzl89yvfj"))))
    (properties `((upstream-name . "authenticate-oauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1fxwn8bn6qs8dhxq0q04psq7zp1qvw1b6g3vmsclgyj9p7kr77ms")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-RSA)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-SHA)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-8.4-authenticate-oauth

(define-public haskell-8.4-blaze-colonnade
  (package
    (name "haskell-8.4-blaze-colonnade")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-colonnade/blaze-colonnade-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k51iqfr2dvc445q6jzvf4mb3q3x4z0vvf9p8fhd4npazwb72bqz"))))
    (properties `((upstream-name . "blaze-colonnade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-colonnade)))
    (home-page "https://github.com/andrewthad/colonnade#readme")
    (synopsis "Helper functions for using blaze-html with colonnade")
    (description "Blaze HTML and colonnade")
    (license license:bsd-3)))

haskell-8.4-blaze-colonnade

(define-public haskell-8.4-butcher
  (package
    (name "haskell-8.4-butcher")
    (version "1.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/butcher/butcher-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06pas8iq0qvvraidjid9m85z7wx8cy017xhyqralxz67alirmchc"))))
    (properties `((upstream-name . "butcher") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1r4v2biwd0hp6v1jgx7zngh0hqlsk8ia3bvggbxxn5sp5x7ika1m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-deque)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-multistate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unsafe)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/lspitzner/butcher/")
    (synopsis "Chops a command or program invocation into digestable pieces.")
    (description
     "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).")
    (license license:bsd-3)))

haskell-8.4-butcher

(define-public haskell-8.4-butter
  (package
    (name "haskell-8.4-butter")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/butter/butter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r215qycck6w6286w0y69ghpzmcp1bl23j44arabrh2p39lb4h46"))))
    (properties `((upstream-name . "butter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-forkable-monad)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-network-simple)))
    (home-page "https://github.com/System-Indystress/Butter#readme")
    (synopsis "Monad Transformer for Asyncronous Message Passing")
    (description
     "Please see the README on Github at <https://github.com/System-Indystress/Butter#readme>")
    (license license:bsd-3)))

haskell-8.4-butter

(define-public haskell-8.4-cassava-records
  (package
    (name "haskell-8.4-cassava-records")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-records/cassava-records-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13dgcqrlvcqifgisfk80f9siwzzbk96jhhbrnmrpmg95270k5y0i"))))
    (properties `((upstream-name . "cassava-records") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/gdevanla/cassava-records#readme")
    (synopsis "Auto-generation of records data type.")
    (description
     "cassava-records library helps in auto-creating record data types using Template Haskell by inferring types from the columns of a csv or compatible input file. The record and type classes instances generated can be seamlessly used with cassava(the haskell csv reader library) to load the data into these record types without dealing with any other level of abstraction.
Please see README on Github at <https://github.com/gdevanla/cassava-records#readme>")
    (license license:bsd-3)))

haskell-8.4-cassava-records

(define-public haskell-8.4-componentm-devel
  (package
    (name "haskell-8.4-componentm-devel")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm-devel/componentm-devel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02jvv2f5akl47jg66xwcgj0s5wif0wckp2d0y6x4imr6kcy31mrd"))))
    (properties `((upstream-name . "componentm-devel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-componentm)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-foreign-store)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-teardown)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Easy REPL driven development using ComponentM")
    (description
     "This library enhances the componentm with auto-reloading
capabilites for your application, allowing to ensure cleanup
of resources when doing REPL driven development, or when using
ghcid")
    (license license:expat)))

haskell-8.4-componentm-devel

(define-public haskell-8.4-dual-tree
  (package
    (name "haskell-8.4-dual-tree")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dual-tree/dual-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sx9p9yr06z7bi7pshjpswizs6bkmfzcpw8xlasriniry86df4kl"))))
    (properties `((upstream-name . "dual-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "00gwdgzy80p9c5r4wafm1fiqnh2hy1xjsbl86h1qkk7xg33g2ssi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-monoid-extras)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-newtype-generics)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-testing-feat)))
    (home-page "https://hackage.haskell.org/package/dual-tree")
    (synopsis "Rose trees with cached and accumulating monoidal annotations")
    (description "Rose (n-ary) trees with both upwards- (/i.e./
cached) and downwards-traveling (/i.e./
accumulating) monoidal annotations.  This is used
as the core data structure underlying
the @@diagrams@@ framework
(<http://projects.haskell.org/diagrams>), but
potentially has other applications as well.

Abstractly, a DUALTree is a rose (n-ary) tree
with data (of type @@l@@) at leaves, data (of type
@@a@@) at internal nodes, and two types of monoidal
annotations, one (of type @@u@@) travelling \\\"up\\\"
the tree and one (of type @@d@@) traveling
\\\"down\\\".

See \"Data.Tree.DUAL\" for full documentation.
\"Data.Tree.DUAL\" provides a public API which
should suffice for most purposes.
\"Data.Tree.DUAL.Internal\" exports more of the
internal implementation---use it at your own
risk.")
    (license license:bsd-3)))

haskell-8.4-dual-tree

(define-public haskell-8.4-ekg
  (package
    (name "haskell-8.4-ekg")
    (version "0.4.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ekg/ekg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1k3d5kiqm034qs04k0pcisf4zbdmx2fcgl9a6c1lzzjw96zf6aj8"))))
    (properties `((upstream-name . "ekg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "05k50vx956zlh7dvkhi7qvd9f7x48hg5hwgqjqsf5fwzm1cqir6n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-ekg-json)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-snap-core)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-snap-server)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tibbe/ekg")
    (synopsis "Remote monitoring of processes")
    (description
     "This library lets you remotely monitor a running process over HTTP.
It provides a simple way to integrate a monitoring server into any
application.")
    (license license:bsd-3)))

haskell-8.4-ekg

(define-public haskell-8.4-fay-base
  (package
    (name "haskell-8.4-fay-base")
    (version "0.21.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fay-base/fay-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i19q04a4z3aix8njw5im8ixkw7l53xfhff0rrgx3ibnf9jy752z"))))
    (properties `((upstream-name . "fay-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-fay)))
    (home-page "https://github.com/faylang/fay/")
    (synopsis "The base package for Fay.")
    (description
     "The base package for Fay.
This package amongst others exports Prelude and FFI which you probably want to use with Fay.")
    (license license:bsd-3)))

haskell-8.4-fay-base

(define-public haskell-8.4-generics-eot
  (package
    (name "haskell-8.4-generics-eot")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-eot/generics-eot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16yfzv9aqyizm57r5m5ddwdnlh05fvlrxjn6m3vqz33kvy3drgjs"))))
    (properties `((upstream-name . "generics-eot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-interpolate)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-mockery)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-shake)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)))
    (home-page "https://generics-eot.readthedocs.io/")
    (synopsis
     "A library for generic programming that aims to be easy to understand")
    (description
     "Documentation is here: <https://generics-eot.readthedocs.io/>")
    (license license:bsd-3)))

haskell-8.4-generics-eot

(define-public haskell-8.4-genvalidity-hspec-aeson
  (package
    (name "haskell-8.4-genvalidity-hspec-aeson")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-aeson/genvalidity-hspec-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bqjfl86gj2201w5yingzizwq8hn63zdhir9wp3p0jiah2zp5rxh"))))
    (properties `((upstream-name . "genvalidity-hspec-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances")
    (description "Standard spec's for aeson-related Instances")
    (license license:expat)))

haskell-8.4-genvalidity-hspec-aeson

(define-public haskell-8.4-geodetics
  (package
    (name "haskell-8.4-geodetics")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/geodetics/geodetics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hp5p6m6szj1h5hzmrs3pyj4cfvcvkgdc95s5xa0lcxc3z8bn7g2"))))
    (properties `((upstream-name . "geodetics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ns8368ylapmgk7h9l1ppvrnrqd9jgrm304icf6v47wdan1r82xr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-checkers)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-dimensional)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/PaulJohnson/geodetics")
    (synopsis "Terrestrial coordinate systems and geodetic calculations.")
    (description
     "Precise geographical coordinates (latitude & longitude), with conversion between
different reference frames and projections.

Certain distinguished reference frames and grids are given distinct
types so that coordinates expressed within them cannot be confused with
from coordinates in other frames.")
    (license license:bsd-3)))

haskell-8.4-geodetics

(define-public haskell-8.4-ghc-exactprint
  (package
    (name "haskell-8.4-ghc-exactprint")
    (version "0.5.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-exactprint/ghc-exactprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "141k6qiys0m0r4br7ikp4i546vs3xcil9cwglzcdfcbnb5nj1z87"))))
    (properties `((upstream-name . "ghc-exactprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-roundtrip" "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
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

haskell-8.4-ghc-exactprint

(define-public haskell-8.4-glabrous
  (package
    (name "haskell-8.4-glabrous")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/glabrous/glabrous-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ba1smngfq6xqwcbfg10sy2qjxh7miyd8qbfmmv14klzwimk44ri"))))
    (properties `((upstream-name . "glabrous") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-text)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/MichelBoucey/glabrous")
    (synopsis "A template DSL library")
    (description "A minimalistic, Mustache-like syntax, truly logic-less,
pure Text template DSL library")
    (license license:bsd-3)))

haskell-8.4-glabrous

(define-public haskell-8.4-gloss
  (package
    (name "haskell-8.4-gloss")
    (version "1.12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gloss/gloss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jxcvvmxvmb7n0wp4lwhvl4axkbhwwv4i6pi4xng357hfanxh1k9"))))
    (properties `((upstream-name . "gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fglut" "-f-glfw" "-f-explicitbackend")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-GLUT)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-OpenGL)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-bmp)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-gloss-rendering)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Painless 2D vector graphics, animations and simulations.")
    (description
     "Gloss hides the pain of drawing simple vector graphics behind a nice data type and
a few display functions. Gloss uses OpenGL under the hood, but you won't need to
worry about any of that. Get something cool on the screen in under 10 minutes.")
    (license license:expat)))

haskell-8.4-gloss

(define-public haskell-8.4-google-oauth2-jwt
  (package
    (name "haskell-8.4-google-oauth2-jwt")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/google-oauth2-jwt/google-oauth2-jwt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "121g7fsdcnv65gp81z450dqqw6ii75pwn3cbilwx5yv4mm571mvi"))))
    (properties `((upstream-name . "google-oauth2-jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-RSA)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unix-time)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/MichelBoucey/google-oauth2-jwt")
    (synopsis "Get a signed JWT for Google Service Accounts")
    (description "This library implements the creation of the
signed JWT for Google Service Accounts.")
    (license license:bsd-3)))

haskell-8.4-google-oauth2-jwt

(define-public haskell-8.4-graylog
  (package
    (name "haskell-8.4-graylog")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/graylog/graylog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10h0d87gvvg4bznnlj9ad0ppjz0nibmcrrlmrcwjrl583pk7709d"))))
    (properties `((upstream-name . "graylog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-casing)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/AndrewRademacher/haskell-graylog")
    (synopsis "Support for graylog output.")
    (description "Support for sending GELF formatted messages to graylog over
chunked UDP.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-graylog

(define-public haskell-8.4-hasql-pool
  (package
    (name "haskell-8.4-hasql-pool")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-pool/hasql-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bsxh9yf5p2iknrnssrif563n42ih14cj95qmy9z2lz2kbycscrs"))))
    (properties `((upstream-name . "hasql-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-hasql)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/nikita-volkov/hasql-pool ")
    (synopsis "A pool of connections for Hasql")
    (description "")
    (license license:expat)))

haskell-8.4-hasql-pool

(define-public haskell-8.4-hasql-transaction
  (package
    (name "haskell-8.4-hasql-transaction")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-transaction/hasql-transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kvzj16mw471z2vgm27k0nfwfgf5cq3w6qaqwqz4247p11dkrjyy"))))
    (properties `((upstream-name . "hasql-transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-bytestring-tree-builder)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-hasql)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/nikita-volkov/hasql-transaction ")
    (synopsis
     "A composable abstraction over the retryable transactions for Hasql")
    (description "")
    (license license:expat)))

haskell-8.4-hasql-transaction

(define-public haskell-8.4-hedgehog
  (package
    (name "haskell-8.4-hedgehog")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog/hedgehog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xz10ycdm5vk9nrcym1fi83k19frfwqz18bz8bnpzwvaj0j41yfj"))))
    (properties `((upstream-name . "hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0kwmxjb1y3gk85njacw5wcvmq3bzp1649dbjzgzpiba2w342f7il")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-concurrent-output)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lifted-async)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-wl-pprint-annotated)))
    (home-page "https://hedgehog.qa")
    (synopsis "Hedgehog will eat all your bugs.")
    (description
     "Hedgehog is a modern property-based testing system, in the spirit of
QuickCheck. Hedgehog uses integrated shrinking, so shrinks obey the
invariants of generated values by construction.

To get started quickly, see the examples:
<https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-example>")
    (license license:bsd-3)))

haskell-8.4-hedgehog

(define-public haskell-8.4-hierarchy
  (package
    (name "haskell-8.4-hierarchy")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hierarchy/hierarchy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "060kgg8gfp2155fibksi65xy5psbwabh4wymg7i6cqh3k3zhxy95"))))
    (properties `((upstream-name . "hierarchy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/jwiegley/hierarchy#readme")
    (synopsis "Predicated traversal of generated trees")
    (description "Predicated traversal of generated trees.")
    (license license:bsd-3)))

haskell-8.4-hierarchy

(define-public haskell-8.4-hledger
  (package
    (name "haskell-8.4-hledger")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ly4sp0lhb3w5nrd77xd84bcyvm000fwwjipm7gq8bjhabw20i7n"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")
       #:cabal-revision
       ("1" "1kj1by80j7f6rzwfccwl2cp53bb3lyivh8a8xnawdyxab1pkyz34")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-Decimal)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-csv)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-here)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hledger-lib)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tabular)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-wizards)))
    (home-page "http://hledger.org")
    (synopsis "Command-line interface for the hledger accounting tool")
    (description
     "This is hledger's command-line interface.
Its basic function is to read a plain text file describing
financial transactions and produce useful reports.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hledger

(define-public haskell-8.4-hspec-checkers
  (package
    (name "haskell-8.4-hspec-checkers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-checkers)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/hspec-checkers")
    (synopsis "Allows to use checkers properties from hspec")
    (description
     "Allows to use <http://hackage.haskell.org/package/checkers checkers>
properties from <http://hackage.haskell.org/package/hspec hspec>.")
    (license license:bsd-3)))

haskell-8.4-hspec-checkers

(define-public haskell-8.4-hspec-wai-json
  (package
    (name "haskell-8.4-hspec-wai-json")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai-json/hspec-wai-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p6adknahl357cjkfg32aha6v79mwwr55isgl4hj2rh45r429qw2"))))
    (properties `((upstream-name . "hspec-wai-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-qq)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Testing JSON APIs with hspec-wai")
    (description "Testing JSON APIs with hspec-wai")
    (license license:expat)))

haskell-8.4-hspec-wai-json

(define-public haskell-8.4-hsx-jmacro
  (package
    (name "haskell-8.4-hsx-jmacro")
    (version "7.3.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsx-jmacro/hsx-jmacro-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ndgy5vf5rwgwqya75ny5vbr7hfqwjrdgfgpwf5410bk0603v47i"))))
    (properties `((upstream-name . "hsx-jmacro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-hsp)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-jmacro)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-wl-pprint-text)))
    (home-page "http://www.happstack.com/")
    (synopsis "hsp+jmacro support")
    (description
     "HSP allows for the use of literal XML in Haskell program text. JMacro allows for the use of javascript-syntax for generating javascript in Haskell. This library makes it easy to embed JMacro generated javascript in HSX templates.")
    (license license:bsd-3)))

haskell-8.4-hsx-jmacro

(define-public haskell-8.4-hunit-dejafu
  (package
    (name "haskell-8.4-hunit-dejafu")
    (version "1.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hunit-dejafu/hunit-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10zndwkgpliyycyynfd34nhzplfhs9cychpznzzcwbpckx3w5ajl"))))
    (properties `((upstream-name . "hunit-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-dejafu)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the HUnit test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/HUnit HUnit>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-8.4-hunit-dejafu

(define-public haskell-8.4-incremental-parser
  (package
    (name "haskell-8.4-incremental-parser")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/incremental-parser/incremental-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07banm2lnrhjvihs0iaij0kqgff198qcbah02s3cjyyl70cmllfr"))))
    (properties `((upstream-name . "incremental-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-checkers)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/blamario/incremental-parser")
    (synopsis
     "Generic parser library capable of providing partial results from partial input.")
    (description
     "This package defines yet another parser combinator library. This one is implemented using the concept of Brzozowski
derivatives, tweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out
of the box, as well as any other data type for which the monoid-subclasses package defines instances. If the parser
result is also a monoid, its chunks can be extracted incrementally, before the complete input is parsed.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-incremental-parser

(define-public haskell-8.4-inliterate
  (package
    (name "haskell-8.4-inliterate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cheapskate)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lucid-extras)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-plotlyhs)))
    (home-page "https://github.com/diffusionkinetics/open/inliterate")
    (synopsis "Interactive literate programming")
    (description
     "Evaluate markdown code blocks to show the results of running the code.")
    (license license:expat)))

haskell-8.4-inliterate

(define-public haskell-8.4-jmacro-rpc
  (package
    (name "haskell-8.4-jmacro-rpc")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jmacro-rpc/jmacro-rpc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gqyv8y4hjk2fwvzar173hvhgw860as0wijfhxqnxbkhd7f2r4gf"))))
    (properties `((upstream-name . "jmacro-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-jmacro)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://hub.darcs.net/gershomb/jmacro")
    (synopsis
     "JSON-RPC clients and servers using JMacro, and evented client-server Reactive Programming.")
    (description
     "Base jmacro-rpc package. Provides server-independent functions.")
    (license license:bsd-3)))

haskell-8.4-jmacro-rpc

(define-public haskell-8.4-jose-jwt
  (package
    (name "haskell-8.4-jose-jwt")
    (version "0.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jose-jwt/jose-jwt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0azkqllqc35hp2d2q50cwk472amhf0q5fkqs04a4kpnj50z6kqfk"))))
    (properties `((upstream-name . "jose-jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdoctest")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/tekul/jose-jwt")
    (synopsis "JSON Object Signing and Encryption Library")
    (description
     "
An implementation of the JOSE suite of IETF standards
and the closely related JWT (JSON web token) spec
(<https://tools.ietf.org/html/rfc7519/>).

Both signed and encrypted JWTs are supported, as well as simple
JWK keys.")
    (license license:bsd-3)))

haskell-8.4-jose-jwt

(define-public haskell-8.4-jvm-batching
  (package
    (name "haskell-8.4-jvm-batching")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jvm-batching/jvm-batching-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06vxhlpvb8ilj0xm5k7chzpsn0f7m48l7728g2m7likh55rs2dxq"))))
    (properties `((upstream-name . "jvm-batching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributed-closure)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-inline-java)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-jni)
                  (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-jvm)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages java) openjdk18)))
    (home-page
     "http://github.com/tweag/inline-java/tree/master/jvm-batching#readme")
    (synopsis
     "Provides batched marshalling of values between Java and Haskell.")
    (description "Please see README.md.")
    (license license:bsd-3)))

haskell-8.4-jvm-batching

(define-public haskell-8.4-keys
  (package
    (name "haskell-8.4-keys")
    (version "3.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/keys/keys-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yqm4gpshsgswx6w78z64c83gpydh6jhgslx2lnc10nzhy0s9kkz"))))
    (properties `((upstream-name . "keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/keys/")
    (synopsis "Keyed functors and containers")
    (description
     "This package provides a bunch of ad hoc classes for accessing parts of a container.

In practice this package is largely subsumed by the
<https://hackage.haskell.org/package/lens lens package>,
but it is maintained for now as it has much
simpler dependencies.")
    (license license:bsd-3)))

haskell-8.4-keys

(define-public haskell-8.4-kleene
  (package
    (name "haskell-8.4-kleene")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kleene/kleene-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00hbrmsm19azxxql14y6k7h7z8k4azlmy4y0gimyqbx4nb7swln6"))))
    (properties `((upstream-name . "kleene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1izdmr7a2d7qssnj732m2qc02inm3hrc882x9nyvz68648pvwwsx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-MemoTrie)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lattices)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-range-set-list)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-regex-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-step-function)))
    (home-page "https://github.com/phadej/kleene")
    (synopsis "Kleene algebra")
    (description
     "Kleene algebra

Think: Regular expressions

Implements ideas from /Regular-expression derivatives re-examined/ by
Scott Owens, John Reppy and Aaron Turon
<https://doi.org/10.1017/S0956796808007090>")
    (license license:bsd-3)))

haskell-8.4-kleene

(define-public haskell-8.4-language-docker
  (package
    (name "haskell-8.4-language-docker")
    (version "6.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-docker/language-docker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brlqlxa1h7iv2p17h4nb6ly7nr4dr9j815z3yiz0gbj91bgj4c1"))))
    (properties `((upstream-name . "language-docker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "10f734lnj48wj9g59k2mj3fkdy7ckpi201058mfn3jlm35azv2fr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)))
    (home-page "https://github.com/hadolint/language-docker#readme")
    (synopsis "Dockerfile parser, pretty-printer and embedded DSL")
    (description
     "All functions for parsing, printing and writting Dockerfiles are exported through @@Language.Docker@@. For more fine-grained operations look for specific modules that implement a certain functionality.
See the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-language-docker

(define-public haskell-8.4-log-postgres
  (package
    (name "haskell-8.4-log-postgres")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-postgres/log-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16v3wli0jll5j24pdzmya90lyawqv3rcvsfd4z88kgcchds07iji"))))
    (properties `((upstream-name . "log-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1m16y1g9vaan5vcm9krqfppwc0zisi005d0ckqbwga3vyyw58lwl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-hpqtypes)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-log-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/scrive/log")
    (synopsis "Structured logging solution (PostgreSQL back end)")
    (description "PostgreSQL back end for the 'log' library suite.
Depends on 'log-base'.")
    (license license:bsd-3)))

haskell-8.4-log-postgres

(define-public haskell-8.4-logging-effect
  (package
    (name "haskell-8.4-logging-effect")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-effect/logging-effect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10pighhav1zmg54gvfnvxcvz83698ziaq9ccs3zqc7jxahmyaslr"))))
    (properties `((upstream-name . "logging-effect") (hidden? . #f)))
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
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-delay)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (home-page "https://github.com/ocharles/logging-effect")
    (synopsis
     "A mtl-style monad transformer for general purpose & compositional logging")
    (description "")
    (license license:bsd-3)))

haskell-8.4-logging-effect

(define-public haskell-8.4-messagepack-rpc
  (package
    (name "haskell-8.4-messagepack-rpc")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/messagepack-rpc/messagepack-rpc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g5096h595ajcb6kyb4s1azkwv9cmw2w7r9nvmm4wa388rj60yda"))))
    (properties `((upstream-name . "messagepack-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05p6naaxswmsc3w7k67ydzzwyn60ymp0jbrc0f66p2sajvlnviax")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-messagepack)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-network-simple)))
    (home-page "http://github.com/rodrigosetti/messagepack-rpc")
    (synopsis "Message Pack RPC over TCP")
    (description "Message Pack RPC over TCP")
    (license license:expat)))

haskell-8.4-messagepack-rpc

(define-public haskell-8.4-mono-traversable
  (package
    (name "haskell-8.4-mono-traversable")
    (version "1.0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable/mono-traversable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04c8gcksxkrfdll2lm3aaj1dgz7snvfa8avsccs3h6v5ygvdp5h0"))))
    (properties `((upstream-name . "mono-traversable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1yxa7dp2vvsr3bl3yl5find7kjc4fjac4zyd1dhfv71vs58b117f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
     "Please see the README at <https://www.stackage.org/package/mono-traversable>")
    (license license:expat)))

haskell-8.4-mono-traversable

(define-public haskell-8.4-netwire-input
  (package
    (name "haskell-8.4-netwire-input")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-netwire)))
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

haskell-8.4-netwire-input

(define-public haskell-8.4-network-anonymous-i2p
  (package
    (name "haskell-8.4-network-anonymous-i2p")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-anonymous-i2p/network-anonymous-i2p-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b7z7w105l1yd3xpnnl2z779m5zknf756cslksbbpsy16rn7kxfg"))))
    (properties `((upstream-name . "network-anonymous-i2p") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-debug" "-f-eventlog")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-network-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-network-simple)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (home-page "http://github.com/solatis/haskell-network-anonymous-i2p")
    (synopsis "Haskell API for I2P anonymous networking")
    (description "Haskell API for I2P anonymous networking")
    (license license:expat)))

haskell-8.4-network-anonymous-i2p

(define-public haskell-8.4-network-anonymous-tor
  (package
    (name "haskell-8.4-network-anonymous-tor")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-anonymous-tor/network-anonymous-tor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jbm29795dznmrdkvl95v9xhj8pcmwgsdk2ngaj6zv5a9arybbj1"))))
    (properties `((upstream-name . "network-anonymous-tor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base32string)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hexstring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-network-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-network-simple)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-socks)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-splice)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Haskell API for Tor anonymous networking")
    (description
     "This library providess an API that wraps around the Tor control port
to create ad-hoc hidden services")
    (license license:expat)))

haskell-8.4-network-anonymous-tor

(define-public haskell-8.4-objective
  (package
    (name "haskell-8.4-objective")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/objective/objective-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i36r3ygwpzb57ga0jjkp9rzikpsp15l777dclp7yi1zvqz2ikrg"))))
    (properties `((upstream-name . "objective") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "039j3xac9ish0yk4w04bmip6g9p6ndfd9ngh46ya125ms4nhmyj4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monad-skeleton)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-witherable)))
    (home-page "https://github.com/fumieval/objective")
    (synopsis "Composable objects")
    (description "Composable objects")
    (license license:bsd-3)))

haskell-8.4-objective

(define-public haskell-8.4-one-liner-instances
  (package
    (name "haskell-8.4-one-liner-instances")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/one-liner-instances/one-liner-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gy900nd5n6cffqw63hlkqg4ly86wjlfqgdcm1zy2nyx7dxg914k"))))
    (properties `((upstream-name . "one-liner-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0iqfh0rjcxw9alwy0dr8vld2xqwjmkgxp3ilkd5n08gqc0cw83fw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-one-liner)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/mstksg/one-liner-instances#readme")
    (synopsis "Generics-based implementations for common typeclasses")
    (description
     "Provides generics-based implementations for common typeclasses using
Generics.

Please see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>")
    (license license:bsd-3)))

haskell-8.4-one-liner-instances

(define-public haskell-8.4-open-witness
  (package
    (name "haskell-8.4-open-witness")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/open-witness/open-witness-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04a10cv0iddnvp5my4h00bmmpc2mxz6c5gih5p4iyc7bdq6m0w07"))))
    (properties `((upstream-name . "open-witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-witness)))
    (home-page "https://github.com/AshleyYakeley/open-witness")
    (synopsis "open witnesses")
    (description
     "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad.
See the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).")
    (license license:bsd-3)))

haskell-8.4-open-witness

(define-public haskell-8.4-perf
  (package
    (name "haskell-8.4-perf")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/perf/perf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1z0128fnqlraj8sj26fsfy9izfr1ld3k5c3sh0471fh36vf507c8"))))
    (properties `((upstream-name . "perf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-rdtsc)))
    (home-page "https://github.com/tonyday567/perf#readme")
    (synopsis "Low-level run time measurement.")
    (description
     "A set of tools to accurately measure time performance of Haskell programs.
perf aims to be lightweight by having minimal dependencies on standard libraries.
See the Perf module for an example and full API documentation.")
    (license license:bsd-3)))

haskell-8.4-perf

(define-public haskell-8.4-pipes-group
  (package
    (name "haskell-8.4-pipes-group")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lens-family-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-parse)))
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

haskell-8.4-pipes-group

(define-public haskell-8.4-pkcs10
  (package
    (name "haskell-8.4-pkcs10")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pkcs10/pkcs10-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15328w93rbpxx1wz3agw0271gxcy1ykgr6lcwkqcgi5scwzr4vl9"))))
    (properties `((upstream-name . "pkcs10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-asn1-parse)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/fcomb/pkcs10-hs#readme")
    (synopsis "PKCS#10 library")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-pkcs10

(define-public haskell-8.4-proto-lens
  (package
    (name "haskell-8.4-proto-lens")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens/proto-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1awlp7101vhqf2hhz3h93mf38lyyfx5ay3gvrdna0k3msykimgw7"))))
    (properties `((upstream-name . "proto-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-lens-family)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lens-labels)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "A lens-based implementation of protocol buffers in Haskell.")
    (description
     "The proto-lens library provides to protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:

* Composable field accessors via lenses

* Simple field name resolution/overloading via type-level literals

* Type-safe reflection and encoding/decoding of messages via GADTs")
    (license license:bsd-3)))

haskell-8.4-proto-lens

(define-public haskell-8.4-random-fu
  (package
    (name "haskell-8.4-random-fu")
    (version "0.2.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-fu/random-fu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i5hg74gv6885vnhmyknydhsyrps2h5zjiq4dv992jg3xnrs9cxn"))))
    (properties `((upstream-name . "random-fu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4_2" "-fmtl2")
       #:cabal-revision
       ("1" "1gqgvf5gm9bj1hagrv1sd73n5f6qhyyrzwi8gcl24q0j4pkrdxyp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-erf)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-log-domain)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-math-functions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-random-shuffle)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-random-source)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-rvar)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-random-fu

(define-public haskell-8.4-rebase
  (package
    (name "haskell-8.4-rebase")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rebase/rebase-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gah2qwfpzwamnikbc5h4nv6dgvv9h16di9ka7946za3nibyasya"))))
    (properties `((upstream-name . "rebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fail)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/nikita-volkov/rebase")
    (synopsis "A more progressive alternative to the \"base\" package")
    (description
     "This package is intended for those who are tired of keeping
long lists of dependencies to the same essential libraries in each package
as well as the endless imports of the same APIs all over again.
It also supports the modern tendencies in the language.

To solve those problems this package does the following:

* Reexport the original APIs under the \\\"Rebase\\\" namespace.

* Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module.

* Give priority to the modern practices in the conflicting cases.

The policy behind the package is only to reexport the non-ambiguous
and non-controversial APIs, which the community has obviously settled on.
The package is intended to rapidly evolve with the contribution from the community,
with the missing features being added with pull-requests.")
    (license license:expat)))

haskell-8.4-rebase

(define-public haskell-8.4-recursion-schemes
  (package
    (name "haskell-8.4-recursion-schemes")
    (version "5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/recursion-schemes/recursion-schemes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17x0kjl3yqanx234mb838yy21gw4if6qgzpi5l0b17m8llvp086v"))))
    (properties `((upstream-name . "recursion-schemes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("3" "05fvpi3dc44h2a097fb9cq1jqdjq2b3sdf5hzfn9g00bid37bb5q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)))
    (home-page "http://github.com/ekmett/recursion-schemes/")
    (synopsis "Generalized bananas, lenses and barbed wire")
    (description "Recursion operators, see
\"Generalized bananas, lenses and barbed wire\"
by Erik Meijer, Maarten Fokkinga and Ross Paterson.")
    (license license:bsd-3)))

haskell-8.4-recursion-schemes

(define-public haskell-8.4-rest-stringmap
  (package
    (name "haskell-8.4-rest-stringmap")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rest-stringmap/rest-stringmap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2l46c1mqpxq7hi37vjhaihfyapifjaxbzyi1bdhjkybx7n9m32"))))
    (properties `((upstream-name . "rest-stringmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-json-schema)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-tostring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/rest-stringmap")
    (synopsis "Maps with stringy keys that can be transcoded to JSON and XML.")
    (description
     "Maps with stringy keys that can be transcoded to JSON and XML.")
    (license license:bsd-3)))

haskell-8.4-rest-stringmap

(define-public haskell-8.4-rhine
  (package
    (name "haskell-8.4-rhine")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rhine/rhine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00xmq61bgq84z8kvnjrh30zffm4q108gbxbndfkl6v63jl0346yj"))))
    (properties `((upstream-name . "rhine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-dunai)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)))
    (home-page "https://hackage.haskell.org/package/rhine")
    (synopsis "Functional Reactive Programming with type-level clocks")
    (description
     "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).
It separates the aspects of clocking, scheduling and resampling
from each other, and ensures clock-safety on the type level.
Signal processing units can be annotated by clocks,
which hold the information when data will be
input, processed and output.
Different components of the signal network
will become active at different times, or work
at different rates.
To schedule the components and allow them to communicate,
several standard scheduling and resampling solutions are implemented.
Own schedules and resampling buffers can be implemented in a reusable fashion.
A (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:
@@flow $ arrMSync_ (putStrLn \"Hello World!\") @@@@ (waitClock :: Millisecond 100)@@")
    (license license:bsd-3)))

haskell-8.4-rhine

(define-public haskell-8.4-sampling
  (package
    (name "haskell-8.4-sampling")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sampling/sampling-" version
                    ".tar.gz"))
              (sha256
               (base32
                "038fl0mdim3r25jsj8bgvnmkd7iy00hpwbc0yqwijsqyss9xrgn8"))))
    (properties `((upstream-name . "sampling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "168k8ykppa8pikfxy1gmby63kfzr833vswh8wcchz8li9vkd4w2h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-sampling

(define-public haskell-8.4-servant-client-core
  (package
    (name "haskell-8.4-servant-client-core")
    (version "0.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client-core/servant-client-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qfpakwl6yj6l2br9wa9zs0v7nzmj4bngspw6p536swx39npnkn2"))))
    (properties `((upstream-name . "servant-client-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "02pvrccfwvvy53gma56jcqnbia3pm1pncyghdkjp519bwff9iwvb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-8.4-servant-client-core

(define-public haskell-8.4-shelly
  (package
    (name "haskell-8.4-shelly")
    (version "1.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shelly/shelly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "023fbvbqs5gdwm30j5517gbdcc7fvz0md70dgwgpypkskj3i926y"))))
    (properties `((upstream-name . "shelly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-lifted" "-f-build-examples")
       #:cabal-revision
       ("1" "0crf0m077wky76f5nav2p9q4fa5q4yhv5l4bq9hd073dzdaywhz0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-contrib)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lifted-async)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-system-fileio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://github.com/yesodweb/Shelly.hs")
    (synopsis "shell-like (systems) programming in Haskell")
    (description
     "Shelly provides convenient systems programming in Haskell,
similar in spirit to POSIX shells. Shelly:

* is aimed at convenience and getting things done rather than
being a demonstration of elegance.

* has detailed and useful error messages

* maintains its own environment, making it thread-safe.

* is modern, using Text and system-filepath/system-fileio

Shelly is originally forked from the Shellish package.

See the shelly-extra package for additional functionality.

An overview is available in the README: <https://github.com/yesodweb/Shelly.hs/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.4-shelly

(define-public haskell-8.4-static-canvas
  (package
    (name "haskell-8.4-static-canvas")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-canvas/static-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jfp3nk9flzjw0qjkbh7rk7q0g6dsmgqb2xwrfmg5pnf13gj821p"))))
    (properties `((upstream-name . "static-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z3mi5z590xxmipd5fxylcmf39rrwvmwva2rkk6km1nxb5kfasl7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-double-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/jeffreyrosenbluth/static-canvas")
    (synopsis "DSL to generate HTML5 Canvas javascript.")
    (description
     "A simple DSL for writing HTML5 Canvas in haskell and converting it
to Javascript. By static we mean non-interactive, so the parts of
the Canvas API that need to query the browser for run time information
like `isPointInPath(x, y)` are not included. This turns out to be
a surprisingly small part of HTML5 Canvas.")
    (license license:bsd-3)))

haskell-8.4-static-canvas

(define-public haskell-8.4-tasty-dejafu
  (package
    (name "haskell-8.4-tasty-dejafu")
    (version "1.2.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-dejafu/tasty-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v9939w2vppa3zfgmyzgb4880cx5z9hw5cssg25qg6ymr6rczdr4"))))
    (properties `((upstream-name . "tasty-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-dejafu)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the Tasty test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/tasty tasty>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-8.4-tasty-dejafu

(define-public haskell-8.4-tasty-rerun
  (package
    (name "haskell-8.4-tasty-rerun")
    (version "1.1.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-rerun/tasty-rerun-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lf7i3ifszvghy0v1ahgif08bb1pgf7hhf147yr43d0r0hb2vrgp"))))
    (properties `((upstream-name . "tasty-rerun") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-reducers)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://github.com/ocharles/tasty-rerun")
    (synopsis
     "Run tests by filtering the test tree depending on the result of previous test
runs")
    (description
     "This ingredient adds the ability to run tests by first filtering the test tree
based on the result of a previous test run. For example, you can use this to
run only those tests that failed in the last run, or to run only tests that
have been added since tests were last ran.

This ingredient is specifically an ingredient *transformer* - given a list of
'Tasty.Ingredient's, 'rerunningTests' adds the ability for all of these
ingredients to run against a filtered test tree. This transformer can be
applied as follows:

> import Test.Tasty
> import Test.Tasty.Runners
>
> main :: IO ()
> main =
>   defaultMainWithIngredients
>     [ rerunningTests [ listingTests, consoleTestReporter ] ]
>     tests
>
> tests :: TestTree
> tests = undefined

This ingredient adds three command line parameters:

[@@--rerun-update@@] If specified the results of this test run will be saved to
the log file at @@--rerun-log-file@@. If the ingredient does not execute tests
(for example, @@--list-tests@@ is used) then the log file will not be
updated. This option is not enabled by default.  This option does not require
a value.

[@@--rerun-log-file@@] The path to the log file to read previous test
information from, and where to write new information to (if @@--rerun-update@@
is specified). This option defaults to @@.tasty-rerun-log@@.

[@@--rerun-filter@@] Which filters to apply to the 'Tasty.TestTree' based on
previous test runs. The value of this option is a comma separated list of the
following options:

* @@failures@@: Only run tests that failed on the previous run.

* @@exceptions@@: Only run tests that threw an exception on the previous run.

* @@new@@: Only run tests that are new since the previous test run.

* @@successful@@: Only run tests that were successful in the previous run.

Multiple options can be combined and will be taken under disjunction - so
@@--rerun-filter=failures,exceptions@@ will run only tests that failed *or*
threw an exception on the last run.

Defaults to all filters, which means all tests will be ran.")
    (license license:bsd-3)))

haskell-8.4-tasty-rerun

(define-public haskell-8.4-tdigest
  (package
    (name "haskell-8.4-tdigest")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tdigest/tdigest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kmqmzjcs406hv2fv9bkfayxpsd41dbry8bpkhy4y1jdgh33hvnl"))))
    (properties `((upstream-name . "tdigest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1crjfhxhs8ihbl2xn1dqr5w19g7w74mcf2w889my6zb935l7lyjs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-reducers)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "https://github.com/futurice/haskell-tdigest#readme")
    (synopsis "On-line accumulation of rank-based statistics")
    (description
     "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.

See original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl
for more details <https://github.com/tdunning/t-digest/blob/07b8f2ca2be8d0a9f04df2feadad5ddc1bb73c88/docs/t-digest-paper/histo.pdf>.")
    (license license:bsd-3)))

haskell-8.4-tdigest

(define-public haskell-8.4-throwable-exceptions
  (package
    (name "haskell-8.4-throwable-exceptions")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/throwable-exceptions/throwable-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ab9qx87r0wxrvx9fk77cpimj0pm1qa2pvcv4b8sadj0s8fkrcis"))))
    (properties `((upstream-name . "throwable-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-tasty-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/aiya000/hs-throwable-exceptions#README.md")
    (synopsis "throwable-exceptions gives the easy way to throw exceptions")
    (description "throwable-exceptions gives the easy way to throw exceptions")
    (license license:expat)))

haskell-8.4-throwable-exceptions

(define-public haskell-8.4-tibetan-utils
  (package
    (name "haskell-8.4-tibetan-utils")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tibetan-utils/tibetan-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09bqix2a2js98rhp748qx2i0vnxya3c6zvpjizbbnf5fwpspy01q"))))
    (properties `((upstream-name . "tibetan-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "17zyhdxwnq85kr60bnxirmyvw3b1679j5mhm3i30ri65896pjdwf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-composition-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)))
    (home-page "https://github.com/vmchale/tibetan-utils#readme")
    (synopsis "Parse and display tibetan numerals")
    (description
     "This package provides a [megaparsec](http://hackage.haskell.org/package/megaparsec) parser for Tibetan numerals, as well as efficient means to display numbers using Tibetan numerals.")
    (license license:bsd-3)))

haskell-8.4-tibetan-utils

(define-public haskell-8.4-turtle
  (package
    (name "haskell-8.4-turtle")
    (version "1.5.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/turtle/turtle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1124yhw0l8924cwkmap1qn2z0hf4vn3r73h4pmi9icahg8zpc1hg"))))
    (properties `((upstream-name . "turtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hostname)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-managed)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-optional-args)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-system-fileio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
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

haskell-8.4-turtle

(define-public haskell-8.4-tz
  (package
    (name "haskell-8.4-tz")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tz/tz-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0k35pw27a3hwg5wqjpfqij0y7rkdlmd85n4kj4ckna4z2v86dl7h"))))
    (properties `((upstream-name . "tz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-test-framework-th)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-tzdata)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/nilcons/haskell-tz")
    (synopsis "Efficient time zone handling")
    (description
     "The goal of this package is to provide a library that can read time
zone info files (aka. Olson files), and does time zone conversions
in a /pure/ and /efficient/ way.

We also provide platform-independent and/or compiled-in access to
the standard Time Zone Dabase by the means of the companion @@tzdata@@
package <http://hackage.haskell.org/package/tzdata>.

The package is currently in an alpha phase, I'm still experimenting
with different ideas wrt. scope\\/API\\/implementation\\/etc. All
comments are welcome!")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-tz

(define-public haskell-8.4-unfoldable
  (package
    (name "haskell-8.4-unfoldable")
    (version "0.9.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unfoldable/unfoldable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18gaay37mjgyd5rfpfs84p4q7vqdnv4lcjabaprgm315pblym46d"))))
    (properties `((upstream-name . "unfoldable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "08rx8ci2jpa77q1dl4lghlyhd27if990ic9kaz30hczsazlzi44b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-one-liner)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/sjoerdvisscher/unfoldable")
    (synopsis "Class of data structures that can be unfolded.")
    (description
     "Just as there's a Foldable class, there should also be an Unfoldable class.

This package provides one. Example unfolds are:

* Random values

* Enumeration of all values (depth-first or breadth-first)

* Convert from a list

Some examples can be found in the examples directory.")
    (license license:bsd-3)))

haskell-8.4-unfoldable

(define-public haskell-8.4-versions
  (package
    (name "haskell-8.4-versions")
    (version "3.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r7crjnzllip9ya3lgf7cckfgz57daq379sh19z7adlzj8rxhimg"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-checkers)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://gitlab.com/fosskers/versions")
    (synopsis "Types and parsers for software version numbers.")
    (description
     "A library for parsing and comparing software version numbers. We like to give version numbers to our software in a myriad of ways. Some ways follow strict guidelines for incrementing and comparison. Some follow conventional wisdom and are generally self-consistent. Some are just plain asinine. This library provides a means of parsing and comparing /any/ style of versioning, be it a nice Semantic Version like this:

> 1.2.3-r1+git123

...or a monstrosity like this:

> 2:10.2+0.0093r3+1-1

Please switch to <http://semver.org Semantic Versioning> if you aren't currently using it. It provides consistency in version incrementing and has the best constraints on comparisons.")
    (license license:bsd-3)))

haskell-8.4-versions

(define-public haskell-8.4-websockets-snap
  (package
    (name "haskell-8.4-websockets-snap")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets-snap/websockets-snap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r1v6ypnaap99vy2gh3lmghqv2y3zaaq0wiv4d2bn49179c40jmk"))))
    (properties `((upstream-name . "websockets-snap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-snap-core)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-snap-server)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/websockets-snap")
    (synopsis "Snap integration for the websockets library")
    (description "Snap integration for the websockets library")
    (license license:bsd-3)))

haskell-8.4-websockets-snap

(define-public haskell-8.4-wl-pprint-terminfo
  (package
    (name "haskell-8.4-wl-pprint-terminfo")
    (version "3.7.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-terminfo/wl-pprint-terminfo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "084d70plp3d9629aznrk5nxkg0hg7yr76iyi74gcby633xbvmniw"))))
    (properties `((upstream-name . "wl-pprint-terminfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fcursed")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-wl-pprint-extras)))
    (home-page "http://github.com/ekmett/wl-pprint-terminfo/")
    (synopsis "A color pretty printer with terminfo support")
    (description "A color pretty printer with terminfo support")
    (license license:bsd-3)))

haskell-8.4-wl-pprint-terminfo

(define-public haskell-8.4-x509-store
  (package
    (name "haskell-8.4-x509-store")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-store/x509-store-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y8yyr1i95jkllg8k0z54k5v4vachp848clc07m33xpxidn3b1lp"))))
    (properties `((upstream-name . "x509-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04h2h8kdzhd2fp3w4a834xc1n88b1jgrxlgcsynfn0iwpbsb41x7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 collection accessing and storing methods")
    (description
     "X.509 collection accessing and storing methods for certificate, crl, exception list")
    (license license:bsd-3)))

haskell-8.4-x509-store

