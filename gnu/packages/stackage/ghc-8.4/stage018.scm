;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage018)
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
(define-public haskell-8.4-beam-core
  (package
    (name "haskell-8.4-beam-core")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-core/beam-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "160ga0w0i1l4nbag6jg8wn3a3csid93x6fdd4j4pah2zk7dswc8j"))))
    (properties `((upstream-name . "beam-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "1fvds5arsm0h81fw4rf5fsg5sa9jfqn350amhhc247f0hhjy3csf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-vector-sized)))
    (home-page "http://travis.athougies.net/projects/beam.html")
    (synopsis
     "Type-safe, feature-complete SQL query and manipulation interface for Haskell")
    (description
     "Beam is a Haskell library for type-safe querying and manipulation of SQL databases.
Beam is modular and supports various backends. In order to use beam, you will need to use
@@beam-core@@ along with a specific backend (such as @@beam-postgres@@ or @@beam-sqlite@@) as
well as the corresponding backend.
For more information, see the user manual and tutorial on
<https://tathougies.github.io/beam GitHub pages>.")
    (license license:expat)))

haskell-8.4-beam-core

(define-public haskell-8.4-binary-conduit
  (package
    (name "haskell-8.4-binary-conduit")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-conduit/binary-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17yj8rn6fwzbv0z6lczrddv7mkr8906xg2pf2dlvmnwb97zw7004"))))
    (properties `((upstream-name . "binary-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/qnikst/binary-conduit/")
    (synopsis "data serialization/deserialization conduit library")
    (description
     "The binary-conduit package.
Allow binary serialization using iterative conduit interface.")
    (license license:expat)))

haskell-8.4-binary-conduit

(define-public haskell-8.4-binary-ext
  (package
    (name "haskell-8.4-binary-ext")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-ext/binary-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "026y58an12p6cmpxhs3qrwl6w4q3i6i47svcj5qz5mi6vsdy2n3f"))))
    (properties `((upstream-name . "binary-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/A1-Triard/binary-ext#readme")
    (synopsis
     "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.")
    (description
     "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-binary-ext

(define-public haskell-8.4-bits-extra
  (package
    (name "haskell-8.4-bits-extra")
    (version "0.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bits-extra/bits-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vdgj5zz5q7y4n11bsn4v53x5yi0fckj13vbfyrgb454x6rhhav9"))))
    (properties `((upstream-name . "bits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-8.4-bits-extra

(define-public haskell-8.4-bsb-http-chunked
  (package
    (name "haskell-8.4-bsb-http-chunked")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bsb-http-chunked/bsb-http-chunked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z0f18yc6zlwh29c6175ivfcin325lvi4irpvv0n3cmq7vi0k0ql"))))
    (properties `((upstream-name . "bsb-http-chunked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "15hg352id2f4x0dnvv47bdiz6gv5hp5a2mki9yzmhc7ajpk31mdd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://github.com/sjakobi/bsb-http-chunked")
    (synopsis "Chunked HTTP transfer encoding for bytestring builders")
    (description
     "This library contains functions for encoding [bytestring
builders](http://hackage.haskell.org/package/bytestring/docs/Data-ByteString-Builder.html#t:Builder)
for [chunked HTTP\\/1.1 transfer](https://en.wikipedia.org/wiki/Chunked_transfer_encoding).

This functionality was extracted from
the [blaze-builder](http://hackage.haskell.org/package/blaze-builder)
package.")
    (license license:bsd-3)))

haskell-8.4-bsb-http-chunked

(define-public haskell-8.4-bzlib-conduit
  (package
    (name "haskell-8.4-bzlib-conduit")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bzlib-conduit/bzlib-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fd2hnr782s7qgipazg2yxwia9qqhkvm9bcm90773c3zkxa13n23"))))
    (properties `((upstream-name . "bzlib-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)))
    (home-page "https://github.com/snoyberg/bzlib-conduit#readme")
    (synopsis "Streaming compression/decompression via conduits.")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>")
    (license license:bsd-3)))

haskell-8.4-bzlib-conduit

(define-public haskell-8.4-cassava-conduit
  (package
    (name "haskell-8.4-cassava-conduit")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-conduit/cassava-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xj8hxyijkajgrg6g52lxfbg83d8gp01b2x35z0mqia2k6whlihr"))))
    (properties `((upstream-name . "cassava-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)))
    (home-page "https://github.com/domdere/cassava-conduit")
    (synopsis "Conduit interface for cassava package")
    (description "Conduit interface for cassava package

PRs welcome.")
    (license license:bsd-3)))

haskell-8.4-cassava-conduit

(define-public haskell-8.4-cereal-conduit
  (package
    (name "haskell-8.4-cereal-conduit")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-conduit/cereal-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srr7agvgfw78q5s1npjq5sgynvhjgllpihiv37ylkwqm4c4ap6r"))))
    (properties `((upstream-name . "cereal-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1imyl3g2bni8bc6kajr857xh94fscphksj3286pxfpa8yp9vqqpc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits")
    (description
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.")
    (license license:bsd-3)))

haskell-8.4-cereal-conduit

(define-public haskell-8.4-conduit-extra
  (package
    (name "haskell-8.4-conduit-extra")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-extra/conduit-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bi2b6kdzy5f9glq46jzsk02has95jkxqz0cchpbmnakzhjwjh9c"))))
    (properties `((upstream-name . "conduit-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01dhcb6q9q58c103kkq9h2kwz1202ip99sg5k055x9jyz2vrl9jn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Batteries included conduit: adapters for common libraries.")
    (description
     "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.")
    (license license:expat)))

haskell-8.4-conduit-extra

(define-public haskell-8.4-conduit-iconv
  (package
    (name "haskell-8.4-conduit-iconv")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-iconv/conduit-iconv-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dmcsdx0nz0b9sans2fr8lmrii2n0fsjh41jhwlrlng4h93k0w8w"))))
    (properties `((upstream-name . "conduit-iconv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/sdroege/conduit-iconv")
    (synopsis "Conduit for character encoding conversion.")
    (description "@@conduit-iconv@@ provides a Conduit for character encoding
conversion, based on the iconv library.")
    (license license:bsd-3)))

haskell-8.4-conduit-iconv

(define-public haskell-8.4-conduit-parse
  (package
    (name "haskell-8.4-conduit-parse")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-parse/conduit-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfs61qhbr5gc0ch0mmqcqdm4wvs5pkx2z6rki588fhy1kfdp1dm"))))
    (properties `((upstream-name . "conduit-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("2" "0134k9wi1ladmzd1rmb1gad6ig82pqsyb9d30z301anvb99473kz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)))
    (home-page "https://github.com/k0ral/conduit-parse")
    (synopsis "Parsing framework based on conduit.")
    (description "Please refer to README.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-conduit-parse

(define-public haskell-8.4-csg
  (package
    (name "haskell-8.4-csg")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/csg/csg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "12zwf2xiqiq4snwqhwvk1k3fl1bzlfbcd2vc2hsnv6v61ci6shq9"))))
    (properties `((upstream-name . "csg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-triples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-gloss)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-gloss-raster)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-simple-vec3)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-turtle)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://github.com/dzhus/csg#readme")
    (synopsis "Analytical CSG (Constructive Solid Geometry) library")
    (description "")
    (license license:bsd-3)))

haskell-8.4-csg

(define-public haskell-8.4-fold-debounce-conduit
  (package
    (name "haskell-8.4-fold-debounce-conduit")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fold-debounce-conduit/fold-debounce-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rzgaxqv3q0s848bk3hm0mq14sxa1szpxvi9k19n0hpqlx60rj4p"))))
    (properties `((upstream-name . "fold-debounce-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-fold-debounce)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/debug-ito/fold-debounce-conduit")
    (synopsis
     "Regulate input traffic from conduit Source with Control.FoldDebounce")
    (description
     "Regulate input traffic from conduit Source with Control.FoldDebounce. See \"Data.Conduit.FoldDebounce\"")
    (license license:bsd-3)))

haskell-8.4-fold-debounce-conduit

(define-public haskell-8.4-fsnotify-conduit
  (package
    (name "haskell-8.4-fsnotify-conduit")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify-conduit/fsnotify-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kh1y1p4dw2yhxrl1rrkmpkvm3q5nq12cwl8dfcscrkx3wqhz683"))))
    (properties `((upstream-name . "fsnotify-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/fpco/fsnotify-conduit#readme")
    (synopsis "Get filesystem notifications as a stream of events")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/fsnotify-conduit>")
    (license license:expat)))

haskell-8.4-fsnotify-conduit

(define-public haskell-8.4-ghcid
  (package
    (name "haskell-8.4-ghcid")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghcid/ghcid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06n37dv51i2905v8nwwv1ilm0zlx6zblrkfic1mp491ws2sijdx7"))))
    (properties `((upstream-name . "ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-terminal-size)))
    (home-page "https://github.com/ndmitchell/ghcid#readme")
    (synopsis "GHCi based bare bones IDE")
    (description
     "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @@ghcid --topmost --command=ghci@@, where @@--topmost@@ makes the window on top of all others (Windows only) and @@--command@@ is the command to start GHCi on your project (defaults to @@ghci@@ if you have a @@.ghci@@ file, or else to @@cabal repl@@).")
    (license license:bsd-3)))

haskell-8.4-ghcid

(define-public haskell-8.4-hledger-ui
  (package
    (name "haskell-8.4-hledger-ui")
    (version "1.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h4hhsyajpiydvs1p6f4z1s3kblyfn4lvnwwbar6lj4z5jfizm67"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")
       #:cabal-revision
       ("2" "0igkrj44w3rvadgb7kbi1wwlljyrs4y6awk0mhic4lvnk1slwk6m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-brick)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hledger)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hledger-lib)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-microlens-platform)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-text-zipper)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-vty)))
    (home-page "http://hledger.org")
    (synopsis "Curses-style user interface for the hledger accounting tool")
    (description
     "This is hledger's curses-style interface.
It is simpler and more convenient for browsing data than the command-line interface,
but lighter and faster than hledger-web.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hledger-ui

(define-public haskell-8.4-hmatrix-vector-sized
  (package
    (name "haskell-8.4-hmatrix-vector-sized")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-vector-sized/hmatrix-vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zj31xm0d2d7bzky9qxxs5jb5snjivdjknghpwmf8s1b85zim646"))))
    (properties `((upstream-name . "hmatrix-vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/mstksg/hmatrix-vector-sized#readme")
    (synopsis "Conversions between hmatrix and vector-sized types")
    (description
     "Conversions between statically sized types in hmatrix and vector-sized.

See README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>")
    (license license:bsd-3)))

haskell-8.4-hmatrix-vector-sized

(define-public haskell-8.4-hw-conduit
  (package
    (name "haskell-8.4-hw-conduit")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit/hw-conduit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00fpinpafvrdkmk6gksqd9v6f3lzrqcg79yja0h55gw7qjz5lz84"))))
    (properties `((upstream-name . "hw-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (home-page "http://github.com/haskell-works/hw-conduit#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Conduits for tokenizing streams. Please see README.md")
    (license license:expat)))

haskell-8.4-hw-conduit

(define-public haskell-8.4-hw-fingertree-strict
  (package
    (name "haskell-8.4-hw-fingertree-strict")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree-strict/hw-fingertree-strict-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s0jz6lynxiaz2h8hr78j05vhswrl6vwhmvdra9a46c3yg7vf9qi"))))
    (properties `((upstream-name . "hw-fingertree-strict") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/haskell-works/hw-fingertree-strict#readme")
    (synopsis "Generic strict finger-tree structure")
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

haskell-8.4-hw-fingertree-strict

(define-public haskell-8.4-idris
  (package
    (name "haskell-8.4-idris")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/idris/idris-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fn9h58l592j72njwma1ia48h8h87wi2rjqfxs7j2lfmvgfv18fi"))))
    (properties `((upstream-name . "idris") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-ffi" "-f-gmp" "-frelease" "-f-freestanding" "-f-ci" "-f-execonly")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cheapskate)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-code-page)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-fingertree)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tasty-golden)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-tasty-rerun)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-terminal-size)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.idris-lang.org/")
    (synopsis "Functional Programming Language with Dependent Types")
    (description
     "Idris is a general purpose language with full dependent types.
It is compiled, with eager evaluation.
Dependent types allow types to be predicated on values,
meaning that some aspects of a program's behaviour can be
specified precisely in the type. The language is closely
related to Epigram and Agda. There is a tutorial at
<http://www.idris-lang.org/documentation>.
Features include:

* Full, first class, dependent types with dependent pattern matching

* where clauses, with rule, case expressions,
pattern matching let and lambda bindings

* Interfaces (similar to type classes), monad comprehensions

* do notation, idiom brackets, syntactic conveniences for lists,
tuples, dependent pairs

* Totality checking

* Coinductive types

* Indentation significant syntax, extensible syntax

* Cumulative universes

* Simple foreign function interface (to C)

* Hugs style interactive environment")
    (license license:bsd-3)))

haskell-8.4-idris

(define-public haskell-8.4-lens
  (package
    (name "haskell-8.4-lens")
    (version "4.16.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lens/lens-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1im4drhbydbawd6i0jsrzpqihnmx4ywpkg7yg94ddwsw3mxwkgpm"))))
    (properties `((upstream-name . "lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-uniplate" "-finlining" "-f-old-inline-pragmas" "-f-dump-splices" "-ftest-doctests" "-ftest-hunit" "-ftest-properties" "-ftest-templates" "-f-safe" "-ftrustworthy" "-f-j")
       #:cabal-revision
       ("3" "1ijnnr08p499fmdw3wqvckapx418nhdymm3qadj320cm6jdphjai")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-kan-extensions)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-test-framework-th)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "Lenses, Folds and Traversals")
    (description
     "This package comes \\\"Batteries Included\\\" with many useful lenses for the types
commonly used from the Haskell Platform, and with tools for automatically
generating lenses and isomorphisms for user-supplied data types.

The combinators in @@Control.Lens@@ provide a highly generic toolbox for composing
families of getters, folds, isomorphisms, traversals, setters and lenses and their
indexed variants.

An overview, with a large number of examples can be found in the <https://github.com/ekmett/lens#lens-lenses-folds-and-traversals README>.

An introductory video on the style of code used in this library by Simon Peyton Jones is available from <http://skillsmatter.com/podcast/scala/lenses-compositional-data-access-and-manipulation Skills Matter>.

A video on how to use lenses and how they are constructed is available on <http://youtu.be/cefnmjtAolY?hd=1 youtube>.

Slides for that second talk can be obtained from <http://comonad.com/haskell/Lenses-Folds-and-Traversals-NYC.pdf comonad.com>.

More information on the care and feeding of lenses, including a brief tutorial and motivation
for their types can be found on the <https://github.com/ekmett/lens/wiki lens wiki>.

A small game of @@pong@@ and other more complex examples that manage their state using lenses can be found in the <https://github.com/ekmett/lens/blob/master/examples/ example folder>.

/Lenses, Folds and Traversals/

With some signatures simplified, the core of the hierarchy of lens-like constructions looks like:


<<http://i.imgur.com/ALlbPRa.png>>

<Hierarchy.png (Local Copy)>

You can compose any two elements of the hierarchy above using @@(.)@@ from the @@Prelude@@, and you can
use any element of the hierarchy as any type it linked to above it.

The result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).

For instance:

* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.

* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.

/Minimizing Dependencies/

If you want to provide lenses and traversals for your own types in your own libraries, then you
can do so without incurring a dependency on this (or any other) lens package at all.

/e.g./ for a data type:

> data Foo a = Foo Int Int a

You can define lenses such as

> -- bar :: Lens' (Foo a) Int
> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)
> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)

> -- quux :: Lens (Foo a) (Foo b) a b
> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)
> quux f (Foo a b c) = fmap (Foo a b) (f c)

without the need to use any type that isn't already defined in the @@Prelude@@.

And you can define a traversal of multiple fields with 'Control.Applicative.Applicative':

> -- traverseBarAndBaz :: Traversal' (Foo a) Int
> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)
> traverseBarAndBaz f (Foo a b c) = Foo <$> f a <*> f b <*> pure c

What is provided in this library is a number of stock lenses and traversals for
common haskell types, a wide array of combinators for working them, and more
exotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).")
    (license license:bsd-2)))

haskell-8.4-lens

(define-public haskell-8.4-lzma-conduit
  (package
    (name "haskell-8.4-lzma-conduit")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lzma-conduit/lzma-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hm72da7xk9l3zxjh274yg444vf405djxqbkf3q3p2qhicmxlmg9"))))
    (properties `((upstream-name . "lzma-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-lzma)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "http://github.com/alphaHeavy/lzma-conduit")
    (synopsis "Conduit interface for lzma/xz compression.")
    (description
     "This package provides an Conduit interface for the LZMA compression algorithm used in the .xz file format.")
    (license license:bsd-3)))

haskell-8.4-lzma-conduit

(define-public haskell-8.4-mighty-metropolis
  (package
    (name "haskell-8.4-mighty-metropolis")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mighty-metropolis/mighty-metropolis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h3ik18vnya6sm0x1s6hxxx5hky0wm2pqm2g3hllcj02cm5hng4d"))))
    (properties `((upstream-name . "mighty-metropolis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-kan-extensions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mcmc-types)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-mwc-probability)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/jtobin/mighty-metropolis")
    (synopsis "The Metropolis algorithm.")
    (description
     "The classic Metropolis algorithm.

Wander around parameter space according to a simple spherical Gaussian
distribution.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in-memory, and a 'metropolis' transition operator that
can be used more generally.

> import Numeric.MCMC.Metropolis
>
> rosenbrock :: [Double] -> Double
> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 [0, 0] rosenbrock")
    (license license:expat)))

haskell-8.4-mighty-metropolis

(define-public haskell-8.4-monad-unlift-ref
  (package
    (name "haskell-8.4-monad-unlift-ref")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-unlift-ref/monad-unlift-ref-"
                    version ".tar.gz"))
              (sha256
               (base32
                "078xjz3a6rgqqgf8zg9ngspixf9pgch845l6gs5ssy3l54wra18g"))))
    (properties `((upstream-name . "monad-unlift-ref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-monad-unlift)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-mutable-containers)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/fpco/monad-unlift")
    (synopsis "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license license:expat)))

haskell-8.4-monad-unlift-ref

(define-public haskell-8.4-ndjson-conduit
  (package
    (name "haskell-8.4-ndjson-conduit")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ndjson-conduit/ndjson-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ccxliyy0flpby9jix2n8jy1i4jgiap42maqhh9ny53vqkvvhdy0"))))
    (properties `((upstream-name . "ndjson-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)))
    (home-page "https://github.com/srijs/haskell-ndjson-conduit")
    (synopsis
     "Conduit-based parsing and serialization for newline delimited JSON.")
    (description
     "Hackage documentation generation is not reliable.
For up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.")
    (license license:expat)))

haskell-8.4-ndjson-conduit

(define-public haskell-8.4-pipes-aeson
  (package
    (name "haskell-8.4-pipes-aeson")
    (version "0.4.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-aeson/pipes-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xdybqszcs14sb02g7garfx8ivmp48fm5rsl4md8vypyjbs1211m"))))
    (properties `((upstream-name . "pipes-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-parse)))
    (home-page "https://github.com/k0001/pipes-aeson")
    (synopsis "Encode and decode JSON streams using Aeson and Pipes.")
    (description
     "Utilities to encode and decode Pipes streams of JSON.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.4-pipes-aeson

(define-public haskell-8.4-pipes-binary
  (package
    (name "haskell-8.4-pipes-binary")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-binary/pipes-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s3462i85zd6byr18mfabfmiapb0yy3fnrsaw6mnasw19kyxjngn"))))
    (properties `((upstream-name . "pipes-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lens-family-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-parse)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)))
    (home-page "https://github.com/k0001/pipes-binary")
    (synopsis
     "Encode and decode binary streams using the pipes and binary libraries.")
    (description
     "Encode and decode binary Pipes streams using the @@binary@@ library.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.4-pipes-binary

(define-public haskell-8.4-pipes-fastx
  (package
    (name "haskell-8.4-pipes-fastx")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fastx/pipes-fastx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xds11gfacj7m5lz6cssaj4v5z73ycrdmn57f0qxzqdsc2kln9ii"))))
    (properties `((upstream-name . "pipes-fastx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-pipes-bytestring)))
    (home-page "https://hackage.haskell.org/package/pipes-fastx")
    (synopsis "Streaming parsers for Fasta and Fastq")
    (description "Streaming parsers for Fasta and Fastq")
    (license license:bsd-3)))

haskell-8.4-pipes-fastx

(define-public haskell-8.4-pointed
  (package
    (name "haskell-8.4-pointed")
    (version "5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pointed/pointed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p91a762xglckscnhpflxzav8byf49a02mli3983i4kpr2jkaimr"))))
    (properties `((upstream-name . "pointed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcomonad" "-fcontainers" "-fkan-extensions" "-fsemigroupoids" "-fsemigroups" "-fstm" "-ftagged" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("3" "17dyzz0mq24n8pd25chh8gxvcy9jvjgpcm0iz0kcjcwp92ivr848")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-kan-extensions)
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
    (home-page "http://github.com/ekmett/pointed/")
    (synopsis "Pointed and copointed data")
    (description "Pointed and copointed data.")
    (license license:bsd-3)))

haskell-8.4-pointed

(define-public haskell-8.4-proto-lens-combinators
  (package
    (name "haskell-8.4-proto-lens-combinators")
    (version "0.1.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-combinators/proto-lens-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i2rbvhdvglqg6b4iwr5a0pk7iq78nap491bqg77y4dwd45ipcpb"))))
    (properties `((upstream-name . "proto-lens-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-lens-family)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-lens-family-core)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-proto-lens)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Utilities functions to proto-lens.")
    (description "Useful things for working with protos.")
    (license license:bsd-3)))

haskell-8.4-proto-lens-combinators

(define-public haskell-8.4-proto-lens-protobuf-types
  (package
    (name "haskell-8.4-proto-lens-protobuf-types")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protobuf-types/proto-lens-protobuf-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0630yl73s11dnfripbz5pa25mzpsnjzd278qcm5yiy6zmcz0a6ca"))))
    (properties `((upstream-name . "proto-lens-protobuf-types")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-lens-family)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-proto-lens)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-proto-lens-protoc)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Basic protocol buffer message types.")
    (description
     "This package provides bindings standard protocol message types, for use with the proto-lens library.")
    (license license:bsd-3)))

haskell-8.4-proto-lens-protobuf-types

(define-public haskell-8.4-relude
  (package
    (name "haskell-8.4-relude")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relude/relude-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "034hldd9rsqqhhxmnpfabh6v2by47qc5kx1qv77bl8k73fybf9a0"))))
    (properties `((upstream-name . "relude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0dnjjhwxmxdqvbbhnl2a2572rwhyik5wx25dks4pp0wmz97ssl38")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/kowainik/relude")
    (synopsis "Custom prelude from Kowainik")
    (description
     "== Goals

* __Avoid all [partial functions](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)__
(like @@head :: [a] -> a@@). The types of partial functions lie about their
behavior and usage of such functions can lead to the unexpected bugs. Though
you can still use some unsafe functions from @@Relude.Unsafe@@ module, but they
are not exported by default.

* __Type-safety__. We like to make invalid states unrepresantable. And if it's
possible to express this concept through the types then we will do it.
/Example:/ @@ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @@

* __Performance.__ Prefer @@Text@@ over @@[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@@,
use spaceleak-free functions (like our custom @@sum@@ and @@product@@).

* __Minimalism__ (low number of dependencies). We don't force users of @@relude@@ to
stick to some specific lens or text formatting or logging library.

* __Convenience__ (like lifted to @@MonadIO@@ functions, more reexports). But we
want to bring common types and functions (like @@containers@@ and @@bytestrng@@)
into scope because they are used in almost every application anyways.

* __Provide excellent documentation.__

1. Tutorial

2. Migration guide from @@Prelude@@

3. Haddock with examples for (almost) every function
(all examples are tested with [`doctest`](http://hackage.haskell.org/package/doctest))

4. Documentation regarding [internal module structure]((http://hackage.haskell.org/package/relude/docs/Relude.html))

5. @@relude@@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @@[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@@

* __User-friendliness.__ Ability to quickly migrate to @@relude@@ if you're familiar
with the common libraries like @@text@@ and @@containers@@.

* __Exploration.__ Experiment with new ideas and proposals without introducing
breaking changes.")
    (license license:expat)))

haskell-8.4-relude

(define-public haskell-8.4-retry
  (package
    (name "haskell-8.4-retry")
    (version "0.7.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/retry/retry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v6irf01xykhv0mwr1k5i08jn77irqbz8h116j8p435d11xc5jrw"))))
    (properties `((upstream-name . "retry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://github.com/Soostone/retry")
    (synopsis "Retry combinators for monadic actions that may fail")
    (description
     "This package exposes combinators that can wrap arbitrary
monadic actions. They run the action and potentially retry
running it with some configurable delay for a configurable
number of times.
The purpose is to make it easier to work with IO and
especially network IO actions that often experience temporary
failure and warrant retrying of the original action. For
example, a database query may time out for a while, in which
case we should hang back for a bit and retry the query instead
of simply raising an exception.")
    (license license:bsd-3)))

haskell-8.4-retry

(define-public haskell-8.4-rng-utils
  (package
    (name "haskell-8.4-rng-utils")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rng-utils/rng-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fj6x5ihjsbw1cypdifccv2nkbx5gvax9aclypanlv5fw2qsr1h8"))))
    (properties `((upstream-name . "rng-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://bitbucket.org/soostone/rng-utils")
    (synopsis "RNG within an IORef for convenient concurrent use")
    (description
     "rng-utils aims to make it easy to generate an RNG and safely use it concurrently.")
    (license license:bsd-3)))

haskell-8.4-rng-utils

(define-public haskell-8.4-safe-money
  (package
    (name "haskell-8.4-safe-money")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-money/safe-money-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l8gn9vscng92s1dkfj2fa55k63jnzcnw590r5a8n7dqwaycpz7r"))))
    (properties `((upstream-name . "safe-money") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fcereal" "-fstore" "-fhashable" "-fserialise" "-fvector-space" "-fxmlbf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-serialise)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-store)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-vector-space)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-xmlbf)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/k0001/safe-money")
    (synopsis
     "Type-safe and lossless encoding and manipulation of money, fiat currencies,
crypto currencies and precious metals.")
    (description
     "Type-safe and lossless encoding and manipulation of money, fiat currencies,
crypto currencies and precious metals.

NOTICE that the only mandatory dependencies of this package are @@base@@,
@@binary@@, @@constraints@@, @@deepseq@@ and @@text@@. Except for
@@constraints@@, all of them are included with a standard GHC distribution. The
rest of the dependencies are OPTIONAL but enabled by default (except @@store@@
which is disabled when building with GHCJS because it doesn't compile ther).
All of the optional dependencies can be disabled with Cabal flags.")
    (license license:bsd-3)))

haskell-8.4-safe-money

(define-public haskell-8.4-safeio
  (package
    (name "haskell-8.4-safeio")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safeio/safeio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04g3070cbjdqj0h9l9ii6470xcbn40xfv4fr89a8yvnkdim9nyfm"))))
    (properties `((upstream-name . "safeio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-test-framework-th)))
    (home-page "https://github.com/luispedro/safeio#readme")
    (synopsis "Write output to disk atomically")
    (description
     "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.")
    (license license:expat)))

haskell-8.4-safeio

(define-public haskell-8.4-sandi
  (package
    (name "haskell-8.4-sandi")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sandi/sandi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ji1zn9nkh8rdm0m9zpxdnz5zw0q0qypzyp2k9fn6j9v08r17p3n"))))
    (properties `((upstream-name . "sandi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-conduit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-tasty-th)))
    (home-page "https://hackage.haskell.org/package/sandi")
    (synopsis "Data encoding library")
    (description "Reasonably fast data encoding library.")
    (license license:bsd-3)))

haskell-8.4-sandi

(define-public haskell-8.4-sparkle
  (package
    (name "haskell-8.4-sparkle")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sparkle/sparkle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "174rs21fgj43rq3nshzgff6mydi93n26nkcq9cadq0bzcasc2n3q"))))
    (properties `((upstream-name . "sparkle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jwg12rmsa1il8y53ip535bjf02z7jnrnws1qi9y0xfpqblzmw6r")))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-choice)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributed-closure)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-inline-java)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-jni)
                  (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-jvm)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-jvm-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages java) openjdk)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/tweag/sparkle#readme")
    (synopsis "Distributed Apache Spark applications in Haskell")
    (description
     "The hackage package has been superseded by the github repository which builds with Bazel. Please see http://github.com/tweag/sparkle#readme.")
    (license license:bsd-3)))

haskell-8.4-sparkle

(define-public haskell-8.4-starter
  (package
    (name "haskell-8.4-starter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/starter/starter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14rxrs1gjsm26m7rk4rj9b2389zca0j24kjl7sfznqpxgk99qmpx"))))
    (properties `((upstream-name . "starter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)))
    (home-page "https://github.com/rkaippully/starter#readme")
    (synopsis "Develop applications without restarts")
    (description
     "Please see the README on Github at <https://github.com/rkaippully/starter#readme>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-starter

(define-public haskell-8.4-tar-conduit
  (package
    (name "haskell-8.4-tar-conduit")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tar-conduit/tar-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gnklkw9qv496m8nxm1mlfddyiw8c5lsj5pcshxv7c6rv9n3vva3"))))
    (properties `((upstream-name . "tar-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)))
    (home-page "https://github.com/snoyberg/tar-conduit#readme")
    (synopsis "Extract and create tar files using conduit for streaming")
    (description
     "Please see README.md. This is just filler to avoid warnings.")
    (license license:expat)))

haskell-8.4-tar-conduit

(define-public haskell-8.4-tls
  (package
    (name "haskell-8.4-tls")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tls/tls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1y083724mym28n6xfaz7pcc7zqxdhjpaxpbvzxfbs25qq2px3smv"))))
    (properties `((upstream-name . "tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcompat" "-fnetwork" "-f-hans")
       #:cabal-revision
       ("2" "0ywdxc73lmfbrdkbv0ldzwx82hmqnzqk452xqaxr8x1n99q1s5jq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "TLS/SSL protocol native implementation (Server and Client)")
    (description
     "Native Haskell TLS and SSL protocol implementation for server and client.

This provides a high-level implementation of a sensitive security protocol,
eliminating a common set of security issues through the use of the advanced
type system, high level constructions and common Haskell features.

Currently implement the SSL3.0, TLS1.0, TLS1.1 and TLS1.2 protocol,
and support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,
and many extensions.

Some debug tools linked with tls, are available through the
<http://hackage.haskell.org/package/tls-debug/>.")
    (license license:bsd-3)))

haskell-8.4-tls

(define-public haskell-8.4-universe
  (package
    (name "haskell-8.4-universe")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe/universe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19zr9zcqc5sfp5qfn8slkk2732j1814m3j1jkbim739limwf900z"))))
    (properties `((upstream-name . "universe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-universe-instances-base)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-universe-instances-extended)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-universe-instances-trans)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-universe-reverse-instances)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Classes for types where we know all the values")
    (description "Munge finite and recursively enumerable types")
    (license license:bsd-3)))

haskell-8.4-universe

(define-public haskell-8.4-wai-conduit
  (package
    (name "haskell-8.4-wai-conduit")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-conduit/wai-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yn41rn2skd5p3wqqa09wa761vj7ibl8l19gh4bi4i8slxhk417"))))
    (properties `((upstream-name . "wai-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-8.4-wai-conduit

(define-public haskell-8.4-withdependencies
  (package
    (name "haskell-8.4-withdependencies")
    (version "0.2.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/withdependencies/withdependencies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04pk5giqlnls1p62fz9p0sb1288c9qk3ivsq2kb5207cjifyslgz"))))
    (properties `((upstream-name . "withdependencies") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)))
    (home-page "https://github.com/bartavelle/withdependencies")
    (synopsis
     "Run computations that depend on one or more elements in a stream.")
    (description
     "Run computations that depend on one or more elements in a stream.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-withdependencies

(define-public haskell-8.4-xeno
  (package
    (name "haskell-8.4-xeno")
    (version "0.3.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bdvj5ql0q9i8vb3429d8kl3hyk45r37s23rm76mhwhazhqxcm60"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libxml2")
       #:cabal-revision
       ("2" "0jm8g5kffbx3sp2hp2mz0ypms2y0r927cghwn5j1jhlvzw9gbzw2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hexml)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-mutable-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-8.4-xeno

(define-public haskell-8.4-xls
  (package
    (name "haskell-8.4-xls")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xls/xls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0a09zw90xiaklr68w932md38s95jzwid914lw7frnf3qd8j12xq9"))))
    (properties `((upstream-name . "xls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-has-iconv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-getopt-generics)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (home-page "http://github.com/harendra-kumar/xls")
    (synopsis "Parse Microsoft Excel xls files (BIFF/Excel 97-2004)")
    (description
     "Parse Microsoft Excel spreadsheet files in @@.xls@@ file format
(extension '.xls') more specifically known as 'BIFF/Excel 97-2004'.

The library is based on the C library
'https://sourceforge.net/projects/libxls'.")
    (license license:bsd-3)))

haskell-8.4-xls

(define-public haskell-8.4-yaml
  (package
    (name "haskell-8.4-yaml")
    (version "0.8.32")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yaml/yaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cbsyh4ilvjzq1q7pxls43k6pdqxg1l85xzibcwpbvmlvrizh86w"))))
    (properties `((upstream-name . "yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-examples" "-fno-exe" "-f-no-unicode" "-f-system-libyaml")
       #:cabal-revision
       ("2" "1jsf8g97qi5qdxcdn2138f3icr3wkzz13y5i1fhqahymd7nhhj8s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-mockery)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-8.4-yaml

