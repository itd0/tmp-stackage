;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage016)
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
(define-public haskell-9.0-ChannelT
  (package
    (name "haskell-9.0-ChannelT")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pthariensflame/ChannelT")
    (synopsis "Generalized stream processors")
    (description
     "A mutual generalization of <https://hackage.haskell.org/package/pipes pipes> and <https://hackage.haskell.org/package/machines machines>; a library for exploring a particular corner of the design space of streaming IO (and other related tasks) in Haskell.")
    (license license:bsd-3)))

haskell-9.0-ChannelT

(define-public haskell-9.0-DBFunctor
  (package
    (name "haskell-9.0-DBFunctor")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nkarag/haskell-DBFunctor#readme")
    (synopsis
     "DBFunctor - Functional Data Management =>  ETL/ELT Data Processing in Haskell")
    (description
     "Please see the README on Github at https://github.com/nkarag/haskell-DBFunctor")
    (license license:bsd-3)))

haskell-9.0-DBFunctor

(define-public haskell-9.0-MemoTrie
  (package
    (name "haskell-9.0-MemoTrie")
    (version "0.6.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MemoTrie/MemoTrie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lxsarhyhhkp58wpbp7b08scmjxq7s46jfl9vhp2yfq973hz0kaq"))))
    (properties `((upstream-name . "MemoTrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-newtype-generics)))
    (home-page "https://github.com/conal/MemoTrie")
    (synopsis "Trie-based memo functions")
    (description
     "MemoTrie provides a basis for memoized functions over some domains,
using tries.  It's based on ideas from Ralf Hinze and code from
Spencer Janssen. Generic support thanks to Sam Boosalis.

Project wiki page: <http://haskell.org/haskellwiki/MemoTrie>

&#199; 2008-2019 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-9.0-MemoTrie

(define-public haskell-9.0-OrderedBits
  (package
    (name "haskell-9.0-OrderedBits")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-bits)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
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

haskell-9.0-OrderedBits

(define-public haskell-9.0-RSA
  (package
    (name "haskell-9.0-RSA")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-SHA)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-crypto-api)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
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

haskell-9.0-RSA

(define-public haskell-9.0-Rasterific
  (package
    (name "haskell-9.0-Rasterific")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-FontyFruity)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/Rasterific")
    (synopsis "A pure haskell drawing engine.")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAA7VBMVEUBhsECh8EFiMIIisMLi8QMjMQOjcQSj8UTj8YVkMYZkscakscbk8ghlskmmMozns02oM44oc86os9CpdFEptJXr9Zbsdddsthes9hhtNljtdlsudtxvNx+wuB/wuCAw+CCxOGDxOGExeGHxuKVzeWb0Oed0Oek1Omm1emo1uqp1uqr1+ux2uyy2uy02+223O294O/J5fLK5vLM5/PN5/PY7PbZ7fbj8vjk8vjl8/nm8/np9frq9frr9vrs9vru9/vw+Pv2+/33+/37/f6g0ug8otBNq9S63u6Jx+IEiMJfs9hzvd3f8Pcqmsv///+OsMg+AAAFP0lEQVR4XuzPSQ0AIAwAQcT15PIvhy8OaMiOg2n7E0TeI0KECJH6iBAhQoQIESJEiEyXGN10ZbvkUusjxGf9yGHvjhpRW8Iwjj+oIIQQlh0FgBARiEIs7eb7f5xzdW5m9j5nzbPe1rwX/b7B343VzDszD+f1yvIs/tfscqV+/qAz5PlksJqHl/zq4ORZVUjnaHMepPnNo46OkNbeElJa2muFDrmvDSFiWLsPF9I7LkNQ+bgXJOSlOgNhM9WXzEPa2znIQ267nWnIUzSJEZmMnjIL6dYKGKFCrZtNSGMBI7bQyCDkbR0ZWH8bdcjFHDIxdzHSkG40gYxMRN3RhbRLyFCpPaqQZhGZKjZHE3KWQ8ZyZ6MI2Y+RuXhfPmQXQewSIXzHVKlSPby8ef03+vXm8rBaKU2JlMiG7ONvCmsHLfMXrYO1AtLalww5i/FHizvX7+Y/vV/vLCKV+EwupJnDn5SvTCJXZaSRa0qFtItwxRu3JrHbjRi8YlsmpFuCq39nvNz1wSt1RUIiOKZPjbfTadAiiZCLCdhWHg3hcQWsiYv0IW9zsG31DKW3BdbcW+qQddh+GdovsNbThjS4DvmSRrqQ7gIsWyaVLZAWuqlCarCs9EwqvRWQamlCngpWx/SjSelxGpzCU4qQCJZTk9opSBEf0rbXE/tGQB+cyTYdsm11xHdGwF0MzjYb8pKzQjaMiA1wci9kSBWWWyPiFqQqF9Kz9z/KRkgZnJkeFXIMy5URcgXSMRHi/t0WjZhFcMpMyD0sO0bMDkj3REgNlmsj5hqkGhEytDoK70bMewGcoX9IC5Y1I2gNpJZ3yB4sB0bQAUh73iFL7t9CUAukJd+QDixTRtQUSB3PkCNYSkZUCaQjz5BNWCpGVAWkTc+QeViqRlQVpHm/kGfYDo2oQ7CevUJOYLs0oi7BOvEKGcB2Y0TdgDXwClmF7dWIegVr1SskD5sRBlbeJ+QBekPw4BFyrjnk3COkrjmk7hFS0RxS8QhZ1hyy7BEyqzlk1iMEmkOQPOQ3oPcfIvA7ccgXoPcTBfhKHPIB6P1oBD4Sh3wDej/jge/EIQM45H9Y8QaJQ37gkP+py/tJHNKHQ37xgddPHPIJh/xyEO8zccgQDvkFOt4wcUgMh/ySKS9OHAJL2EVsFxGiaFuBD1G20cOHaNt640OUbYbyIdq2p/kQZQMDfIi2EQ4+JORQjXyI/JhToBD5wbOgIfKjgDzmozH8cKYrZj7jw4/LuobUD6vgA8yuT+qnbvCRclefW3wIPeTv+iGXgwIfu3AN2AW6sAdhXN/skmnYo0muD3oRO+hhMdcXv60Q9vgev61g4JA/UMlLtfUmfsSVN5tqM5Q/dCxuOd32dIBj4ALb03UoVidGOFQ6J4ZqVHogxpw0yhODZyqtEqOAKg2I4UyVTohxWZWeiQFmjeaJkXKVNokhf5WOiGMXKnWIgzAaLRFHk1TaIw6LqdRiju8pNKQOVCpUo464KnTPHTpWp0weA1fnmD2Yrwl/MN9UoUyVv7xCldwLf52IKtsCF7wEIHnBi4mgSCRwCVIA7CVI+r9TagIXhWmw0BW4uk2DhsBlehqsS1xvqMDcm8iFkwGQF05q/2cSSV3KGlipK3ZNblDFtuDFxQHlmqJXSQcTn8le7h3MvvR164Hsji/A1/UkwfiRCF3PdowfUtH1tM34sSFVzz+NH+RS9UTa+NE6Tc8Ijh921PTU5vjxU8XP0Y4fCB4/2cw/ov1Pe3cgAwAAACDM3zqOtmdwgmzNjeZBQEA+gYCAgICAgICAgIAETuKXxaAVTVgAAAAASUVORK5CYII=>>

Rasterific is a vector drawing library (a rasterizer)
implemented in pure haskell.

Can render vector graphics to an image and export vector data to PDF.")
    (license license:bsd-3)))

haskell-9.0-Rasterific

(define-public haskell-9.0-Spintax
  (package
    (name "haskell-9.0-Spintax")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spintax/Spintax-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "000yprzvq72ia6wfk3hjarb8anx3wfm54rzpv8x7d2zf09pzxk6k"))))
    (properties `((upstream-name . "Spintax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/spintax")
    (synopsis "Random text generation based on spintax")
    (description
     "Random text generation based on spintax with nested alternatives and empty options.")
    (license license:bsd-3)))

haskell-9.0-Spintax

(define-public haskell-9.0-adjunctions
  (package
    (name "haskell-9.0-adjunctions")
    (version "4.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/adjunctions/adjunctions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06354xzgf78jl4g1xw11rp74gi7zh94rgvsji7ma1g0hp26myyql"))))
    (properties `((upstream-name . "adjunctions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/adjunctions/")
    (synopsis "Adjunctions and representable functors")
    (description "Adjunctions and representable functors.")
    (license license:bsd-3)))

haskell-9.0-adjunctions

(define-public haskell-9.0-aeson
  (package
    (name "haskell-9.0-aeson")
    (version "2.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aeson/aeson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09dk0j33n262dm75vff3y3i9fm6lh06dyqswwv7a6kvnhhmhlxhr"))))
    (properties `((upstream-name . "aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cffi" "-fordered-keymap")
       #:cabal-revision
       ("1" "1zrgn63jzrpk3n3vd44zkzgw7kb5qxlvhx4nk6g3sswwrsz5j32i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OneTuple)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-data-fix)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-semialign)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-witherable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Fast JSON parsing and encoding")
    (description
     "A JSON parsing and encoding library optimized for ease of use
and high performance.

To get started, see the documentation for the @@Data.Aeson@@ module
below.

(A note on naming: in Greek mythology, Aeson was the father of Jason.)")
    (license license:bsd-3)))

haskell-9.0-aeson

(define-public haskell-9.0-ansi-terminal-game
  (package
    (name "haskell-9.0-ansi-terminal-game")
    (version "1.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-terminal-game/ansi-terminal-game-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wd7gh8zm90wq080fsah0qjbr9x3vrh89am7yf0d84a0akqw65m"))))
    (properties `((upstream-name . "ansi-terminal-game") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-linebreak)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mintty)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-timers-tick)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-unidecode)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "http://www.ariis.it/static/articles/ansi-terminal-game/page.html")
    (synopsis "sdl-like functions for terminal applications, based on
ansi-terminal")
    (description
     "Library which aims to replicate standard 2d game
functions (blit, ticks, timers, etc.) in a terminal
setting; features double buffering to optimise
performance.
Aims to be cross compatible (based on \"ansi-terminal\",
no unix-only dependencies), practical.
See @@examples@@ folder for some minimal programs.  A
full game: <http://www.ariis.it/static/articles/venzone/page.html venzone>.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-ansi-terminal-game

(define-public haskell-9.0-attoparsec-base64
  (package
    (name "haskell-9.0-attoparsec-base64")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-base64/attoparsec-base64-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rvkc7kaya42a8djkyj642r5dq952gwkhinif9r22ijaic656cq8"))))
    (properties `((upstream-name . "attoparsec-base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (home-page "https://github.com/athanclark/attoparsec-base64#readme")
    (synopsis
     "Fetch only base64 characters, erroring in the attoparsec monad on failure")
    (description "")
    (license license:bsd-3)))

haskell-9.0-attoparsec-base64

(define-public haskell-9.0-attoparsec-iso8601
  (package
    (name "haskell-9.0-attoparsec-iso8601")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-iso8601/attoparsec-iso8601-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmj6v63xjj20ja50ffbi222yg513cnnqyxl76ybb4x98z9jld0k"))))
    (properties `((upstream-name . "attoparsec-iso8601") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-f-fast")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Parsing of ISO 8601 dates, originally from aeson")
    (description "Parsing of ISO 8601 dates, originally from aeson.")
    (license license:bsd-3)))

haskell-9.0-attoparsec-iso8601

(define-public haskell-9.0-base58-bytestring
  (package
    (name "haskell-9.0-base58-bytestring")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base58-bytestring/base58-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ls05nzswjr6aw0wwk3q7cpv1hf0lw7vk16a5khm6l21yfcgbny2"))))
    (properties `((upstream-name . "base58-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/s9gf4ult/base58-bytestring")
    (synopsis "Implementation of BASE58 transcoding for ByteStrings")
    (description "Implementation of BASE58 transcoding copy-pasted from
haskoin package")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-base58-bytestring

(define-public haskell-9.0-bound
  (package
    (name "haskell-9.0-bound")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bound/bound-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cnw0q97bys7jcpjds2fb6zkq9pyqxcb8v0b5dvkckqmlp8agn4v"))))
    (properties `((upstream-name . "bound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-deriving-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/bound/")
    (synopsis "Making de Bruijn Succ Less")
    (description
     "We represent the target language itself as an ideal monad supplied by the
user, and provide a 'Scope' monad transformer for introducing bound variables
in user supplied terms. Users supply a 'Monad' and 'Traversable' instance,
and we traverse to find free variables, and use the Monad to perform
substitution that avoids bound variables.

Slides describing and motivating this approach to name binding are available
online at:

<http://www.slideshare.net/ekmett/bound-making-de-bruijn-succ-less>

The goal of this package is to make it as easy as possible to deal with name
binding without forcing an awkward monadic style on the user.

With generalized de Bruijn term you can 'lift' whole trees instead of just
applying 'succ' to individual variables, weakening the all variables bound
by a scope and greatly speeding up instantiation. By giving binders more
structure we permit easy simultaneous substitution and further speed up
instantiation.")
    (license license:bsd-3)))

haskell-9.0-bound

(define-public haskell-9.0-byte-count-reader
  (package
    (name "haskell-9.0-byte-count-reader")
    (version "0.10.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byte-count-reader/byte-count-reader-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k9ayxy7snxp0wc9wqqb8yka4zyc6s3bkm98znzbpznhqld81x8v"))))
    (properties `((upstream-name . "byte-count-reader") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parsec-numbers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/danielrolls/byte-count-reader#readme")
    (synopsis "Read strings describing a number of bytes like 2Kb and 0.5 MiB")
    (description
     "Please see the README on GitHub at <https://github.com/danielrolls/byte-count-reader#readme>")
    (license license:gpl3)))

haskell-9.0-byte-count-reader

(define-public haskell-9.0-cassava-megaparsec
  (package
    (name "haskell-9.0-cassava-megaparsec")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-megaparsec/cassava-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pg9z38jmrylbj683b6pf7psipp7lrdq6mn1hbj8v2gj5lh8yf8n"))))
    (properties `((upstream-name . "cassava-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/cassava-megaparsec")
    (synopsis "Megaparsec parser of CSV files that plays nicely with Cassava")
    (description
     "Megaparsec parser of CSV files that plays nicely with Cassava.")
    (license license:expat)))

haskell-9.0-cassava-megaparsec

(define-public haskell-9.0-caster
  (package
    (name "haskell-9.0-caster")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/caster/caster-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wmczsiv7cf1yx82yd8da90fab5y8p3mgazfhssv6jd19iaxrakj"))))
    (properties `((upstream-name . "caster") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-fast-builder)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-unix-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kirisaki/caster#readme")
    (synopsis "Multicast, thread-safe, and fast logger.")
    (description
     "Please see the README on GitHub at <https://github.com/kirisaki/caster#readme>")
    (license license:bsd-3)))

haskell-9.0-caster

(define-public haskell-9.0-cmark-lucid
  (package
    (name "haskell-9.0-cmark-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-lucid/cmark-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00rwiax7dd01259vrdkv574zi58agr17p7jkzixgwchfxngpp4nj"))))
    (properties `((upstream-name . "cmark-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mizbv18bl8qrgz27wlz7sb6cfhblmp7p7gh7dqq8g0r4djrvqg5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-cmark)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)))
    (home-page "http://github.com/aelve/cmark-lucid")
    (synopsis "Use cmark with Lucid")
    (description
     "A package for rendering Markdown (parsed via cmark) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-9.0-cmark-lucid

(define-public haskell-9.0-conduino
  (package
    (name "haskell-9.0-conduino")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-list-transformer)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/conduino#readme")
    (synopsis "Lightweight composable continuation-based stream processors")
    (description
     "A lightweight continuation-based stream processing library.

It is similar in nature to pipes and conduit, but useful if you just want
something quick to manage composable stream processing without focus on IO.

See README for more information.")
    (license license:bsd-3)))

haskell-9.0-conduino

(define-public haskell-9.0-connection-pool
  (package
    (name "haskell-9.0-connection-pool")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection-pool/connection-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lvkcsd042s936fj5c9y5gg4iiq09n42adkv8q2rnwcbd6vl7kzj"))))
    (properties `((upstream-name . "connection-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-between)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/trskop/connection-pool")
    (synopsis
     "Connection pool built on top of resource-pool and streaming-commons.")
    (description
     "Connection poll is a family of specialised resource pools. Currently package
provides two variants:

1. pool for TCP client connections,

2. and pool for UNIX Sockets client connections.

In addition it can be used to build your own connection pool using provided
primitives.

This package is built on top of
<http://hackage.haskell.org/package/resource-pool resource-pool> and
<http://hackage.haskell.org/package/streaming-commons streaming-commons>.
The later allows us to use
<http://hackage.haskell.org/package/conduit-extra conduit-extra> package
for implementation of TCP or UNIX Sockets clients.

For examples and other details see documentation in \"Data.ConnectionPool\"
module.")
    (license license:bsd-3)))

haskell-9.0-connection-pool

(define-public haskell-9.0-cue-sheet
  (package
    (name "haskell-9.0-cue-sheet")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cue-sheet/cue-sheet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n8a5m5qlz8dz03sphj9pybfjfkc0gngpmh56h6idj88frn1z947"))))
    (properties `((upstream-name . "cue-sheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "14w4r8y871fkvvak9lklncchlnq3cb6gy4qy1124g9hsnf75mgg4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)))
    (home-page "https://github.com/mrkkrp/cue-sheet")
    (synopsis "Support for construction, rendering, and parsing of CUE sheets")
    (description
     "Support for construction, rendering, and parsing of CUE sheets.")
    (license license:bsd-3)))

haskell-9.0-cue-sheet

(define-public haskell-9.0-data-interval
  (package
    (name "haskell-9.0-data-interval")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-extended-reals)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lattices)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)))
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

haskell-9.0-data-interval

(define-public haskell-9.0-data-msgpack
  (package
    (name "haskell-9.0-data-msgpack")
    (version "0.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack/data-msgpack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2qgipyjb5h5n1bx429rwdaamw4xdm7gwj08vlw6n6sycqwnq04"))))
    (properties `((upstream-name . "data-msgpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-data-msgpack-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-groom)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-9.0-data-msgpack

(define-public haskell-9.0-data-serializer
  (package
    (name "haskell-9.0-data-serializer")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-endian)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-serializer")
    (synopsis "Common API for serialization libraries")
    (description
     "This package provides a common API for serialization libraries like
<http://hackage.haskell.org/package/binary binary> and
<http://hackage.haskell.org/package/cereal cereal>.")
    (license license:bsd-3)))

haskell-9.0-data-serializer

(define-public haskell-9.0-data-textual
  (package
    (name "haskell-9.0-data-textual")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-text-latin1)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-text-printer)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-type-hint)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-textual")
    (synopsis "Human-friendly textual representations.")
    (description
     "This package provides an interface for converting between data and its
(human-friendly) textual representation.")
    (license license:bsd-3)))

haskell-9.0-data-textual

(define-public haskell-9.0-di-core
  (package
    (name "haskell-9.0-di-core")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-core/di-core-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wrj2ndzk9r7izjvwkjjmqb3gg1zy93ch7j7fdalzadzzsd4sqsm"))))
    (properties `((upstream-name . "di-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging without monad towers.")
    (description
     "Typeful hierarchical structured logging without monad towers.")
    (license license:bsd-3)))

haskell-9.0-di-core

(define-public haskell-9.0-dirichlet
  (package
    (name "haskell-9.0-dirichlet")
    (version "0.1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dirichlet/dirichlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mphjhizkm8jrwf698kbi1gxgx01wvmxb7v4an9gnnpwyybmcy7w"))))
    (properties `((upstream-name . "dirichlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-log-domain)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/dirichlet")
    (synopsis "Multivariate Dirichlet distribution")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/dirichlet#readme>")
    (license license:bsd-3)))

haskell-9.0-dirichlet

(define-public haskell-9.0-doctest-parallel
  (package
    (name "haskell-9.0-doctest-parallel")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-parallel/doctest-parallel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "075y4yllpgfq0dlfd6y9nqhsdkxzb9s3jgb0v194l216kg5zsqzc"))))
    (properties `((upstream-name . "doctest-parallel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-code-page)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/martijnbastiaan/doctest-parallel#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<https://docs.python.org/3/library/doctest.html>).

Documentation is at <https://github.com/martijnbastiaan/doctest-parallel#readme>.")
    (license license:expat)))

haskell-9.0-doctest-parallel

(define-public haskell-9.0-dotenv
  (package
    (name "haskell-9.0-dotenv")
    (version "0.9.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dotenv/dotenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f0kzkkfvk7bmlxzq2z7b1rr374aa4qlh8pklbjaqg0drfhyyk6a"))))
    (properties `((upstream-name . "dotenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static" "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (native-inputs (list (@ (gnu packages base) coreutils)))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (home-page "https://github.com/stackbuilders/dotenv-hs")
    (synopsis "Loads environment variables from dotenv files")
    (description
     "
In most applications,
<http://12factor.net/config configuration should be separated from code>.
While it usually works well to keep configuration in the
environment, there are cases where you may want to store
configuration in a file outside of version control.

\"Dotenv\" files have become popular for storing configuration,
especially in development and test environments. In
<https://github.com/bkeepers/dotenv Ruby>,
<https://github.com/theskumar/python-dotenv Python> and
<https://www.npmjs.com/package/dotenv Javascript> there are libraries
to facilitate loading of configuration options from configuration
files. This library loads configuration to environment variables for
programs written in Haskell.

To use, call `loadFile` from your application:

> import Control.Monad (void)
> import Configuration.Dotenv
> void $ loadFile defaultConfig

This package also includes an executable that can be used
to inspect the results of applying one or more Dotenv files
to the environment, or for invoking your executables with
an environment after one or more Dotenv files is applied.

See the <https://github.com/stackbuilders/dotenv-hs Github>
page for more information on this package.")
    (license license:expat)))

haskell-9.0-dotenv

(define-public haskell-9.0-dual-tree
  (package
    (name "haskell-9.0-dual-tree")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dual-tree/dual-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19nm34d166fhlkk7npx0iq9kbx7300a82bg75q1sx98jqfa4nffh"))))
    (properties `((upstream-name . "dual-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-extras)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dual-tree")
    (synopsis "Rose trees with cached and accumulating monoidal annotations")
    (description "Rose (n-ary) trees with both upwards- (/i.e./
cached) and downwards-traveling (/i.e./
accumulating) monoidal annotations.  This is used
as the core data structure underlying
the @@diagrams@@ framework
(<https://diagrams.github.io>), but
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

haskell-9.0-dual-tree

(define-public haskell-9.0-elm-export
  (package
    (name "haskell-9.0-elm-export")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-export/elm-export-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mgrcd1hrg6rjb5x18zh9vcxqsc9hnfwvvr1nia2piqqb40n565z"))))
    (properties `((upstream-name . "elm-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/krisajenkins/elm-export")
    (synopsis "A library to generate Elm types from Haskell source.")
    (description
     "Generate Elm source code automatically from Haskell types. Using GHC.Generics, we can automatically derive Elm type declarations, and Aeson-compatible JSON decoders & encoders.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-elm-export

(define-public haskell-9.0-errata
  (package
    (name "haskell-9.0-errata")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/errata/errata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nrmakr76x53hdnykl1imcm57s07v85fbmb10pkzd4wwabk9kajp"))))
    (properties `((upstream-name . "errata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-usewcwidth")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-golden)))
    (home-page "https://github.com/1Computer1/errata")
    (synopsis "Source code error pretty printing")
    (description
     "An extremely customizable error pretty printer that can handle many kinds of error formatting.
It can handle errors that are connected, disconnected, and those spanning multiple lines.

You can get started by importing the \"Errata\" module.")
    (license license:expat)))

haskell-9.0-errata

(define-public haskell-9.0-filepattern
  (package
    (name "haskell-9.0-filepattern")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filepattern/filepattern-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dlnwnwhsfdkwm69z66wj5d2x9n3la55glq4fsn5rxm2kr1msi6c"))))
    (properties `((upstream-name . "filepattern") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/filepattern#readme")
    (synopsis "File path glob-like matching")
    (description
     "A library for matching files using patterns such as @@\\\"src\\/**\\/*.png\\\"@@ for all @@.png@@ files
recursively under the @@src@@ directory. Features:

* All matching is /O(n)/. Most functions precompute some information given only one argument.

* See \"System.FilePattern\" and @@?==@@ simple matching and semantics.

* Use @@match@@ and @@substitute@@ to extract suitable
strings from the @@*@@ and @@**@@ matches, and substitute them back into other patterns.

* Use @@step@@ and @@matchMany@@ to perform bulk matching
of many patterns against many paths simultaneously.

* Use \"System.FilePattern.Directory\" to perform optimised directory traverals using patterns.

Originally taken from the <https://hackage.haskell.org/package/shake Shake library>.")
    (license license:bsd-3)))

haskell-9.0-filepattern

(define-public haskell-9.0-flac
  (package
    (name "haskell-9.0-flac")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flac/flac-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03zmsnnpkk26ss8ka2l7x9gsfcmiqfyc73v7fna6sk5cwzxsb33c"))))
    (properties `((upstream-name . "flac") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1cjy3066klhcywx5yba7ky58wsibhhwiamjbimdv04qc8vmdfm45")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)))
    (home-page "https://github.com/mrkkrp/flac")
    (synopsis "Complete high-level binding to libFLAC")
    (description "Complete high-level binding to libFLAC.")
    (license license:bsd-3)))

haskell-9.0-flac

(define-public haskell-9.0-flat-mcmc
  (package
    (name "haskell-9.0-flat-mcmc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-mcmc-types)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-monad-par)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-mwc-probability)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
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

haskell-9.0-flat-mcmc

(define-public haskell-9.0-flay
  (package
    (name "haskell-9.0-flay")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flay/flay-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vqkjjf2bzmi489wsx23ryyplbg26q9qrzb98dz80j5b5rj3xzq1"))))
    (properties `((upstream-name . "flay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)))
    (home-page "https://github.com/k0001/flay")
    (synopsis
     "Work generically on your datatype without knowing its shape nor its contents.")
    (description
     "Work generically on your datatype without knowing its shape nor its contents using
a principlied approach.")
    (license license:bsd-3)))

haskell-9.0-flay

(define-public haskell-9.0-fmt
  (package
    (name "haskell-9.0-fmt")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fmt/fmt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "01mh0k69dv5x30hlmxi36dp1ylk0a6affr4jb3pvy8vjm4ypzvml"))))
    (properties `((upstream-name . "fmt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-time-locale-compat)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://github.com/cdornan/fmt")
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

haskell-9.0-fmt

(define-public haskell-9.0-fortran-src
  (package
    (name "haskell-9.0-fortran-src")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fortran-src/fortran-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x2dkzqvc1al4zshdjc2iypi5bl2vkrvrvidmw7099jjspp6iw1c"))))
    (properties `((upstream-name . "fortran-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-GenericPretty)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fgl)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/camfort/fortran-src#readme")
    (synopsis
     "Parsers and analyses for Fortran standards 66, 77, 90, 95 and 2003 (partial).")
    (description
     "Provides lexing, parsing, and basic analyses of Fortran code covering standards: FORTRAN 66, FORTRAN 77, Fortran 90, Fortran 95, Fortran 2003 (partial) and some legacy extensions. Includes data flow and basic block analysis, a renamer, and type analysis. For example usage, see the @@<https://hackage.haskell.org/package/camfort CamFort>@@ project, which uses fortran-src as its front end.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-fortran-src

(define-public haskell-9.0-freer-simple
  (package
    (name "haskell-9.0-freer-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-natural-transformation)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
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

haskell-9.0-freer-simple

(define-public haskell-9.0-fuzzy
  (package
    (name "haskell-9.0-fuzzy")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-subclasses)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/joom/fuzzy")
    (synopsis "Filters a list based on a fuzzy string search.")
    (description "")
    (license license:expat)))

haskell-9.0-fuzzy

(define-public haskell-9.0-fuzzyset
  (package
    (name "haskell-9.0-fuzzyset")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzyset/fuzzyset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02rc846kfrkd0gd3j37gkmf87z09rzfa9bz2f0i2b83mh8ppk1sl"))))
    (properties `((upstream-name . "fuzzyset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-metrics)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/laserpants/fuzzyset-haskell")
    (synopsis "Fuzzy set for approximate string matching")
    (description
     "This library is based on the Python and JavaScript libraries with similar names.")
    (license license:bsd-3)))

haskell-9.0-fuzzyset

(define-public haskell-9.0-genvalidity
  (package
    (name "haskell-9.0-genvalidity")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity/genvalidity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rkrw46mhb4cvvg69avmbvsmssg5aii9g2kb4xqa9488jf8wz3m0"))))
    (properties `((upstream-name . "genvalidity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Testing utilities for the validity library")
    (description
     "Note: There are companion instance packages for this library:

* <https://hackage.haskell.org/package/genvalidity-aeson genvalidity-aeson>

* <https://hackage.haskell.org/package/genvalidity-bytestring genvalidity-bytestring>

* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>

* <https://hackage.haskell.org/package/genvalidity-path genvalidity-path>

* <https://hackage.haskell.org/package/genvalidity-scientific genvalidity-scientific>

* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>

* <https://hackage.haskell.org/package/genvalidity-time genvalidity-time>

* <https://hackage.haskell.org/package/genvalidity-unordered-containers genvalidity-unordered-containers>

* <https://hackage.haskell.org/package/genvalidity-uuid genvalidity-uuid>

* <https://hackage.haskell.org/package/genvalidity-vector genvalidity-vector>")
    (license license:expat)))

haskell-9.0-genvalidity

(define-public haskell-9.0-geodetics
  (package
    (name "haskell-9.0-geodetics")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/geodetics/geodetics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18jjq4z16v6mkmm4as67srrwzk75cl32jlph3qbm106gms54vska"))))
    (properties `((upstream-name . "geodetics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-checkers)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-dimensional)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/PaulJohnson/geodetics")
    (synopsis "Terrestrial coordinate systems and geodetic calculations.")
    (description
     "Precise geographical coordinates (latitude & longitude), with conversion between
different reference frames and projections.

Certain distinguished reference frames and grids are given distinct
types so that coordinates expressed within them cannot be confused with
from coordinates in other frames.")
    (license license:bsd-3)))

haskell-9.0-geodetics

(define-public haskell-9.0-ghc-check
  (package
    (name "haskell-9.0-ghc-check")
    (version "0.5.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-check/ghc-check-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3w1l8gkc7g9p7d07h3f71687rgs9lb5ildgfr1ihxp7wssh98h"))))
    (properties `((upstream-name . "ghc-check") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fghc-check-use-package-abis")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-th-compat)))
    (home-page "https://hackage.haskell.org/package/ghc-check")
    (synopsis
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (description
     "detect mismatches between compile-time and run-time versions of the ghc api")
    (license license:bsd-3)))

haskell-9.0-ghc-check

(define-public haskell-9.0-ghc-exactprint
  (package
    (name "haskell-9.0-ghc-exactprint")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-ghc-exactprint

(define-public haskell-9.0-ghc-lib-parser-ex
  (package
    (name "haskell-9.0-ghc-lib-parser-ex")
    (version "9.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser-ex/ghc-lib-parser-ex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lqhddx4sw2d407q12ny1ims4khjxgajlk07wvrw0wcgmx91dmc7"))))
    (properties `((upstream-name . "ghc-lib-parser-ex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fauto" "-f-no-ghc-lib")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme")
    (synopsis "Algorithms on GHC parse trees")
    (description
     "Please see the README on GitHub at <https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme>")
    (license license:bsd-3)))

haskell-9.0-ghc-lib-parser-ex

(define-public haskell-9.0-githash
  (package
    (name "haskell-9.0-githash")
    (version "0.1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/githash/githash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06zg1rif1rcxni1vacmr2bh1nbm6i62rjbikfr4xsyzq1sv7kfpw"))))
    (properties `((upstream-name . "githash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-th-compat)))
    (home-page "https://github.com/snoyberg/githash#readme")
    (synopsis "Compile git revision info into Haskell projects")
    (description
     "Please see the README and documentation at <https://www.stackage.org/package/githash>")
    (license license:bsd-3)))

haskell-9.0-githash

(define-public haskell-9.0-hexml
  (package
    (name "haskell-9.0-hexml")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hexml/hexml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0amy5gjk1sqj5dq8a8gp7d3z9wfhcflhxkssijnklnfn5s002x4k"))))
    (properties `((upstream-name . "hexml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/hexml#readme")
    (synopsis "XML subset DOM parser")
    (description
     "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.")
    (license license:bsd-3)))

haskell-9.0-hexml

(define-public haskell-9.0-hjsmin
  (package
    (name "haskell-9.0-hjsmin")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hjsmin/hjsmin-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r2p5rjdjr25j3w4s57q5hxw2c3ymw12x7ms18yvglnq2ivr9fc1"))))
    (properties `((upstream-name . "hjsmin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "184g49wsj2sfm8d75kgr7ylfw29gbyrqbqp4syyz30ch047jd0af")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-language-javascript)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (home-page "http://github.com/erikd/hjsmin")
    (synopsis "Haskell implementation of a javascript minifier")
    (description
     "Reduces size of javascript files by stripping out extraneous whitespace and
other syntactic elements, without changing the semantics.")
    (license license:bsd-3)))

haskell-9.0-hjsmin

(define-public haskell-9.0-hkgr
  (package
    (name "haskell-9.0-hkgr")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hkgr/hkgr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w8ww2dkskdfs0lh6wbn5byhnrf6mwih7n5yp81fr6awdc0k1qrm"))))
    (properties `((upstream-name . "hkgr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-cabal)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/hkgr")
    (synopsis "Simple Hackage release workflow for package maintainers")
    (description
     "Hkgr (pronounced \"Hackager\") is a tool to help make new releases of
Haskell packages, with commands for git tagging, pristine sdist,
and uploading to Hackage.
There is also a command for creating a new local project.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-hkgr

(define-public haskell-9.0-hmm-lapack
  (package
    (name "haskell-9.0-hmm-lapack")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmm-lapack/hmm-lapack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f66q9xq6da4xyl564jxixn60hs4qh4ksgdfigj4xsi44zij9gyx"))))
    (properties `((upstream-name . "hmm-lapack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-comfort-array-shape)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-fixed-length)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lapack)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-lazy-csv)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prelude-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-tfp)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/hmm-lapack")
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

haskell-9.0-hmm-lapack

(define-public haskell-9.0-hsass
  (package
    (name "haskell-9.0-hsass")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsass/hsass-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bnjvj6dpmcbpkbi4g5m5hvr0w5rmd7y5zkiwbqc8n9y4l2dkd5g"))))
    (properties `((upstream-name . "hsass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "11xmb3mssql6ksdra03h9cqv0pdxgyj3askapbgpx6rmziw7a136")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hlibsass)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages web) libsass)))
    (home-page "https://github.com/jakubfijalkowski/hsass")
    (synopsis "Integrating Sass into Haskell applications.")
    (description
     "This package provides quite simple (but not too simple) API for
compilation of <http://sass-lang.com/ Sass> code. It uses
<https://sass-lang.com/libsass libsass> (hlibsass) underneath, so the code it
parses/generates should be compatible with original Sass implementation (or at
least <https://sass-lang.com/libsass#sassc sassc>).
This package tries to minimize C API usage, so the only place where it is used
is in the 'compileFile' / 'compileString' methods. This allows us to stay pure
as long as we can and not waste performance for going back and forth.
If you feel that compilation options constrain you too much, you may use rest
of modules without it. With them, you can use Haskell types and mechanisms to
manage libsass's data(eg. importers, options, values) and modify compilation
process as you like.")
    (license license:expat)))

haskell-9.0-hsass

(define-public haskell-9.0-hsinstall
  (package
    (name "haskell-9.0-hsinstall")
    (version "2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsinstall/hsinstall-" version
                    ".tar.gz"))
              (sha256
               (base32
                "142gdcdka2i61hv9pxpqfi25h5nzz8k7nxlnymfmn4inpayvdr29"))))
    (properties `((upstream-name . "hsinstall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-heredoc)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-newtype-generics)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)))
    (home-page "https://github.com/dino-/hsinstall#readme")
    (synopsis "Install Haskell software")
    (description
     "This is a tool for deploying software projects into directory structures suitable for installation on a system. It builds upon the `stack install` command and adds more features. It's also a tool for easier AppImage creation.")
    (license license:isc)))

haskell-9.0-hsinstall

(define-public haskell-9.0-hspec-checkers
  (package
    (name "haskell-9.0-hspec-checkers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-checkers)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hspec-checkers")
    (synopsis "Allows to use checkers properties from hspec")
    (description
     "Allows to use <http://hackage.haskell.org/package/checkers checkers>
properties from <http://hackage.haskell.org/package/hspec hspec>.")
    (license license:bsd-3)))

haskell-9.0-hspec-checkers

(define-public haskell-9.0-hwk
  (package
    (name "haskell-9.0-hwk")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hwk/hwk-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1xn3rn81ixx5mil8x1s26cxsdnpq2mhbfcs26969rk3k9lbzvc38"))))
    (properties `((upstream-name . "hwk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-hint)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/hwk")
    (synopsis "Commandline text processing with Haskell functions")
    (description
     "A commandline tool for text processing with Haskell functions,
complementing unix-style tools like awk, grep, and sed.
'hwk' applies the function supplied on the commandline using 'hint'
to lines of input and outputs the results.")
    (license license:expat)))

haskell-9.0-hwk

(define-public haskell-9.0-infer-license
  (package
    (name "haskell-9.0-infer-license")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/infer-license/infer-license-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wlfm6bf55kfvm74xar9lmjg5v1103rs9m3grw1rq5bmcmhzxrhj"))))
    (properties `((upstream-name . "infer-license") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-metrics)))
    (home-page "https://hackage.haskell.org/package/infer-license")
    (synopsis "Infer software license from a given license file")
    (description "")
    (license license:expat)))

haskell-9.0-infer-license

(define-public haskell-9.0-inline-c
  (package
    (name "haskell-9.0-inline-c")
    (version "0.9.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c/inline-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06az494fp2nh6fnibq28yw8jsrpj4jq1swyx53a328qv04cbhrym"))))
    (properties `((upstream-name . "inline-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-gsl-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-posix)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/inline-c")
    (synopsis
     "Write Haskell source files including C code inline. No FFI required.")
    (description
     "See <https://github.com/fpco/inline-c/blob/master/README.md>.")
    (license license:expat)))

haskell-9.0-inline-c

(define-public haskell-9.0-input-parsers
  (package
    (name "haskell-9.0-input-parsers")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/input-parsers/input-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y643507p9grj8gkq722p4b9gbrkg8xyh6pi19qvrbmmadpn1r89"))))
    (properties `((upstream-name . "input-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/input-parsers")
    (synopsis
     "Extension of the parsers library with more capability and efficiency")
    (description
     "Extended version of the parsers library, with the additional classes providing more
capable and efficient methods.")
    (license license:bsd-3)))

haskell-9.0-input-parsers

(define-public haskell-9.0-invert
  (package
    (name "haskell-9.0-invert")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/invert/invert-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13zl9i6g7ygkm3pgm7b72815cfp66mykxzp5vwy5kqakr8c3w1fp"))))
    (properties `((upstream-name . "invert") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1jrpqnd03j5h1g879n63ygj561db7kvk43xjvhhv4f4h1rmpzpri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/invert")
    (synopsis "Automatically generate a function’s inverse")
    (description
     "This library deals with computing a function’s inverse.
This is, of course, not possible in general, so the
applicability of this library comes with some caveats:

  * The function’s domain must be enumerable, and
    preferably rather small. We provide a few suggestions
    and utilities for how to enumerate the domain.
  * The function’s codomain must belong to the @@Eq@@ class.
    An @@Ord@@ or @@Hashable@@ instance is also nice, to
    accommodate a data structure for efficient lookups.
  * The functions for inverting injections, surjections,
    and bijections require some care to use correctly,
    because the library does not verify these properties.

The main purpose of this library is to provide documentation
and convenience. It does not contain a great quantity of code,
so a user hesitant to incur a dependency on the package might
well choose only to read and borrow its techniques.")
    (license license:asl2.0)))

haskell-9.0-invert

(define-public haskell-9.0-io-streams
  (package
    (name "haskell-9.0-io-streams")
    (version "1.5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-streams/io-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zn4iyd18g9jc1qdgixp6hi56nj7czy4jdz2xca59hcn2q2xarfk"))))
    (properties `((upstream-name . "io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-nointeractivetests" "-fzlib" "-fnetwork")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-zlib-bindings)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/io-streams")
    (synopsis "Simple, composable, and easy-to-use stream I/O")
    (description
     "/Overview/

The io-streams library contains simple and easy-to-use primitives for I/O
using streams. Most users will want to import the top-level convenience
module \"System.IO.Streams\", which re-exports most of the library:

@@
import           System.IO.Streams (InputStream, OutputStream)
import qualified System.IO.Streams as Streams
@@

For first-time users, @@io-streams@@ comes with an included tutorial, which can
be found in the \"System.IO.Streams.Tutorial\" module.

/Features/

The @@io-streams@@ user API has two basic types: @@InputStream a@@ and
@@OutputStream a@@, and three fundamental I/O primitives:

@@
\\-\\- read an item from an input stream
Streams.read :: InputStream a -> IO (Maybe a)

\\-\\- push an item back to an input stream
Streams.unRead :: a -> InputStream a -> IO ()

\\-\\- write to an output stream
Streams.write :: Maybe a -> OutputStream a -> IO ()
@@

Streams can be transformed by composition and hooked together with provided combinators:

@@
ghci> Streams.fromList [1,2,3::Int] >>= Streams.map (*10) >>= Streams.toList
[10,20,30]
@@

Stream composition leaves the original stream accessible:

@@
ghci> input \\<- Streams.fromByteString \\\"long string\\\"
ghci> wrapped \\<- Streams.takeBytes 4 input
ghci> Streams.read wrapped
Just \\\"long\\\"
ghci> Streams.read wrapped
Nothing
ghci> Streams.read input
Just \\\" string\\\"
@@

Simple types and operations in the IO monad mean straightforward and simple
exception handling and resource cleanup using Haskell standard library
facilities like 'Control.Exception.bracket'.

@@io-streams@@ comes with:

* functions to use files, handles, concurrent channels, sockets, lists,
vectors, and more as streams.

* a variety of combinators for wrapping and transforming streams, including
compression and decompression using zlib, controlling precisely how many
bytes are read from or written to a stream, buffering output using
bytestring builders, folds, maps, filters, zips, etc.

* support for parsing from streams using @@attoparsec@@.

* support for spawning processes and communicating with them using streams.")
    (license license:bsd-3)))

haskell-9.0-io-streams

(define-public haskell-9.0-kazura-queue
  (package
    (name "haskell-9.0-kazura-queue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-kazura-queue

(define-public haskell-9.0-keys
  (package
    (name "haskell-9.0-keys")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/keys/")
    (synopsis "Keyed functors and containers")
    (description
     "This package provides a bunch of ad hoc classes for accessing parts of a container.

In practice this package is largely subsumed by the
<https://hackage.haskell.org/package/lens lens package>,
but it is maintained for now as it has much
simpler dependencies.")
    (license license:bsd-3)))

haskell-9.0-keys

(define-public haskell-9.0-lame
  (package
    (name "haskell-9.0-lame")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lame/lame-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bqq3aanfffdsl3v0am7jdfslcr6y372cq7jx36z7g09zy5mp2sp"))))
    (properties `((upstream-name . "lame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "15yjwhwxiqds425y7a4s1z9vdrgmqwq2y5kvl1d1xhw7h05ryxkr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-htaglib)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-wave)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mp3) lame)
                             (@ (gnu packages mp3) taglib)))
    (home-page "https://github.com/mrkkrp/lame")
    (synopsis "Fairly complete high-level binding to LAME encoder")
    (description "Fairly complete high-level binding to LAME encoder.")
    (license license:bsd-3)))

haskell-9.0-lame

(define-public haskell-9.0-lapack-hmatrix
  (package
    (name "haskell-9.0-lapack-hmatrix")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-hmatrix/lapack-hmatrix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jd3sy03cxdfxakxaj1kxpc3jn0z8sd74lpxxg9s9jdvaxxxyflj"))))
    (properties `((upstream-name . "lapack-hmatrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lapack)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/lapack-hmatrix/")
    (synopsis "Conversion of objects between 'lapack' and 'hmatrix'")
    (description "Conversion of objects between 'lapack' and 'hmatrix'.")
    (license license:bsd-3)))

haskell-9.0-lapack-hmatrix

(define-public haskell-9.0-leveldb-haskell
  (package
    (name "haskell-9.0-leveldb-haskell")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
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

haskell-9.0-leveldb-haskell

(define-public haskell-9.0-libmpd
  (package
    (name "haskell-9.0-libmpd")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libmpd/libmpd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "088vlir0n3wps2p5ydgyx51p41nfjcm2v02sszpyjj3c8z7f4qkh"))))
    (properties `((upstream-name . "libmpd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "http://github.com/vimus/libmpd-haskell#readme")
    (synopsis "An MPD client library.")
    (description "A client library for MPD, the Music Player Daemon.")
    (license license:expat)))

haskell-9.0-libmpd

(define-public haskell-9.0-lift-generics
  (package
    (name "haskell-9.0-lift-generics")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lift-generics/lift-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qkzq8hcb6j15cslv577bmhjcxmljzsrryysdgd7r99kr3q445b4"))))
    (properties `((upstream-name . "lift-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0birp7ibzvil7m9ra0ixgaz9z0liixbw9z1j22x4r8x5r6hyaqik")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-th-compat)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)))
    (home-page "https://github.com/RyanGlScott/lift-generics")
    (synopsis
     "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation")
    (description
     "This package provides a \"GHC.Generics\"-based @@genericLift@@
function (only available on GHC 7.4 and later), as well as
a @@genericLiftWithPkgFallback@@ function (for code that
must support GHC 7.2 and earlier) and a
@@genericLiftWithPkg@@ function (for use when neither of the
above will work), all of which can be used for providing a
@@Language.Haskell.TH.Syntax.lift@@ implementation. See the
documentation in the \"Language.Haskell.TH.Lift.Generics\"
module to get started.

Credit goes to Matthew Pickering for
<https://ghc.haskell.org/trac/ghc/ticket/1830#comment:12 suggesting this idea>.

Note that due to API limitations, \"GHC.Generics\" wasn't
powerful enough to come up with the entirety of a `lift`
implementation prior to GHC 8.0. For GHC 7.4 and later, we
can pluck this information out of `Typeable`. For earlier
versions, and where `Typeable` isn't available,
@@genericLiftWithPkg@@ requires you to produce the package
name yourself, which proves to be no small feat (see the
documentation for more info).

Luckily, you don't have to jump through as many hoops on GHC 7.4 and
later: simply use the @@genericLift@@ function, and life is good.")
    (license license:bsd-3)))

haskell-9.0-lift-generics

(define-public haskell-9.0-lifted-async
  (package
    (name "haskell-9.0-lifted-async")
    (version "0.10.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-async/lifted-async-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kq96cp9czf358gykai2vcmynnd7zivqja4pb3f8bif9ypln9vai"))))
    (properties `((upstream-name . "lifted-async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-lifted-base)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://github.com/maoe/lifted-async")
    (synopsis
     "Run lifted IO operations asynchronously and wait for their results")
    (description
     "This package provides IO operations from @@async@@ package lifted to any
instance of 'MonadBase' or 'MonadBaseControl'.")
    (license license:bsd-3)))

haskell-9.0-lifted-async

(define-public haskell-9.0-linear-circuit
  (package
    (name "haskell-9.0-linear-circuit")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linear-circuit/linear-circuit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pyja29w1vrsi8vi65qdbc3c1vajiqgf5gff2zqh368k3hd4zpi4"))))
    (properties `((upstream-name . "linear-circuit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-comfort-graph)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lapack)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/linear-circuit")
    (synopsis "Compute resistance of linear electrical circuits")
    (description "Compute resistance of linear electrical circuits.

For examples see test directory.")
    (license license:bsd-3)))

haskell-9.0-linear-circuit

(define-public haskell-9.0-list-t
  (package
    (name "haskell-9.0-list-t")
    (version "1.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/list-t/list-t-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j3fgfa84f2cw87j80v5sq82s42505v82pwxgjyhbiflaxjd7wxd"))))
    (properties `((upstream-name . "list-t") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-logict)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/list-t")
    (synopsis "ListT done right")
    (description "A correct implementation of the list monad-transformer.
Useful for basic streaming.")
    (license license:expat)))

haskell-9.0-list-t

(define-public haskell-9.0-little-rio
  (package
    (name "haskell-9.0-little-rio")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/little-rio/little-rio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cbadsbhhgls6p46gga4l32b0fhmvp6r9mycaj2srsfdcnwkydr9"))))
    (properties `((upstream-name . "little-rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/ejconlon/little-rio#readme")
    (synopsis "When you need just the RIO monad")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/little-rio#readme>")
    (license license:bsd-3)))

haskell-9.0-little-rio

(define-public haskell-9.0-logging-facade-syslog
  (package
    (name "haskell-9.0-logging-facade-syslog")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logging-facade-syslog/logging-facade-syslog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1acfkmr3cgprij9sfa0hfqyni6s8py22s3n0xa8qhy3syz1j72zb"))))
    (properties `((upstream-name . "logging-facade-syslog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hsyslog)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-logging-facade)))
    (home-page "https://github.com/peti/logging-facade-syslog#readme")
    (synopsis "A logging back-end to syslog(3) for the logging-facade library")
    (description
     "A simple \"System.Logging.Facade\" back-end for @@syslog(3)@@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.")
    (license license:bsd-3)))

haskell-9.0-logging-facade-syslog

(define-public haskell-9.0-lucid-cdn
  (package
    (name "haskell-9.0-lucid-cdn")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-cdn/lucid-cdn-" version
                    ".tar.gz"))
              (sha256
               (base32
                "119d92xc047r98pw0phxplm57nc2jdjz6smkas9hr95mck0d16db"))))
    (properties `((upstream-name . "lucid-cdn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)))
    (home-page "https://hackage.haskell.org/package/lucid-cdn")
    (synopsis "Curated list of CDN imports for lucid.")
    (description
     "Repository of common CDN imports for lucid. Please open a pull request to add new libraries.")
    (license license:expat)))

haskell-9.0-lucid-cdn

(define-public haskell-9.0-magico
  (package
    (name "haskell-9.0-magico")
    (version "0.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/magico/magico-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hj6rn52qcxjwkrbxglh1yga53jj9skvmhnan1j7nz94rpi3fm04"))))
    (properties `((upstream-name . "magico") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lapack)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/magico")
    (synopsis "Compute solutions for Magico puzzle")
    (description
     "Compute solutions for Magico puzzle:
<https://www.westermann.de/reihe/SPC_A224/Magico-Fuer-Strategie-und-Problemloesungen>")
    (license license:bsd-3)))

haskell-9.0-magico

(define-public haskell-9.0-markdown-unlit
  (package
    (name "haskell-9.0-markdown-unlit")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown-unlit/markdown-unlit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0njzn56m8z6lm70xyixbylbnpjz1gk7x8vdsdvi3qld9m66gc3n7"))))
    (properties `((upstream-name . "markdown-unlit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-stringbuilder)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://github.com/sol/markdown-unlit#readme")
    (synopsis "Literate Haskell support for Markdown")
    (description
     "Documentation is here: <https://github.com/sol/markdown-unlit#readme>")
    (license license:expat)))

haskell-9.0-markdown-unlit

(define-public haskell-9.0-matrix
  (package
    (name "haskell-9.0-matrix")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/matrix/matrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b1v17rc9q7ni44gkzp124kmc5d6xmlpiqvskgjrq54qpjinr5zs"))))
    (properties `((upstream-name . "matrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0iy0gdgg68ldhgm4lzvzl5pmzflx0r4brdbdkq75rkarm7cigawn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-loop)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrix")
    (synopsis "A native implementation of matrix operations.")
    (description
     "Matrix library. Basic operations and some algorithms.

To get the library update your cabal package list (if needed) with @@cabal update@@ and
then use @@cabal install matrix@@, assuming that you already have Cabal installed.
Usage examples are included in the API reference generated by Haddock.

If you want to use GSL, BLAS and LAPACK, @@hmatrix@@ (<http://hackage.haskell.org/package/hmatrix>)
is the way to go.")
    (license license:bsd-3)))

haskell-9.0-matrix

(define-public haskell-9.0-mbox-utility
  (package
    (name "haskell-9.0-mbox-utility")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mbox-utility/mbox-utility-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vh9ibh4g3fssq9jfzrmaa56sk4k35r27lmz2xq4fhc62fmkia92"))))
    (properties `((upstream-name . "mbox-utility") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hsemail)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-spreadsheet)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/mbox-utility")
    (synopsis "List contents of an mbox file containing e-mails")
    (description
     "List contents of an mbox file containing e-mails.
This is intended for post-processing by the @@cutter@@ command.
See <http://hackage.haskell.org/package/cutter>.")
    (license license:bsd-3)))

haskell-9.0-mbox-utility

(define-public haskell-9.0-megaparsec-tests
  (package
    (name "haskell-9.0-megaparsec-tests")
    (version "9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec-tests/megaparsec-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jfzd5asm1lci78mc5sxymihmbjj9yxqx2952arxjw32psr6bpgz"))))
    (properties `((upstream-name . "megaparsec-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Test utilities and the test suite of Megaparsec")
    (description "Test utilities and the test suite of Megaparsec.")
    (license license:bsd-2)))

haskell-9.0-megaparsec-tests

(define-public haskell-9.0-mixed-types-num
  (package
    (name "haskell-9.0-mixed-types-num")
    (version "0.5.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixed-types-num/mixed-types-num-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15r1lj39fkddlqfda41cp76xr8ck4fkannszxi32j7a8lkjr2f21"))))
    (properties `((upstream-name . "mixed-types-num") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-collect-errors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)))
    (home-page "https://github.com/michalkonecny/mixed-types-num#readme")
    (synopsis
     "Alternative Prelude with numeric and logic expressions typed bottom-up")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/mixed-types-num#readme>")
    (license license:bsd-3)))

haskell-9.0-mixed-types-num

(define-public haskell-9.0-mock-time
  (package
    (name "haskell-9.0-mock-time")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mock-time/mock-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fwnlkg3kbi7qh43ycymxxywsh8cw5f5km0ni4plf63k931y40jg"))))
    (properties `((upstream-name . "mock-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-error-or)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-error-or-utils)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-inbox)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/mock-time#readme")
    (synopsis "Mock time in tests")
    (description
     "Allows to mock out Data.Time.getCurrentTime and Control.Concrurent.threadDelay")
    (license license:bsd-3)))

haskell-9.0-mock-time

(define-public haskell-9.0-mockery
  (package
    (name "haskell-9.0-mockery")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-logging-facade)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://hackage.haskell.org/package/mockery")
    (synopsis "Support functions for automated testing")
    (description "Support functions for automated testing")
    (license license:expat)))

haskell-9.0-mockery

(define-public haskell-9.0-model
  (package
    (name "haskell-9.0-model")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-convertible)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-filemanip)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/Quid2/model")
    (synopsis "Derive a model of a data type using Generics")
    (description "See the <http://github.com/Quid2/model online tutorial>.")
    (license license:bsd-3)))

haskell-9.0-model

(define-public haskell-9.0-modern-uri
  (package
    (name "haskell-9.0-modern-uri")
    (version "0.3.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/modern-uri/modern-uri-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lj3il9wg7v88l1hj08k07g3f76xas0gz20l2wy8z6xbpcn5ng6g"))))
    (properties `((upstream-name . "modern-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://github.com/mrkkrp/modern-uri")
    (synopsis "Modern library for working with URIs")
    (description "Modern library for working with URIs.")
    (license license:bsd-3)))

haskell-9.0-modern-uri

(define-public haskell-9.0-mono-traversable
  (package
    (name "haskell-9.0-mono-traversable")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Type classes for mapping, folding, and traversing monomorphic containers")
    (description
     "Please see the README at <https://www.stackage.org/package/mono-traversable>")
    (license license:expat)))

haskell-9.0-mono-traversable

(define-public haskell-9.0-n2o-nitro
  (package
    (name "haskell-9.0-n2o-nitro")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/n2o-nitro/n2o-nitro-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vh0r03h0k60z4q722pw4h5q0l7l56fmyp57im0nankci8vj0s38"))))
    (properties `((upstream-name . "n2o-nitro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-n2o)))
    (home-page "https://github.com/xafizoff/n2o#readme")
    (synopsis "Nitro Elements, Events and Actions")
    (description "Nitro DSL")
    (license license:bsd-3)))

haskell-9.0-n2o-nitro

(define-public haskell-9.0-network-simple
  (package
    (name "haskell-9.0-network-simple")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple/network-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17hpgcwrsx2h8lrb2wwzy0anp33mn80dnwcgnqmb8prajwjvz807"))))
    (properties `((upstream-name . "network-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-network-bsd)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-socks)))
    (home-page "https://github.com/k0001/network-simple")
    (synopsis "Simple network sockets usage patterns.")
    (description
     "This module exports functions that abstract simple network socket
usage patterns.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between versions.")
    (license license:bsd-3)))

haskell-9.0-network-simple

(define-public haskell-9.0-network-uri
  (package
    (name "haskell-9.0-network-uri")
    (version "2.6.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-uri/network-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "111m485rx2kyqdymi1x6sl08hi6lp34q3f41yqcx99086swnv1ap"))))
    (properties `((upstream-name . "network-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-th-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/network-uri")
    (synopsis "URI manipulation")
    (description
     "This package provides facilities for parsing and unparsing URIs, and creating
and resolving relative URI references, closely following the URI spec,
<http://www.ietf.org/rfc/rfc3986.txt IETF RFC 3986>.

== Backward-compatibility

In @@network-2.6@@ the \"Network.URI\" module was split off from the
@@network@@ package into this package. If you're using the \"Network.URI\"
module you can be backward compatible and automatically get it from
the right package by using the
</package/network-uri-flag network-uri-flag pseudo-package>
in your @@.cabal@@ file's build-depends (along with dependencies for
both @@network-uri@@ and @@network@@):

>  build-depends:
>     network-uri-flag == 0.1.*

Or you can do the same manually by adding this boilerplate to your
@@.cabal@@ file:

> flag network-uri
>   description: Get Network.URI from the network-uri package
>   default: True
>
> library
>   -- ...
>   if flag(network-uri)
>     build-depends: network-uri >= 2.6, network >= 2.6
>   else
>     build-depends: network-uri < 2.6, network < 2.6

That is, get the module from either @@network < 2.6@@ or from
@@network-uri >= 2.6@@.")
    (license license:bsd-3)))

haskell-9.0-network-uri

(define-public haskell-9.0-optics
  (package
    (name "haskell-9.0-optics")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optics/optics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1irk0m3194vmrqwm29p5gjwd8w7i5hmg1ikxfw11yjfk0hvmbrzb"))))
    (properties `((upstream-name . "optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-optics-extra)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-optics-th)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-optics

(define-public haskell-9.0-password
  (package
    (name "haskell-9.0-password")
    (version "3.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password/password-" version
                    ".tar.gz"))
              (sha256
               (base32
                "092cryk5xsmq86l9i7yyjxrq83mi9q61grwdkw2n8c1dxijbdi8l"))))
    (properties `((upstream-name . "password") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base64)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-password-types)))
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

haskell-9.0-password

(define-public haskell-9.0-pcre-heavy
  (package
    (name "haskell-9.0-pcre-heavy")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-heavy/pcre-heavy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03wqr7q242j23g910l0qgagqyy8fi3b5gv7xsaym7m41zki1bw9y"))))
    (properties `((upstream-name . "pcre-heavy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wa517agsib2q658bfsb9fdm12yz3pqzj204v9jf9rz4fm4y8q81")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-pcre-light)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/pcre-heavy")
    (synopsis
     "A regexp (regex) library on top of pcre-light you can actually use.")
    (description
     "A PCRE-based regular expressions library with support for multiple matches and replacements.
Based on <https://hackage.haskell.org/package/pcre-light pcre-light>.
Takes and returns <https://hackage.haskell.org/package/string-conversions convertible strings> everywhere.
Includes a QuasiQuoter for regexps that does compile time checking.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-pcre-heavy

(define-public haskell-9.0-perf
  (package
    (name "haskell-9.0-perf")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/perf/perf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "116j1dygya9226q52vw6l6w64raldjpz7z22kmcm38v36i696lik"))))
    (properties `((upstream-name . "perf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-rdtsc)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tonyday567/perf#readme")
    (synopsis "Low-level run time measurement.")
    (description
     "A set of tools to accurately measure time performance of Haskell programs.
perf aims to be lightweight by having minimal dependencies on standard libraries.
See the Perf module for an example and full API documentation.")
    (license license:bsd-3)))

haskell-9.0-perf

(define-public haskell-9.0-pipes-group
  (package
    (name "haskell-9.0-pipes-group")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-lens-family-core)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-parse)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-pipes-group

(define-public haskell-9.0-pipes-ordered-zip
  (package
    (name "haskell-9.0-pipes-ordered-zip")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/githubuser/pipes-ordered-zip#readme")
    (synopsis "merge two ordered Producers into a new Producer")
    (description
     "provides a simple function to merge two Pipes-Producers into a new Producer that yields pairs of values of the original producers, but using Maybes to indicate values that are only present in the first, second or both producers. Useful to perform Left-Joins, Right-Joins and Inner-Joins on the fly using Haskell Pipes.")
    (license license:bsd-3)))

haskell-9.0-pipes-ordered-zip

(define-public haskell-9.0-poly-arity
  (package
    (name "haskell-9.0-poly-arity")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/poly-arity/poly-arity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0afxrwq5is4l954kmlqm76g0zpy4jw6vvx2275q8xph4zr2ac46b"))))
    (properties `((upstream-name . "poly-arity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)))
    (home-page "https://hackage.haskell.org/package/poly-arity")
    (synopsis "Tools for working with functions of undetermined arity")
    (description "")
    (license license:bsd-3)))

haskell-9.0-poly-arity

(define-public haskell-9.0-polysemy-kvstore
  (package
    (name "haskell-9.0-polysemy-kvstore")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-kvstore/polysemy-kvstore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6b1iwfngsilf1inxpg0y159k16ybdlqkdkdkiyjys7wvdgv24d"))))
    (properties `((upstream-name . "polysemy-kvstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)))
    (home-page "https://hackage.haskell.org/package/polysemy-kvstore")
    (synopsis "KVStore effect for polysemy.")
    (description "KVStore effect for polysemy.")
    (license license:expat)))

haskell-9.0-polysemy-kvstore

(define-public haskell-9.0-polysemy-plugin
  (package
    (name "haskell-9.0-polysemy-plugin")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-plugin/polysemy-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sw0wzasclj4ibzc4g701p1xvs8vzliaflsgyyj9digajjg1m9n7"))))
    (properties `((upstream-name . "polysemy-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-corelint")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-should-not-typecheck)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Disambiguate obvious uses of effects.")
    (description
     "Please see the README on GitHub at <https://github.com/polysemy-research/polysemy/tree/master/polysemy-plugin#readme>")
    (license license:bsd-3)))

haskell-9.0-polysemy-plugin

(define-public haskell-9.0-polysemy-several
  (package
    (name "haskell-9.0-polysemy-several")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-several/polysemy-several-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hbnvvg33nn2lhlpa1x1dzkmc9fcnfkb0fia0aa3pi5l96fsa0nw"))))
    (properties `((upstream-name . "polysemy-several") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)))
    (home-page "https://hackage.haskell.org/package/polysemy-several")
    (synopsis "Run several effects at once, taken from the polysemy-zoo.")
    (description "Run several effects at once, taken from the polysemy-zoo.")
    (license license:expat)))

haskell-9.0-polysemy-several

(define-public haskell-9.0-polysemy-socket
  (package
    (name "haskell-9.0-polysemy-socket")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-socket/polysemy-socket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0465sax3927cig1plbdyhifx1xipai68w01085mvslvd6am9mz6y"))))
    (properties `((upstream-name . "polysemy-socket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05wxllpppxmzagf3zp80jm3vzdika9jcrd5bjvb7pasvxsg1rln4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-polysemy)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-socket)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-socket")
    (synopsis "Socket effect for polysemy.")
    (description "")
    (license license:expat)))

haskell-9.0-polysemy-socket

(define-public haskell-9.0-process-extras
  (package
    (name "haskell-9.0-process-extras")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/process-extras/process-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klqgr37f1z2z6i0a9b0giapmq0p35l5k9kz1p7f0k1597w7agi9"))))
    (properties `((upstream-name . "process-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-ListLike)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)))
    (home-page "https://github.com/seereason/process-extras")
    (synopsis "Process extras")
    (description "Extends <http://hackage.haskell.org/package/process>.
Read process input and output as ByteStrings or
Text, or write your own ProcessOutput instance.
Lazy process input and output.  ProcessMaker class
for more flexibility in the process creation API.")
    (license license:expat)))

haskell-9.0-process-extras

(define-public haskell-9.0-profiterole
  (package
    (name "haskell-9.0-profiterole")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profiterole/profiterole-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wfj8rmcablya94shhrnx2dbk3pfbhvdv6mk6946fyjfy32di266"))))
    (properties `((upstream-name . "profiterole") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-ghc-prof)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/profiterole#readme")
    (synopsis "Restructure GHC profile reports")
    (description
     "Given a GHC profile output, this tool generates alternative views on the data,
which are typically more concise and may reveal new insights.")
    (license license:bsd-3)))

haskell-9.0-profiterole

(define-public haskell-9.0-proto-lens-protobuf-types
  (package
    (name "haskell-9.0-proto-lens-protobuf-types")
    (version "0.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protobuf-types/proto-lens-protobuf-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fd141fb69wgc2alx4yyhyxdp9s86i3rxl9aah816b31bskbcjaa"))))
    (properties `((upstream-name . "proto-lens-protobuf-types")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-proto-lens)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-proto-lens-runtime)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-proto-lens-setup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Basic protocol buffer message types.")
    (description
     "This package provides bindings standard protocol message types, for use with the proto-lens library.")
    (license license:bsd-3)))

haskell-9.0-proto-lens-protobuf-types

(define-public haskell-9.0-pthread
  (package
    (name "haskell-9.0-pthread")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pthread/pthread-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03whwpcf9ycdy6bhnw6k0xcwrlf5q92lcfzvh45j3wkksccf8vm6"))))
    (properties `((upstream-name . "pthread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/tweag/pthread")
    (synopsis "Bindings for the pthread library.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-pthread

(define-public haskell-9.0-range
  (package
    (name "haskell-9.0-range")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-range

(define-public haskell-9.0-record-dot-preprocessor
  (package
    (name "haskell-9.0-record-dot-preprocessor")
    (version "0.2.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-dot-preprocessor/record-dot-preprocessor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0avdisbl1faqpny1r6ljm5gb8xz1yghmls7pgs2nshjkxd94i761"))))
    (properties `((upstream-name . "record-dot-preprocessor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/record-dot-preprocessor#readme")
    (synopsis "Preprocessor to allow record.field syntax")
    (description
     "In almost every programming language @@a.b@@ will get the @@b@@ field from the @@a@@ data type, and many different data types can have a @@b@@ field.
The reason this feature is ubiquitous is because it's /useful/.
The @@record-dot-preprocessor@@ brings this feature to Haskell - see the README for full details.")
    (license license:bsd-3)))

haskell-9.0-record-dot-preprocessor

(define-public haskell-9.0-recursion-schemes
  (package
    (name "haskell-9.0-recursion-schemes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-data-fix)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/recursion-schemes/")
    (synopsis
     "Representing common recursion patterns as higher-order functions")
    (description
     "Many recursive functions share the same structure, e.g. pattern-match on the input and, depending on the data constructor, either recur on a smaller input or terminate the recursion with the base case. Another one: start with a seed value, use it to produce the first element of an infinite list, and recur on a modified seed in order to produce the rest of the list. Such a structure is called a recursion scheme. Using higher-order functions to implement those recursion schemes makes your code clearer, faster, and safer. See README for details.")
    (license license:bsd-2)))

haskell-9.0-recursion-schemes

(define-public haskell-9.0-reinterpret-cast
  (package
    (name "haskell-9.0-reinterpret-cast")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reinterpret-cast/reinterpret-cast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r2k2fyfm5lknfdfs282l274bgaxf4j4dikk4hpwchjbj0n64m2n"))))
    (properties `((upstream-name . "reinterpret-cast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-loop)))
    (home-page "https://github.com/nh2/reinterpret-cast")
    (synopsis
     "Memory reinterpretation casts for Float/Double and Word32/Word64")
    (description
     "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.

The implementations in the @@.Internal@@ package are different ways to tackle
the problem; the @@array@@ method (current default) is about 5 times faster
than the @@FFI@@ method.")
    (license license:expat)))

haskell-9.0-reinterpret-cast

(define-public haskell-9.0-replace-attoparsec
  (package
    (name "haskell-9.0-replace-attoparsec")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jamesdbrock/replace-attoparsec")
    (synopsis
     "Find, replace, and split string patterns with Attoparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Attoparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-9.0-replace-attoparsec

(define-public haskell-9.0-require
  (package
    (name "haskell-9.0-require")
    (version "0.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/require/require-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17nfpzwhwxnl6jmqnh2rf52mki3mh44y24w7masscbnadxnfp98a"))))
    (properties `((upstream-name . "require") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-optparse-generic)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-relude)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-tasty-hspec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/theam/require#readme")
    (synopsis "Scrap your qualified import clutter")
    (description "See <https://theam.github.io/require>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-require

(define-public haskell-9.0-resistor-cube
  (package
    (name "haskell-9.0-resistor-cube")
    (version "0.0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resistor-cube/resistor-cube-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rwqbvjrvii7c47dvdp4kcfgh62v5a846wklx9z6iz555dhyk2y9"))))
    (properties `((upstream-name . "resistor-cube") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lapack)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/resistor-cube")
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

haskell-9.0-resistor-cube

(define-public haskell-9.0-rocksdb-haskell
  (package
    (name "haskell-9.0-rocksdb-haskell")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-haskell/rocksdb-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zsdxnmi2nyg54ic7xszdw7pz4c8ja18nmcaawhjwg2h7y9pqh5q"))))
    (properties `((upstream-name . "rocksdb-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "http://github.com/serokell/rocksdb-haskell")
    (synopsis "Haskell bindings to RocksDB")
    (description
     "From <http://rocksdb.org>:

RocksDB is an embeddable persistent key-value store for fast storage. RocksDB can also be the foundation for a client-server database but our current focus is on embedded workloads.

RocksDB builds on LevelDB to be scalable to run on servers with many CPU cores, to efficiently use fast storage, to support IO-bound, in-memory and write-once workloads, and to be flexible to allow for innovation.")
    (license license:bsd-3)))

haskell-9.0-rocksdb-haskell

(define-public haskell-9.0-rpm-nvr
  (package
    (name "haskell-9.0-rpm-nvr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rpm-nvr/rpm-nvr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g4fpay6rry9mnvy6mk793my1fkvpdxx40b5hn6gjr0vr1mvg2yp"))))
    (properties `((upstream-name . "rpm-nvr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/rpm-nvr")
    (synopsis "RPM package name-version-release data types")
    (description
     "The library provides types related to RPM package
name-version-releases. There are modules for reading and showing:

* NV (name-version)

* NVR (name-version-release)

* NVRA (name-version-release.arch)

* VerRel (version-release)

* VerCmp for comparing RPM versions or releases
(used to order VerRel).")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-rpm-nvr

(define-public haskell-9.0-s3-signer
  (package
    (name "haskell-9.0-s3-signer")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cryptohash)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
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

haskell-9.0-s3-signer

(define-public haskell-9.0-safe-exceptions-checked
  (package
    (name "haskell-9.0-safe-exceptions-checked")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-exceptions-checked/safe-exceptions-checked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gyaq2pf87dqn0l6n3mi0qamf99y3zj5xxh513c0iqwdh8mma1yq"))))
    (properties `((upstream-name . "safe-exceptions-checked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "004id0k46j545zvkldfcv5qjgxzl35brm9h6fq72y43b9hl2y55f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)))
    (home-page
     "https://github.com/mitchellwrosen/safe-exceptions-checked#readme")
    (synopsis "Safe, checked exceptions")
    (description
     "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.")
    (license license:bsd-3)))

haskell-9.0-safe-exceptions-checked

(define-public haskell-9.0-sampling
  (package
    (name "haskell-9.0-sampling")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-sampling

(define-public haskell-9.0-secp256k1-haskell
  (package
    (name "haskell-9.0-secp256k1-haskell")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/secp256k1-haskell/secp256k1-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0abxwmls4rvsnck7p5gpajmha2vc9fbcrr2q1alkpw8acmgfhr76"))))
    (properties `((upstream-name . "secp256k1-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base16)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages crypto) libsecp256k1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskoin/secp256k1-haskell#readme")
    (synopsis "Bindings for secp256k1")
    (description "Sign and verify signatures using the secp256k1 library.")
    (license license:expat)))

haskell-9.0-secp256k1-haskell

(define-public haskell-9.0-semialign-optics
  (package
    (name "haskell-9.0-semialign-optics")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-optics/semialign-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04vh689mmnb5q77v6ifhg7xf7m2qh5x4i4804rm4biw78130xqr1"))))
    (properties `((upstream-name . "semialign-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("2" "107qx6qxqyl3lbg59by9jbys39fc5mdbgph8iwxxklk3xr5v5nj1")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-semialign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package is deprecated.
It simply re-exports [semialign](https://hackage.haskell.org/package/semialign)
(and adds a @@optics-core@@ constraint).")
    (license license:bsd-3)))

haskell-9.0-semialign-optics

(define-public haskell-9.0-semirings
  (package
    (name "haskell-9.0-semirings")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semirings/semirings-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q535bvjl7395sqkx6zlw48y4fzr7irp44pcp7w9irpn4cncdcr"))))
    (properties `((upstream-name . "semirings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-funordered-containers")
       #:cabal-revision
       ("1" "1c06yhfa053sv3rfz0d72a33l5qb0xmj1b3hy2z7pzxrcay6g1yc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/chessai/semirings")
    (synopsis "two monoids as one, in holy haskimony")
    (description
     "Haskellers are usually familiar with monoids and semigroups. A monoid has an appending operation `<>` (or `mappend`),
and an identity element, `mempty`. A semigroup has an appending `<>` operation, but does not require a `mempty` element.

A Semiring has two appending operations, `plus` and `times`, and two respective identity elements, `zero` and `one`.

More formally, a Semiring R is a set equipped with two binary relations `+` and `*`, such that:

(R,+) is a commutative monoid with identity element 0,

(R,*) is a monoid with identity element 1,

(*) left and right distributes over addition, and

multiplication by '0' annihilates R.")
    (license license:bsd-3)))

haskell-9.0-semirings

(define-public haskell-9.0-simple-cmd
  (package
    (name "haskell-9.0-simple-cmd")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd/simple-cmd-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pjkcww6s45s6w757cyxniis2w4ndg7vgz6gj3c1iwfh10ajk0q4"))))
    (properties `((upstream-name . "simple-cmd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/simple-cmd")
    (synopsis "Simple String-based process commands")
    (description
     "Simple wrappers over System.Process
(readProcess, readProcessWithExitCode, rawSystem, and createProcess).
The idea is to provide some common idioms for calling out to commands
from programs.  For more advanced shell-scripting or streaming
use turtle, shelly, shake, etc.")
    (license license:bsd-3)))

haskell-9.0-simple-cmd

(define-public haskell-9.0-simple-log
  (package
    (name "haskell-9.0-simple-log")
    (version "0.9.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-log/simple-log-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1038asbw9yi1wz3di0ggx62nazljh9m07dvf3lmjrvj1k8i7842w"))))
    (properties `((upstream-name . "simple-log") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-SafeSemaphore)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hformat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-microlens-platform)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/mvoidex/simple-log")
    (synopsis "Simple log for Haskell")
    (description "Log library for Haskell")
    (license license:bsd-3)))

haskell-9.0-simple-log

(define-public haskell-9.0-simple-media-timestamp-formatting
  (package
    (name "haskell-9.0-simple-media-timestamp-formatting")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-media-timestamp-formatting/simple-media-timestamp-formatting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fkjplpkv1jxcadhc596rv7jzbgn2f1xnmwdfa68wls3hl0h7s70"))))
    (properties `((upstream-name . "simple-media-timestamp-formatting")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-formatting)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-media-timestamp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page
     "https://hackage.haskell.org/package/simple-media-timestamp-formatting")
    (synopsis "Formatting for simple-media-timestamp")
    (description
     "Please see the README on GitHub at <https://github.com/githubuser/simple-media-timestamp-formatting#readme>")
    (license license:expat)))

haskell-9.0-simple-media-timestamp-formatting

(define-public haskell-9.0-some-dict-of
  (package
    (name "haskell-9.0-some-dict-of")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/some-dict-of/some-dict-of-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yimraj4r8h1vqsy4pvmfdl9asf2flc1mcfj1jgyh4am4pz0d8p7"))))
    (properties `((upstream-name . "some-dict-of") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)))
    (home-page "https://github.com/parsonsmatt/some-dict-of#readme")
    (synopsis "Carry evidence of constraints around")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/some-dict-of#readme>")
    (license license:bsd-3)))

haskell-9.0-some-dict-of

(define-public haskell-9.0-sparse-linear-algebra
  (package
    (name "haskell-9.0-sparse-linear-algebra")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sparse-linear-algebra/sparse-linear-algebra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfwydr0pzph932h7jvnmp1d8qqrhxsq7rbb6cjbmga55s5pfqn7"))))
    (properties `((upstream-name . "sparse-linear-algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-matrix-market-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (home-page "https://github.com/ocramz/sparse-linear-algebra")
    (synopsis "Numerical computing in native Haskell")
    (description
     "/Overview/

The @@sparse-linear-algebra@@ library provides iterative linear solvers, matrix decompositions, eigenvalue algorithms and related utilities. The user interface is provided by the top-level module \"Numeric.LinearAlgebra.Sparse\":

@@
import           Numeric.LinearAlgebra.Sparse
@@

Please refer to the README file for usage examples.
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-sparse-linear-algebra

(define-public haskell-9.0-stateWriter
  (package
    (name "haskell-9.0-stateWriter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stateWriter/stateWriter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8x758ywgz3c6fhyw1ajaqnq98l2ra39cj4yl2873z89q2cxdlp"))))
    (properties `((upstream-name . "stateWriter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/stateWriter")
    (synopsis "A faster variant of the RWS monad transformers.")
    (description
     "This is a version of the RWS monad transformers that should be much faster than what's found in transformers. The writer in the strict version does not leak memory.")
    (license license:bsd-3)))

haskell-9.0-stateWriter

(define-public haskell-9.0-step-function
  (package
    (name "haskell-9.0-step-function")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/step-function/step-function-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mg7zqqs32zdh1x1738kk0yydyksbhx3y3x8n31f7byk5fvzqq6j"))))
    (properties `((upstream-name . "step-function") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0gailvq05bd7ycmhrqr99p653s5nhfhp4ppj0zg7qsvygwcqg2jf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)))
    (home-page "https://github.com/jonpetterbergman/step-function")
    (synopsis "Staircase functions or piecewise constant functions")
    (description
     "Step functions, staircase functions or piecewise constant functions.
Implemented as a default value and a series of transitions.
Supports merging two step functions using a supplied merging function.
")
    (license license:bsd-3)))

haskell-9.0-step-function

(define-public haskell-9.0-streaming-bytestring
  (package
    (name "haskell-9.0-streaming-bytestring")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-bytestring/streaming-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iz4h5a1fd9bj2rkpwh5vk37j71frwqlbl2igfyxn4g7irpxipxh"))))
    (properties `((upstream-name . "streaming-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming-bytestring")
    (synopsis "Fast, effectful byte streams.")
    (description
     "This library enables fast and safe streaming of byte data, in either @@Word8@@ or
@@Char@@ form. It is a core addition to the <https://github.com/haskell-streaming streaming ecosystem>
and avoids the usual pitfalls of combinbing lazy @@ByteString@@s with lazy @@IO@@.

We follow the philosophy shared by @@streaming@@ that \"the best API is the one
you already know\". Thus this library mirrors the API of the @@bytestring@@
library as closely as possible.

See the module documentation and the README for more information.")
    (license license:bsd-3)))

haskell-9.0-streaming-bytestring

(define-public haskell-9.0-streamly
  (package
    (name "haskell-9.0-streamly")
    (version "0.8.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streamly/streamly-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13m415pcyyzipm5nsf9l8lcan3dn2ck666rq014y46zd66l5ahb9"))))
    (properties `((upstream-name . "streamly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fusion-plugin" "-f-inspection" "-f-debug" "-f-dev" "-f-has-llvm" "-f-no-fusion" "-f-streamk" "-f-use-c-malloc" "-fopt" "-f-limit-build-mem")
       #:cabal-revision
       ("1" "0y9pq53jd2wf7xb5i51pa6vm728sza405dx37j8rqnqxxbm5sq7y")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-heaps)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-lockfree-queue)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-unicode-data)))
    (home-page "https://streamly.composewell.com")
    (synopsis "Dataflow programming and declarative concurrency")
    (description
     "Browse the documentation at https://streamly.composewell.com.

Streamly is a streaming framework to build reliable and scalable
software systems from modular building blocks using dataflow
programming and declarative concurrency.  Stream fusion optimizations
in streamly result in high-performance, modular combinatorial
programming.

Performance with simplicity:

* Performance on par with C (<https://github.com/composewell/streaming-benchmarks Benchmarks>)
* API close to standard Haskell lists (<https://github.com/composewell/streamly-examples Examples>)
* Declarative concurrency with automatic scaling
* Filesystem, fsnotify, network, and Unicode support included
* More functionality provided via many ecosystem packages

Unified and powerful abstractions:

* Unifies unfolds, arrays, folds, and parsers with streaming
* Unifies @@Data.List@@, @@list-t@@, and @@logict@@ with streaming
* Unifies concurrency with standard streaming abstractions
* Provides time-domain combinators for reactive programming
* Interworks with bytestring and streaming libraries")
    (license license:bsd-3)))

haskell-9.0-streamly

(define-public haskell-9.0-synthesizer-alsa
  (package
    (name "haskell-9.0-synthesizer-alsa")
    (version "0.5.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/synthesizer-alsa/synthesizer-alsa-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jrsl9lbhsyg4cs32c9hq1jflvw9jdgpd9allv89ypw8yw9mmh45"))))
    (properties `((upstream-name . "synthesizer-alsa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-optimizeadvanced" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-alsa-core)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-alsa-pcm)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-alsa-seq)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-event-list)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-midi)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-midi-alsa)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-sox)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-synthesizer-core)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-synthesizer-dimensional)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-synthesizer-midi)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Control synthesizer effects via ALSA/MIDI")
    (description
     "This package allows to read MIDI events
and to convert them to control signals
that can be used for audio effects.
As demonstration there is a keyboard controlled music synthesizer.")
    (license license:gpl3)))

haskell-9.0-synthesizer-alsa

(define-public haskell-9.0-tasty-ant-xml
  (package
    (name "haskell-9.0-tasty-ant-xml")
    (version "1.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-ant-xml/tasty-ant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h9mllhw9cd0rn34xhj8grwmbny7z7hpd8qmp9lfcdj0s4qx9vx8"))))
    (properties `((upstream-name . "tasty-ant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (home-page "http://github.com/ocharles/tasty-ant-xml")
    (synopsis "Render tasty output to XML for Jenkins")
    (description
     "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.")
    (license license:bsd-3)))

haskell-9.0-tasty-ant-xml

(define-public haskell-9.0-tasty-golden
  (package
    (name "haskell-9.0-tasty-golden")
    (version "2.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-golden/tasty-golden-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03klnxn9rcv0l7fl4w8q6s59fzl1328j1wzwi1za4gb0l90vadwb"))))
    (properties `((upstream-name . "tasty-golden") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)))
    (home-page "https://github.com/UnkindPartition/tasty-golden")
    (synopsis "Golden tests support for tasty")
    (description
     "This package provides support for «golden testing».
A golden test is an IO action that writes its result to a file.
To pass the test, this output file should be identical to the corresponding
«golden» file, which contains the correct result for the test.
To get started with golden testing and this library, see
<https://ro-che.info/articles/2017-12-04-golden-tests Introduction to golden testing>.")
    (license license:expat)))

haskell-9.0-tasty-golden

(define-public haskell-9.0-tasty-hslua
  (package
    (name "haskell-9.0-tasty-hslua")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hslua/tasty-hslua-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibdxwaclghcgcyf9zx4b1dnp4b708ydwli4clmb0a0mp1lwdp98"))))
    (properties `((upstream-name . "tasty-hslua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Tasty helpers to test HsLua.")
    (description "Various tasty helpers and utilities to test HsLua
oparations. Built on top of tasty-hunit.")
    (license license:expat)))

haskell-9.0-tasty-hslua

(define-public haskell-9.0-tasty-html
  (package
    (name "haskell-9.0-tasty-html")
    (version "0.4.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-html/tasty-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zf14am7rl0rdh3mschkbsg8h02cv7y8yglxpc9cs2wj14ymhyvv"))))
    (properties `((upstream-name . "tasty-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/feuerbach/tasty-html")
    (synopsis "Render tasty output to HTML")
    (description "A tasty ingredient to output test results in HTML5.")
    (license license:expat)))

haskell-9.0-tasty-html

(define-public haskell-9.0-tdigest
  (package
    (name "haskell-9.0-tdigest")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0a39vwf37hkh06rn79blr3bw7ij05pgpxrkc9cldgdd5p4gvn1qn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-reducers)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/haskell-tdigest#readme")
    (synopsis "On-line accumulation of rank-based statistics")
    (description
     "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.

See original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl
for more details <https://github.com/tdunning/t-digest/blob/07b8f2ca2be8d0a9f04df2feadad5ddc1bb73c88/docs/t-digest-paper/histo.pdf>.")
    (license license:bsd-3)))

haskell-9.0-tdigest

(define-public haskell-9.0-temporary-resourcet
  (package
    (name "haskell-9.0-temporary-resourcet")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/temporary-resourcet/temporary-resourcet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wgfra7lkb5abnhk295l3vfcna79b8m309wp1cxgl3v96il6yh70"))))
    (properties `((upstream-name . "temporary-resourcet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (home-page "http://www.github.com/ttuegel/temporary-resourcet")
    (synopsis
     "Portable temporary files and directories with automatic deletion")
    (description
     "The functions for creating temporary files and directories in the base
library are quite limited. The @@unixutils@@ package contains some good ones,
but they aren't portable to Windows.

This library repackages the Cabal implementations of its own temporary file
and folder functions so that you can use them without linking against Cabal
or depending on it being installed.

This library provides the same functionality as the @@temporary@@ package, but
uses @@resourcet@@ to provide automatic deletion without nesting @@withTempFile@@.")
    (license license:bsd-3)))

haskell-9.0-temporary-resourcet

(define-public haskell-9.0-text-show
  (package
    (name "haskell-9.0-text-show")
    (version "3.9.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show/text-show-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zc47qh38jmg19fdki9isjcq4v115w2q61dnmxkypahhgiaqgkb3"))))
    (properties `((upstream-name . "text-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes" "-finteger-gmp")
       #:cabal-revision
       ("1" "0dm0ziv02wcwlgzp58kfa4i05xbq9v82ay6kjnzrf0n3z3pdpxbm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-deriving-compat)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/RyanGlScott/text-show")
    (synopsis "Efficient conversion of values into Text")
    (description
     "@@text-show@@ offers a replacement for the @@Show@@ typeclass intended
for use with @@Text@@ instead of @@String@@s. This package was created
in the spirit of
@@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@@.

At the moment, @@text-show@@ provides instances for most data
types in the @@<http://hackage.haskell.org/package/array array>@@,
@@<http://hackage.haskell.org/package/base base>@@,
@@<http://hackage.haskell.org/package/bytestring bytestring>@@, and
@@<http://hackage.haskell.org/package/text text>@@ packages.
Therefore, much of the source code for @@text-show@@ consists of
borrowed code from those packages in order to ensure that the
behaviors of @@Show@@ and @@TextShow@@ coincide.

For most uses, simply importing \"TextShow\"
will suffice:

@@
module Main where

import TextShow

main :: IO ()
main = printT (Just \\\"Hello, World!\\\")
@@

See also the
<https://github.com/RyanGlScott/text-show/wiki/Naming-conventions naming conventions>
page.

Support for automatically deriving @@TextShow@@ instances can be found
in the \"TextShow.TH\" and \"TextShow.Generic\" modules.")
    (license license:bsd-3)))

haskell-9.0-text-show

(define-public haskell-9.0-th-orphans
  (package
    (name "haskell-9.0-th-orphans")
    (version "0.13.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-orphans/th-orphans-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z07qcbbsj2b3j9p1qr4jvlpa7qgjfjvymkjd6vbizka1wd2mnwx"))))
    (properties `((upstream-name . "th-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-th-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-th-reify-many)))
    (home-page "https://hackage.haskell.org/package/th-orphans")
    (synopsis "Orphan instances for TH datatypes")
    (description "Orphan instances for TH datatypes.  In particular, instances
for Ord and Lift, as well as a few missing Show / Eq.  These
instances used to live in haskell-src-meta, and that's where
the version number started.")
    (license license:bsd-3)))

haskell-9.0-th-orphans

(define-public haskell-9.0-time-parsers
  (package
    (name "haskell-9.0-time-parsers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/time-parsers#readme")
    (synopsis "Parsers for types in `time`.")
    (description
     "Parsers for types in `time` using 'parser' library.

Originally forked from aeson parsers.

See also <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.")
    (license license:bsd-3)))

haskell-9.0-time-parsers

(define-public haskell-9.0-timerep
  (package
    (name "haskell-9.0-timerep")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
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

haskell-9.0-timerep

(define-public haskell-9.0-turtle
  (package
    (name "haskell-9.0-turtle")
    (version "1.5.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/turtle/turtle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hh2rbwk3m4iklk67f1l1a8shsng9qzs9132j6lpag7cgqkrmqdk"))))
    (properties `((upstream-name . "turtle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hostname)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-managed)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-optional-args)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-system-fileio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-system-filepath)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-9.0-turtle

(define-public haskell-9.0-type-of-html-static
  (package
    (name "haskell-9.0-type-of-html-static")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-of-html-static/type-of-html-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00329zkxlbsjlwnw2pz2w6ahiam5c1k9j9fv2608wjfmxr8xkcr9"))))
    (properties `((upstream-name . "type-of-html-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-type-of-html)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/knupfer/type-of-html-static")
    (synopsis "Optimize static parts of type-of-html.")
    (description
     "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.
It converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.")
    (license license:bsd-3)))

haskell-9.0-type-of-html-static

(define-public haskell-9.0-unicode-transforms
  (package
    (name "haskell-9.0-unicode-transforms")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-transforms/unicode-transforms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z29jvli2rqkynfxni1gibl81458j7h8lrb8fg6lpnj8svhy2y1j"))))
    (properties `((upstream-name . "unicode-transforms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-bench-show" "-f-has-icu" "-f-has-llvm" "-f-use-gauge")
       #:cabal-revision
       ("2" "1imm3svpz2shilj2kmmmcyy5yd4c1mpmz5v1gvjrr98hrab2i9x7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-unicode-data)))
    (home-page "http://github.com/composewell/unicode-transforms")
    (synopsis "Unicode normalization")
    (description
     "Fast Unicode 14.0.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).")
    (license license:bsd-3)))

haskell-9.0-unicode-transforms

(define-public haskell-9.0-unit-constraint
  (package
    (name "haskell-9.0-unit-constraint")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unit-constraint/unit-constraint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nayhjyprph6bg2hhrvd91nmrzz1bixlfib4cxsxpj8n014fhva4"))))
    (properties `((upstream-name . "unit-constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)))
    (home-page "https://hackage.haskell.org/package/unit-constraint")
    (synopsis "Extremely simple typeclass")
    (description "")
    (license license:bsd-3)))

haskell-9.0-unit-constraint

(define-public haskell-9.0-universum
  (package
    (name "haskell-9.0-universum")
    (version "1.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universum/universum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dhdj72anj3r50idzn45l63zdwkckmbvll65rkwbsn4jj7pd033d"))))
    (properties `((upstream-name . "universum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/serokell/universum")
    (synopsis "Custom prelude used in Serokell")
    (description "See README.md file for more details.")
    (license license:expat)))

haskell-9.0-universum

(define-public haskell-9.0-unliftio
  (package
    (name "haskell-9.0-unliftio")
    (version "0.2.23.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio/unliftio-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zg4ddi4z85550abw9ijycbbjg8ddig7r0vcma8ik03dxzga71id"))))
    (properties `((upstream-name . "unliftio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/fpco/unliftio/tree/master/unliftio#readme")
    (synopsis
     "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)")
    (description
     "Please see the documentation and README at <https://www.stackage.org/package/unliftio>")
    (license license:expat)))

haskell-9.0-unliftio

(define-public haskell-9.0-validity-bytestring
  (package
    (name "haskell-9.0-validity-bytestring")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-bytestring/validity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ck7pn8c8srwdwpcx6x4ihixff07kigq8q9sjkc3zzyf54n93f3x"))))
    (properties `((upstream-name . "validity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for bytestring")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-validity-bytestring

(define-public haskell-9.0-validity-containers
  (package
    (name "haskell-9.0-validity-containers")
    (version "0.5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-containers/validity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qw5p60dr54d2wh49y6x33hbks4d74m8pr5zygblzk0y70warqld"))))
    (properties `((upstream-name . "validity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for containers")
    (description "")
    (license license:expat)))

haskell-9.0-validity-containers

(define-public haskell-9.0-validity-primitive
  (package
    (name "haskell-9.0-validity-primitive")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-primitive/validity-primitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r9wy91qr2c8lf6llv9qyirb1vjkq4nb41zqph5ip9gjjj7fzk9y"))))
    (properties `((upstream-name . "validity-primitive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for primitive")
    (description "")
    (license license:expat)))

haskell-9.0-validity-primitive

(define-public haskell-9.0-validity-scientific
  (package
    (name "haskell-9.0-validity-scientific")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-scientific/validity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vqqwlhamykz1vb5gc6krkcq3ixdmkld17c5vsxd0drnjcsllfkp"))))
    (properties `((upstream-name . "validity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for scientific")
    (description "")
    (license license:expat)))

haskell-9.0-validity-scientific

(define-public haskell-9.0-validity-text
  (package
    (name "haskell-9.0-validity-text")
    (version "0.3.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-text/validity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0igxjd53aqlhhnjilbyjsxs4hjc8b21mpi504kc8c60q0ysq7vks"))))
    (properties `((upstream-name . "validity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for text")
    (description "")
    (license license:expat)))

haskell-9.0-validity-text

(define-public haskell-9.0-validity-time
  (package
    (name "haskell-9.0-validity-time")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-time/validity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ik3syh9hd7jcfydp7fj8rghxl6zjs6lcm1f0xadm0czw6gb82k1"))))
    (properties `((upstream-name . "validity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for time")
    (description "")
    (license license:expat)))

haskell-9.0-validity-time

(define-public haskell-9.0-validity-unordered-containers
  (package
    (name "haskell-9.0-validity-unordered-containers")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-unordered-containers/validity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ra6d7a711bcl6fndj3xwk3g34nq3bpqdcb8zrpjlv9p4h6n3gj"))))
    (properties `((upstream-name . "validity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for unordered-containers")
    (description "")
    (license license:expat)))

haskell-9.0-validity-unordered-containers

(define-public haskell-9.0-validity-uuid
  (package
    (name "haskell-9.0-validity-uuid")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-uuid/validity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4z9q8m07ssrg6a4lj7501kjnbp9hazg3gyfwrbdbrw7p7jjd9l"))))
    (properties `((upstream-name . "validity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for uuid")
    (description "")
    (license license:expat)))

haskell-9.0-validity-uuid

(define-public haskell-9.0-validity-vector
  (package
    (name "haskell-9.0-validity-vector")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-vector/validity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jbfd3h9k0b4ifaaqqar54r86hm1jiixyxrgs2ln7ni00b0ncv1y"))))
    (properties `((upstream-name . "validity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for vector")
    (description "")
    (license license:expat)))

haskell-9.0-validity-vector

(define-public haskell-9.0-vformat-time
  (package
    (name "haskell-9.0-vformat-time")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vformat-time/vformat-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s3b9ryyzmvy1fpxdnxdgrpi5faz67r8immm30pv6njy741k1l36"))))
    (properties `((upstream-name . "vformat-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0i11kkr8xwrffqz6jb68xfgvsbdkfxzxmw9k1bjc42x9hidgxv47")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-vformat)))
    (home-page "https://github.com/versioncloud/vformat-time#readme")
    (synopsis "Extend vformat to time datatypes")
    (description "Please see http://hackage.haskell.org/package/vformat-time")
    (license license:bsd-3)))

haskell-9.0-vformat-time

(define-public haskell-9.0-vty
  (package
    (name "haskell-9.0-vty")
    (version "5.33")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vty/vty-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0qsx4lwlkp6mwyr7rm1r9dg5ic1lc1awqgyag0nj1qgj2gnv6nc9"))))
    (properties `((upstream-name . "vty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1in66nd2xkb6mxxzazny900pz1xj83iqsql42c0rwk72chnnb8cd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-string-qq)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-vty

(define-public haskell-9.0-wai
  (package
    (name "haskell-9.0-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Web Application Interface.")
    (description
     "Provides a common protocol for communication between web applications and web servers.

API docs and the README are available at <http://www.stackage.org/package/wai>.")
    (license license:expat)))

haskell-9.0-wai

(define-public haskell-9.0-web-plugins
  (package
    (name "haskell-9.0-web-plugins")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-plugins/web-plugins-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdd1yvcxaahn7wdqzbc90xinnfm2mspvk1391znb9khp8cd5b9h"))))
    (properties `((upstream-name . "web-plugins") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/clckwrks/web-plugins")
    (synopsis "dynamic plugin system for web applications")
    (description
     "This provides a simple framework for defining plugins for a web application.
It is designed with the requirement that plugins can be loaded into a running
web application with out having to know about the plugin in advance.")
    (license license:bsd-3)))

haskell-9.0-web-plugins

(define-public haskell-9.0-web-routes
  (package
    (name "haskell-9.0-web-routes")
    (version "0.27.14.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes/web-routes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10zpyxigrmp97x7xd9aw8kn925ygjf0jv8hppxmksjf9a6pvyfn1"))))
    (properties `((upstream-name . "web-routes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://www.happstack.com/docs/crashcourse/index.html#web-routes")
    (synopsis "portable, type-safe URL routing")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-9.0-web-routes

(define-public haskell-9.0-webpage
  (package
    (name "haskell-9.0-webpage")
    (version "0.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/webpage/webpage-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nbnpqbknfgw9pyj0phgc9g5srwdzzga3vy58yin25xvkzj2grfr"))))
    (properties `((upstream-name . "webpage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/webpage#readme")
    (synopsis "Organized and simple web page scaffold for blaze and lucid")
    (description
     "Please see the README on Github at <https://github.com/athanclark/webpage#readme>")
    (license license:bsd-3)))

haskell-9.0-webpage

(define-public haskell-9.0-websockets
  (package
    (name "haskell-9.0-websockets")
    (version "0.12.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets/websockets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g3z0n4irf3gvbdf9p97jq05ybdg0gwjy5bj4nfc7ivsvyhaic6k"))))
    (properties `((upstream-name . "websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("1" "1yx97y6jl74vy200y43vjxfyzx338kh10dx8vxkjhr0mfh36wldq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-SHA)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://jaspervdj.be/websockets")
    (synopsis
     "A sensible and clean way to write WebSocket-capable servers in Haskell.")
    (description
     "This library allows you to write WebSocket-capable servers.

An example server:
<https://github.com/jaspervdj/websockets/blob/master/example/server.lhs>

An example client:
<https://github.com/jaspervdj/websockets/blob/master/example/client.hs>

See also:

* The specification of the WebSocket protocol:
<http://www.whatwg.org/specs/web-socket-protocol/>

* The JavaScript API for dealing with WebSockets:
<http://www.w3.org/TR/websockets/>")
    (license license:bsd-3)))

haskell-9.0-websockets

(define-public haskell-9.0-wild-bind-x11
  (package
    (name "haskell-9.0-wild-bind-x11")
    (version "0.2.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wild-bind-x11/wild-bind-x11-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qxzv4xvqqm7xcz17a3h1pgc3g84dp3676vb40yi9dfxdwag3xxs"))))
    (properties `((upstream-name . "wild-bind-x11") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test-interactive")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-fold-debounce)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-wild-bind)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/debug-ito/wild-bind")
    (synopsis "X11-specific implementation for WildBind")
    (description
     "X11-specific implementation for WildBind. See <https://github.com/debug-ito/wild-bind>")
    (license license:bsd-3)))

haskell-9.0-wild-bind-x11

(define-public haskell-9.0-x509
  (package
    (name "haskell-9.0-x509")
    (version "1.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zk8lll1hmzl5xvrd16dhyz25151y59xhsqp2mm1wgymwl7r5ijr"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-asn1-parse)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-pem)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-9.0-x509

(define-public haskell-9.0-xdg-desktop-entry
  (package
    (name "haskell-9.0-xdg-desktop-entry")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xdg-desktop-entry/xdg-desktop-entry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xlniirgj01v02dp6wx8iw038p4mx2pa3rmwfv3g7k5raa7gzapb"))))
    (properties `((upstream-name . "xdg-desktop-entry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-ConfigFile)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-multimap)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/xdg-desktop-entry")
    (synopsis "Parse files conforming to the xdg desktop entry spec")
    (description "")
    (license license:bsd-3)))

haskell-9.0-xdg-desktop-entry

(define-public haskell-9.0-yarn-lock
  (package
    (name "haskell-9.0-yarn-lock")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yarn-lock/yarn-lock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4zhczp6qgzm3sgmc2j5mjffg1ibfpvkxfwh2dv5bcx9nzv7bxy"))))
    (properties `((upstream-name . "yarn-lock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Profpatsch/yarn2nix#readme")
    (synopsis "Represent and parse yarn.lock files")
    (description
     "Types and parser for the lock file format of the npm successor yarn. All modules should be imported qualified.")
    (license license:expat)))

haskell-9.0-yarn-lock

(define-public haskell-9.0-zenacy-html
  (package
    (name "haskell-9.0-zenacy-html")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zenacy-html/zenacy-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05jy3w7a94ns52w4a1p6xhcph09p2zzqmvncf47db9wwq6xl5ad2"))))
    (properties `((upstream-name . "zenacy-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mlcfp/zenacy-html")
    (synopsis "A standard compliant HTML parsing library")
    (description
     "Zenacy HTML is an HTML parsing and processing library that implements the
WHATWG HTML parsing standard.  The standard is described as a state machine
that this library implements exactly as spelled out including all the error
handling, recovery, and conformance checks that makes it robust in handling
any HTML pulled from the web.  In addition to parsing, the library provides
many processing features to help extract information from web pages or
rewrite them and render the modified results.")
    (license license:expat)))

haskell-9.0-zenacy-html

(define-public haskell-9.0-zenacy-unicode
  (package
    (name "haskell-9.0-zenacy-unicode")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zenacy-unicode/zenacy-unicode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l03zr1j6h1h15rnz6mk731g5ib1h3x59b3aqm30i0kd2h28g0vw"))))
    (properties `((upstream-name . "zenacy-unicode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-word8)))
    (home-page "https://github.com/mlcfp/zenacy-unicode")
    (synopsis "Unicode utilities for Haskell")
    (description
     "Zenacy Unicode includes tools for checking byte order marks (BOM) and
cleaning data to remove invalid bytes.  These tools can help ensure that
data pulled from the web can be parsed and converted to text.")
    (license license:expat)))

haskell-9.0-zenacy-unicode

(define-public haskell-9.0-zipper-extra
  (package
    (name "haskell-9.0-zipper-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-comonad-extras)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/zipper-extra")
    (synopsis "Zipper utils that weren't in Control.Comonad.Store.Zipper")
    (description
     "Adds some utility functions for and reexports Control.Comonad.Store.Zipper")
    (license license:expat)))

haskell-9.0-zipper-extra

