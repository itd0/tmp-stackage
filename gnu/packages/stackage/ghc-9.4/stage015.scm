;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage015)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.4-BNFC-meta
  (package
    (name "haskell-9.4-BNFC-meta")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BNFC-meta/BNFC-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0snackflcjxza4iqbd85fdsmylwr3bj71nsfrs2s2idc3nlxc7ia"))))
    (properties `((upstream-name . "BNFC-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1d0p524370r8jff7p3rnp6hrqlr85nhg8n2ydpfjwwmp4arp1il2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-alex-meta)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-happy-meta)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://hackage.haskell.org/package/BNFC-meta")
    (synopsis "Deriving Parsers and Quasi-Quoters from BNF Grammars")
    (description
     "This package provides a very simple way of defining a compiler
front-end for a language by embedding a BNF grammar directly into a Haskell
source file.
Specifically, given a quasi-quoted LBNF grammar (as used by the BNF Converter)
it generates (using Template Haskell) a LALR parser and pretty pretty printer
for the language. The parser is then used to automatically define a
quasi-quoter for the defined language so it can also be seamlessly embedded
in Haskell source code. With a
simple addition to the gramwmar, the user can define a universal syntax for
anti-quoting. This
means that any grammar non-terminal can be replaced by a quoted Haskell
expression of the appropriate type. A few example languages are included in
the source tarball.

The LBNF grammar formalism is described thoroughly in the BNF Converter
documentation: <http://bnfc.digitalgrammars.com/>

This library and the additions it makes to LBNF is described in a
2011 Haskell Symposium paper titled \\\"Embedded Parser Generators\\\":
<http://wiki.portal.chalmers.se/cse/pmwiki.php/FP/EmbeddedParserGenerators>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-BNFC-meta

(define-public haskell-9.4-H
  (package
    (name "haskell-9.4-H")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/H/H-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1xnv8a097pidh4q9ngrsha0vm9sgsbggblizcjz449iwwsb8yg9g"))))
    (properties `((upstream-name . "H") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-inline-r)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://tweag.github.io/HaskellR")
    (synopsis "The Haskell/R mixed programming environment.")
    (description "This package is part of the HaskellR project.")
    (license license:bsd-3)))

haskell-9.4-H

(define-public haskell-9.4-OrderedBits
  (package
    (name "haskell-9.4-OrderedBits")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/OrderedBits/OrderedBits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kfb7z5xbzgn1aj8kpij4ry5i4v3v5h55pp3g6qzvgayn25xqc05"))))
    (properties `((upstream-name . "OrderedBits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-bits)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/OrderedBits")
    (synopsis "Efficient ordered (by popcount) enumeration of bits")
    (description
     "This library provides efficient methods to enumerate all
elements of a set in order of the population count, or the
ordered enumerations of the elements of the powerset of a set.
First, the empty set, then all 1-element sets, all 2-element
sets, etc.  Such enumerations are important for algorithms over
unordered data sets. Examples include the travelling salesman
problem and the closely related Hamiltonian path problem.")
    (license license:bsd-3)))

haskell-9.4-OrderedBits

(define-public haskell-9.4-Rasterific
  (package
    (name "haskell-9.4-Rasterific")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-FontyFruity)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/Rasterific")
    (synopsis "A pure haskell drawing engine.")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAA7VBMVEUBhsECh8EFiMIIisMLi8QMjMQOjcQSj8UTj8YVkMYZkscakscbk8ghlskmmMozns02oM44oc86os9CpdFEptJXr9Zbsdddsthes9hhtNljtdlsudtxvNx+wuB/wuCAw+CCxOGDxOGExeGHxuKVzeWb0Oed0Oek1Omm1emo1uqp1uqr1+ux2uyy2uy02+223O294O/J5fLK5vLM5/PN5/PY7PbZ7fbj8vjk8vjl8/nm8/np9frq9frr9vrs9vru9/vw+Pv2+/33+/37/f6g0ug8otBNq9S63u6Jx+IEiMJfs9hzvd3f8Pcqmsv///+OsMg+AAAFP0lEQVR4XuzPSQ0AIAwAQcT15PIvhy8OaMiOg2n7E0TeI0KECJH6iBAhQoQIESJEiEyXGN10ZbvkUusjxGf9yGHvjhpRW8Iwjj+oIIQQlh0FgBARiEIs7eb7f5xzdW5m9j5nzbPe1rwX/b7B343VzDszD+f1yvIs/tfscqV+/qAz5PlksJqHl/zq4ORZVUjnaHMepPnNo46OkNbeElJa2muFDrmvDSFiWLsPF9I7LkNQ+bgXJOSlOgNhM9WXzEPa2znIQ267nWnIUzSJEZmMnjIL6dYKGKFCrZtNSGMBI7bQyCDkbR0ZWH8bdcjFHDIxdzHSkG40gYxMRN3RhbRLyFCpPaqQZhGZKjZHE3KWQ8ZyZ6MI2Y+RuXhfPmQXQewSIXzHVKlSPby8ef03+vXm8rBaKU2JlMiG7ONvCmsHLfMXrYO1AtLalww5i/FHizvX7+Y/vV/vLCKV+EwupJnDn5SvTCJXZaSRa0qFtItwxRu3JrHbjRi8YlsmpFuCq39nvNz1wSt1RUIiOKZPjbfTadAiiZCLCdhWHg3hcQWsiYv0IW9zsG31DKW3BdbcW+qQddh+GdovsNbThjS4DvmSRrqQ7gIsWyaVLZAWuqlCarCs9EwqvRWQamlCngpWx/SjSelxGpzCU4qQCJZTk9opSBEf0rbXE/tGQB+cyTYdsm11xHdGwF0MzjYb8pKzQjaMiA1wci9kSBWWWyPiFqQqF9Kz9z/KRkgZnJkeFXIMy5URcgXSMRHi/t0WjZhFcMpMyD0sO0bMDkj3REgNlmsj5hqkGhEytDoK70bMewGcoX9IC5Y1I2gNpJZ3yB4sB0bQAUh73iFL7t9CUAukJd+QDixTRtQUSB3PkCNYSkZUCaQjz5BNWCpGVAWkTc+QeViqRlQVpHm/kGfYDo2oQ7CevUJOYLs0oi7BOvEKGcB2Y0TdgDXwClmF7dWIegVr1SskD5sRBlbeJ+QBekPw4BFyrjnk3COkrjmk7hFS0RxS8QhZ1hyy7BEyqzlk1iMEmkOQPOQ3oPcfIvA7ccgXoPcTBfhKHPIB6P1oBD4Sh3wDej/jge/EIQM45H9Y8QaJQ37gkP+py/tJHNKHQ37xgddPHPIJh/xyEO8zccgQDvkFOt4wcUgMh/ySKS9OHAJL2EVsFxGiaFuBD1G20cOHaNt640OUbYbyIdq2p/kQZQMDfIi2EQ4+JORQjXyI/JhToBD5wbOgIfKjgDzmozH8cKYrZj7jw4/LuobUD6vgA8yuT+qnbvCRclefW3wIPeTv+iGXgwIfu3AN2AW6sAdhXN/skmnYo0muD3oRO+hhMdcXv60Q9vgev61g4JA/UMlLtfUmfsSVN5tqM5Q/dCxuOd32dIBj4ALb03UoVidGOFQ6J4ZqVHogxpw0yhODZyqtEqOAKg2I4UyVTohxWZWeiQFmjeaJkXKVNokhf5WOiGMXKnWIgzAaLRFHk1TaIw6LqdRiju8pNKQOVCpUo464KnTPHTpWp0weA1fnmD2Yrwl/MN9UoUyVv7xCldwLf52IKtsCF7wEIHnBi4mgSCRwCVIA7CVI+r9TagIXhWmw0BW4uk2DhsBlehqsS1xvqMDcm8iFkwGQF05q/2cSSV3KGlipK3ZNblDFtuDFxQHlmqJXSQcTn8le7h3MvvR164Hsji/A1/UkwfiRCF3PdowfUtH1tM34sSFVzz+NH+RS9UTa+NE6Tc8Ijh921PTU5vjxU8XP0Y4fCB4/2cw/ov1Pe3cgAwAAACDM3zqOtmdwgmzNjeZBQEA+gYCAgICAgICAgIAETuKXxaAVTVgAAAAASUVORK5CYII=>>

Rasterific is a vector drawing library (a rasterizer)
implemented in pure haskell.

Can render vector graphics to an image and export vector data to PDF.")
    (license license:bsd-3)))

haskell-9.4-Rasterific

(define-public haskell-9.4-active
  (package
    (name "haskell-9.4-active")
    (version "0.2.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/active/active-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fz2rsyk41p9f9avlmn9lrdmii5alv88lkw677mw8q6mzyxpw67i"))))
    (properties `((upstream-name . "active") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cyfwrr5c14f5rgrf8dv7i8qsrnmnzigw0xp6l88kfxd61zhk4n8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hackage.haskell.org/package/active")
    (synopsis "Abstractions for animation")
    (description
     "\"Active\" abstraction for animated things with finite start and end times.")
    (license license:bsd-3)))

haskell-9.4-active

(define-public haskell-9.4-aeson-picker
  (package
    (name "haskell-9.4-aeson-picker")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-picker/aeson-picker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18qn7d163li5v4hjikjfds5jiqcv4h54myipw0pr4sq1ra1wlys4"))))
    (properties `((upstream-name . "aeson-picker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/aeson-picker#readme")
    (synopsis "Tiny library to get fields from JSON format")
    (description "Tiny library to get fields from JSON format")
    (license license:bsd-3)))

haskell-9.4-aeson-picker

(define-public haskell-9.4-aeson-schemas
  (package
    (name "haskell-9.4-aeson-schemas")
    (version "1.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-schemas/aeson-schemas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yv4d4i8gmbv0mmlalhlafn9a6kv51wdwnpbksiajm6m47bajqym"))))
    (properties `((upstream-name . "aeson-schemas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-run-integration-tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-qq)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-first-class-families)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-test-utils)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/LeapYear/aeson-schemas#readme")
    (synopsis "Easily consume JSON data on-demand with type-safety")
    (description
     "Parse JSON data easily and safely without defining new data types. Useful
for deeply nested JSON data, which is difficult to parse using the default
FromJSON instances.")
    (license license:bsd-3)))

haskell-9.4-aeson-schemas

(define-public haskell-9.4-aeson-typescript
  (package
    (name "haskell-9.4-aeson-typescript")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-typescript/aeson-typescript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00lv7mfxxnhmbxh9s1qwfnffmpy6095fh3zms68bzdkjik2hk830"))))
    (properties `((upstream-name . "aeson-typescript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-string-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/codedownio/aeson-typescript#readme")
    (synopsis "Generate TypeScript definition files from your ADTs")
    (description
     "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>")
    (license license:bsd-3)))

haskell-9.4-aeson-typescript

(define-public haskell-9.4-amqp-utils
  (package
    (name "haskell-9.4-amqp-utils")
    (version "0.6.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amqp-utils/amqp-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qdhp96zqcjd8yd2hmg7c2cl9gdvywp1p3v1xjcax9si5pr83w1i"))))
    (properties `((upstream-name . "amqp-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-amqp)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-filepath-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-hinotify)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-magic)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-rawfilepath)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-system)))
    (propagated-inputs (list (@ (gnu packages imagemagick) imagemagick)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/amqp-utils")
    (synopsis "AMQP toolset for the command line")
    (description "AMQP tools consisting of:
AMQP consumer which can
create a temporary queue and attach it to an exchange, or
attach to an existing queue;
display header and body info;
save message bodies to files;
call a callback script.
AMQP publisher with file, line-by-line and
hotfolder capabilities.
AMQP rpc client and server.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-amqp-utils

(define-public haskell-9.4-apecs
  (package
    (name "haskell-9.4-apecs")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/apecs/apecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h4pdfh6c2cc9w13crn90rlllykv2axjfmxb74ji2l9m17m4w4vy"))))
    (properties `((upstream-name . "apecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1n0sz1230fp65dv462ss15yma6g1dxxlamj7idgl3kg9gdwv70sn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "Fast Entity-Component-System library for game programming")
    (description
     "apecs is a fast, type-driven Entity-Component-System library for game programming.")
    (license license:bsd-3)))

haskell-9.4-apecs

(define-public haskell-9.4-attoparsec-path
  (package
    (name "haskell-9.4-attoparsec-path")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/attoparsec-path#readme")
    (synopsis "Convenience bindings between path and attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-9.4-attoparsec-path

(define-public haskell-9.4-aws-xray-client
  (package
    (name "haskell-9.4-aws-xray-client")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client/aws-xray-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i60ggcrwp2vkyagj8jqb33wh7y0h3anag9l2pb5zh6xl2n043ai"))))
    (properties `((upstream-name . "aws-xray-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-qq)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray.")
    (description
     "The core client for enabling AWX X-Ray.

See other `aws-xray-client-*` packages for usage and integration examples.")
    (license license:expat)))

haskell-9.4-aws-xray-client

(define-public haskell-9.4-call-alloy
  (package
    (name "haskell-9.4-call-alloy")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/call-alloy/call-alloy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xxrin8n2kk37jip5hacyn87sxhwz4bjk6crd90yw8f1sg8n354m"))))
    (properties `((upstream-name . "call-alloy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-trifecta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/marcellussiegburg/call-alloy#readme")
    (synopsis "A simple library to call Alloy given a specification")
    (description
     "Please see the README on GitHub at <https://github.com/marcellussiegburg/call-alloy#readme>")
    (license license:expat)))

haskell-9.4-call-alloy

(define-public haskell-9.4-componentm-devel
  (package
    (name "haskell-9.4-componentm-devel")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-componentm)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-foreign-store)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-teardown)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Easy REPL driven development using ComponentM")
    (description
     "This library enhances the componentm with auto-reloading
capabilites for your application, allowing to ensure cleanup
of resources when doing REPL driven development, or when using
ghcid")
    (license license:expat)))

haskell-9.4-componentm-devel

(define-public haskell-9.4-cursor-gen
  (package
    (name "haskell-9.4-cursor-gen")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-gen/cursor-gen-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a591kx30d8zmwl1rp78scjgbakkslq45wx6f558wmpph33gnw5s"))))
    (properties `((upstream-name . "cursor-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cursor)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-hspec-optics)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Generators for Purely Functional Cursors")
    (description
     "Generators for Purely Functional Cursors for common data structures")
    (license license:expat)))

haskell-9.4-cursor-gen

(define-public haskell-9.4-data-interval
  (package
    (name "haskell-9.4-data-interval")
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
       #:configure-flags (list "-flattices")
       #:cabal-revision
       ("1" "0b7wljz2xcj8j2aka343i19rzw2lva5bbd4wp9wmrzlafp8anxpd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-extended-reals)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-lattices)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)))
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

haskell-9.4-data-interval

(define-public haskell-9.4-data-sketches-core
  (package
    (name "haskell-9.4-data-sketches-core")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-sketches-core/data-sketches-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffw8ppgv1ifqh43nr3730qc188dg65d4bswsk0vj519fw578m93"))))
    (properties `((upstream-name . "data-sketches-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/iand675/datasketches-haskell#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/iand675/datasketches-haskell#readme>")
    (license license:bsd-3)))

haskell-9.4-data-sketches-core

(define-public haskell-9.4-declarative
  (package
    (name "haskell-9.4-declarative")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/declarative/declarative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10dwdzl4gbxwvb068kz8kiprk18bwl79pkyhyyrmfzawf8zp3pha"))))
    (properties `((upstream-name . "declarative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-hasty-hamiltonian)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-mcmc-types)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-mighty-metropolis)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-mwc-probability)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-speedy-slice)))
    (home-page "http://github.com/jtobin/declarative")
    (synopsis "DIY Markov Chains.")
    (description
     "This package presents a simple combinator language for Markov transition
operators that are useful in MCMC.

Any transition operators sharing the same stationary distribution and obeying
the Markov and reversibility properties can be combined in a couple of ways,
such that the resulting operator preserves the stationary distribution and
desirable properties amenable for MCMC.

We can deterministically concatenate operators end-to-end, or sample from
a collection of them according to some probability distribution.  See
<http://www.stat.umn.edu/geyer/f05/8931/n1998.pdf Geyer, 2005> for details.

A useful strategy is to hedge one's 'sampling risk' by occasionally
interleaving a computationally-expensive transition (such as a gradient-based
algorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis
transitions.

> transition = frequency [
>     (9, metropolis 1.0)
>   , (1, hamiltonian 0.05 20)
>   ]

Alternatively: sample consecutively using the same algorithm, but over a
range of different proposal distributions.

> transition = concatAllT [
>     slice 0.5
>   , slice 1.0
>   , slice 2.0
>   ]

Or just mix and match and see what happens!

> transition =
>   sampleT
>     (sampleT (metropolis 0.5) (slice 0.1))
>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))

Check the test suite for example usage.")
    (license license:expat)))

haskell-9.4-declarative

(define-public haskell-9.4-dense-linear-algebra
  (package
    (name "haskell-9.4-dense-linear-algebra")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dense-linear-algebra/dense-linear-algebra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m7jjxahqxj7ilic3r9806mwp5rnnsmn8vvipkmk40xl65wplxzp"))))
    (properties `((upstream-name . "dense-linear-algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dense-linear-algebra")
    (synopsis
     "Simple and incomplete pure haskell implementation of linear algebra")
    (description
     "This library is simply collection of linear-algebra related modules
split from statistics library.")
    (license license:bsd-2)))

haskell-9.4-dense-linear-algebra

(define-public haskell-9.4-dhall
  (package
    (name "haskell-9.4-dhall")
    (version "1.41.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dhall/dhall-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14m5rrvkid76qnvg0l14xw1mnqclhip3gjrz20g1lp4fd5p056ka"))))
    (properties `((upstream-name . "dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith-http" "-fuse-http-client-tls" "-f-cross" "-fnetwork-tests")
       #:cabal-revision
       ("5" "0jhhwzzinlxyb2gxr2jcyr71mbdig7njkw2zi8znns1ik6ix0d4c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-atomic-write)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cborg)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-cborg-json)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-data-fix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-dotgen)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-half)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-lens-family-core)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pretty-simple)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-repline)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-serialise)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-text-manipulate)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-uri-encode)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall")
    (synopsis "A configuration language guaranteed to terminate")
    (description
     "Dhall is an explicitly typed configuration language that is not Turing
complete.  Despite being Turing incomplete, Dhall is a real programming
language with a type-checker and evaluator.

Use this library to parse, type-check, evaluate, and pretty-print the Dhall
configuration language.  This package also includes an executable which
type-checks a Dhall file and reduces the file to a fully evaluated normal
form.

Read \"Dhall.Tutorial\" to learn how to use this library")
    (license license:bsd-3)))

haskell-9.4-dhall

(define-public haskell-9.4-diagrams-core
  (package
    (name "haskell-9.4-diagrams-core")
    (version "1.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-core/diagrams-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gv1p5hrxi3hks0nb4l38gdgfq9bh9d86b6dxcyzqxrwxbxk1khn"))))
    (properties `((upstream-name . "diagrams-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1gahbyv00xyr4pcmpq4g95jyh7844fp8z0g9l2ybifv4s73vdrym")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-dual-tree)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-monoid-extras)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://diagrams.github.io")
    (synopsis "Core libraries for diagrams EDSL")
    (description "The core modules underlying diagrams,
an embedded domain-specific language
for compositional, declarative drawing.")
    (license license:bsd-3)))

haskell-9.4-diagrams-core

(define-public haskell-9.4-distribution-nixpkgs
  (package
    (name "haskell-9.4-distribution-nixpkgs")
    (version "1.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-nixpkgs/distribution-nixpkgs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yaha7arm9cn9sxacqwmr2qcnw2cxn53xww11im00mx7gk127rh2"))))
    (properties `((upstream-name . "distribution-nixpkgs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-language-nix)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/distribution-nixpkgs#readme")
    (synopsis "Types and functions to manipulate the Nixpkgs distribution")
    (description
     "Types and functions to represent, query, and manipulate the Nixpkgs distribution.")
    (license license:bsd-3)))

haskell-9.4-distribution-nixpkgs

(define-public haskell-9.4-ede
  (package
    (name "haskell-9.4-ede")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ede/ede-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hc7jq3dfrwl87rlf0yaxv44dni95a0lc5ccs6ldr6svfwx5h7qg"))))
    (properties `((upstream-name . "ede") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-text-manipulate)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-trifecta)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/brendanhay/ede")
    (synopsis
     "Templating language with similar syntax and features to Liquid or Jinja2.")
    (description
     "ED-E is a templating language written in Haskell with a specific set of features:

* Logicless within reason. A small set of consistent predicates
and expressions for formatting and presentational logic are provided.

* Secure. No arbitrary code evaluation, with input data required to be fully specified
at render time.

* Stateless. Parsing and rendering are separate steps so that loading, parsing,
include resolution, and embedding of the compiled template can optionally be
done ahead of time, amortising cost.

* Markup agnostic. ED-E is used to write out everything from configuration files for
system services, to HTML and formatted emails.

* Control over purity. Users can choose pure or IO-based resolution of
@@include@@ expressions.

* No surprises. All parsing, type assurances, and rendering steps report helpful
error messages with line/column metadata. Variable shadowing, unprintable expressions,
implicit type coercion, and unbound variable access are all treated as errors.")
    (license license:mpl2.0)))

haskell-9.4-ede

(define-public haskell-9.4-faktory
  (package
    (name "haskell-9.4-faktory")
    (version "1.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/faktory/faktory-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mn888cjk8ag94il7zcbk6q5cq2vf2dxf1b8ba8ki2rypxld5m7a"))))
    (properties `((upstream-name . "faktory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-casing)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-scanner)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frontrowed/faktory_worker_haskell#readme")
    (synopsis "Faktory Worker for Haskell")
    (description
     "Haskell client and worker process for the Faktory background job server.

== Architecture overview

@@
|                        +--------------------+
|                        |                    |
|                        |     Faktory        |
|                        |     Server         |
|         +---------->>>>|                    +>>>>--------+
|         |              |                    |            |
|         |              |                    |            |
|         |              +--------------------+            |
| +-----------------+                            +-------------------+
| |                 |                            |                   |
| |    Client       |                            |     Worker        |
| |    pushes       |                            |     pulls         |
| |     jobs        |                            |      jobs         |
| |                 |                            |                   |
| |                 |                            |                   |
| +-----------------+                            +-------------------+
@@

* `Client` - an API any process can use to push jobs to the Faktory server.
* `Worker` - a process that pulls jobs from Faktory and executes them.
* `Server` - the Faktory daemon which stores background jobs in queues to be processed by Workers.

This package contains only the `Client` and `Worker`.")
    (license license:expat)))

haskell-9.4-faktory

(define-public haskell-9.4-force-layout
  (package
    (name "haskell-9.4-force-layout")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/force-layout/force-layout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17956k3mab2xhrmfy7fj5gh08h43yjlsryi5acjhnkmin5arhwpp"))))
    (properties `((upstream-name . "force-layout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("10" "1mcs51d1a3klzy938wq0gcbx7ln49g940zhajmflxq6imy5h5kwa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)))
    (home-page "https://hackage.haskell.org/package/force-layout")
    (synopsis "Simple force-directed layout")
    (description "Simulation engine for doing simple force-based layout,
/e.g./ for trees or graphs.  See the diagrams-contrib package
for usage examples.")
    (license license:bsd-3)))

haskell-9.4-force-layout

(define-public haskell-9.4-fortran-src
  (package
    (name "haskell-9.4-fortran-src")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fortran-src/fortran-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02n9s5an0z39gx8ks9pr3vrj6h683yra2djwi2m62rl76yw9nsmw"))))
    (properties `((upstream-name . "fortran-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-GenericPretty)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-singletons)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-singletons-base)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-singletons-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-sized)))
    (home-page "https://github.com/camfort/fortran-src#readme")
    (synopsis
     "Parsers and analyses for Fortran standards 66, 77, 90, 95 and 2003 (partial).")
    (description
     "Provides lexing, parsing, and basic analyses of Fortran code covering standards: FORTRAN 66, FORTRAN 77, Fortran 90, Fortran 95, Fortran 2003 (partial) and some legacy extensions. Includes data flow and basic block analysis, a renamer, and type analysis. For example usage, see the @@<https://hackage.haskell.org/package/camfort CamFort>@@ project, which uses fortran-src as its front end.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-fortran-src

(define-public haskell-9.4-generics-eot
  (package
    (name "haskell-9.4-generics-eot")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-eot/generics-eot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6zhs6l1xcig66757664f1bchzlm4f1ijvg5dsnacq05jbdxrlv"))))
    (properties `((upstream-name . "generics-eot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mockery)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-shake)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://generics-eot.readthedocs.io/")
    (synopsis
     "A library for generic programming that aims to be easy to understand")
    (description
     "Documentation is here: <https://generics-eot.readthedocs.io/>")
    (license license:bsd-3)))

haskell-9.4-generics-eot

(define-public haskell-9.4-genvalidity-aeson
  (package
    (name "haskell-9.4-genvalidity-aeson")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-aeson/genvalidity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j5sms6f3ivxn981gzqsyhks2q2fws8xdbnnffb209dr0afg00b1"))))
    (properties `((upstream-name . "genvalidity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-vector)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-validity-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for aeson")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-aeson

(define-public haskell-9.4-genvalidity-case-insensitive
  (package
    (name "haskell-9.4-genvalidity-case-insensitive")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-case-insensitive/genvalidity-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a8ajycxzmsyip47m5yvzzr8l74awbycynyqhwpmkbjk5y56mqj0"))))
    (properties `((upstream-name . "genvalidity-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-validity-case-insensitive)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for case-insensitive")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-case-insensitive

(define-public haskell-9.4-github
  (package
    (name "haskell-9.4-github")
    (version "0.28.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/github/github-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16ahq2ng52ypkkgqbbmizr486px3dh709hw3jdn7jzglgvn20712"))))
    (properties `((upstream-name . "github") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-openssl")
       #:cabal-revision
       ("1" "1irbqis6iv62nqc75fy87mv1lahrnybq1j8mal15n129sxyyvz56")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-binary-instances)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-link-header)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-iso8601-time)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-github/github")
    (synopsis "Access to the GitHub API, v3.")
    (description
     "The GitHub API provides programmatic access to the full
GitHub Web site, from Issues to Gists to repos down to the underlying git data
like references and trees. This library wraps all of that, exposing a basic but
Haskell-friendly set of functions and data structures.

For supported endpoints see \"GitHub\" module.

> import qualified GitHub as GH
>
> main :: IO ()
> main = do
>     possibleUser <- GH.github' GH.userInfoForR \"phadej\"
>     print possibleUser

For more of an overview please see the README: <https://github.com/haskell-github/github/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.4-github

(define-public haskell-9.4-github-release
  (package
    (name "haskell-9.4-github-release")
    (version "2.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-release/github-release-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xyh4nkrclpvy5i9v0yqlbzm6aq5gl4p3sairdi1abnyzn3ij04h"))))
    (properties `((upstream-name . "github-release") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-burrito)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-optparse-generic)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/github-release")
    (synopsis "Upload files to GitHub releases.")
    (description "GitHub Release uploads files to GitHub releases.")
    (license license:expat)))

haskell-9.4-github-release

(define-public haskell-9.4-github-rest
  (package
    (name "haskell-9.4-github-rest")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-rest/github-rest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "139ysq1m1ndy6z1znfd1np25ynxankkfm6xmwabhdr7yiqzi2v1b"))))
    (properties `((upstream-name . "github-rest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0390zxa270d8x8a0imd71z72l6hxnn1ip6jjgrrvrs3zj20c7adp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-jwt)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LeapYear/github-rest#readme")
    (synopsis "Query the GitHub REST API programmatically")
    (description
     "Query the GitHub REST API programmatically, which can provide a more
flexible and clear interface than if all of the endpoints and their types
were defined as Haskell values.")
    (license license:bsd-3)))

haskell-9.4-github-rest

(define-public haskell-9.4-hedgehog
  (package
    (name "haskell-9.4-hedgehog")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog/hedgehog-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zlfmzzancsglzqmdr40kdfk3ih7anssfkb196r0n9b5lvdcfn98"))))
    (properties `((upstream-name . "hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-barbies)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-concurrent-output)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-erf)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-wl-pprint-annotated)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hedgehog.qa")
    (synopsis "Release with confidence.")
    (description
     "<http://hedgehog.qa/ Hedgehog> automatically generates a comprehensive array
of test cases, exercising your software in ways human testers would never
imagine.

Generate hundreds of test cases automatically, exposing even the
most insidious of corner cases. Failures are automatically simplified, giving
developers coherent, intelligible error messages.

To get started quickly, see the <https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-example examples>.")
    (license license:bsd-3)))

haskell-9.4-hedgehog

(define-public haskell-9.4-hreader-lens
  (package
    (name "haskell-9.4-hreader-lens")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hreader-lens/hreader-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l02fplf2gjns869rhlwzglg08gl8cpjciv9fh05rg74dhn0m3s0"))))
    (properties `((upstream-name . "hreader-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-hreader)
                  (@ (gnu packages stackage ghc-9.4 stage002) haskell-9.4-hset)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-action)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)))
    (home-page "http://github.com/dredozubov/hreader-lens")
    (synopsis "Optics for hreader package")
    (description "")
    (license license:expat)))

haskell-9.4-hreader-lens

(define-public haskell-9.4-hslua-module-doclayout
  (package
    (name "haskell-9.4-hslua-module-doclayout")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-doclayout/hslua-module-doclayout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14sqffgcrhhrv7k4j8b1l41mn5gqlp8yzggd727746kjl0n56hqq"))))
    (properties `((upstream-name . "hslua-module-doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doclayout)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-doclayout")
    (synopsis "Lua module wrapping Text.DocLayout.")
    (description "Lua module wrapping @@Text.DocLayout@@.")
    (license license:expat)))

haskell-9.4-hslua-module-doclayout

(define-public haskell-9.4-hspec-expectations-json
  (package
    (name "haskell-9.4-hspec-expectations-json")
    (version "1.0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-json/hspec-expectations-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0042xf11w74bx7mlly2ca98778jqyb4p2l9iy92gyys85zn5219v"))))
    (properties `((upstream-name . "hspec-expectations-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-qq)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/hspec-expectations-json#readme")
    (synopsis "Hspec expectations for JSON Values")
    (description
     "Hspec expectations for JSON Values

Comparing JSON `Value`s in Haskell tests comes with some challenges:

- In API responses, additive changes are typically safe and an important way
to evolve responses without breaking clients. Therefore, assertions against
such responses often want to ignore any unexpected keys in `Object`s (at any
depth), as any clients would.

- Order often doesn't matter in API responses either, so it should be possible
to assert equality regardless of `Array` ordering (again, at any depth).

- When an assertion fails, showing the difference clearly needs to take the
above into account (i.e. it can't show keys you've ignored, or ordering
differences you didn't care about), and it has to display things clearly,
e.g. as a diff.

This library handles all these things.")
    (license license:expat)))

haskell-9.4-hspec-expectations-json

(define-public haskell-9.4-hspec-golden-aeson
  (package
    (name "haskell-9.4-hspec-golden-aeson")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-golden-aeson/hspec-golden-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mj516xn6an2pkygfzm2418hbvaf8yvgwgvmpgpwrxqss87m3c84"))))
    (properties `((upstream-name . "hspec-golden-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-quickcheck-arbitrary-adt)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/plow-technologies/hspec-golden-aeson#readme")
    (synopsis "Use tests to monitor changes in Aeson serialization")
    (description "Use tests to monitor changes in Aeson serialization")
    (license license:bsd-3)))

haskell-9.4-hspec-golden-aeson

(define-public haskell-9.4-hsx-jmacro
  (package
    (name "haskell-9.4-hsx-jmacro")
    (version "7.3.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsx-jmacro/hsx-jmacro-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zb6mjky88qn918vaqbwjszjb6zczb4kqpnw3p222z44if3xpzsq"))))
    (properties `((upstream-name . "hsx-jmacro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-hsp)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-jmacro)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "hsp+jmacro support")
    (description
     "HSP allows for the use of literal XML in Haskell program text. JMacro allows for the use of javascript-syntax for generating javascript in Haskell. This library makes it easy to embed JMacro generated javascript in HSX templates.")
    (license license:bsd-3)))

haskell-9.4-hsx-jmacro

(define-public haskell-9.4-http-client-restricted
  (package
    (name "haskell-9.4-http-client-restricted")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-restricted/http-client-restricted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vfm9qc3zr0rmq2ddgyg13i67020cdk8xqhyzfc2zcn1km2p6r85"))))
    (properties `((upstream-name . "http-client-restricted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/http-client-restricted")
    (synopsis "restricting the servers that http-client will use")
    (description
     "Addition to the http-client and http-client-tls
libraries, that restricts the HTTP servers that can be used.

This is useful when a security policy needs to eg, prevent connections to
HTTP servers on localhost or a local network, or only allow connections
to a specific HTTP server.

It handles restricting redirects as well as the initial HTTP connection,
and it also guards against DNS poisoning attacks.")
    (license license:expat)))

haskell-9.4-http-client-restricted

(define-public haskell-9.4-jsonpath
  (package
    (name "haskell-9.4-jsonpath")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonpath/jsonpath-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10a2wbkhdg2x61qpfvb4cl89plhvwy5nc5qqqs5jnll7kg4cabyi"))))
    (properties `((upstream-name . "jsonpath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-aeson-casing)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/akshaymankar/jsonpath-hs#readme")
    (synopsis "Library to parse and execute JSONPath")
    (description
     "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>")
    (license license:bsd-3)))

haskell-9.4-jsonpath

(define-public haskell-9.4-keyed-vals
  (package
    (name "haskell-9.4-keyed-vals")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/keyed-vals/keyed-vals-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0im4wn7m5y6kmi8cjxfn72316zldg9v92fbw6hlimc7hkndb34mf"))))
    (properties `((upstream-name . "keyed-vals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-redis-glob)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adetokunbo/keyed-vals#readme")
    (synopsis
     "An abstract Handle for accessing collections in stores like Redis")
    (description
     "Provides an abstract [Handle](https://jaspervdj.be/posts/2018-03-08-handle-pattern.html) for
accessing stored key-value collections, and useful combinators that use Handle.

One implementation of Handle accesses collections in [Redis](https://hackage.haskell.org/package/keyed-vals-redis) other backends are possible.

keyed-vals also provides a typed interface to the storage backend that allows the
path in the storage backend to be declaratively linked to the types of data
stored via a straightforward typeclass declaration.

Read this [short example](https://github.com/adetokunbo/keyed-vals/tree/main/keyed-vals#example)
for an introduction its usage.")
    (license license:bsd-3)))

haskell-9.4-keyed-vals

(define-public haskell-9.4-koji
  (package
    (name "haskell-9.4-koji")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/koji/koji-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ypr552453r0b9s5xlsw0gllka2jaf9xwphlnx55fn05f17zh7qd"))))
    (properties `((upstream-name . "koji") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-haxr)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/koji-hs")
    (synopsis "Koji buildsystem XML-RPC API bindings")
    (description
     "This library provides Haskell bindings to the Koji XML RPC API.
Koji is a distributed rpm buildsystem used by Fedora, Centos,
Red Hat, and other projects. See <https://pagure.io/koji/>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-koji

(define-public haskell-9.4-lsp
  (package
    (name "haskell-9.4-lsp")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lsp/lsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0w04n299d8yh545jggh93wm6nxpp5jwz8hr7qynbxslcdrv06s49"))))
    (properties `((upstream-name . "lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-co-log-core)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lsp-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sorted-list)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-rope)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description
     "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell Language
Server, at https://github.com/haskell/haskell-language-server")
    (license license:expat)))

haskell-9.4-lsp

(define-public haskell-9.4-massiv
  (package
    (name "haskell-9.4-massiv")
    (version "1.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q0qp4xz7z3r70581lry9bkldjv195wfagazwbq6lkxrf8i25lx1"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-scheduler)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-vector-stream)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-9.4-massiv

(define-public haskell-9.4-metrics
  (package
    (name "haskell-9.4-metrics")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/metrics/metrics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f2vqwldp457956bx839r9v3xpmp95q42insn2xcdw669rq6wpym"))))
    (properties `((upstream-name . "metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/metrics")
    (synopsis "High-performance application metric tracking")
    (description
     "A port of Coda Hale's excellent metrics library for the JVM

<https://github.com/codahale/metrics>

For motivation about why you might want to track application metrics, check Coda\\'s talk:

<http://www.youtube.com/watch?v=czes-oa0yik>

Interesting portions of this package's documentation were also appropriated from the metrics library's documentation:

<http://metrics.codahale.com>")
    (license license:expat)))

haskell-9.4-metrics

(define-public haskell-9.4-mono-traversable
  (package
    (name "haskell-9.4-mono-traversable")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
     "Please see the README at <https://www.stackage.org/package/mono-traversable>")
    (license license:expat)))

haskell-9.4-mono-traversable

(define-public haskell-9.4-network-messagepack-rpc
  (package
    (name "haskell-9.4-network-messagepack-rpc")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-data-msgpack)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc")
    (synopsis "MessagePack RPC")
    (description
     "[MessagePack RPC](https://github.com/msgpack-rpc/msgpack-rpc/blob/master/spec.md) library based on the \"data-msgpack\" package.")
    (license license:bsd-3)))

haskell-9.4-network-messagepack-rpc

(define-public haskell-9.4-openapi3
  (package
    (name "haskell-9.4-openapi3")
    (version "3.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openapi3/openapi3-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0svkzafxfmhjakv4h57p5sw59ksbxz1hn1y3fbg6zimwal4mgr6l"))))
    (properties `((upstream-name . "openapi3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-generics-sop)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-optics-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/openapi3")
    (synopsis "OpenAPI 3.0 data model")
    (description
     "This library is intended to be used for decoding and encoding OpenAPI 3.0 API
specifications as well as manipulating them.

The original OpenAPI 3.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-9.4-openapi3

(define-public haskell-9.4-opensource
  (package
    (name "haskell-9.4-opensource")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opensource/opensource-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jlgk1rbpz5h1mbknq0i71k0n4ppp3yd498i7p2l79a9gi6pwqy"))))
    (properties `((upstream-name . "opensource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers_compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://api.opensource.org/")
    (synopsis "Haskell API Wrapper for the Open Source License API")
    (description
     "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.")
    (license license:expat)))

haskell-9.4-opensource

(define-public haskell-9.4-pandoc-lua-marshal
  (package
    (name "haskell-9.4-pandoc-lua-marshal")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-lua-marshal/pandoc-lua-marshal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pn9b7f8dln049k76zb4znscl01qms751y1ln4j8irs50rc1b55j"))))
    (properties `((upstream-name . "pandoc-lua-marshal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-lua)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pandoc-types)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-lua)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pandoc/pandoc-lua-marshal")
    (synopsis "Use pandoc types in Lua")
    (description "This package provides functions to marshal and unmarshal
pandoc document types to and from Lua.

The values of most types are pushed to pandoc as \"userdata\"
objects that wrap a stable pointer to the Haskell value;
these objects come with methods to access and modify their
properties.

Sequences are pushed as normal Lua tables, but are
augmented with convenience functions.")
    (license license:expat)))

haskell-9.4-pandoc-lua-marshal

(define-public haskell-9.4-path-binary-instance
  (package
    (name "haskell-9.4-path-binary-instance")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-binary-instance")
    (synopsis "Binary instance for Path.")
    (description "Binary instance for Path.")
    (license license:expat)))

haskell-9.4-path-binary-instance

(define-public haskell-9.4-path-extensions
  (package
    (name "haskell-9.4-path-extensions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-extensions")
    (synopsis
     "Enumeration of common filetype extensions for use with the path library.")
    (description
     "Enumeration of common filetype extensions for use with the path library, add variants for adding an extension to a path and with variants for replacing an existing extension.")
    (license license:expat)))

haskell-9.4-path-extensions

(define-public haskell-9.4-path-extra
  (package
    (name "haskell-9.4-path-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/path-extra#readme")
    (synopsis "URLs without host information")
    (description
     "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>")
    (license license:bsd-3)))

haskell-9.4-path-extra

(define-public haskell-9.4-path-io
  (package
    (name "haskell-9.4-path-io")
    (version "1.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1iq6yj5kj8i20sr4h8rabway76hk0xmy9mi499xv22php3vb79l3"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-9.4-path-io

(define-public haskell-9.4-path-like
  (package
    (name "haskell-9.4-path-like")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-like")
    (synopsis
     "PathLike, FileLike and DirLike type classes for the Path library.")
    (description
     "Type classes for the Path library. Exports PathLike, FileLike and DirLike classes so that stricter types may be used as Paths.")
    (license license:expat)))

haskell-9.4-path-like

(define-public haskell-9.4-path-utils
  (package
    (name "haskell-9.4-path-utils")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-utils/path-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k6wfy8vzddfhxsd5zlbjd4397syqhdg6i8v49d218m0qqfhzkpj"))))
    (properties `((upstream-name . "path-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-utils")
    (synopsis "Handful of simple utility functions for the path library.")
    (description "Handful of simple utility functiosn for the path library.")
    (license license:expat)))

haskell-9.4-path-utils

(define-public haskell-9.4-pipes-fluid
  (package
    (name "haskell-9.4-pipes-fluid")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fluid/pipes-fluid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ig0czixnf5fypnfns2kzna676vd3mr2a52fb9f4cg7yy6qwp8h"))))
    (properties `((upstream-name . "pipes-fluid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (home-page "https://github.com/louispan/pipes-fluid#readme")
    (synopsis
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (description
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (license license:bsd-3)))

haskell-9.4-pipes-fluid

(define-public haskell-9.4-pipes-http
  (package
    (name "haskell-9.4-pipes-http")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-http/pipes-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00579dpb7mh8nli5gfr100w0mrn6nvqhbj50qzxc2m5cvw4gncd2"))))
    (properties `((upstream-name . "pipes-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0m38lrmr356gfrv6gnrncwiy1hnh882084yn7vgmjsqssgvhbz8a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pipes-http")
    (synopsis "HTTP client with pipes interface")
    (description
     "@@pipes-http@@ is a @@pipes@@ wrapper around the @@http-client@@ library")
    (license license:bsd-3)))

haskell-9.4-pipes-http

(define-public haskell-9.4-poly
  (package
    (name "haskell-9.4-poly")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poly/poly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ycjdan9l92glnqr0lms2kdjfs5dg9c2ky2w2rdmrc6nzzxajd9k"))))
    (properties `((upstream-name . "poly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsparse")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-finite-typelits)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-semirings)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/poly#readme")
    (synopsis "Polynomials")
    (description "Polynomials backed by `Vector`s.")
    (license license:bsd-3)))

haskell-9.4-poly

(define-public haskell-9.4-pretty-relative-time
  (package
    (name "haskell-9.4-pretty-relative-time")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-relative-time/pretty-relative-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sqdz7bh99ya0d8wb721bbs25cqjfhg81q8xxvrmlamrrgc1z7bh"))))
    (properties `((upstream-name . "pretty-relative-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-time)))
    (home-page "https://github.com/NorfairKing/pretty-relative-time#readme")
    (synopsis "Pretty relative time")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>")
    (license license:expat)))

haskell-9.4-pretty-relative-time

(define-public haskell-9.4-pusher-http-haskell
  (package
    (name "haskell-9.4-pusher-http-haskell")
    (version "2.1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pusher-http-haskell/pusher-http-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12gk26br85spyl0pcdr71a0i3mq4cbb8qi6vwkmgx4k6hg7h43xl"))))
    (properties `((upstream-name . "pusher-http-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/WillSewell/pusher-http-haskell")
    (synopsis "Haskell client library for the Pusher Channels HTTP API")
    (description
     "Functions that correspond to endpoints of the Pusher Channels
HTTP API. Messages can be triggered, and information about the
channel can be queried. Additionally there are functions
for authenticating users of private and presence channels.")
    (license license:expat)))

haskell-9.4-pusher-http-haskell

(define-public haskell-9.4-qchas
  (package
    (name "haskell-9.4-qchas")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/qchas/qchas-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g966915j17ijpyz7klxc0j0rflbxkj0a49vf57z5xfllv8l1wx9"))))
    (properties `((upstream-name . "qchas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/ardeleanasm/qchas#readme")
    (synopsis "A library for implementing Quantum Algorithms")
    (description
     "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.")
    (license license:bsd-3)))

haskell-9.4-qchas

(define-public haskell-9.4-rainbox
  (package
    (name "haskell-9.4-rainbox")
    (version "0.26.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbox/rainbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07hh904p0mlc3iww184849yps80kwrhdna9nr840m2qyd81m37d1"))))
    (properties `((upstream-name . "rainbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-rainbow)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-rainbox

(define-public haskell-9.4-ratel
  (package
    (name "haskell-9.4-ratel")
    (version "2.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ratel/ratel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0iwdj9bmv3k7ppq51z66z1h8rrsi6jcc6xpdf5b8c869fazy6nd4"))))
    (properties `((upstream-name . "ratel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ratel")
    (synopsis "Notify Honeybadger about exceptions.")
    (description "Ratel notifies Honeybadger about exceptions.")
    (license license:expat)))

haskell-9.4-ratel

(define-public haskell-9.4-rattletrap
  (package
    (name "haskell-9.4-rattletrap")
    (version "12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rattletrap/rattletrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l20d9m84mn6gkmi7hii0q80rs7nzhbmwp1dx3i5jkww42ixbyfi"))))
    (properties `((upstream-name . "rattletrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rattletrap")
    (synopsis "Parse and generate Rocket League replays.")
    (description "Rattletrap parses and generates Rocket League replays.")
    (license license:expat)))

haskell-9.4-rattletrap

(define-public haskell-9.4-reanimate-svg
  (package
    (name "haskell-9.4-reanimate-svg")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate-svg/reanimate-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h31r0lrslxqfayh06955p1kv35g42g3drmqp4miydk6zibyn091"))))
    (properties `((upstream-name . "reanimate-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1g8cqw8a4vy7pp9ic02d49564vd61px2kld1pin0la9f3vk5f296")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-double-conversion)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/reanimate/reanimate-svg#readme")
    (synopsis "SVG file loader and serializer")
    (description "reanimate-svg provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.")
    (license license:bsd-3)))

haskell-9.4-reanimate-svg

(define-public haskell-9.4-rebase
  (package
    (name "haskell-9.4-rebase")
    (version "1.16.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rebase/rebase-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mb1x5p3lvfhxsrnmkhsv6f4rd1cxp6m3qg6kyz30svrbwxsvvkz"))))
    (properties `((upstream-name . "rebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1igpk9gz54jfvf5m69xcp7hl567c4lkbmwhzylcbx0i1n0pd7i2n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-groups)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-invariant)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-selective)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-instances)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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
with the missing features being added with pull-requests.

If you don\\'t need the \\\"Rebase\\\" namespace and want to import modules
from the reexported packages as they are check out
the \\\"<https://hackage.haskell.org/package/rerebase rerebase>\\\" package
which simply reexports the original symbols in the original namespace.
Thus it simply lets you depend on all the de-facto default packages,
by yourself having to maintain only the dependency on \\\"rerebase\\\".
Also it comes packed with a prelude as rich as here.")
    (license license:expat)))

haskell-9.4-rebase

(define-public haskell-9.4-rio-prettyprint
  (package
    (name "haskell-9.4-rio-prettyprint")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-prettyprint/rio-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dagrbs9ssqh5mcr9fcaiqhc8vyr3aqxwxxpcd4j0bqvfcjhkbkz"))))
    (properties `((upstream-name . "rio-prettyprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/commercialhaskell/rio-prettyprint#readme")
    (synopsis "Pretty-printing for RIO")
    (description "Combine RIO's log capabilities with pretty printing")
    (license license:bsd-3)))

haskell-9.4-rio-prettyprint

(define-public haskell-9.4-safe-coloured-text-gen
  (package
    (name "haskell-9.4-safe-coloured-text-gen")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-gen/safe-coloured-text-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2n6qvggrzrqfbi9633kjzmlpgqf4anbqzip6l3ygj5p1lk69zb"))))
    (properties `((upstream-name . "safe-coloured-text-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "")
    (description "Generators for types in safe-coloured-text")
    (license license:expat)))

haskell-9.4-safe-coloured-text-gen

(define-public haskell-9.4-safecopy
  (package
    (name "haskell-9.4-safecopy")
    (version "0.10.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safecopy/safecopy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r2mf0p82gf8vnldx477b5ykrj1x7hyg13nqfn6gzb50japs6h3i"))))
    (properties `((upstream-name . "safecopy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0ii5cdg4l4ww81p7gd5m3z2jdqrs2hvqhwzrlz267nzxbws00x0b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-generic-data)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-action)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acid-state/safecopy")
    (synopsis "Binary serialization with version control.")
    (description
     "An extension to Data.Serialize with built-in version control.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-safecopy

(define-public haskell-9.4-scalpel
  (package
    (name "haskell-9.4-scalpel")
    (version "0.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scalpel/scalpel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0w3l38czfsgbyd3x6yir7qw9bl8nmhclrbpbwfyhs39728jlscnc"))))
    (properties `((upstream-name . "scalpel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scalpel-core)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel is a web scraping library inspired by libraries like Parsec and
Perl's Web::Scraper Scalpel builds on top of TagSoup to provide a
declarative and monadic interface.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-scalpel

(define-public haskell-9.4-sdl2
  (package
    (name "haskell-9.4-sdl2")
    (version "2.5.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sdl2/sdl2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g35phifz49kxk48s8jmgglxhxl79cbzc1cg2qlgk0vdpxpin8ym"))))
    (properties `((upstream-name . "sdl2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-opengl-example" "-f-no-linear" "-f-recent-ish" "-fpkgconfig")
       #:cabal-revision
       ("2" "1yxzq4gb6ig3d94lc76i5d50fa0j1fxr1wdlmgwhkvlfd4xnh6sg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-StateVar)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2")
    (synopsis
     "Both high- and low-level bindings to the SDL library (version 2.0.6+).")
    (description
     "This package contains bindings to the SDL 2 library, in both high- and
low-level forms:

The 'SDL' namespace contains high-level bindings, where enumerations are split
into sum types, and we perform automatic error-checking.

The 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into
Haskell FFI calls. As such, this does not contain sum types nor error
checking. Thus this namespace is suitable for building your own abstraction
over SDL, but is not recommended for day-to-day programming.

Read \"SDL\" for a getting started guide.")
    (license license:bsd-3)))

haskell-9.4-sdl2

(define-public haskell-9.4-servant-client
  (package
    (name "haskell-9.4-servant-client")
    (version "0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client/servant-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bdapsr6il0f019ss8wsxndpc8cd5czj40xczay5qhl7fqnxg5pa"))))
    (properties `((upstream-name . "servant-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0j2i3fvqkhf80hada6vga3674z3bnnl1n3k655alfwnxl7zlgppa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-servant-client-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.4-servant-client

(define-public haskell-9.4-servant-http-streams
  (package
    (name "haskell-9.4-servant-http-streams")
    (version "0.18.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-http-streams/servant-http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15f24rcgz839cb38q4gs1liqrdyqjbazcqzjdxmv4307x072pv3a"))))
    (properties `((upstream-name . "servant-http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1v3lgfsn8611hnvf34l79mrp77ag40xyw2r26bbq6d7hbg2l2jn5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-common)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-streams)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-servant-client-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.4-servant-http-streams

(define-public haskell-9.4-shake-plus
  (package
    (name "haskell-9.4-shake-plus")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-shake)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/shake-plus")
    (synopsis "Re-export of Shake using well-typed paths and ReaderT.")
    (description
     "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions.")
    (license license:expat)))

haskell-9.4-shake-plus

(define-public haskell-9.4-shelly
  (package
    (name "haskell-9.4-shelly")
    (version "1.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shelly/shelly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hgzh0rrhipir8378civ5mwvkvcsd063jm2pyx8dqngdynph0h65"))))
    (properties `((upstream-name . "shelly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-lifted" "-f-build-examples")
       #:cabal-revision
       ("1" "07c1rjwvg2ldam6yaksvrr9f703b7d1rcw0482ns5yi2f7y1kczp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec-contrib)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/Shelly.hs")
    (synopsis "shell-like (systems) programming in Haskell")
    (description
     "Shelly provides convenient systems programming in Haskell,
similar in spirit to POSIX shells. Shelly:

* is aimed at convenience and getting things done rather than
being a demonstration of elegance,

* has detailed and useful error messages,

* maintains its own environment, making it thread-safe.

Shelly is originally forked from the Shellish package.

See the shelly-extra package for additional functionality.

An overview is available in the README: <https://github.com/yesodweb/Shelly.hs/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.4-shelly

(define-public haskell-9.4-singleton-nats
  (package
    (name "haskell-9.4-singleton-nats")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-nats/singleton-nats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1drjwwkpszgifhnd7p4qqz92z85nh7w81w1hpdqv9a6vc5hfbv7r"))))
    (properties `((upstream-name . "singleton-nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsingletons-3-0")
       #:cabal-revision
       ("2" "044gxxa9j076p1g4vca4j8w5brx2qg5yqdvqjvmz6fv5kms4b8jd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-singletons)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-singletons-base)))
    (home-page "https://github.com/AndrasKovacs/singleton-nats")
    (synopsis
     "Unary natural numbers relying on the singletons infrastructure.")
    (description
     "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.")
    (license license:bsd-3)))

haskell-9.4-singleton-nats

(define-public haskell-9.4-singletons-presburger
  (package
    (name "haskell-9.4-singletons-presburger")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-presburger/singletons-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qzjbbscykcvbbl8ifkr6nvm5fnqqzr8ddgq1blcm811lmi0g926"))))
    (properties `((upstream-name . "singletons-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-singletons)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-singletons-base)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-singletons-th)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers with Singletons package.")
    (description
     "The @@singletons-presburger@@ plugin augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers, with integration with <https://hackage.haskell.org/package/singletons singletons> package.

You can use by adding this package to @@dependencies@@ and add the following pragma
to the head of .hs files:

> OPTIONS_GHC -fplugin Data.Singletons.TypeNats.Presburger")
    (license license:bsd-3)))

haskell-9.4-singletons-presburger

(define-public haskell-9.4-strict-base-types
  (package
    (name "haskell-9.4-strict-base-types")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-base-types/strict-base-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "079pa6w3f5i5kv1v6mwhp2k0siyywnk3igm93y2kaz37f352x5jn"))))
    (properties `((upstream-name . "strict-base-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x0rgmbwwjb75p5bwcxa1ns5vbfdniik3p7wmivqkfz5d369z39m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-strict-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-strict/strict")
    (synopsis "Strict variants of the types provided in base.")
    (description
     "Since version 0.7 the functionality in this package
have been merged into `strict`, `aeson` and `quickcheck-instances`
packages, and lens functionality moved into `strict-lens` package.")
    (license license:bsd-3)))

haskell-9.4-strict-base-types

(define-public haskell-9.4-strive
  (package
    (name "haskell-9.4-strive")
    (version "6.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strive/strive-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vvv1cc88niciqly68wddpkkly796jyl6hypahyd0rkif53q789l"))))
    (properties `((upstream-name . "strive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gpolyline)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/strive")
    (synopsis "A client for the Strava V3 API.")
    (description "Strive is a client for the Strava V3 API.")
    (license license:expat)))

haskell-9.4-strive

(define-public haskell-9.4-svg-tree
  (package
    (name "haskell-9.4-svg-tree")
    (version "0.6.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-tree/svg-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hhs2w6fmd1m6768p1bfhj6vi4br4ray0g9f1hv8g19pqgip3r2c"))))
    (properties `((upstream-name . "svg-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12askkxmrzjkssnfa8m6xmdwdxk6v3z26jc63jcgb3q8snxb0hg1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/svg-tree")
    (synopsis "SVG file loader and serializer")
    (description
     "svg-tree provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.

To render an svg document you can use the `rasterific-svg` package")
    (license license:bsd-3)))

haskell-9.4-svg-tree

(define-public haskell-9.4-swagger2
  (package
    (name "haskell-9.4-swagger2")
    (version "2.8.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/swagger2/swagger2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cvz98cn4xzr7fx8q7rwr22l7l95z1cvq7qpm1shwca5j4gq5084"))))
    (properties `((upstream-name . "swagger2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-generics-sop)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-optics-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/GetShopTV/swagger2")
    (synopsis "Swagger 2.0 data model")
    (description
     "This library is intended to be used for decoding and encoding Swagger 2.0 API
specifications as well as manipulating them.

The original Swagger 2.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-9.4-swagger2

(define-public haskell-9.4-tree-diff
  (package
    (name "haskell-9.4-tree-diff")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tree-diff/tree-diff-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g3lsp067dq1ydvj2im4nlfxa65g9zjmjjkv91dhjhnrklir10q0"))))
    (properties `((upstream-name . "tree-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-trifecta)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-tree-diff

(define-public haskell-9.4-type-natural
  (package
    (name "haskell-9.4-type-natural")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-natural/type-natural-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ygv8s36k4f11fr0wrz7wryj5b3a3j8pxzbz1h4r1w4ij15krd8x"))))
    (properties `((upstream-name . "type-natural") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/type-natural")
    (synopsis "Type-level natural and proofs of their properties.")
    (description "Type-level natural numbers and proofs of their properties.

Version 0.6+ supports __GHC 8+ only__.

__Use 0.5.* with ~ GHC 7.10.3__.")
    (license license:bsd-3)))

haskell-9.4-type-natural

(define-public haskell-9.4-tztime
  (package
    (name "haskell-9.4-tztime")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tztime/tztime-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d605i6q281cmr3zxrhh51cahlgc4v0sdbzzrzyjwzdnf8rhj5nl"))))
    (properties `((upstream-name . "tztime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-hunit-compat)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-test-utils)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-tz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/serokell/tztime")
    (synopsis "Safe timezone-aware handling of time.")
    (description
     "This package introduces:

* The `TZTime` data type, a valid and unambiguous point in time in some time zone.
* Functions for safely manipulating a `TZTime`.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.4-tztime

(define-public haskell-9.4-unliftio-path
  (package
    (name "haskell-9.4-unliftio-path")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-path/unliftio-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ila58yyk2vfshaz6d5kp4vdcgjrlnwnqnrjm949qlcv36srvzg9"))))
    (properties `((upstream-name . "unliftio-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/unliftio-path")
    (synopsis "UnliftIO using well-typed Paths.")
    (description "UnliftIO using well-typed Paths.")
    (license license:expat)))

haskell-9.4-unliftio-path

(define-public haskell-9.4-validity-path
  (package
    (name "haskell-9.4-validity-path")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "")
    (license license:expat)))

haskell-9.4-validity-path

(define-public haskell-9.4-vinyl
  (package
    (name "haskell-9.4-vinyl")
    (version "0.14.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vinyl/vinyl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lp67kaksng2g9sx4my8c6sllvjrlkhm2ln8bh397d1xknzrqy76"))))
    (properties `((upstream-name . "vinyl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-should-not-typecheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vinyl")
    (synopsis "Extensible Records")
    (description "Extensible records for Haskell with lenses.")
    (license license:expat)))

haskell-9.4-vinyl

(define-public haskell-9.4-wreq
  (package
    (name "haskell-9.4-wreq")
    (version "0.5.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wreq/wreq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zv51048p0r7vhamml3ps9nr11yi9fxz2w31qcz053bw3z9ivwxw"))))
    (properties `((upstream-name . "wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdoctest" "-f-aws" "-f-httpbin" "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-authenticate-oauth)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mime-types)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.serpentine.com/wreq")
    (synopsis "An easy-to-use HTTP client library.")
    (description
     "
A web client library that is designed for ease of use.

Tutorial: <http://www.serpentine.com/wreq/tutorial.html>

Features include:

* Simple but powerful `lens`-based API

* A solid test suite, and built on reliable libraries like
http-client and lens

* Session handling includes connection keep-alive and pooling, and
cookie persistence

* Automatic response body decompression

* Powerful multipart form and file upload handling

* Support for JSON requests and responses, including navigation of
schema-less responses

* Basic and OAuth2 bearer authentication

* Early TLS support via the tls package")
    (license license:bsd-3)))

haskell-9.4-wreq

