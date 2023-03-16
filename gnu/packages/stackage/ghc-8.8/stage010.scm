;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage010)
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
(define-public haskell-8.8-OpenGL
  (package
    (name "haskell-8.8-OpenGL")
    (version "3.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenGL/OpenGL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "069fg8jcxqq2z9iikynd8vi3jxm2b5y3qywdh4bdviyzab3zy1as"))))
    (properties `((upstream-name . "OpenGL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1nhlswxgxn8l1ysjq3fp3w5pvx6651d33036i8dlbqygzrn6iwmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-GLURaw)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ObjectName)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://wiki.haskell.org/OpenGL")
    (synopsis "A binding for the OpenGL graphics system")
    (description
     "A Haskell binding for the OpenGL graphics system (GL, version 4.6) and its
accompanying utility library (GLU, version 1.3).

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-8.8-OpenGL

(define-public haskell-8.8-RSA
  (package
    (name "haskell-8.8-RSA")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-SHA)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-crypto-api)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-crypto-pubkey-types)))
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

haskell-8.8-RSA

(define-public haskell-8.8-avers
  (package
    (name "haskell-8.8-avers")
    (version "0.0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avers/avers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x96fvx0z7z75c39qcggw70qvqnw7kzjf0qqxb3jwg3b0fmdhi8v"))))
    (properties `((upstream-name . "avers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("40" "0wsr91a87kikvibl18knwkglawl9m96scdyd539zpgh6djbzmsqf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-MonadRandom)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cryptohash)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-inflections)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-rethinkdb-client-driver)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scrypt)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/avers")
    (synopsis "Server-side implementation of the Avers storage model")
    (description
     "This is the server-side implementation of the Avers storage model. It is a
Haskell library, intended to be used by your application. The library provides
you with everything you need to write your own Avers server. You can create and
patch objects and collections thereof. It has builtin support for sessions,
authentication and managing blobs. The database is not configurable. Avers is
currently hardcoded to use RethinkDB.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-avers

(define-public haskell-8.8-bifunctors
  (package
    (name "haskell-8.8-bifunctors")
    (version "5.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bifunctors/bifunctors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cimvd64jzd6dyxjw2kx8wqhd1x0z89pj0ppmsikj4afa3aa5cw8"))))
    (properties `((upstream-name . "bifunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroups" "-ftagged")
       #:cabal-revision
       ("2" "0w7fscgxin56pcl2p04gbvd5g2y5pk0dg1cx9qrxwshn1x30gn8r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-abstraction)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://github.com/ekmett/bifunctors/")
    (synopsis "Bifunctors")
    (description "Bifunctors.")
    (license license:bsd-3)))

haskell-8.8-bifunctors

(define-public haskell-8.8-binary-tagged
  (package
    (name "haskell-8.8-binary-tagged")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-tagged/binary-tagged-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bvzwhdjxxr7b3lk23rwcygi34d6a5mairi2j2gh7k3p8983fgss"))))
    (properties `((upstream-name . "binary-tagged") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0h397jzajqiw01nf7fkjmqzsmzd08d1z6f9ff2rvcj4s6wsqkik8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-structured)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)))
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

haskell-8.8-binary-tagged

(define-public haskell-8.8-bower-json
  (package
    (name "haskell-8.8-bower-json")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-better-errors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/hdgarrood/bower-json")
    (synopsis "Read bower.json from Haskell")
    (description
     "Bower is a package manager for the web (see <http://bower.io>).
This package provides a data type and ToJSON/FromJSON instances for Bower's
package manifest file, bower.json.")
    (license license:expat)))

haskell-8.8-bower-json

(define-public haskell-8.8-brick
  (package
    (name "haskell-8.8-brick")
    (version "0.52.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brick/brick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jqs75k7r98c6k8d14arhiz49xy7k0jaymlmijx0pma3yrha90pl"))))
    (properties `((upstream-name . "brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdemos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-config-ini)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-data-clist)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-zipper)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-vty)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-word-wrap)))
    (home-page "https://github.com/jtdaugherty/brick/")
    (synopsis "A declarative terminal user interface library")
    (description
     "Write terminal user interfaces (TUIs) painlessly with 'brick'! You
write an event handler and a drawing function and the library does the
rest.


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

haskell-8.8-brick

(define-public haskell-8.8-cborg-json
  (package
    (name "haskell-8.8-cborg-json")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cborg)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A library for encoding JSON as CBOR")
    (description "This package implements the bijection between JSON and
CBOR defined in the CBOR specification, RFC 7049.")
    (license license:bsd-3)))

haskell-8.8-cborg-json

(define-public haskell-8.8-character-cases
  (package
    (name "haskell-8.8-character-cases")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/character-cases/character-cases-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0097d5p1q2l76jb1qm8zsqm7d3qfcr35v2ip0v52i1ri57b03iya"))))
    (properties `((upstream-name . "character-cases") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-here)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)))
    (home-page "https://github.com/aiya000/hs-character-cases#readme")
    (synopsis "Exposes subspecies types of Char. And naming cases.")
    (description
     "e.g. meaning of [a-z], [A-Z], [0-9], PascalCase, camelCase, and snake_case. Please see https://github.com/aiya000/hs-character-cases#README.md")
    (license license:expat)))

haskell-8.8-character-cases

(define-public haskell-8.8-chiphunk
  (package
    (name "haskell-8.8-chiphunk")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chiphunk/chiphunk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "096pcfszccx9hdzqknrmdzj2lb38059cfqndvyildx2x83dhq5dx"))))
    (properties `((upstream-name . "chiphunk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-c2hs)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-vector-space)))
    (home-page "https://github.com/CthulhuDen/chiphunk#readme")
    (synopsis "Haskell bindings for Chipmunk2D physics engine")
    (description
     "Please see the README on GitHub at <https://github.com/CthulhuDen/chiphunk#readme>")
    (license license:bsd-3)))

haskell-8.8-chiphunk

(define-public haskell-8.8-chronos-bench
  (package
    (name "haskell-8.8-chronos-bench")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-chronos)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-terminal-size)))
    (home-page "https://github.com/knupfer/chronos")
    (synopsis "Benchmarking tool with focus on comparing results.")
    (description
     "This tool performs lazy benchmarking of functions and shell commands with continuous feedback and improving precision.")
    (license license:bsd-3)))

haskell-8.8-chronos-bench

(define-public haskell-8.8-co-log
  (package
    (name "haskell-8.8-co-log")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/co-log/co-log-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08sqrsy55wrfc5bg5sz22hah0ix14wrxn20lka17ri17a818w9p7"))))
    (properties `((upstream-name . "co-log") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-chronos)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-co-log-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-typerep-map)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/kowainik/co-log")
    (synopsis "Composable Contravariant Comonadic Logging Library")
    (description
     "The default implementation of logging based on [co-log-core](http://hackage.haskell.org/package/co-log-core).

The ideas behind this package are described in the following blog post:

* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)")
    (license license:mpl2.0)))

haskell-8.8-co-log

(define-public haskell-8.8-conferer-source-json
  (package
    (name "haskell-8.8-conferer-source-json")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer-source-json/conferer-source-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01kfm771qks7b66z0nlv2b108r002xv8bzacr9p6ih7nsbcbiqdn"))))
    (properties `((upstream-name . "conferer-source-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-qq)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-conferer)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's source for reading json files")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-conferer-source-json

(define-public haskell-8.8-criterion
  (package
    (name "haskell-8.8-criterion")
    (version "1.5.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion/criterion-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qzn2k1b2all543v47p93p15a5y8lps002vbxmkr6xrinp91cvqk"))))
    (properties `((upstream-name . "criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast" "-f-embed-data-files")
       #:cabal-revision
       ("2" "0qfyhj3w0m3snrhq78cqcl0fs7jfw9kkarln0slc964fb5j71jc8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-binary-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cassava)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-code-page)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-criterion-measurement)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-js-flot)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-js-jquery)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-microstache)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-statistics)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-algorithms)))
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

haskell-8.8-criterion

(define-public haskell-8.8-crypto-pubkey
  (package
    (name "haskell-8.8-crypto-pubkey")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-crypto-numbers)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-random)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cryptohash)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/vincenthz/hs-crypto-pubkey")
    (synopsis "Public Key cryptography")
    (description
     "Public Key cryptography

Supports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.

Also have primitive support for Diffie Hellman, and ElGamal encryption")
    (license license:bsd-3)))

haskell-8.8-crypto-pubkey

(define-public haskell-8.8-cubicbezier
  (package
    (name "haskell-8.8-cubicbezier")
    (version "0.6.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cubicbezier/cubicbezier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s7s1ak0x89jy3q4yxrcvjzsq9w4yh23ycjcja6i7klj5gggqwss"))))
    (properties `((upstream-name . "cubicbezier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("1" "084inqa0mpm6m958fmjwsnn2fn46mcdpfin482mzs5fk6c9fwywl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fast-math)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-integration)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-matrices)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-vector-space)))
    (home-page "https://hackage.haskell.org/package/cubicbezier")
    (synopsis "Efficient manipulating of 2D cubic bezier curves.")
    (description
     "This library supports efficient manipulating of 2D cubic bezier curves, for use in graphics or typography.  Supported features are:

Evaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.

It also supports polynomial root finding with Bernstein polynomials.

The module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"
contains general 2D geometry functions and transformations.")
    (license license:bsd-3)))

haskell-8.8-cubicbezier

(define-public haskell-8.8-cursor-fuzzy-time
  (package
    (name "haskell-8.8-cursor-fuzzy-time")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-fuzzy-time/cursor-fuzzy-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xx0npvjjr574f7ksswwzi8yrqsrhlg3arhpvahm8z2zz6a995gs"))))
    (properties `((upstream-name . "cursor-fuzzy-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-cursor)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-fuzzy-time)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-time)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Cursors for the fuzzy-time parser and resolver")
    (license license:expat)))

haskell-8.8-cursor-fuzzy-time

(define-public haskell-8.8-cyclotomic
  (package
    (name "haskell-8.8-cyclotomic")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cyclotomic/cyclotomic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3977xi7s78h5bcq8gksamqimdm1h0hnjzalg3d63rvanjv4v84"))))
    (properties `((upstream-name . "cyclotomic") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-arithmoi)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-test-framework-smallcheck)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
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

haskell-8.8-cyclotomic

(define-public haskell-8.8-dialogflow-fulfillment
  (package
    (name "haskell-8.8-dialogflow-fulfillment")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dialogflow-fulfillment/dialogflow-fulfillment-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10n91mfgvn3pi0rvw92ys8f4bcra4v24j0cjykrax3jdmk1wfmym"))))
    (properties `((upstream-name . "dialogflow-fulfillment") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

haskell-8.8-dialogflow-fulfillment

(define-public haskell-8.8-fmt
  (package
    (name "haskell-8.8-fmt")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-formatting)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-fmt

(define-public haskell-8.8-fsnotify
  (package
    (name "haskell-8.8-fsnotify")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify/fsnotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19bdbz9wb9jvln6yg6qm0hz0w84bypvkxf0wjhgrgd52f9gidlny"))))
    (properties `((upstream-name . "fsnotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "12m0y5583plk9pikvwqy1rc0yyvicxf8j5nz0nwxb4grsgfqrv7v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hinotify)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shelly)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description "Cross platform library for file creation, modification,
and deletion notification. This library builds upon
existing libraries for platform-specific Windows, Mac,
and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-8.8-fsnotify

(define-public haskell-8.8-genvalidity-hspec
  (package
    (name "haskell-8.8-genvalidity-hspec")
    (version "0.7.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec/genvalidity-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aajx07n2rznyqxb0c4pn9j2cvkzw5brz9ki4grhhigbcri3jzmv"))))
    (properties `((upstream-name . "genvalidity-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-8.8-genvalidity-hspec

(define-public haskell-8.8-ghc-typelits-presburger
  (package
    (name "haskell-8.8-ghc-typelits-presburger")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-presburger/ghc-typelits-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h403zi5lqbpygpqw5469fafz1cgh5mcx96sp0iw4scnmh7z3cj9"))))
    (properties `((upstream-name . "ghc-typelits-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers.")
    (description
     "@@ghc-typelits-presburger@@ augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers.
This plugin only work with GHC builtin operations.
To work with those of @@singletons@@ package, use @@ghc-typelits-meta@@ and/or @@ghc-typelits-presburger@@ instead.

Since 0.3.0.0, integration with <https://hackage.haskell.org/package/singletons singletons> package moves to <https://hackage.haskell.org/package/singletons-presburger singletons-presburger>.

You can use by adding this package to @@build-depends@@ and add the following pragma
to the head of .hs files:


> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger")
    (license license:bsd-3)))

haskell-8.8-ghc-typelits-presburger

(define-public haskell-8.8-greskell-core
  (package
    (name "haskell-8.8-greskell-core")
    (version "0.1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-core/greskell-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08jpgnsnmh9zbm1pw768ik28vhl3m4jz75l8cbxb3whfgwk5vyy4"))))
    (properties `((upstream-name . "greskell-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis
     "Haskell binding for Gremlin graph query language - core data types and tools")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package contains only core data types and tools used commonly by other related packages.")
    (license license:bsd-3)))

haskell-8.8-greskell-core

(define-public haskell-8.8-hadolint
  (package
    (name "haskell-8.8-hadolint")
    (version "1.18.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hadolint/hadolint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ifcnpbc667x7cl44fkdj4j968zpyz57jh8b5givqdnmvw9x8wf5"))))
    (properties `((upstream-name . "hadolint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-ShellCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-language-docker)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/hadolint/hadolint")
    (synopsis "Dockerfile Linter JavaScript API")
    (description
     "A smarter Dockerfile linter that helps you build best practice Docker images.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-hadolint

(define-public haskell-8.8-hall-symbols
  (package
    (name "haskell-8.8-hall-symbols")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hall-symbols/hall-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gf0whwmwlrnir01zi5v6bsp0864nh0qjvy59hql27hv12yypdwa"))))
    (properties `((upstream-name . "hall-symbols") (hidden? . #f)))
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
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-matrix-as-xyz)))
    (home-page "https://github.com/narumij/hall-symbols#readme")
    (synopsis "Symmetry operations generater of Hall Symbols")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>")
    (license license:bsd-3)))

haskell-8.8-hall-symbols

(define-public haskell-8.8-hedgehog-fn
  (package
    (name "haskell-8.8-hedgehog-fn")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-fn/hedgehog-fn-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05drd7jsz54kgwxr5z9vifmql6xif7ma7878qddw2nss5s6wa2qp"))))
    (properties `((upstream-name . "hedgehog-fn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-examples")
       #:cabal-revision
       ("2" "1x7n1r640mc6b4s6pfk96157y3r2z4mcx4i3lbq1k04cnzivd5n2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)))
    (home-page "https://github.com/qfpl/hedgehog-fn")
    (synopsis "Function generation for `hedgehog`")
    (description
     "Generating shrinkable, showable functions with `hedgehog`. See
`Hedgehog.Function` for example usages.")
    (license license:bsd-3)))

haskell-8.8-hedgehog-fn

(define-public haskell-8.8-hedgehog-quickcheck
  (package
    (name "haskell-8.8-hedgehog-quickcheck")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-quickcheck/hedgehog-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z2ja63wqz83qhwzh0zs98k502v8fjdpnsnhqk3srypx2nw5vdlp"))))
    (properties `((upstream-name . "hedgehog-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1838hm2p22n8qrps17zjzf9k0jwvrw9g99r0crii3igfbi22m8nf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)))
    (home-page "https://hedgehog.qa")
    (synopsis "Use QuickCheck generators in Hedgehog and vice versa.")
    (description
     "Use QuickCheck generators in Hedgehog and vice versa.

Hedgehog is a modern property-based testing system, in the spirit of
QuickCheck. Hedgehog uses integrated shrinking, so shrinks obey the
invariants of generated values by construction.

To get started quickly, see the examples:
<https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-")
    (license license:bsd-3)))

haskell-8.8-hedgehog-quickcheck

(define-public haskell-8.8-heterocephalus
  (package
    (name "haskell-8.8-heterocephalus")
    (version "1.0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heterocephalus/heterocephalus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06fv3bhnj80cjli1v2drkpkmx76i81cpawlci7agcxxd8fd8zplc"))))
    (properties `((upstream-name . "heterocephalus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)))
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

haskell-8.8-heterocephalus

(define-public haskell-8.8-hsc2hs
  (package
    (name "haskell-8.8-hsc2hs")
    (version "0.68.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsc2hs/hsc2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jl94cr2jhjmvz7l9idpr352vwxlsanyiq7ya1vvrlry3vj1aygx"))))
    (properties `((upstream-name . "hsc2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-in-ghc-tree")
       #:cabal-revision
       ("1" "0nzmlx0kdsq5231m6dbvdb5zssj1h4lkqplp8rb28z3yl5h6h3sa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
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

haskell-8.8-hsc2hs

(define-public haskell-8.8-hspec-hedgehog
  (package
    (name "haskell-8.8-hspec-hedgehog")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-hedgehog/hspec-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17gbr4ssnzjk7nvpsnh47av6vd9wz27ax92xvr4jwyw0z7h2wn13"))))
    (properties `((upstream-name . "hspec-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qv2gap0775d2zg8wbd3kq4ypziz05qlz5jfisvl3jfd6jzcf2ad")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-splitmix)))
    (home-page "https://github.com/parsonsmatt/hspec-hedgehog#readme")
    (synopsis "Integrate Hedgehog and Hspec!")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-hedgehog#readme>")
    (license license:bsd-3)))

haskell-8.8-hspec-hedgehog

(define-public haskell-8.8-htoml
  (package
    (name "haskell-8.8-htoml")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/cies/htoml")
    (synopsis "Parser for TOML files")
    (description "TOML is an obvious and minimal format for config files.

This package provides a TOML parser,
build with the Parsec library. It exposes a JSON
interface using the Aeson library.")
    (license license:bsd-3)))

haskell-8.8-htoml

(define-public haskell-8.8-http-streams
  (package
    (name "haskell-8.8-http-streams")
    (version "0.8.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-streams/http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q0lp8hkzfc0srci9y794q5cqkih50r3iw2c32wbx8h502jcvv1q"))))
    (properties `((upstream-name . "http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-common)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-io-streams)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-openssl-streams)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/afcowie/http-streams/")
    (synopsis "An HTTP client using io-streams")
    (description
     "/Overview/

An HTTP client, using the Snap Framework's 'io-streams' library to
hande the streaming IO. The API is optimized for ease of use for the
rather common case of code needing to query web services and deal with
the result.

The library is exported in a single module; see \"Network.Http.Client\"
for full documentation.")
    (license license:bsd-3)))

haskell-8.8-http-streams

(define-public haskell-8.8-hvega
  (package
    (name "haskell-8.8-hvega")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvega/hvega-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gy7f6amg5mvr1lc7s98ld445h4s0j8xjilpdq6c6yy5kgd5hdyp"))))
    (properties `((upstream-name . "hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "Create Vega-Lite visualizations (version 4) in Haskell.")
    (description
     "This is based on the elm-vegalite package
(<http://package.elm-lang.org/packages/gicentre/elm-vegalite/latest>)
by Jo Wood of the giCentre at the City University of London.")
    (license license:bsd-3)))

haskell-8.8-hvega

(define-public haskell-8.8-hw-diagnostics
  (package
    (name "haskell-8.8-hw-diagnostics")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)))
    (home-page "http://github.com/haskell-works/hw-diagnostics#readme")
    (synopsis "Diagnostics library")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-hw-diagnostics

(define-public haskell-8.8-hw-hedgehog
  (package
    (name "haskell-8.8-hw-hedgehog")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-8.8-hw-hedgehog

(define-public haskell-8.8-hw-hspec-hedgehog
  (package
    (name "haskell-8.8-hw-hspec-hedgehog")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)))
    (home-page "https://github.com/haskell-works/hw-hspec-hedgehog#readme")
    (synopsis "Interoperability between hspec and hedgehog")
    (description "Interoperability between hspec and hedgehog.")
    (license license:bsd-3)))

haskell-8.8-hw-hspec-hedgehog

(define-public haskell-8.8-hyraxAbif
  (package
    (name "haskell-8.8-hyraxAbif")
    (version "0.2.3.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyraxAbif/hyraxAbif-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ww4lgf280sjj9bhj8s6pxadqwk91jkx6lngb2cqcf81gr38drhm"))))
    (properties `((upstream-name . "hyraxAbif") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "168gf9ib669ji8lyd1a57xqkqmxyzi3m4r9pnmdxyfnqpnfqdv6r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hscolour)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protolude)))
    (home-page "https://github.com/hyraxbio/hyraxAbif/#readme")
    (synopsis "Modules for parsing, generating and manipulating AB1 files.")
    (description
     "This library provides functionality for parsing, modifying, writing and generating ABIF files
<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAABuCAMAAAC6LQUkAAAALVBMVEXA5+7/////53c9q1oVFhbCPzifzLVrv4RGguPX39ZFTluGhX6Ks/DSg1zdvnNa6pLqAAADlklEQVRo3u3XjZKjIAwAYD3+BIH3f9wjBCSJtnUd2725qeO6rtWvMSToTn9uXKYvdhXLSmXxSTLG8GPlQD2e8NN+eNVah0QwpZT7I68044LOb6SpJIShcUkMU+zCDGGltD+WTdu2qIuz5hz0iMwp5/h9JhFVizbVu0/j44wx0ZwplTMPDQJIeYcZAHG7JUwMQIXULrTtChpuX9vJATDI29oxB9nfDcF+ODOElVpwNDKKqbbsc5T3Q4xp61jLWdiwrFQdAXqfuVyUd1iqSqYJCFUbmMMbZPeZDuoMGQxw+5ZeZx1rIfHxTPv8b7XK62bt1ncKuoI9WuYLyxf7Yl/si/0+Bk9NiS1lkafDefIYPE/+ScwD5s9gInUenv1eYoFjFt4OLMemJR5g7ggLZ7B4BrO3Y/YCZu/FbFn5sVWvZX2BRcDiBczBSe6t2DS9FcPz+LGgrb2IeX+IhU9iy2nMe4ZBl4tOL1gpteU1pk9is8Rg/pFzUMX0bRj+/D+YP8A8Yn7D7AE2ITaJ6ayOqJhoa3kQzNVa41ipsfhhzCJmfxeziFkxA8HmORYPMds2O2zdMPcYixcw28J7GwbvEBxz92K+DSmbG9uQfgpbFnhSn8F8a4OGYVsKLAAWlquYEti6ao6pA0wjpi9gY0uns779GAbPw5swfOq8wnzHfMNaUfDm7NgkZiAxB7VxDE8xqFn4wleY7Zj9Tay1OOv01uL4a5vO9lidjmk/ncQsCbBhAbFwE1bnKYq5jjkxafTUPcKWQ8yTcXgL5ke50dKnLbD0SW8Rk4bAdMf0M6xPLYvsJt5P7f3nVmx+heE5HDPGmFswyFXDvJg0Wu7oKJIWwAaoLTARzJuUjHcUC2RUH2HhEMsml5VgdmD2GdbaJEzkHaiEVYIj70E/xSJpTcRIc/b/53CHGqQF4mgTipXsz8b8GBuVzbA0z+kK1oc8jtbMiOXRT/1ffUzeA2w5xIozz0V8gqlDbBulhWLQYhzzpOBY4Y+9cIApBfmHERj9pAemn2BbYgPB0h6je+cxr1bEklmVF62JMbJMbUMRaWKnjtX8Y9KsaAAcClb3rruR5iL2/BuDtWeMsqLMcJdhW5ALDX8ZGO4VzInKwCD5LNb3j7CeMkyazH/d58+kVnIx0PAxaR6rrCfNi5TVKDnWbjlqPZFvjNiZZmAtaSRl9Q/+htHkQGaxudWvM/0u4T6NEynDcTfnF70tD074C7p1S5o4ju7XAAAAAElFTkSuQmCC>>

Any AB1 file conforming to the standard at <http://www6.appliedbiosystems.com/support/software_community/ABIF_File_Format.pdf> should be supported.

This library also support generating a minimal ABIF file from a FASTA input sequence.

A basic terminal application that can dump and generate AB1s is included. See <https://github.com/hyraxbio/hyraxAbif/blob/master/app/Main.hs>

See

* \"Hyrax.Abif.Generate\" for generate ABIF files from FASTA inputs
* \"Hyrax.Abif.Read\" for parsing ABIF files
* \"Hyrax.Abif.Write\" for creating/updating ABIF files
* \"Hyrax.Abif\" for the core types
* \"Examples\" for examples")
    (license license:bsd-3)))

haskell-8.8-hyraxAbif

(define-public haskell-8.8-ip6addr
  (package
    (name "haskell-8.8-ip6addr")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-IPv6Addr)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis
     "Commandline tool to deal with IPv6 address text representations")
    (description
     "Commandline tool to validate, canonize and generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-8.8-ip6addr

(define-public haskell-8.8-json-rpc-generic
  (package
    (name "haskell-8.8-json-rpc-generic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-generic-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/khibino/haskell-json-rpc-generic")
    (synopsis "Generic encoder and decode for JSON-RPC")
    (description
     "This package contains generic encoder and decode for JSON-RPC")
    (license license:bsd-3)))

haskell-8.8-json-rpc-generic

(define-public haskell-8.8-jsonpath
  (package
    (name "haskell-8.8-jsonpath")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-casing)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/akshaymankar/jsonpath-hs#readme")
    (synopsis "Library to parse and execute JSONPath")
    (description
     "Please see the README on GitHub at <https://github.com/akshaymankar/jsonpath-hs#readme>")
    (license license:bsd-3)))

haskell-8.8-jsonpath

(define-public haskell-8.8-kanji
  (package
    (name "haskell-8.8-kanji")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (home-page "https://github.com/fosskers/kanji")
    (synopsis
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji")
    (description
     "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.")
    (license license:bsd-3)))

haskell-8.8-kanji

(define-public haskell-8.8-loc
  (package
    (name "haskell-8.8-loc")
    (version "0.1.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/loc/loc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0vl0pyimcm7jp4lgdmsqgcg9shqfrj60lz4psjkdfdcm3vkdqnkw"))))
    (properties `((upstream-name . "loc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)))
    (home-page "https://github.com/chris-martin/loc")
    (synopsis
     "Types representing line and column positions and ranges in text files.")
    (description
     "The package name /loc/ stands for “location” and is also an allusion to the
acronym for “lines of code”.

The @@Loc@@ type represents a caret position in a text file, the @@Span@@ type
is a nonempty range between two @@Loc@@s, and the @@Area@@ type is a set of
non-touching @@Span@@s.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-loc

(define-public haskell-8.8-log-base
  (package
    (name "haskell-8.8-log-base")
    (version "0.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-base/log-base-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s8w464yalbcgq3vq819mw9fsgj6a9rfbf00843311kqryml2a49"))))
    (properties `((upstream-name . "log-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "144dr0r550p6ahszwy5xsp2clkz6qcfy6rj98x9332ppn5gbdasa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monad-time)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/scrive/log")
    (synopsis "Structured logging solution (base package)")
    (description "A library that provides a way to record structured log
messages. Use this package in conjunction with
'log-elasticsearch' or 'log-postgres', depending
on which back end you need.")
    (license license:bsd-3)))

haskell-8.8-log-base

(define-public haskell-8.8-math-extras
  (package
    (name "haskell-8.8-math-extras")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/math-extras/math-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzk277a3h9ahnlx538p9f821d1i0npf3n6a8wgg8gmmbyn0sk49"))))
    (properties `((upstream-name . "math-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)))
    (home-page "https://github.com/zliu41/math-extras")
    (synopsis "A variety of mathematical utilities")
    (description "A variety of mathematical utilities not covered in base.")
    (license license:bsd-3)))

haskell-8.8-math-extras

(define-public haskell-8.8-membrain
  (package
    (name "haskell-8.8-membrain")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/membrain/membrain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nizjkiggm2ws8kkjw6v96a611kim4yjg4kdrk0rd83fa1zcf7cc"))))
    (properties `((upstream-name . "membrain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02yayszbb6g7q7cz9gkjbxzn28v4zm1i9svzydzlrzfds9z603r6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-type-spec)))
    (home-page "https://github.com/kowainik/membrain")
    (synopsis "Type-safe memory units")
    (description
     "@@membrain@@ provides @@newtype@@ wrapper for type-safe work with memory units

@@
__newtype__ Memory (mem :: Nat) = Memory
\\    @{ unMemory :: Natural
\\    @}
@@

This data type stores memory unit value phantom type parameter which is
represented as type-level natural number.
The ideas behind this package are described in the following blog post:

* [Insane in the Membrain](https://kowainik.github.io/posts/membrain)")
    (license license:mpl2.0)))

haskell-8.8-membrain

(define-public haskell-8.8-min-max-pqueue
  (package
    (name "haskell-8.8-min-max-pqueue")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/min-max-pqueue/min-max-pqueue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nbvd8w4wj00dbh1zknxqb28wlxi87k3z3snjfqg7zz7j7mvy0jp"))))
    (properties `((upstream-name . "min-max-pqueue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)))
    (home-page "https://github.com/zliu41/min-max-pqueue")
    (synopsis "Double-ended priority queues.")
    (description
     "Min-max priority queues, also known as double-ended priority queues.")
    (license license:bsd-3)))

haskell-8.8-min-max-pqueue

(define-public haskell-8.8-morpheus-graphql
  (package
    (name "haskell-8.8-morpheus-graphql")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql/morpheus-graphql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11f0niq2rv6kyrscl0dgi75vcxrz4vhy4yka2jxhrmx6klzi908p"))))
    (properties `((upstream-name . "morpheus-graphql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-8.8-morpheus-graphql

(define-public haskell-8.8-partial-semigroup
  (package
    (name "haskell-8.8-partial-semigroup")
    (version "0.5.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-semigroup/partial-semigroup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lxvgz0z04fkd67lnva902j8y5qxp6naga7gfnnazwafsb0s9kww"))))
    (properties `((upstream-name . "partial-semigroup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroup-in-base" "-fenable-hedgehog" "-fenable-doctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)))
    (home-page "https://github.com/chris-martin/partial-semigroup")
    (synopsis "A partial binary associative operator")
    (description
     "A partial semigroup is like a semigroup, but the operator
is partial. We represent this in Haskell as a total function
@@(<>?) :: a -> a -> Maybe a@@.

The
<https://hackage.haskell.org/package/partial-semigroup-hedgehog partial-semigroup-hedgehog>
companion package provides support for checking the partial
semigroup associativity axiom using the
<https://hackage.haskell.org/package/hedgehog hedgehog>
package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-partial-semigroup

(define-public haskell-8.8-path-io
  (package
    (name "haskell-8.8-path-io")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11mrs0awd343far3rmcphdli65g737haxg7fwx3pl04fgdxfbpdq"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-8.8-path-io

(define-public haskell-8.8-path-text-utf8
  (package
    (name "haskell-8.8-path-text-utf8")
    (version "0.0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-text-utf8/path-text-utf8-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zlmmfjzjgnhscy8852gi67hq8xl9j05c53faf599cqa6c71ry11"))))
    (properties `((upstream-name . "path-text-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)))
    (home-page "https://github.com/chris-martin/path-text-utf8")
    (synopsis "Read and write UTF-8 text files")
    (description "This is a trivial integration of the @@path@@ and @@text@@
packages, providing convenient functions to read and
write UTF-8 text files.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-path-text-utf8

(define-public haskell-8.8-pg-transact
  (package
    (name "haskell-8.8-pg-transact")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-transact/pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z101hbfan8aidq7lcnzzni4b7ji8sbbqx1yar6ykf6wmzmn2pcd"))))
    (properties `((upstream-name . "pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "A postgresql-simple transaction monad")
    (description "Another postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-8.8-pg-transact

(define-public haskell-8.8-postgresql-orm
  (package
    (name "haskell-8.8-postgresql-orm")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-orm")
    (synopsis
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL.")
    (description
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL. See
\"Database.PostgreSQL.ORM\" for documentation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-postgresql-orm

(define-public haskell-8.8-quadratic-irrational
  (package
    (name "haskell-8.8-quadratic-irrational")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quadratic-irrational/quadratic-irrational-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nksvr6wnbrphq3ymg93w2xpqw6in3j1qpgbl2f3x9bgiss2l7s"))))
    (properties `((upstream-name . "quadratic-irrational") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-arithmoi)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-integer-roots)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-numbers)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/ion1/quadratic-irrational")
    (synopsis "An implementation of quadratic irrationals")
    (description
     "A library for exact computation with
<http://en.wikipedia.org/wiki/Quadratic_irrational quadratic irrationals>
with support for exact conversion from and to
<http://en.wikipedia.org/wiki/Periodic_continued_fraction (potentially periodic) simple continued fractions>.

A quadratic irrational is a number that can be expressed in the form

> (a + b √c) / d

where @@a@@, @@b@@ and @@d@@ are integers and @@c@@ is a square-free natural number.

Some examples of such numbers are

* @@7/2@@,

* @@√2@@,

* @@(1 + √5)\\/2@@
(<http://en.wikipedia.org/wiki/Golden_ratio the golden ratio>),

* solutions to quadratic equations with rational constants – the
<http://en.wikipedia.org/wiki/Quadratic_formula quadratic formula> has a
familiar shape.

A simple continued fraction is a number expressed in the form

> a + 1/(b + 1/(c + 1/(d + 1/(e + …))))

or alternatively written as

> [a; b, c, d, e, …]

where @@a@@ is an integer and @@b@@, @@c@@, @@d@@, @@e@@, … are positive integers.

Every finite SCF represents a rational number and every infinite, periodic
SCF represents a quadratic irrational.

> 3.5      = [3; 2]
> (1+√5)/2 = [1; 1, 1, 1, …]
> √2       = [1; 2, 2, 2, …]")
    (license license:expat)))

haskell-8.8-quadratic-irrational

(define-public haskell-8.8-reform-hamlet
  (package
    (name "haskell-8.8-reform-hamlet")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-reform)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using Hamlet with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Hamlet.")
    (license license:bsd-3)))

haskell-8.8-reform-hamlet

(define-public haskell-8.8-regex-applicative-text
  (package
    (name "haskell-8.8-regex-applicative-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-regex-applicative)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-8.8-regex-applicative-text

(define-public haskell-8.8-relapse
  (package
    (name "haskell-8.8-relapse")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relapse/relapse-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06dam4albrjf3jppnvw77lldhwf2kkm65aw1dyyng3niwgsqmik5"))))
    (properties `((upstream-name . "relapse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-include-file)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/iostat/relapse#readme")
    (synopsis "Sensible RLP encoding")
    (description
     "An implementation of RLP as specified in the Ethereum Wiki, using Attoparsec")
    (license license:expat)))

haskell-8.8-relapse

(define-public haskell-8.8-rio-prettyprint
  (package
    (name "haskell-8.8-rio-prettyprint")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)))
    (home-page "https://github.com/commercialhaskell/rio-prettyprint#readme")
    (synopsis "Pretty-printing for RIO")
    (description "Combine RIO's log capabilities with pretty printing")
    (license license:bsd-3)))

haskell-8.8-rio-prettyprint

(define-public haskell-8.8-safe-money
  (package
    (name "haskell-8.8-safe-money")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-money/safe-money-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c3xpsydqgcz183klmhgdn3xdagrj0falfqb63cmknk77z610s7f"))))
    (properties `((upstream-name . "safe-money") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-vector-space)))
    (home-page "https://github.com/k0001/safe-money")
    (synopsis "Type-safe and lossless encoding and manipulation of money, fiat
currencies, crypto currencies and precious metals.")
    (description
     "The Haskell @@safe-money@@ library offers type-safe and lossless encoding and
operations for monetary values in all world currencies, including fiat
currencies, precious metals and crypto-currencies.

Useful instances for the many types defined by @@safe-money@@ can be found
in these other libraries:

* [safe-money-aeson](https://hackage.haskell.org/package/safe-money-aeson):
@@FromJSON@@ and @@ToJSON@@ instances (from the [aeson](https://hackage.haskell.org/package/aeson) library).

* [safe-money-cereal](https://hackage.haskell.org/package/safe-money-cereal):
@@Serialize@@ instances (from the [cereal](https://hackage.haskell.org/package/cereal) library).

* [safe-money-serialise](https://hackage.haskell.org/package/safe-money-serialise):
@@Serialise@@ instances (from the [serialise](https://hackage.haskell.org/package/serialise) library).

* [safe-money-store](https://hackage.haskell.org/package/safe-money-store):
@@Store@@ instances (from the [store](https://hackage.haskell.org/package/store) library).

* [safe-money-xmlbf](https://hackage.haskell.org/package/safe-money-xmlbf):
@@FromXml@@ and @@ToXml@@ instances (from the [xmlbf](https://hackage.haskell.org/package/xmlbf) library).")
    (license license:bsd-3)))

haskell-8.8-safe-money

(define-public haskell-8.8-skylighting
  (package
    (name "haskell-8.8-skylighting")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting/skylighting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b8m0spspp060p5hkl2qxarh3cwji0shq5kdwz2w93kiyl8hk8sv"))))
    (properties `((upstream-name . "skylighting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-skylighting-core)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library with
support for over one hundred languages.  It derives
its tokenizers from XML syntax definitions used
by KDE's KSyntaxHighlighting framework, so any
syntax supported by that framework can be added.
An optional command-line program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides generated syntax modules
based on the KDE XML definitions provided by the
@@skylighting-core@@ package. As a result this
package is licensed under the GPL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-skylighting

(define-public haskell-8.8-snap-blaze
  (package
    (name "haskell-8.8-snap-blaze")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-blaze/snap-blaze-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hc8k0cviq7ayjymsfr435bnfw35pa4f80i7x4ypn2539fykavmk"))))
    (properties `((upstream-name . "snap-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-snap-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jaspervdj/snap-blaze")
    (synopsis "blaze-html integration for Snap")
    (description "blaze-html integration for Snap")
    (license license:bsd-3)))

haskell-8.8-snap-blaze

(define-public haskell-8.8-stylish-haskell
  (package
    (name "haskell-8.8-stylish-haskell")
    (version "0.11.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stylish-haskell/stylish-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10svl5q95n9i76rqvlxibi784qzvdyg8qfl1xwk7c32y84nyfibn"))))
    (properties `((upstream-name . "stylish-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d2mjihwqafg2y5hj14filq9v19vh7643qiavl3l7bfi52hyw89l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-strict)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)))
    (home-page "https://github.com/jaspervdj/stylish-haskell")
    (synopsis "Haskell code prettifier")
    (description
     "A Haskell code prettifier. For more information, see:

<https://github.com/jaspervdj/stylish-haskell/blob/master/README.markdown>")
    (license license:bsd-3)))

haskell-8.8-stylish-haskell

(define-public haskell-8.8-symmetry-operations-symbols
  (package
    (name "haskell-8.8-symmetry-operations-symbols")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/symmetry-operations-symbols/symmetry-operations-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y9m1z72kh8lhmig0lpp67p3s74s706y6lbzlr5hk47mpcw7fymh"))))
    (properties `((upstream-name . "symmetry-operations-symbols")
                  (hidden? . #f)))
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
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-matrix-as-xyz)))
    (home-page "https://github.com/narumij/symmetry-operations-symbols#readme")
    (synopsis "Derivation of symbols and coordinate triplets Library")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/symmetry-operations-symbols#readme>")
    (license license:bsd-3)))

haskell-8.8-symmetry-operations-symbols

(define-public haskell-8.8-tasty-hedgehog
  (package
    (name "haskell-8.8-tasty-hedgehog")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vsv3m6brhshpqm8qixz97m7h0nx67cj6ira4cngbk7mf5rqylv5"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "12s7jgz14j32h62mgs4qbypqlpwjly1bk2hgrwqi9w3cjsskqk88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the <https://hackage.haskell.org/package/hedgehog hedgehog testing library> with the <https://hackage.haskell.org/package/tasty tasty testing framework>.")
    (license license:bsd-3)))

haskell-8.8-tasty-hedgehog

(define-public haskell-8.8-texmath
  (package
    (name "haskell-8.8-texmath")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pp52g4jwyf0w0xpja7gamd39g3acfclc3q29ldpzpfbhnl23n27"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
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

haskell-8.8-texmath

(define-public haskell-8.8-x509
  (package
    (name "haskell-8.8-x509")
    (version "1.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j67c35g8334jx7x32hh6awhr43dplp0qwal5gnlkmx09axzrc5i"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z98llpggldy4yb7afcsn3r3q4vklvx2pqyrhy9fir5y2yd5l601")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-asn1-parse)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hourglass)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-8.8-x509

