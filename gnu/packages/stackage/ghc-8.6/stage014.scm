;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage014)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.6))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.6-ChannelT
  (package
    (name "haskell-8.6-ChannelT")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/pthariensflame/ChannelT")
    (synopsis "Generalized stream processors")
    (description
     "A mutual generalization of <https://hackage.haskell.org/package/pipes pipes> and <https://hackage.haskell.org/package/machines machines>; a library for exploring a particular corner of the design space of streaming IO (and other related tasks) in Haskell.")
    (license license:bsd-3)))

haskell-8.6-ChannelT

(define-public haskell-8.6-DBFunctor
  (package
    (name "haskell-8.6-DBFunctor")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/DBFunctor/DBFunctor-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n3qmgjf9ly5vpnsvh8rhwbd94l157d1asy95n8yqpmrb6xqc1k4"))))
    (properties `((upstream-name . "DBFunctor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-MissingH)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/nkarag/haskell-DBFunctor#readme")
    (synopsis
     "DBFunctor - Functional Data Management =>  ETL/ELT Data Processing in Haskell")
    (description
     "Please see the README on Github at https://github.com/nkarag/haskell-DBFunctor")
    (license license:bsd-3)))

haskell-8.6-DBFunctor

(define-public haskell-8.6-Rasterific
  (package
    (name "haskell-8.6-Rasterific")
    (version "0.7.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Rasterific/Rasterific-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n2kamiymfnh93yc8zn3bjjnxlz1q2yyc33f9h2ahyn4wzfw64n6"))))
    (properties `((upstream-name . "Rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fembed_linear")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-FontyFruity)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/Rasterific")
    (synopsis "A pure haskell drawing engine.")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAA7VBMVEUBhsECh8EFiMIIisMLi8QMjMQOjcQSj8UTj8YVkMYZkscakscbk8ghlskmmMozns02oM44oc86os9CpdFEptJXr9Zbsdddsthes9hhtNljtdlsudtxvNx+wuB/wuCAw+CCxOGDxOGExeGHxuKVzeWb0Oed0Oek1Omm1emo1uqp1uqr1+ux2uyy2uy02+223O294O/J5fLK5vLM5/PN5/PY7PbZ7fbj8vjk8vjl8/nm8/np9frq9frr9vrs9vru9/vw+Pv2+/33+/37/f6g0ug8otBNq9S63u6Jx+IEiMJfs9hzvd3f8Pcqmsv///+OsMg+AAAFP0lEQVR4XuzPSQ0AIAwAQcT15PIvhy8OaMiOg2n7E0TeI0KECJH6iBAhQoQIESJEiEyXGN10ZbvkUusjxGf9yGHvjhpRW8Iwjj+oIIQQlh0FgBARiEIs7eb7f5xzdW5m9j5nzbPe1rwX/b7B343VzDszD+f1yvIs/tfscqV+/qAz5PlksJqHl/zq4ORZVUjnaHMepPnNo46OkNbeElJa2muFDrmvDSFiWLsPF9I7LkNQ+bgXJOSlOgNhM9WXzEPa2znIQ267nWnIUzSJEZmMnjIL6dYKGKFCrZtNSGMBI7bQyCDkbR0ZWH8bdcjFHDIxdzHSkG40gYxMRN3RhbRLyFCpPaqQZhGZKjZHE3KWQ8ZyZ6MI2Y+RuXhfPmQXQewSIXzHVKlSPby8ef03+vXm8rBaKU2JlMiG7ONvCmsHLfMXrYO1AtLalww5i/FHizvX7+Y/vV/vLCKV+EwupJnDn5SvTCJXZaSRa0qFtItwxRu3JrHbjRi8YlsmpFuCq39nvNz1wSt1RUIiOKZPjbfTadAiiZCLCdhWHg3hcQWsiYv0IW9zsG31DKW3BdbcW+qQddh+GdovsNbThjS4DvmSRrqQ7gIsWyaVLZAWuqlCarCs9EwqvRWQamlCngpWx/SjSelxGpzCU4qQCJZTk9opSBEf0rbXE/tGQB+cyTYdsm11xHdGwF0MzjYb8pKzQjaMiA1wci9kSBWWWyPiFqQqF9Kz9z/KRkgZnJkeFXIMy5URcgXSMRHi/t0WjZhFcMpMyD0sO0bMDkj3REgNlmsj5hqkGhEytDoK70bMewGcoX9IC5Y1I2gNpJZ3yB4sB0bQAUh73iFL7t9CUAukJd+QDixTRtQUSB3PkCNYSkZUCaQjz5BNWCpGVAWkTc+QeViqRlQVpHm/kGfYDo2oQ7CevUJOYLs0oi7BOvEKGcB2Y0TdgDXwClmF7dWIegVr1SskD5sRBlbeJ+QBekPw4BFyrjnk3COkrjmk7hFS0RxS8QhZ1hyy7BEyqzlk1iMEmkOQPOQ3oPcfIvA7ccgXoPcTBfhKHPIB6P1oBD4Sh3wDej/jge/EIQM45H9Y8QaJQ37gkP+py/tJHNKHQ37xgddPHPIJh/xyEO8zccgQDvkFOt4wcUgMh/ySKS9OHAJL2EVsFxGiaFuBD1G20cOHaNt640OUbYbyIdq2p/kQZQMDfIi2EQ4+JORQjXyI/JhToBD5wbOgIfKjgDzmozH8cKYrZj7jw4/LuobUD6vgA8yuT+qnbvCRclefW3wIPeTv+iGXgwIfu3AN2AW6sAdhXN/skmnYo0muD3oRO+hhMdcXv60Q9vgev61g4JA/UMlLtfUmfsSVN5tqM5Q/dCxuOd32dIBj4ALb03UoVidGOFQ6J4ZqVHogxpw0yhODZyqtEqOAKg2I4UyVTohxWZWeiQFmjeaJkXKVNokhf5WOiGMXKnWIgzAaLRFHk1TaIw6LqdRiju8pNKQOVCpUo464KnTPHTpWp0weA1fnmD2Yrwl/MN9UoUyVv7xCldwLf52IKtsCF7wEIHnBi4mgSCRwCVIA7CVI+r9TagIXhWmw0BW4uk2DhsBlehqsS1xvqMDcm8iFkwGQF05q/2cSSV3KGlipK3ZNblDFtuDFxQHlmqJXSQcTn8le7h3MvvR164Hsji/A1/UkwfiRCF3PdowfUtH1tM34sSFVzz+NH+RS9UTa+NE6Tc8Ijh921PTU5vjxU8XP0Y4fCB4/2cw/ov1Pe3cgAwAAACDM3zqOtmdwgmzNjeZBQEA+gYCAgICAgICAgIAETuKXxaAVTVgAAAAASUVORK5CYII=>>

Rasterific is a vector drawing library (a rasterizer)
implemented in pure haskell.

Can render vector graphics to an image and export vector data to PDF.")
    (license license:bsd-3)))

haskell-8.6-Rasterific

(define-public haskell-8.6-ad
  (package
    (name "haskell-8.6-ad")
    (version "4.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ad/ad-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0fgpv3lm20k1vwlychs7a76hn96cvpbczkdcbg9mr9f1nivg7035"))))
    (properties `((upstream-name . "ad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("1" "1vz1dvwyy6hs1s4a6rp2jdx5zb9hz22nss67qknmqxcyhagljxq7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-reify)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-erf)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-nats)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-ad

(define-public haskell-8.6-adjunctions
  (package
    (name "haskell-8.6-adjunctions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "http://github.com/ekmett/adjunctions/")
    (synopsis "Adjunctions and representable functors")
    (description "Adjunctions and representable functors.")
    (license license:bsd-3)))

haskell-8.6-adjunctions

(define-public haskell-8.6-arithmoi
  (package
    (name "haskell-8.6-arithmoi")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arithmoi/arithmoi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c1s93kf44ghhnvzhmnld4visx59pwvadfiww9smqisgjl6mpsa3"))))
    (properties `((upstream-name . "arithmoi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-check-bounds")
       #:cabal-revision
       ("1" "0mygy3gy5q719y67i7qlbmqczg1fmzxc7karnmcj7ilhwsk81mq7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-exact-pi)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-semirings)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/cartazio/arithmoi")
    (synopsis "Efficient basic number-theoretic functions.")
    (description "A library of basic functionality needed for
number-theoretic calculations. The aim of this library
is to provide efficient implementations of the functions.
Primes and related things (totients, factorisation),
powers (integer roots and tests, modular exponentiation).")
    (license license:expat)))

haskell-8.6-arithmoi

(define-public haskell-8.6-asn1-parse
  (package
    (name "haskell-8.6-asn1-parse")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-parse/asn1-parse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17pk8y3nwv9b9i5j15qlmwi7fmq9ab2z4kfpjk2rvcrh9lsf27wg"))))
    (properties `((upstream-name . "asn1-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-8.6-asn1-parse

(define-public haskell-8.6-attoparsec-ip
  (package
    (name "haskell-8.6-attoparsec-ip")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-ip/attoparsec-ip-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vy709qw277a6qqc4127z8jy61pmz3yigsmb9jkgmfagd5cli1pm"))))
    (properties `((upstream-name . "attoparsec-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-ip)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/athanclark/attoparsec-ip#readme")
    (synopsis "Parse IP data types with attoparsec")
    (description
     "Please see the README on GitHub at <https://github.com/athanclark/attoparsec-ip#readme>")
    (license license:bsd-3)))

haskell-8.6-attoparsec-ip

(define-public haskell-8.6-attoparsec-path
  (package
    (name "haskell-8.6-attoparsec-path")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)))
    (home-page "https://github.com/athanclark/attoparsec-path#readme")
    (synopsis "Convenience bindings between path and attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-8.6-attoparsec-path

(define-public haskell-8.6-bitcoin-types
  (package
    (name "haskell-8.6-bitcoin-types")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-types/bitcoin-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02y4svhcsml37p78g4cm97kyigcakgf4hds4bxnp0r4ba1498bxp"))))
    (properties `((upstream-name . "bitcoin-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-base58string)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hexstring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis
     "Provides consistent low-level types used commonly among Bitcoin implementations")
    (description
     "Instead of having each Bitcoin library re-define the low level types it is using,
this library provides a ready-to-use collection of low-level types and aliases.")
    (license license:expat)))

haskell-8.6-bitcoin-types

(define-public haskell-8.6-bitvec
  (package
    (name "haskell-8.6-bitvec")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bitvec/bitvec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ciri2zaifrli1zas0z75vdx97sns1fdvmghx9mlx8pi875f6b85"))))
    (properties `((upstream-name . "bitvec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bmi2" "-finteger-gmp" "-flibgmp")
       #:cabal-revision
       ("1" "0qk039dma8l4daxm5inw1ab2gwj1l1b57jb0zg91skq83mz06430")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
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

haskell-8.6-bitvec

(define-public haskell-8.6-bower-json
  (package
    (name "haskell-8.6-bower-json")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-better-errors)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/hdgarrood/bower-json")
    (synopsis "Read bower.json from Haskell")
    (description
     "Bower is a package manager for the web (see <http://bower.io>).
This package provides a data type and ToJSON/FromJSON instances for Bower's
package manifest file, bower.json.")
    (license license:expat)))

haskell-8.6-bower-json

(define-public haskell-8.6-butter
  (package
    (name "haskell-8.6-butter")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-forkable-monad)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-network-simple)))
    (home-page "https://github.com/System-Indystress/Butter#readme")
    (synopsis "Monad Transformer for Asyncronous Message Passing")
    (description
     "Please see the README on Github at <https://github.com/System-Indystress/Butter#readme>")
    (license license:bsd-3)))

haskell-8.6-butter

(define-public haskell-8.6-cassava-records
  (package
    (name "haskell-8.6-cassava-records")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/gdevanla/cassava-records#readme")
    (synopsis "Auto-generation of records data type.")
    (description
     "cassava-records library helps in auto-creating record data types using Template Haskell by inferring types from the columns of a csv or compatible input file. The record and type classes instances generated can be seamlessly used with cassava(the haskell csv reader library) to load the data into these record types without dealing with any other level of abstraction.
Please see README on Github at <https://github.com/gdevanla/cassava-records#readme>")
    (license license:bsd-3)))

haskell-8.6-cassava-records

(define-public haskell-8.6-cborg-json
  (package
    (name "haskell-8.6-cborg-json")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cborg-json/cborg-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ysilz7rrjk94sqr3a61s98hr9qfi1xg13bskmlpc6mpgi2s4s5b"))))
    (properties `((upstream-name . "cborg-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1sn2f9nfjcbr0n62n4kklbdi3pzpwrcy7ilg7m3v41nwrk53ifwy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cborg)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A library for encoding JSON as CBOR")
    (description "This package implements the bijection between JSON and
CBOR defined in the CBOR specification, RFC 7049.")
    (license license:bsd-3)))

haskell-8.6-cborg-json

(define-public haskell-8.6-chimera
  (package
    (name "haskell-8.6-chimera")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chimera/chimera-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hrnvyp8d7qc1c3xl4mzfsycb554yn3b49yy8jjyvaqazmvrb4zi"))))
    (properties `((upstream-name . "chimera") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "029hpcs3x1sv3jsq10bygm4246b4gy83yxg3s4r98f37055dyzyd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/Bodigrim/chimera#readme")
    (synopsis "Lazy, infinite streams with O(1) indexing.")
    (description "")
    (license license:bsd-3)))

haskell-8.6-chimera

(define-public haskell-8.6-chronos-bench
  (package
    (name "haskell-8.6-chronos-bench")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-chronos)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-terminal-size)))
    (home-page "https://github.com/knupfer/chronos")
    (synopsis "Benchmarking tool with focus on comparing results.")
    (description
     "This tool performs lazy benchmarking of functions and shell commands with continuous feedback and improving precision.")
    (license license:bsd-3)))

haskell-8.6-chronos-bench

(define-public haskell-8.6-control-dsl
  (package
    (name "haskell-8.6-control-dsl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctest-discover)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (home-page "https://github.com/Atry/Control.Dsl#readme")
    (synopsis "An alternative to monads in do-notation")
    (description
     "This \\\"control-dsl\\\" package is a toolkit to create extensible Domain Specific Languages in @@do@@-notation.

See \"Control.Dsl\" for more information.")
    (license license:bsd-3)))

haskell-8.6-control-dsl

(define-public haskell-8.6-core-text
  (package
    (name "haskell-8.6-core-text")
    (version "0.2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-text/core-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bnbl34fzy497a8ljgcydp490j3684yw8r32jijqyix7y9q2cl2d"))))
    (properties `((upstream-name . "core-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-fingertree)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-text-short)))
    (home-page "https://github.com/oprdyn/unbeliever#readme")
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
<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:bsd-3)))

haskell-8.6-core-text

(define-public haskell-8.6-crypto-pubkey-types
  (package
    (name "haskell-8.6-crypto-pubkey-types")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey-types/crypto-pubkey-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q0wlzjmpx536h1zcdzrpxjkvqw8abj8z0ci38138kpch4igbnby"))))
    (properties `((upstream-name . "crypto-pubkey-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-8.6-crypto-pubkey-types

(define-public haskell-8.6-data-serializer
  (package
    (name "haskell-8.6-data-serializer")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-serializer/data-serializer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1md6zkv1yqxmyca6mljw8y5g3xaqz3g087qd49qpi94w0x1lqgnk"))))
    (properties `((upstream-name . "data-serializer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-endian)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/mvv/data-serializer")
    (synopsis "Common API for serialization libraries")
    (description
     "This package provides a common API for serialization libraries like
<http://hackage.haskell.org/package/binary binary> and
<http://hackage.haskell.org/package/cereal cereal>.")
    (license license:bsd-3)))

haskell-8.6-data-serializer

(define-public haskell-8.6-data-textual
  (package
    (name "haskell-8.6-data-textual")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-latin1)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-text-printer)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-type-hint)))
    (home-page "https://github.com/mvv/data-textual")
    (synopsis "Human-friendly textual representations.")
    (description
     "This package provides an interface for converting between data and its
(human-friendly) textual representation.")
    (license license:bsd-3)))

haskell-8.6-data-textual

(define-public haskell-8.6-dbcleaner
  (package
    (name "haskell-8.6-dbcleaner")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dbcleaner/dbcleaner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d8ghd4i7qq3zp1vmxvsx7s66ip3qqfzacfnb2n4i3cdd7hv05q8"))))
    (properties `((upstream-name . "dbcleaner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/dbcleaner")
    (synopsis "Clean database tables automatically around hspec tests")
    (description "A simple database cleaner library for testing that provides
different cleanup strategies.")
    (license license:expat)))

haskell-8.6-dbcleaner

(define-public haskell-8.6-dual-tree
  (package
    (name "haskell-8.6-dual-tree")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dual-tree/dual-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17kdfnf0df0z5pkiifxrlmyd1xd7hjjaazd2kzyajl0gd00vbszx"))))
    (properties `((upstream-name . "dual-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monoid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-newtype-generics)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-testing-feat)))
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

haskell-8.6-dual-tree

(define-public haskell-8.6-either-both
  (package
    (name "haskell-8.6-either-both")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/either-both/either-both-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cm6g0wvwqlm405y8svv2fi49kpxqs7hffwd4gnsvlk2rfxng93f"))))
    (properties `((upstream-name . "either-both") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)))
    (home-page "https://hackage.haskell.org/package/either-both")
    (synopsis "Either or both")
    (description "")
    (license license:bsd-3)))

haskell-8.6-either-both

(define-public haskell-8.6-etc
  (package
    (name "haskell-8.6-etc")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/etc/etc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1j17g8jij4y782vwpx7b52fv9nwv4v4mygk2hbq6vihzkbrdbd31"))))
    (properties `((upstream-name . "etc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extra" "-f-cli" "-f-yaml")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (home-page "https://github.com/roman/Haskell-etc")
    (synopsis "Declarative configuration spec for Haskell projects")
    (description
     "`etc` gathers configuration values from multiple sources (cli options, OS
environment variables, files) using a declarative spec file that defines where
these values are to be found and located in a configuration map.")
    (license license:expat)))

haskell-8.6-etc

(define-public haskell-8.6-executable-hash
  (package
    (name "haskell-8.6-executable-hash")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/executable-hash/executable-hash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "191blh2kr2xha8l7j1nbwfq00jf5bfn25cv63y2bglwh5mkgbsil"))))
    (properties `((upstream-name . "executable-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-executable-path)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/fpco/executable-hash")
    (synopsis "Provides the SHA1 hash of the program executable")
    (description "See README.md")
    (license license:expat)))

haskell-8.6-executable-hash

(define-public haskell-8.6-fast-digits
  (package
    (name "haskell-8.6-fast-digits")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-digits/fast-digits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fyqdlb5wmsbsxsk8s7p8j2g3g4idsv9ki67ay1dw0lj8xp5g17c"))))
    (properties `((upstream-name . "fast-digits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-digits)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)))
    (home-page "https://github.com/Bodigrim/fast-digits")
    (synopsis "The fast library for integer-to-digits conversion.")
    (description
     "Convert an integer to digits and back.
Usually this library is twice as fast as \"Data.Digits\".
For small bases and long numbers it may be up to 40 times faster.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-fast-digits

(define-public haskell-8.6-flac-picture
  (package
    (name "haskell-8.6-flac-picture")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flac-picture/flac-picture-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02h36z65xmy0mvg7j2863h35dcf24l08ma0dxjbqcn42sca9ss0m"))))
    (properties `((upstream-name . "flac-picture") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ib9ypz06i81bgkj08aw6fdyxi6fbl2029vwlcqybbhz9cnya1pm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-flac)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/flac-picture")
    (synopsis
     "Support for writing picture to FLAC metadata blocks with JuicyPixels")
    (description
     "Support for writing picture to FLAC metadata blocks with JuicyPixels.")
    (license license:bsd-3)))

haskell-8.6-flac-picture

(define-public haskell-8.6-fmt
  (package
    (name "haskell-8.6-fmt")
    (version "0.6.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fmt/fmt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1fcamg5vpbmn0h7y4xkyrrmpkbyqqkijpgm2bhsw82swnbfppvbq"))))
    (properties `((upstream-name . "fmt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctest-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-formatting)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/aelve/fmt")
    (synopsis "A new formatting library")
    (description
     "A new formatting library that tries to be simple to understand while still
being powerful and providing more convenience features than other libraries
(like functions for pretty-printing maps and lists, or a function for
printing arbitrary datatypes using generics).

A comparison with other libraries:

* @@printf@@ (from @@Text.Printf@@) takes a formatting string and uses some
type tricks to accept the rest of the arguments polyvariadically. It's
very concise, but there are some drawbacks – it can't produce @@Text@@
(you'd have to @@T.pack@@ it every time) and it doesn't warn you at
compile-time if you pass wrong arguments or not enough of them.

* <https://hackage.haskell.org/package/text-format text-format> takes a
formatting string with curly braces denoting places where arguments
would be substituted (the arguments themselves are provided via a
tuple). If you want to apply formatting to some of the arguments, you
have to use one of the provided formatters. Like @@printf@@, it can fail at
runtime, but at least the formatters are first-class (and you can add new
ones).

* <https://hackage.haskell.org/package/formatting formatting> takes a
formatting template consisting of pieces of strings interleaved with
formatters; this ensures that arguments always match their placeholders.
@@formatting@@ provides lots of formatters and generally seems to be the
most popular formatting library here. Unfortunately, at least in my
experience writing new formatters can be awkward and people sometimes
have troubles understanding how @@formatting@@ works.

* <https://hackage.haskell.org/package/fmt fmt> (i.e. this library)
provides formatters that are ordinary functions, and a bunch of operators
for concatenating formatted strings; those operators also do automatic
conversion. There are some convenience formatters which aren't present in
@@formatting@@ (like ones for formatting maps, lists, converting to base64,
etc). Some find the operator syntax annoying, while others like it.")
    (license license:bsd-3)))

haskell-8.6-fmt

(define-public haskell-8.6-freer-simple
  (package
    (name "haskell-8.6-freer-simple")
    (version "1.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freer-simple/freer-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vqbri72xxk6is0kk2yxfpqxixq3h047rn153i16hhpppsp3xk17"))))
    (properties `((upstream-name . "freer-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10c7m8v7s8pqmhyym014xnb875z41sh3sq27b7sy7j15ay0vw694")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-natural-transformation)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
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

haskell-8.6-freer-simple

(define-public haskell-8.6-generic-data
  (package
    (name "haskell-8.6-generic-data")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-data/generic-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "156d8zx425bpghp903260x1fdgnvwkyd7483mdjdg5l54ff9via8"))))
    (properties `((upstream-name . "generic-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nqwv8143hgqazpdp5f5b55izgr3g32xllh0l7adcqv7h1cixg5x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-one-liner)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-show-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/Lysxia/generic-data#readme")
    (synopsis "Deriving instances with GHC.Generics and related utilities")
    (description
     "Generic implementations of standard type classes.
Operations on generic representations to help using \"GHC.Generics\".
See README.")
    (license license:expat)))

haskell-8.6-generic-data

(define-public haskell-8.6-genvalidity-aeson
  (package
    (name "haskell-8.6-genvalidity-aeson")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-genvalidity-vector)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-validity-aeson)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for aeson")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-genvalidity-aeson

(define-public haskell-8.6-ghc-exactprint
  (package
    (name "haskell-8.6-ghc-exactprint")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-exactprint/ghc-exactprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12nqpqmi9c57a3hgpfy8q073zryz66ylmcvf29hyffpj7vmmnvhl"))))
    (properties `((upstream-name . "ghc-exactprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-roundtrip" "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-paths)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
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

haskell-8.6-ghc-exactprint

(define-public haskell-8.6-glabrous
  (package
    (name "haskell-8.6-glabrous")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/glabrous/glabrous-" version
                    ".tar.gz"))
              (sha256
               (base32
                "068777yrxwkxc4lkiwyh7ndnc0wvfdngmqs7974p8ys0930qnwww"))))
    (properties `((upstream-name . "glabrous") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-cereal-text)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/MichelBoucey/glabrous")
    (synopsis "A template DSL library")
    (description "A minimalistic, Mustache-like syntax, truly logic-less,
pure Text template DSL library")
    (license license:bsd-3)))

haskell-8.6-glabrous

(define-public haskell-8.6-gloss-algorithms
  (package
    (name "haskell-8.6-gloss-algorithms")
    (version "1.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-algorithms/gloss-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vbqcsvyicb409a60fab0c0shixny4l5z2l15n8hrrr1dsvisf95"))))
    (properties `((upstream-name . "gloss-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "140zmk3br0nn98mjc6ri36nk8yl93n4v69zybzv2vc41yxgvnac5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-gloss)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Data structures and algorithms for working with 2D graphics.")
    (description
     "Data structures and algorithms for working with 2D graphics.")
    (license license:expat)))

haskell-8.6-gloss-algorithms

(define-public haskell-8.6-gloss-raster
  (package
    (name "haskell-8.6-gloss-raster")
    (version "1.13.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-raster/gloss-raster-"
                    version ".tar.gz"))
              (sha256
               (base32
                "199b1avi4mils3x9xpk66992id40hdyk0lpjnyyxy8c22s0adgb9"))))
    (properties `((upstream-name . "gloss-raster") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-gloss)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-gloss-rendering)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-repa)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Parallel rendering of raster images.")
    (description "Parallel rendering of raster images.")
    (license license:expat)))

haskell-8.6-gloss-raster

(define-public haskell-8.6-greskell-core
  (package
    (name "haskell-8.6-greskell-core")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-core/greskell-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jp6xzr601y6ngngbra0z2v99jxgp6y88dq4kb8fh25phyajzlmw"))))
    (properties `((upstream-name . "greskell-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctest-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis
     "Haskell binding for Gremlin graph query language - core data types and tools")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package contains only core data types and tools used commonly by other related packages.")
    (license license:bsd-3)))

haskell-8.6-greskell-core

(define-public haskell-8.6-groundhog-postgresql
  (package
    (name "haskell-8.6-groundhog-postgresql")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-postgresql/groundhog-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1digvi8ra58r122i030h0b089sbyzaclir1cg4iqaflbzrnz45l9"))))
    (properties `((upstream-name . "groundhog-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-groundhog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/groundhog-postgresql")
    (synopsis "PostgreSQL backend for the groundhog library.")
    (description "This package uses postgresql-simple and postgresql-libpq.")
    (license license:bsd-3)))

haskell-8.6-groundhog-postgresql

(define-public haskell-8.6-groundhog-sqlite
  (package
    (name "haskell-8.6-groundhog-sqlite")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-sqlite/groundhog-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z6yss15aw0a14i0nj0flb0h2641sjr70mhasp718qmc4iwkgw7x"))))
    (properties `((upstream-name . "groundhog-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-groundhog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/groundhog-sqlite")
    (synopsis "Sqlite3 backend for the groundhog library")
    (description
     "It depends on direct-sqlite library which includes Sqlite C sources, so there are no system dependencies.")
    (license license:bsd-3)))

haskell-8.6-groundhog-sqlite

(define-public haskell-8.6-haskell-src-exts
  (package
    (name "haskell-8.6-haskell-src-exts")
    (version "1.21.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts/haskell-src-exts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q1y8n3d82gid9bcx8wxsqqmj9mq11fg3gp5yzpfbw958dhi3j9f"))))
    (properties `((upstream-name . "haskell-src-exts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-tasty-golden)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)))
    (home-page "https://github.com/haskell-suite/haskell-src-exts")
    (synopsis
     "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer")
    (description
     "Haskell-Source with Extensions (HSE, haskell-src-exts)
is a standalone parser for Haskell. In addition to
standard Haskell, all extensions implemented in GHC are supported.

Apart from these standard extensions,
it also handles regular patterns as per the HaRP extension
as well as HSX-style embedded XML syntax.")
    (license license:bsd-3)))

haskell-8.6-haskell-src-exts

(define-public haskell-8.6-heterocephalus
  (package
    (name "haskell-8.6-heterocephalus")
    (version "1.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heterocephalus/heterocephalus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kvrv15xm6igd6nkyfij1h982jqpbf61pzinv8jdb4fcjqwf08s7"))))
    (properties `((upstream-name . "heterocephalus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)))
    (home-page "https://github.com/arowM/heterocephalus#readme")
    (synopsis
     "A type-safe template engine for working with popular front end development tools")
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

haskell-8.6-heterocephalus

(define-public haskell-8.6-hi-file-parser
  (package
    (name "haskell-8.6-hi-file-parser")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hi-file-parser/hi-file-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09gs26z0jvkkhb1r43gj27pq0k5fc4i6fpr59g397vz4sm86gb2l"))))
    (properties `((upstream-name . "hi-file-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1bm98h0v4wf9vmdng15c2r48yz06118jxlprsnk0z3jw0d95ij9z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/commercialhaskell/stack#readme")
    (synopsis "Parser for GHC's hi files")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/stack/blob/master/subs/hi-file-parser/README.md>")
    (license license:bsd-3)))

haskell-8.6-hi-file-parser

(define-public haskell-8.6-hledger
  (package
    (name "haskell-8.6-hledger")
    (version "1.14.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1si9zqparkdq77yji87lhcsrf11fr3gisqwsv82cabhrhc36x6l4"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-Decimal)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-easytest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hledger-lib)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-math-functions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mtl-compat)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-tabular)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-wizards)))
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

haskell-8.6-hledger

(define-public haskell-8.6-hslua-aeson
  (package
    (name "haskell-8.6-hslua-aeson")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-aeson/hslua-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wvcf0adv2b5fn7mvi8p6ydzsyzbn43qyk1kjvvi9achrgvc59zz"))))
    (properties `((upstream-name . "hslua-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ysgh5s99zv0khkwqw1kcli2r2vi77r7wz3yc0y0i7qr35shzklh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hslua)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/tarleb/hslua-aeson#readme")
    (synopsis "Allow aeson data types to be used with lua.")
    (description "This package provides instances to push and receive any
datatype encodable as JSON to and from the Lua stack.")
    (license license:expat)))

haskell-8.6-hslua-aeson

(define-public haskell-8.6-hslua-module-system
  (package
    (name "haskell-8.6-hslua-module-system")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-system/hslua-module-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m7wz3g5c34pyizqw5mllzhsy2vziddhlbhjfwdvd7nhd3p4v3hh"))))
    (properties `((upstream-name . "hslua-module-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hslua)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (home-page "https://github.com/hslua/hslua-module-system")
    (synopsis "Lua module wrapper around Haskell's System module.")
    (description "Provides access to system information and functionality
to Lua scripts via Haskell's `System` module.

Intended usage for this package is to preload it by adding
the loader function to `package.preload`. Note that the
Lua `package` library must have already been loaded before
the loader can be added.")
    (license license:expat)))

haskell-8.6-hslua-module-system

(define-public haskell-8.6-hslua-module-text
  (package
    (name "haskell-8.6-hslua-module-text")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-text/hslua-module-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ikdwvvxhbd5wmfr85dzs2ccamh9rbbpgy899z7s1vlv5q1dj0hk"))))
    (properties `((upstream-name . "hslua-module-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hslua)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/hslua/hslua-module-text")
    (synopsis "Lua module for text")
    (description "UTF-8 aware subset of Lua's `string` module.")
    (license license:expat)))

haskell-8.6-hslua-module-text

(define-public haskell-8.6-hspec-checkers
  (package
    (name "haskell-8.6-hspec-checkers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-checkers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "https://hackage.haskell.org/package/hspec-checkers")
    (synopsis "Allows to use checkers properties from hspec")
    (description
     "Allows to use <http://hackage.haskell.org/package/checkers checkers>
properties from <http://hackage.haskell.org/package/hspec hspec>.")
    (license license:bsd-3)))

haskell-8.6-hspec-checkers

(define-public haskell-8.6-http-api-data
  (package
    (name "haskell-8.6-http-api-data")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data/http-api-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s93m2vh4c1p073xasvknnj3czbf8xsyg48kyznr4jwfhzi17anh"))))
    (properties `((upstream-name . "http-api-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-text-show")
       #:cabal-revision
       ("1" "1dshqb1140nj4h8d750s97gmzb2rk0ppr1rakvqxy1r79mg3m2wr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-time-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)))
    (home-page "http://github.com/fizruk/http-api-data")
    (synopsis
     "Converting to/from HTTP API data like URL pieces, headers and query parameters.")
    (description
     "This package defines typeclasses used for converting Haskell data types to and from HTTP API data.

Please see README.md")
    (license license:bsd-3)))

haskell-8.6-http-api-data

(define-public haskell-8.6-hunit-dejafu
  (package
    (name "haskell-8.6-hunit-dejafu")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hunit-dejafu/hunit-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n7npk8ksp14f2ib47navmc50rlnqrcsgdnxmd5qylg431h15sfz"))))
    (properties `((upstream-name . "hunit-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-dejafu)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the HUnit test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/HUnit HUnit>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-8.6-hunit-dejafu

(define-public haskell-8.6-incremental-parser
  (package
    (name "haskell-8.6-incremental-parser")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/incremental-parser/incremental-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y5qzbn1627v893s6nlm5prc507pwybf2f9b7icpjgcj1q046p6i"))))
    (properties `((upstream-name . "incremental-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-checkers)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/blamario/incremental-parser")
    (synopsis
     "Generic parser library capable of providing partial results from partial input.")
    (description
     "This package defines yet another parser combinator library. This one is implemented using the concept of Brzozowski
derivatives, tweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out
of the box, as well as any other data type for which the monoid-subclasses package defines instances. If the parser
result is also a monoid, its chunks can be extracted incrementally, before the complete input is parsed.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-incremental-parser

(define-public haskell-8.6-inline-c
  (package
    (name "haskell-8.6-inline-c")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c/inline-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19scbviwiv1fbsdcjji3dscjg7w0xa8r97xwkqqrwm7zhvrg5wns"))))
    (properties `((upstream-name . "inline-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-gsl-example")
       #:cabal-revision
       ("1" "0mkvk5bwmyx4g5k0900agpink47016582himbk0h0b0mlbl8dvvp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://hackage.haskell.org/package/inline-c")
    (synopsis
     "Write Haskell source files including C code inline. No FFI required.")
    (description
     "See <https://github.com/fpco/inline-c/blob/master/README.md>.")
    (license license:expat)))

haskell-8.6-inline-c

(define-public haskell-8.6-ip6addr
  (package
    (name "haskell-8.6-ip6addr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ip6addr/ip6addr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pxjjkmvv7bfh4n06mfbg5fakqqp0dakwzc9d7mnmd3x1m8n7dfz"))))
    (properties `((upstream-name . "ip6addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-IPv6Addr)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis
     "Commandline tool to deal with IPv6 address text representations")
    (description
     "Commandline tool to validate, canonize and generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-8.6-ip6addr

(define-public haskell-8.6-jose-jwt
  (package
    (name "haskell-8.6-jose-jwt")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jose-jwt/jose-jwt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hmnkmbhmw78k35g3h3b016p0b4rrax9s8izp5xfrsqqxkl9ic2g"))))
    (properties `((upstream-name . "jose-jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdoctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-jose-jwt

(define-public haskell-8.6-json-rpc-client
  (package
    (name "haskell-8.6-json-rpc-client")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc-client/json-rpc-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "177lrw5m9dxdk6mcay0f92rwyih8q7znwb8m6da6r3zsn30gajak"))))
    (properties `((upstream-name . "json-rpc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("10" "19vf7gibvqgcm27b5n0ls4s7wi1kr87crn776ifqc9gbr2l9bfpi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-json-rpc-server)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
    (home-page "https://github.com/grayjay/json-rpc-client")
    (synopsis "JSON-RPC 2.0 on the client side.")
    (description
     "Functions for creating a JSON-RPC 2.0 client.  See
<http://www.jsonrpc.org/specification>. This library supports
batch requests and notifications, as well as single method
calls.  It also provides a function for creating corresponding
server-side methods with the package
<http://hackage.haskell.org/package/json-rpc-server json-rpc-server>.
This library does not handle transport, so a function for
communicating with the server must be provided.
The demo folder contains an example client and server that can
be compiled with the demo flag.  See \"Network.JsonRpc.Client\"
for details.")
    (license license:expat)))

haskell-8.6-json-rpc-client

(define-public haskell-8.6-json-rpc-generic
  (package
    (name "haskell-8.6-json-rpc-generic")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc-generic/json-rpc-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1spyiq5xix3rbjdk37a28l6l46zygvxafdhaa466hyn2j7p4cz"))))
    (properties `((upstream-name . "json-rpc-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-generic-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/khibino/haskell-json-rpc-generic")
    (synopsis "Generic encoder and decode for JSON-RPC")
    (description
     "This package contains generic encoder and decode for JSON-RPC")
    (license license:bsd-3)))

haskell-8.6-json-rpc-generic

(define-public haskell-8.6-kanji
  (package
    (name "haskell-8.6-kanji")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (home-page "https://github.com/fosskers/kanji")
    (synopsis
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji")
    (description
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.")
    (license license:bsd-3)))

haskell-8.6-kanji

(define-public haskell-8.6-kazura-queue
  (package
    (name "haskell-8.6-kazura-queue")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
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

haskell-8.6-kazura-queue

(define-public haskell-8.6-keys
  (package
    (name "haskell-8.6-keys")
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
       ("4" "16s7yj70fms01ab8x2f3262p576lwqdxlkq798qf9pjxfg95jvy9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://github.com/ekmett/keys/")
    (synopsis "Keyed functors and containers")
    (description
     "This package provides a bunch of ad hoc classes for accessing parts of a container.

In practice this package is largely subsumed by the
<https://hackage.haskell.org/package/lens lens package>,
but it is maintained for now as it has much
simpler dependencies.")
    (license license:bsd-3)))

haskell-8.6-keys

(define-public haskell-8.6-language-docker
  (package
    (name "haskell-8.6-language-docker")
    (version "8.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-docker/language-docker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00fgxddlim1h7xcklr1q38sxbf8zh1m84mha6yzab5as1x14lhij"))))
    (properties `((upstream-name . "language-docker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)))
    (home-page "https://github.com/hadolint/language-docker#readme")
    (synopsis "Dockerfile parser, pretty-printer and embedded DSL")
    (description
     "All functions for parsing, printing and writting Dockerfiles are exported through @@Language.Docker@@. For more fine-grained operations look for specific modules that implement a certain functionality.
See the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-language-docker

(define-public haskell-8.6-list-t
  (package
    (name "haskell-8.6-list-t")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/list-t/list-t-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xsmq4rhp91k4az1d0hnpiy2b3d3nqqdywjrrryrjiway55q8qrq"))))
    (properties `((upstream-name . "list-t") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/nikita-volkov/list-t")
    (synopsis "ListT done right")
    (description "A correct implementation of the list monad-transformer.
Useful for basic streaming.")
    (license license:expat)))

haskell-8.6-list-t

(define-public haskell-8.6-locators
  (package
    (name "haskell-8.6-locators")
    (version "0.2.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/locators/locators-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19csw13qbxxv7lr3blx856k2y21sidgpnv56dq45la3f4100jv9d"))))
    (properties `((upstream-name . "locators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/locators")
    (synopsis "Human exchangable identifiers and locators")
    (description
     "/Overview/

Simple identifiers (as used, for example, as \"locators\" in airline reservation
systems) using a subset of the Latin1 alphabet whose characters are unambigious
when written or spoken.")
    (license license:bsd-3)))

haskell-8.6-locators

(define-public haskell-8.6-log-base
  (package
    (name "haskell-8.6-log-base")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-base/log-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15539v6y6s46kgb86ns13rh17c1qnidwdajk26yaxyqky58yx2m6"))))
    (properties `((upstream-name . "log-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0vqw0whh46h0my64hfbjgmkfjvp0jggrdcd957iv7w8wfadrybsm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-monad-time)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/scrive/log")
    (synopsis "Structured logging solution (base package)")
    (description "A library that provides a way to record structured log
messages. Use this package in conjunction with
'log-elasticsearch' or 'log-postgres', depending
on which back end you need.")
    (license license:bsd-3)))

haskell-8.6-log-base

(define-public haskell-8.6-logging-effect
  (package
    (name "haskell-8.6-logging-effect")
    (version "1.3.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-effect/logging-effect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18g0yw5k0xcpiz3chag61smjc9fi4iy99sv9sqhq8f2v61p355dr"))))
    (properties `((upstream-name . "logging-effect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-stm-delay)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (home-page "https://github.com/ocharles/logging-effect")
    (synopsis
     "A mtl-style monad transformer for general purpose & compositional logging")
    (description "")
    (license license:bsd-3)))

haskell-8.6-logging-effect

(define-public haskell-8.6-massiv
  (package
    (name "haskell-8.6-massiv")
    (version "0.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06mllyp2wax1gbwafxa7sbda96mp4zhfsc3mbcpymxrap2i2c6w1"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")
       #:cabal-revision
       ("3" "0anrpf7sgb5d6pfdh4514j3riqysiv76g6ffqr5qnvc2927f9ync")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-scheduler)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-splitmix)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-8.6-massiv

(define-public haskell-8.6-mbtiles
  (package
    (name "haskell-8.6-mbtiles")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mbtiles/mbtiles-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bynkbwq33fqyyv4bkl2y3sx57b73w1pyn292jb5j6jm3h52za5q"))))
    (properties `((upstream-name . "mbtiles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-sqlite-simple)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/caneroj1/mbtiles#readme")
    (synopsis "Haskell MBTiles client.")
    (description "Read and manipulate MBTiles files and associated metadata.")
    (license license:bsd-3)))

haskell-8.6-mbtiles

(define-public haskell-8.6-mcmc-types
  (package
    (name "haskell-8.6-mcmc-types")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)))
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

haskell-8.6-mcmc-types

(define-public haskell-8.6-mixed-types-num
  (package
    (name "haskell-8.6-mixed-types-num")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixed-types-num/mixed-types-num-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10fkqb4d534nr5yqdybmvrbg3alfjvki4qxg20ma8mwxyiz4wc5g"))))
    (properties `((upstream-name . "mixed-types-num") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)))
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

haskell-8.6-mixed-types-num

(define-public haskell-8.6-mono-traversable
  (package
    (name "haskell-8.6-mono-traversable")
    (version "1.0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable/mono-traversable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1psxhfjmpv3y54wy8f8dwa43finlj7aw2mry67pg521gxmwmppy2"))))
    (properties `((upstream-name . "mono-traversable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "053252xkfan8qisb5g0qi3jyq0bq0z0bksqzc64qfcq7cad51yxl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
     "Please see the README at <https://www.stackage.org/package/mono-traversable>")
    (license license:expat)))

haskell-8.6-mono-traversable

(define-public haskell-8.6-netwire-input
  (package
    (name "haskell-8.6-netwire-input")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-netwire)))
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

haskell-8.6-netwire-input

(define-public haskell-8.6-one-liner-instances
  (package
    (name "haskell-8.6-one-liner-instances")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-one-liner)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "https://github.com/mstksg/one-liner-instances#readme")
    (synopsis "Generics-based implementations for common typeclasses")
    (description
     "Provides generics-based implementations for common typeclasses using
Generics.

Please see the README on Github at <https://github.com/mstksg/one-liner-instances#readme>")
    (license license:bsd-3)))

haskell-8.6-one-liner-instances

(define-public haskell-8.6-opaleye
  (package
    (name "haskell-8.6-opaleye")
    (version "0.6.7004.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/opaleye/opaleye-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09jgdqkw8hp82b3x0fg9906gyxwl9gz3hifv2dvrj915fvgiybg1"))))
    (properties `((upstream-name . "opaleye") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-product-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/tomjaguarpaw/haskell-opaleye")
    (synopsis "An SQL-generating DSL targeting PostgreSQL")
    (description "An SQL-generating DSL targeting PostgreSQL.  Allows
Postgres queries to be written within Haskell in a
typesafe and composable fashion.")
    (license license:bsd-3)))

haskell-8.6-opaleye

(define-public haskell-8.6-open-witness
  (package
    (name "haskell-8.6-open-witness")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-witness)))
    (home-page "https://github.com/AshleyYakeley/open-witness")
    (synopsis "open witnesses")
    (description
     "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad.
See the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).")
    (license license:bsd-3)))

haskell-8.6-open-witness

(define-public haskell-8.6-path-extra
  (package
    (name "haskell-8.6-path-extra")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/athanclark/path-extra#readme")
    (synopsis "URLs without host information")
    (description
     "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>")
    (license license:bsd-3)))

haskell-8.6-path-extra

(define-public haskell-8.6-path-io
  (package
    (name "haskell-8.6-path-io")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jqx3mi4an4kb3kg78n1p3xrz832yrfrnvj795b0xhkv6h1z5ir3"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "02irjcw5rdcx9wvsb7mcanylp2bwaiacpfjjbcvqq1lhvqcyw73i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-8.6-path-io

(define-public haskell-8.6-path-text-utf8
  (package
    (name "haskell-8.6-path-text-utf8")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-text-utf8/path-text-utf8-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z8wyjsr7mgl120ayfl520i6p6s961380b1xy63zl7qp4cnnbhpn"))))
    (properties `((upstream-name . "path-text-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (home-page "https://github.com/chris-martin/path-text-utf8")
    (synopsis "Read and write UTF-8 text files")
    (description "This is a trivial integration of the @@path@@ and @@text@@
packages, providing convenient functions to read and
write UTF-8 text files.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-path-text-utf8

(define-public haskell-8.6-pcre-heavy
  (package
    (name "haskell-8.6-pcre-heavy")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcre-light)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-string-conversions)))
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

haskell-8.6-pcre-heavy

(define-public haskell-8.6-peregrin
  (package
    (name "haskell-8.6-peregrin")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/peregrin/peregrin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jhvd69avl5wy2fcsx93ng2yll97gagylwd264dv7qjaa4m6hqs2"))))
    (properties `((upstream-name . "peregrin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/peregrin")
    (synopsis "Database migration support for use in other libraries.")
    (description "Database migration support for use in other libraries.
Currently only supports PostgreSQL.")
    (license license:expat)))

haskell-8.6-peregrin

(define-public haskell-8.6-pg-transact
  (package
    (name "haskell-8.6-pg-transact")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-transact/pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xgma50c4pvvb9h2wksx8wl4sf0625ngbsb2c828xd0aqj171qmj"))))
    (properties `((upstream-name . "pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "Another postgresql-simple transaction monad")
    (description "Another postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-8.6-pg-transact

(define-public haskell-8.6-pipes-group
  (package
    (name "haskell-8.6-pipes-group")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-lens-family-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-parse)))
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

haskell-8.6-pipes-group

(define-public haskell-8.6-poly
  (package
    (name "haskell-8.6-poly")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poly/poly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1c8xnkqxwzbpx01clz9spz9zwa18qhsbvscrc381r0f46cjax2ph"))))
    (properties `((upstream-name . "poly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10lcg7x6vzrzgj5libfwnmxj2y3f1j5gpz9l8mgzivapknvhhpfx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-semirings)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
    (home-page "https://github.com/Bodigrim/poly#readme")
    (synopsis "Polynomials")
    (description "Polynomials backed by `Vector`.")
    (license license:bsd-3)))

haskell-8.6-poly

(define-public haskell-8.6-postgresql-simple-migration
  (package
    (name "haskell-8.6-postgresql-simple-migration")
    (version "0.1.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-migration/postgresql-simple-migration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j6nhyknxlmpl0yrdj1pifw1fbb24080jgg64grnhqjwh1d44dvd"))))
    (properties `((upstream-name . "postgresql-simple-migration")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1a0a5295j207x0pzbhy5inv8qimrh76dmmp26zgaw073n1i8yg8j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/ameingast/postgresql-simple-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-8.6-postgresql-simple-migration

(define-public haskell-8.6-postgresql-transactional
  (package
    (name "haskell-8.6-postgresql-transactional")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-transactional/postgresql-transactional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lsyaj19ihn93fz8hhlqsslskcr5dbilyg14pplz4cab2cg2lc7r"))))
    (properties `((upstream-name . "postgresql-transactional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-transactional")
    (synopsis "a transactional monad on top of postgresql-simple")
    (description
     "This package is a simple monadic wrapper around the SQL primitives
provided by the postgresql-simple package. It provides simple and
predictable semantics for database options, enforces awareness of
Postgres's transactional nature at API boundaries, and obviates
the need for SQL boilerplate in transactional queries.")
    (license license:expat)))

haskell-8.6-postgresql-transactional

(define-public haskell-8.6-pptable
  (package
    (name "haskell-8.6-pptable")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pptable/pptable-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05wkvnk2h3xvjivk8cd6z8xlscipvd2az1v1n4sdianf9r0gzdwq"))))
    (properties `((upstream-name . "pptable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0c1srvgwyczbfnw3zw5pbsjqgxifq9yb1h60w3aq91q7iamrvdgb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-boxes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/gdevanla/pptable#readme")
    (synopsis "Pretty Print containers in a tabular format")
    (description
     "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.")
    (license license:expat)))

haskell-8.6-pptable

(define-public haskell-8.6-pretty-sop
  (package
    (name "haskell-8.6-pretty-sop")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-sop/pretty-sop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10vybwbkqgr3fi13c5qwwhrwns9sdj7zvlkz6vag966pk238gnxy"))))
    (properties `((upstream-name . "pretty-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04gr1aaqaq347rv5vqh93qcnbc53y55hrds73js5329z2j1gbmng")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)))
    (home-page "https://hackage.haskell.org/package/pretty-sop")
    (synopsis "A generic pretty-printer using generics-sop")
    (description
     "This library contains a generic implementation of the 'prettyVal'
function from the @@<https://hackage.haskell.org/package/pretty-show pretty-show>@@
package. Using the pretty printer, values can easily be rendered to
strings and HTML documents in a uniform way.

This library makes use of the
@@<https://hackage.haskell.org/package/generics-sop generics-sop>@@ package and
is an example of a generic function defined in the SOP style.
")
    (license license:bsd-3)))

haskell-8.6-pretty-sop

(define-public haskell-8.6-prettyprinter-compat-ansi-wl-pprint
  (package
    (name "haskell-8.6-prettyprinter-compat-ansi-wl-pprint")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.6-prettyprinter-compat-ansi-wl-pprint

(define-public haskell-8.6-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-8.6-prettyprinter-convert-ansi-wl-pprint")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-convert-ansi-wl-pprint/prettyprinter-convert-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03565w1qvqgdr1g2nwj3d2xpqbx04xm45pjfkb9d6jb2fww2v65q"))))
    (properties `((upstream-name . "prettyprinter-convert-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c4zcscmvq0vbdgnp7n0avv8si5jshl4kw2qd1lqmhr28kj8x45f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description
     "This package defines a converter from the
old [ansi-wl-pprint](/package/ansi-wl-pprint) document type to the
new [prettyprinter](/package/prettyprinter) one. Its purpose is making
packages that only generate [ansi-wl-pprint](/package/ansi-wl-pprint)
data available to the [prettyprinter](/package/prettyprinter)
ecosystem.

Note the difference to
the [prettyprinter-compat-ansi-wl-pprint](package/prettyprinter-compat-ansi-wl-pprint)
package, which does /not/ convert any data, and instead provides an
API that mimicks [ansi-wl-pprint](/package/ansi-wl-pprint), while
secretly being [prettyprinter](/package/prettyprinter)-based behind
the curtains. This package on the other hand does a proper conversion.

> ╭────────────────────╮    fromAnsiWlPprint    ╭────────────────────╮
> │        Doc         ├───────────────────────▷│   Doc AnsiStyle    │
> │  (ansi-wl-pprint)  │◁───────────────────────┤  (prettyprinter)   │
> ╰────────────────────╯     toAnsiWlPprint     ╰────────────────────╯")
    (license license:bsd-2)))

haskell-8.6-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-8.6-proto-lens-arbitrary
  (package
    (name "haskell-8.6-proto-lens-arbitrary")
    (version "0.1.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-arbitrary/proto-lens-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jms2wldjnv455gc3mf232500nidh9vh8g07fw7sdc4m2clch043"))))
    (properties `((upstream-name . "proto-lens-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-lens-family)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-proto-lens)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Arbitrary instances for proto-lens.")
    (description
     "The proto-lens-arbitrary allows generating arbitrary messages for use with QuickCheck.")
    (license license:bsd-3)))

haskell-8.6-proto-lens-arbitrary

(define-public haskell-8.6-proto-lens-optparse
  (package
    (name "haskell-8.6-proto-lens-optparse")
    (version "0.1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-optparse/proto-lens-optparse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "105vrzx5qbcby3g1l7fd3alwlsaf0prjnhmy4i4cv9qrkg6qn34q"))))
    (properties `((upstream-name . "proto-lens-optparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-proto-lens)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Adapting proto-lens to optparse-applicative ReadMs.")
    (description
     "A package adapting proto-lens to optparse-applicative ReadMs. This gives an easy way to define options and arguments for text-format protobuf types.")
    (license license:bsd-3)))

haskell-8.6-proto-lens-optparse

(define-public haskell-8.6-proto-lens-runtime
  (package
    (name "haskell-8.6-proto-lens-runtime")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-runtime/proto-lens-runtime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hd1hcrirnj92nkd15l1m081wvxas62az3zijg1cr4lf93rg9hgc"))))
    (properties `((upstream-name . "proto-lens-runtime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-lens-family)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-proto-lens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "")
    (description
     "Modules that are needed by the Haskell files generated by proto-lens-protoc. For forwards compatibility, we reexport them as new module names so that other packages don't accidentally write non-generated code that relies on these modules being reexported by this package.")
    (license license:bsd-3)))

haskell-8.6-proto-lens-runtime

(define-public haskell-8.6-protocol-buffers-descriptor
  (package
    (name "haskell-8.6-protocol-buffers-descriptor")
    (version "2.4.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-buffers-descriptor/protocol-buffers-descriptor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c3aiysjlk7r02l5902iq020iasiswk9c1mvf4f9h1yijba4x4fp"))))
    (properties `((upstream-name . "protocol-buffers-descriptor")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-protocol-buffers)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis
     "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification")
    (description "Uses protocol-buffers package")
    (license license:bsd-3)))

haskell-8.6-protocol-buffers-descriptor

(define-public haskell-8.6-protocol-radius-test
  (package
    (name "haskell-8.6-protocol-radius-test")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-radius-test/protocol-radius-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14npn49vj7a66pzvrdw0gj88h97vz11axq5i4k4nq0r156yb07pm"))))
    (properties `((upstream-name . "protocol-radius-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-protocol-radius)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-8.6-protocol-radius-test

(define-public haskell-8.6-psql-helpers
  (package
    (name "haskell-8.6-psql-helpers")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psql-helpers/psql-helpers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x0r68mfv56rp87j8ick875wbq3qzkii9ia60amx6xr40x1acg7i"))))
    (properties `((upstream-name . "psql-helpers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/agrafix/psql-helpers#readme")
    (synopsis
     "A small collection of helper functions to generate postgresql queries")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-psql-helpers

(define-public haskell-8.6-quickbench
  (package
    (name "haskell-8.6-quickbench")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickbench/quickbench-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09mrhwvz0jnjrxgj3as7d4jl739gakli5crxfmp390x6a0p2bzlb"))))
    (properties `((upstream-name . "quickbench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-docopt)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-tabular)))
    (home-page "https://github.com/simonmichael/quickbench#readme")
    (synopsis "quick & easy benchmarking of command-line programs")
    (description
     "quickbench produces very simple output (elapsed seconds),
as quickly as possible (running commands just once by default),
and tabulates results from multiple executables.
I find it very useful for quick and dirty, exploratory, and comparative measurements
that you can understand at a glance.
Please see the readme for more.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-quickbench

(define-public haskell-8.6-range
  (package
    (name "haskell-8.6-range")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/range/range-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13gfhzplk2ji1d8x4944lv4dy4qg69wjvdwkica407nm10j0lxmc"))))
    (properties `((upstream-name . "range") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
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
with \"Data.Range.Range\"; it contains the basics of this library that meet most use
cases.")
    (license license:expat)))

haskell-8.6-range

(define-public haskell-8.6-rebase
  (package
    (name "haskell-8.6-rebase")
    (version "1.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rebase/rebase-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0q4m2fa7wkgxs0grir8rlqwibasmi3s1x7c107ynndwfm62nzv0a"))))
    (properties `((upstream-name . "rebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
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

haskell-8.6-rebase

(define-public haskell-8.6-recursion-schemes
  (package
    (name "haskell-8.6-recursion-schemes")
    (version "5.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/recursion-schemes/recursion-schemes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a0mkwy3sxg5f1mdlblpn0xl3lwgilnmzs94jqab0pqx9gjkc5xj"))))
    (properties `((upstream-name . "recursion-schemes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("2" "01q18gplv5k328qf74innnx2z2p15pg5nc6sikxq6fkkw4v3rkyb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)))
    (home-page "http://github.com/ekmett/recursion-schemes/")
    (synopsis
     "Representing common recursion patterns as higher-order functions")
    (description
     "Many recursive functions share the same structure, e.g. pattern-match on the input and, depending on the data constructor, either recur on a smaller input or terminate the recursion with the base case. Another one: start with a seed value, use it to produce the first element of an infinite list, and recur on a modified seed in order to produce the rest of the list. Such a structure is called a recursion scheme. Using higher-order functions to implement those recursion schemes makes your code clearer, faster, and safer. See README for details.")
    (license license:bsd-2)))

haskell-8.6-recursion-schemes

(define-public haskell-8.6-regex-applicative
  (package
    (name "haskell-8.6-regex-applicative")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative/regex-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p0anx5vamrhrdvviwkh2zn6pa3pv2bjb7nfyc7dvz2q7g14y1lg"))))
    (properties `((upstream-name . "regex-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-8.6-regex-applicative

(define-public haskell-8.6-replace-attoparsec
  (package
    (name "haskell-8.6-replace-attoparsec")
    (version "1.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-attoparsec/replace-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vksppf0x9wp9hs6h9i2jbaz5vmrv8r78dv3dr4g3d8bnkh2vmwz"))))
    (properties `((upstream-name . "replace-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)))
    (home-page "https://github.com/jamesdbrock/replace-attoparsec")
    (synopsis "Find, replace, and edit text patterns with Attoparsec parsers")
    (description
     "Find text patterns, and also edit or replace the found patterns. Use
Attoparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-8.6-replace-attoparsec

(define-public haskell-8.6-rio-prettyprint
  (package
    (name "haskell-8.6-rio-prettyprint")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-prettyprint/rio-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n8ldc73i0954c6s8jh0hibxrisp84yh5pcxv3x3q0wg4v2xvr0m"))))
    (properties `((upstream-name . "rio-prettyprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hvhjqy7kfk7fglx1rw8axscy0dfzqwd1564awnwdhvmf8silkkn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)))
    (home-page "https://github.com/commercialhaskell/stack#readme")
    (synopsis "Pretty-printing for RIO")
    (description "")
    (license license:bsd-3)))

haskell-8.6-rio-prettyprint

(define-public haskell-8.6-rvar
  (package
    (name "haskell-8.6-rvar")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rvar/rvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1h3bii1pamkv7656280i6zx7fpdwgbn2ysfijpd2s65szlpsz2np"))))
    (properties `((upstream-name . "rvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmtl2")
       #:cabal-revision
       ("1" "1ifwwjlhc3l8ycjmmarw6v1nm7jxpgqw2ly0q35idlj0jc0nbxn6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadPrompt)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-random-source)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Random Variables")
    (description "Random number generation based on modeling random
variables by an abstract type ('RVar') which can be
composed and manipulated monadically and sampled in
either monadic or \\\"pure\\\" styles.

The primary purpose of this library is to support
defining and sampling a wide variety of high quality
random variables.  Quality is prioritized over speed,
but performance is an important goal too.

In my testing, I have found it capable of speed
comparable to other Haskell libraries, but still
a fair bit slower than straight C implementations of
the same algorithms.

Changes in 0.2.0.1:  Version bump for transformers
dependency.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-rvar

(define-public haskell-8.6-s3-signer
  (package
    (name "haskell-8.6-s3-signer")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/s3-signer/s3-signer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r48j7ni8byzdi0girkj6lf2hp4q85ir2xnqpckzdxd0ppap2dnp"))))
    (properties `((upstream-name . "s3-signer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/dmjio/s3-signer")
    (synopsis "Pre-signed Amazon S3 URLs")
    (description
     "
s3-signer creates cryptographically secure Amazon S3 URLs that expire within a user-defined
period. It allows uploading and downloading of content from Amazon S3.
Ideal for AJAX direct-to-s3 uploads via CORS and secure downloads.
Web framework agnostic with minimal dependencies.

> module Main where
> import           Network.S3
> main :: IO ()
> main = print =<< generateS3URL credentials request
>   where
>     credentials = S3Keys \"<public-key-goes-here>\" \"<secret-key-goes-here>\"
>     request     = S3Request S3GET \"application/extension\" \"bucket-name\" \"file-name.extension\" 3 -- three seconds until expiration

Result

> S3URL \"https://bucket-name.s3.amazonaws.com/file-name.extension?AWSAccessKeyId=<public-key-goes-here>&Expires=1402346638&Signature=1XraY%2Bhp117I5CTKNKPc6%2BiihRA%3D\"")
    (license license:bsd-3)))

haskell-8.6-s3-signer

(define-public haskell-8.6-sampling
  (package
    (name "haskell-8.6-sampling")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-sampling

(define-public haskell-8.6-secp256k1-haskell
  (package
    (name "haskell-8.6-secp256k1-haskell")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/secp256k1-haskell/secp256k1-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ymmgcvlw4wrmnn0r6nmmpk0djihpappiywwfxvmnq8brqdkf3jk"))))
    (properties `((upstream-name . "secp256k1-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ecdh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-string-conversions)
                  (@ (gnu packages crypto) libsecp256k1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://github.com/haskoin/secp256k1-haskell#readme")
    (synopsis "Bindings for secp256k1 library from Bitcoin Core")
    (description
     "Sign and verify signatures using the very fast C secp256k1 library from Pieter Wuille. Has Haskell types and abstractions for keys and signatures.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-secp256k1-haskell

(define-public haskell-8.6-semialign
  (package
    (name "haskell-8.6-semialign")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign/semialign-" version
                    ".tar.gz"))
              (sha256
               (base32
                "004x0a80sqqdgvsyk4z0nasxpi6z3g1d8kgwj804bj9ka8dlc75m"))))
    (properties `((upstream-name . "semialign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")
       #:cabal-revision
       ("1" "0qnqnyfng4kwy2h2anrcy5id2ijnawava3zcc5h5b8ri1y6ks6zi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-these)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/isomorphism/these")
    (synopsis "Align and Zip type-classes from the common Semialign ancestor.")
    (description
     "The major use of @@These@@ of this is provided by the @@align@@ member of
@@Semialign@@ class, representing a generalized notion of \"zipping with padding\"
that combines structures without truncating to the size of the smaller input.

It turns out that @@zip@@ operation fits well the @@Semialign@@ class,
forming lattice-like structure.")
    (license license:bsd-3)))

haskell-8.6-semialign

(define-public haskell-8.6-shellmet
  (package
    (name "haskell-8.6-shellmet")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shellmet/shellmet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i39zl8khsriadi7k28rn0w2y8wf6jmnz5x3nlkdd9spkdy1qz49"))))
    (properties `((upstream-name . "shellmet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)))
    (home-page "https://github.com/kowainik/shellmet")
    (synopsis "Out of the shell solution for scripting in Haskell")
    (description
     "Shellmet provides easy and convenient way to call shell commands from Haskell programs")
    (license license:mpl2.0)))

haskell-8.6-shellmet

(define-public haskell-8.6-sqlite-simple-errors
  (package
    (name "haskell-8.6-sqlite-simple-errors")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple-errors/sqlite-simple-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vvim8zcrl3yqhf30j69x59qs5f6sdx5bvy4ihwmimkldm5gh0ai"))))
    (properties `((upstream-name . "sqlite-simple-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-sqlite-simple)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/caneroj1/sqlite-simple-errors")
    (synopsis "Wrapper around errors from sqlite-simple")
    (description
     "Wrapper around errors from sqlite-simple. Get easy-to-pattern-match
data types for constraint errors.")
    (license license:bsd-3)))

haskell-8.6-sqlite-simple-errors

(define-public haskell-8.6-state-codes
  (package
    (name "haskell-8.6-state-codes")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/state-codes/state-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gls0gyk3iz9i03zw31x3xhi5m1y2r98qkkrah8kz07fsbxqrqn"))))
    (properties `((upstream-name . "state-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)))
    (home-page "https://github.com/acamino/state-codes#README")
    (synopsis "ISO 3166-2:US state codes and i18n names")
    (description
     "This package provides the ISO 3166-2:US state codes and i18n names")
    (license license:expat)))

haskell-8.6-state-codes

(define-public haskell-8.6-statistics
  (package
    (name "haskell-8.6-statistics")
    (version "0.15.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statistics/statistics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j9awbg47fzb58k5z2wgkp6a0042j7hqrl1g6lyflrbsfswdp5n4"))))
    (properties `((upstream-name . "statistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-dense-linear-algebra)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-math-functions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monad-par)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-vector-th-unbox)))
    (home-page "https://github.com/bos/statistics")
    (synopsis "A library of statistical types, data, and functions")
    (description
     "This library provides a number of common functions and types useful
in statistics.  We focus on high performance, numerical robustness,
and use of good algorithms.  Where possible, we provide
references to the statistical literature.

The library's facilities can be divided into four broad categories:

* Working with widely used discrete and continuous probability
distributions.  (There are dozens of exotic distributions in use;
we focus on the most common.)

* Computing with sample data: quantile estimation, kernel density
estimation, histograms, bootstrap methods, significance testing,
and regression and autocorrelation analysis.

* Random variate generation under several different distributions.

* Common statistical tests for significant differences between
samples.")
    (license license:bsd-2)))

haskell-8.6-statistics

(define-public haskell-8.6-streaming-bytestring
  (package
    (name "haskell-8.6-streaming-bytestring")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-bytestring/streaming-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lsklavhk6wcsgjr2rcwkkv827gnd9spv4zwz5i5zf3njvy27my1"))))
    (properties `((upstream-name . "streaming-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-streaming)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming-bytestring")
    (synopsis "effectful byte steams, or: bytestring io done right.")
    (description
     "This is an implementation of effectful, memory-constrained
bytestrings (byte streams) and functions for streaming
bytestring manipulation, adequate for non-lazy-io.
Some examples of the use of byte streams to implement simple
shell progams can be found
<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 here>.
See also the illustrations of use with e.g. @@attoparsec@@,
@@aeson@@, @@http-client@@, @@zlib@@ etc. in the
<https://hackage.haskell.org/package/streaming-utils streaming-utils>
library.  Usage is as close as possible to that of @@ByteString@@
and lazy @@ByteString@@.

A @@ByteString IO ()@@ is the most natural representation of
an effectful stream of bytes arising chunkwise from a handle.
Indeed, the implementation follows the
details of @@Data.ByteString.Lazy@@ and @@Data.ByteString.Lazy.Char8@@
in unrelenting detail, omitting only transparently non-streaming
operations like @@reverse@@. It is just a question of replacing
the lazy bytestring type:

> data ByteString     = Empty   | Chunk Strict.ByteString ByteString

with the /minimal/ effectful variant:

> data ByteString m r = Empty r | Chunk Strict.ByteString (ByteString m r) | Go (m (ByteString m r))

(Constructors are necessarily hidden in internal modules in both the @@Lazy@@ and the @@Streaming@@.)

That's it. As a lazy bytestring is implemented internally
by a sort of list of strict bytestring chunks, a streaming bytestring is
simply implemented as a /producer/ or /generator/ of strict bytestring chunks.
Most operations are defined by simply adding a line to what we find in
@@Data.ByteString.Lazy@@. The only possible simplification would
involve specializing to @@IO@@, throughout - but this would e.g. block
the use of @@ResourceT@@ to manage handles and the like, and a number
of other convenient operations like @@copy@@, which permits one to
apply two operations simultaneously over the length of the byte stream.

Something like this alteration of type is of course obvious and mechanical, once the idea of
an effectful bytestring type is contemplated and lazy io is rejected.
Indeed it seems that this is the proper expression of what was
intended by lazy bytestrings to begin with. The documentation, after all,
reads

* \\\"A key feature of lazy ByteStrings is the means to manipulate large or
unbounded streams of data without requiring the entire sequence to be
resident in memory. To take advantage of this you have to write your
functions in a lazy streaming style, e.g. classic pipeline composition.
The default I/O chunk size is 32k, which should be good in most circumstances.\\\"

... which is very much the idea of this library: the default chunk size for
'hGetContents' and the like follows @@Data.ByteString.Lazy@@; operations
like @@lines@@ and @@append@@ and so on are tailored not to increase chunk size.

The present library is thus if you like nothing but /lazy bytestring done right/.
The authors of @@Data.ByteString.Lazy@@ must have supposed that
the directly monadic formulation of such their type
would necessarily make things slower. This appears to be a prejudice.
For example, passing a large file of short lines through
this benchmark transformation

> Lazy.unlines      . map    (\\bs -> \"!\"       <> Lazy.drop 5 bs)       . Lazy.lines
> Streaming.unlines . S.maps (\\bs -> chunk \"!\" >> Streaming.drop 5 bs)  . Streaming.lines

gives pleasing results like these

> $  time ./benchlines lazy >> /dev/null
> real	0m2.097s
> ...
> $  time ./benchlines streaming >> /dev/null
> real	0m1.930s

For a more sophisticated operation like

> Lazy.intercalate \"!\\n\"      . Lazy.lines
> Streaming.intercalate \"!\\n\" . Streaming.lines

we get results like these:

> time ./benchlines lazy >> /dev/null
> real	0m1.250s
> ...
> time ./benchlines streaming >> /dev/null
> real	0m1.531s

The pipes environment would express the latter as

> Pipes.intercalates (Pipes.yield \"!\\n\") . view Pipes.lines

meaning almost exactly what we mean above, but with results like this

>  time ./benchlines pipes >> /dev/null
>  real	0m6.353s

The difference, however, /is emphatically not intrinsic to pipes/;
it is just that
this library depends the @@streaming@@ library, which is used in place
of @@free@@ to express the
<http://www.haskellforall.com/2013/09/perfect-streaming-using-pipes-bytestring.html \"perfectly streaming\">
splitting and iterated division or \"chunking\" of byte streams.

These concepts belong to the ABCs of streaming; @@lines@@ is just
a textbook example, and it is of course handled correctly in
@@Data.ByteString.Lazy@@.
But the concepts are /catastrophically mishandled/ in /all/ streaming io libraries
other than pipes. Already the @@enumerator@@ and @@iteratee@@ libraries
were completely defeated by @@lines@@:
see e.g. the @@enumerator@@ implementation of
<http://hackage.haskell.org/package/enumerator-0.4.20/docs/Data-Enumerator-Text.html#v:splitWhen splitWhen and lines>.
This will concatenate strict text forever, if that's what is coming
in.  The rot spreads from there.
It is just a fact that in all of the general streaming io
frameworks other than pipes,it becomes torture to express elementary distinctions
that are transparently and immediately contained in any
idea of streaming whatsoever.

Though, as was said above, we barely alter signatures in @@Data.ByteString.Lazy@@
more than is required by the types, the point of view that emerges
is very much that of
@@pipes-bytestring@@ and @@pipes-group@@. In particular
we have these correspondences:

> Lazy.splitAt      :: Int -> ByteString              -> (ByteString, ByteString)
> Streaming.splitAt :: Int -> ByteString m r          -> ByteString m (ByteString m r)
> Pipes.splitAt     :: Int -> Producer ByteString m r -> Producer ByteString m (Producer ByteString m r)

and

> Lazy.lines      :: ByteString -> [ByteString]
> Streaming.lines :: ByteString m r -> Stream (ByteString m) m r
> Pipes.lines     :: Producer ByteString m r -> FreeT (Producer ByteString m) m r

where the @@Stream@@ type expresses the sequencing of @@ByteString m _@@ layers
with the usual \\'free monad\\' sequencing.

Interoperation with @@pipes-bytestring@@ uses this isomorphism:

> Streaming.ByteString.unfoldrChunks Pipes.next :: Monad m => Producer ByteString m r -> ByteString m r
> Pipes.unfoldr Streaming.ByteString.nextChunk  :: Monad m => ByteString m r -> Producer ByteString m r

Interoperation with @@io-streams@@ is thus:

> IOStreams.unfoldM Streaming.ByteString.unconsChunk :: ByteString IO () -> IO (InputStream ByteString)
> Streaming.ByteString.reread IOStreams.read         :: InputStream ByteString -> ByteString IO ()

and similarly for other rational streaming io libraries.

Problems and questions about the library can be put as issues on
the github page, or mailed to the
<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.

A tutorial module is in the works;
<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 here>,
for the moment,
is a sequence of simplified implementations of familiar shell utilities.
The same programs are implemented at the end of the excellent
<http://hackage.haskell.org/package/io-streams-1.3.2.0/docs/System-IO-Streams-Tutorial.html io-streams tutorial>.
It is generally much simpler; in some case simpler than what
you would write with lazy bytestrings.
<https://gist.github.com/michaelt/2dcea1ba32562c091357 Here>
is a simple GET request that returns a byte stream.
")
    (license license:bsd-3)))

haskell-8.6-streaming-bytestring

(define-public haskell-8.6-string-transform
  (package
    (name "haskell-8.6-string-transform")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-transform/string-transform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ay7r8ln4jwn7iq6smbny5lby3xgzlrlqj02yp61n1cn0sgzbhw"))))
    (properties `((upstream-name . "string-transform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-8.6-string-transform

(define-public haskell-8.6-tasty-dejafu
  (package
    (name "haskell-8.6-tasty-dejafu")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-dejafu/tasty-dejafu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19cgzr1gcy1khvw2a6bfd620zmrc4szkdwyf3rfyacxgbgqy1b1z"))))
    (properties `((upstream-name . "tasty-dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-dejafu)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "Deja Fu support for the Tasty test framework.")
    (description
     "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>
library for concurrency testing and
<https://hackage.haskell.org/package/tasty tasty>. This lets you
easily incorporate concurrency testing into your existing test
suites.")
    (license license:expat)))

haskell-8.6-tasty-dejafu

(define-public haskell-8.6-tasty-hspec
  (package
    (name "haskell-8.6-tasty-hspec")
    (version "1.1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i9kdzjpk750sa078jj3iyhp72k0177zk7vxl131r6dkyz09x27y"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0xa7h0p5r41m2a3l5r9ggmm4bc2a6wzgb4qvcqfl0dd2yb922bkz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-8.6-tasty-hspec

(define-public haskell-8.6-tasty-lua
  (package
    (name "haskell-8.6-tasty-lua")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-lua/tasty-lua-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m75dffrj6ziaalrch91kzj76ki0chbf33pi7mrx0c1gzmpvn8gv"))))
    (properties `((upstream-name . "tasty-lua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hslua)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/hslua/tasty-lua")
    (synopsis "Write tests in Lua, integrate into tasty.")
    (description "Allow users to define tasty tests from Lua.")
    (license license:expat)))

haskell-8.6-tasty-lua

(define-public haskell-8.6-tdigest
  (package
    (name "haskell-8.6-tdigest")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-reducers)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
    (home-page "https://github.com/futurice/haskell-tdigest#readme")
    (synopsis "On-line accumulation of rank-based statistics")
    (description
     "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.

See original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl
for more details <https://github.com/tdunning/t-digest/blob/07b8f2ca2be8d0a9f04df2feadad5ddc1bb73c88/docs/t-digest-paper/histo.pdf>.")
    (license license:bsd-3)))

haskell-8.6-tdigest

(define-public haskell-8.6-text-show-instances
  (package
    (name "haskell-8.6-text-show-instances")
    (version "3.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show-instances/text-show-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11v335p3wzf9ijqlkls5mk4m16dfak8fckn4gj7mahs8c7l9lm5d"))))
    (properties `((upstream-name . "text-show-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")
       #:cabal-revision
       ("6" "1masflbb26zg8l0xiz2pzy6i9sh9pc3hqfd6y3vcvyxg0wg96cxf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-text-short)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-text-show)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-th-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-text-show-instances

(define-public haskell-8.6-th-nowq
  (package
    (name "haskell-8.6-th-nowq")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-nowq/th-nowq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08lcy7b9r3mrnl8scjrzcmh3m840rqwb6cr6lasc8sjngf0d55x9"))))
    (properties `((upstream-name . "th-nowq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-nowq#readme")
    (synopsis "Template Haskell splice that expands to current time")
    (description
     "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.")
    (license license:bsd-3)))

haskell-8.6-th-nowq

(define-public haskell-8.6-throwable-exceptions
  (package
    (name "haskell-8.6-throwable-exceptions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/aiya000/hs-throwable-exceptions#README.md")
    (synopsis "throwable-exceptions gives the easy way to throw exceptions")
    (description "throwable-exceptions gives the easy way to throw exceptions")
    (license license:expat)))

haskell-8.6-throwable-exceptions

(define-public haskell-8.6-time-parsers
  (package
    (name "haskell-8.6-time-parsers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)))
    (home-page "https://github.com/phadej/time-parsers#readme")
    (synopsis "Parsers for types in `time`.")
    (description
     "Parsers for types in `time` using 'parser' library.

Originally forked from aeson parsers.

See also <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.")
    (license license:bsd-3)))

haskell-8.6-time-parsers

(define-public haskell-8.6-tmp-postgres
  (package
    (name "haskell-8.6-tmp-postgres")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-postgres/tmp-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08w88rh8yap7dmh2jn3x8rd918jxscw46jzljfbdyda9rzfz7kq4"))))
    (properties `((upstream-name . "tmp-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-port-utils)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
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

MacOS and Linux are support. Windows is not.

Requires PostgreSQL 9.3+

WARNING!!
Ubuntu's PostgreSQL installation does not put @@initdb@@ on the @@PATH@@. We need to add it manually. The necessary binaries are in the @@\\/usr\\/lib\\/postgresql\\/VERSION\\/bin\\/@@ directory, and should be added to the @@PATH@@

> echo \"export PATH=$PATH:/usr/lib/postgresql/VERSION/bin/\" >> /home/ubuntu/.bashrc
")
    (license license:bsd-3)))

haskell-8.6-tmp-postgres

(define-public haskell-8.6-tomland
  (package
    (name "haskell-8.6-tomland")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tomland/tomland-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ihz8pvcnr33mydz4n7gsayikh50pn1bg3km2h3nlv054lff7kai"))))
    (properties `((upstream-name . "tomland") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16382q0q77bv9zlahmgbmc90hvl1b23g9fxk4dl2f1lhlfqjkxnw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
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

haskell-8.6-tomland

(define-public haskell-8.6-tonalude
  (package
    (name "haskell-8.6-tonalude")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonalude/tonalude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "060hc1dydlq1zd1fn5scz7xhbflqm4fa86rz6275drymi5gwx82s"))))
    (properties `((upstream-name . "tonalude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "A standard library for Tonatona framework.")
    (description
     "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @@tonatona@@. The Tonalude module works as a prelude replacement for Tonatona framework, providing more functionality and types out of the box than the standard prelude (such as common data types like ByteString and Text), as well as removing common \"gotchas\", like partial functions and lazy I/O.")
    (license license:expat)))

haskell-8.6-tonalude

(define-public haskell-8.6-tonaparser-notests
  (package
    (name "haskell-8.6-tonaparser-notests")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonaparser/tonaparser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v9qfc13lyjclk7pqsld1lzzbdhimz7gziix7w2x6v2rr2nia8j0"))))
    (properties `((upstream-name . "tonaparser") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-envy)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-say)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "Scalable way to pass runtime configurations for tonatona")
    (description
     "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @@tonatona@@.")
    (license license:expat)))

haskell-8.6-tonaparser-notests

(define-public haskell-8.6-tree-diff
  (package
    (name "haskell-8.6-tree-diff")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-diff/tree-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1156nbqn0pn9lp4zjsy4vv5g5wmy4zxwmbqdgvq349rydynh3ng3"))))
    (properties `((upstream-name . "tree-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1wqfac660m9ggv6r85a7y29mk947hki9iydy124vdwcqzichja0d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-tree-diff

(define-public haskell-8.6-turtle
  (package
    (name "haskell-8.6-turtle")
    (version "1.5.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/turtle/turtle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "164cs5gsl6pmfj4yd9p4vj02n1sj5krgd6azd5zfgyw4q7bfc5jn"))))
    (properties `((upstream-name . "turtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hostname)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-managed)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-optional-args)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-system-fileio)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-system-filepath)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.6-turtle

(define-public haskell-8.6-ucam-webauth-types
  (package
    (name "haskell-8.6-ucam-webauth-types")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ucam-webauth-types/ucam-webauth-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jq66amdmrbkg69m0cbbw7xfvsc9iy74khn1k39n7jkq821pzjni"))))
    (properties `((upstream-name . "ucam-webauth-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("4" "1lb0yq1051fi71qrbnkyg39c7rn5x62w2qkqvp88ih4wzdib8fzv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-timerep)))
    (home-page "https://github.com/dbaynard/UcamWebauth#readme")
    (synopsis "Types for the Ucam-Webauth protocol, as used by Raven")
    (description
     "Types for the implementation of the Ucam-Webauth protocol, as used by the
University of Cambridge’s Raven authentication service.")
    (license license:bsd-3)))

haskell-8.6-ucam-webauth-types

(define-public haskell-8.6-users-postgresql-simple
  (package
    (name "haskell-8.6-users-postgresql-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-users)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)))
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

haskell-8.6-users-postgresql-simple

(define-public haskell-8.6-users-test
  (package
    (name "haskell-8.6-users-test")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-users)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "Library to test backends for the users library")
    (description
     "Provides HSpec helpers for backends of <http://hackage.haskell.org/package/users users package>.

All backend packages should conform to this specification.")
    (license license:expat)))

haskell-8.6-users-test

(define-public haskell-8.6-validity-path
  (package
    (name "haskell-8.6-validity-path")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-path/validity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ip1qm6sip1yxbrcx9zn2saipd6bfs88cgn5jd3pw9ffkydxm74p"))))
    (properties `((upstream-name . "validity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-validity-path

(define-public haskell-8.6-versions
  (package
    (name "haskell-8.6-versions")
    (version "3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i883v04i1a3sjn1vx15yb3bwi9pq41z650aq3zci72vyvbhr0n7"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-checkers)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://gitlab.com/fosskers/versions")
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

haskell-8.6-versions

(define-public haskell-8.6-vty
  (package
    (name "haskell-8.6-vty")
    (version "5.25.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vty/vty-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1x15jlf9x6c8nhdbp6alr17vigclkaf5qy5jpp14g5n568p7karw"))))
    (properties `((upstream-name . "vty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sqhbbdy6f0z203d4y893p6k85qiarb12xq97gx65rqhrjbgk7dm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-string-qq)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/jtdaugherty/vty")
    (synopsis "A simple terminal UI library")
    (description
     "vty is terminal GUI library in the niche of ncurses. It is intended to
be easy to use, have no confusing corner cases, and good support for
common terminal types.

See the @@vty-examples@@ package as well as the program
@@test/interactive_terminal_test.hs@@ included in the @@vty@@ package for
examples on how to use the library.

Import the \"Graphics.Vty\" convenience module to get access to the core
parts of the library.

&#169; 2006-2007 Stefan O'Rear; BSD3 license.

&#169; Corey O'Connor; BSD3 license.

&#169; Jonathan Daugherty; BSD3 license.")
    (license license:bsd-3)))

haskell-8.6-vty

(define-public haskell-8.6-wai
  (package
    (name "haskell-8.6-wai")
    (version "3.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai/wai-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "058871axlq6r0gcqxbjw37w57df9xbv81dmz99b1zq59wf329xzy"))))
    (properties `((upstream-name . "wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Web Application Interface.")
    (description
     "Provides a common protocol for communication between web applications and web servers.

API docs and the README are available at <http://www.stackage.org/package/wai>.")
    (license license:expat)))

haskell-8.6-wai

(define-public haskell-8.6-web-routes
  (package
    (name "haskell-8.6-web-routes")
    (version "0.27.14.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes/web-routes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a66m261ilqafbwwgjvalh3rz38qxcwxw9a99wr18lm0ah27lvx4"))))
    (properties `((upstream-name . "web-routes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page
     "http://www.happstack.com/docs/crashcourse/index.html#web-routes")
    (synopsis "portable, type-safe URL routing")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-8.6-web-routes

(define-public haskell-8.6-winery
  (package
    (name "haskell-8.6-winery")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/winery/winery-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qh2i6fwwgncmx15gp4h3cg04plff3h8252x66rzxnd22g1sk3d9"))))
    (properties `((upstream-name . "winery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-cpu)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-fast-builder)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/fumieval/winery#readme")
    (synopsis "A compact, well-typed seralisation format for Haskell values")
    (description
     "<<https://i.imgur.com/lTosHnE.png>>

Please see the README on GitHub at <https://github.com/fumieval/winery#readme>")
    (license license:bsd-3)))

haskell-8.6-winery

