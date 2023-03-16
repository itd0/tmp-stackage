;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage013)
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
(define-public haskell-9.4-Agda
  (package
    (name "haskell-9.4-Agda")
    (version "2.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Agda/Agda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yjjbhc593ylrm4mq4j01nkdvh7xqsg5in30wxj4y53vf5hkggp5"))))
    (properties `((upstream-name . "Agda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cpphs" "-f-debug" "-f-enable-cluster-counting" "-f-optimise-heavily")
       #:cabal-revision
       ("2" "0mas4lsd093rg4w6js12cjmnz8227q5g0jhkhyrnr25jglqjz75n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-boxes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-hash)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-edit-distance)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-equivalence)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gitrev)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-murmur-hash)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-uri-encode)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://wiki.portal.chalmers.se/agda/")
    (synopsis
     "A dependently typed functional programming language and proof assistant")
    (description
     "Agda is a dependently typed functional programming language: It has
inductive families, which are similar to Haskell's GADTs, but they
can be indexed by values and not just types. It also has
parameterised modules, mixfix operators, Unicode characters, and an
interactive Emacs interface (the type checker can assist in the
development of your code).

Agda is also a proof assistant: It is an interactive system for
writing and checking proofs. Agda is based on intuitionistic type
theory, a foundational system for constructive mathematics developed
by the Swedish logician Per Martin-L&#xf6;f. It has many
similarities with other proof assistants based on dependent types,
such as Coq, Idris, Lean and NuPRL.

This package includes both a command-line program (agda) and an
Emacs mode. If you want to use the Emacs mode you can set it up by
running @@agda-mode setup@@ (see the README).

Note that the Agda package does not follow the package versioning
policy, because it is not intended to be used by third-party
packages.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-Agda

(define-public haskell-9.4-FailT
  (package
    (name "haskell-9.4-FailT")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/FailT/FailT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hv9zycvsf696x9g73w9jhlipw826vl71gix09jmm02i9jpyr4q2"))))
    (properties `((upstream-name . "FailT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "024m4528hrfha20l7h8ndx2hpzqwpxmkabrlryimlzy49v4jm9zn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/FailT")
    (synopsis "A 'FailT' monad transformer that plays well with 'MonadFail'")
    (description
     "Fail gracefully when stuck in a 'MonadFail'

>>> runFailT (fail \"Failure!?\" >> pure \"Success!!\")
Left \"Failure!?\"
>>> runFailT (fail \"Failure!?\" <|> pure \"Success!!\")
Right \"Success!!\"
>>> runFailT (pure [\"Success!!\"] <> fail \"Failure!?\" <> pure [\"At\", \"Last!\"])
Right [\"Success!!\",\"At\",\"Last!\"]
")
    (license license:bsd-3)))

haskell-9.4-FailT

(define-public haskell-9.4-HPDF
  (package
    (name "haskell-9.4-HPDF")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HPDF/HPDF-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "037cwhnjr6p2b168bixy9a1n811krcvmyhg2kbhlry02svkars7k"))))
    (properties `((upstream-name . "HPDF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTF)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hyphenation)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.alpheccar.org")
    (synopsis "Generation of PDF documents")
    (description
     "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ... Have a look at the \"Graphics.PDF.Documentation\" module to see how to use it. Or, download the package and look at the test.hs file in the Test folder. That file is giving an example of each feature.")
    (license license:bsd-3)))

haskell-9.4-HPDF

(define-public haskell-9.4-aern2-real
  (package
    (name "haskell-9.4-aern2-real")
    (version "0.2.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aern2-real/aern2-real-" version
                    ".tar.gz"))
              (sha256
               (base32
                "094hs147jzlg3zqary2zbpi7n18vykj0f7cw89k125zrs2h0f0v2"))))
    (properties `((upstream-name . "aern2-real") (hidden? . #f)))
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
                     haskell-9.4-aern2-mp)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-collect-errors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-mixed-types-num)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Real numbers as convergent sequences of intervals")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-9.4-aern2-real

(define-public haskell-9.4-appendful
  (package
    (name "haskell-9.4-appendful")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/appendful/appendful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07bs55kwj0r5q8z9mvihc890yfan9whis8q1n5k27sbqpfbwaqws"))))
    (properties `((upstream-name . "appendful") (hidden? . #f)))
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
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/appendful#readme")
    (synopsis "")
    (description "Append-only cooperative agreement")
    (license license:expat)))

haskell-9.4-appendful

(define-public haskell-9.4-ascii-superset
  (package
    (name "haskell-9.4-ascii-superset")
    (version "1.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-superset/ascii-superset-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00i662bwrsqj34g0d9awgik2vqxxlr8y2v1xyyrhhqh5fi3s0rwk"))))
    (properties `((upstream-name . "ascii-superset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-ascii-case)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-ascii-caseless)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/typeclasses/ascii-superset")
    (synopsis "Representing ASCII with refined supersets")
    (description
     "This package defines classes which describe what subset of a type
is valid as ASCII, as well as a type constructor representing a
value of a superset that is known to be valid ASCII.

It also defines the Lift class, which provides a polymorphic lift
operation that can be used to convert characters and strings into
types that support a larger set of characters.")
    (license license:asl2.0)))

haskell-9.4-ascii-superset

(define-public haskell-9.4-authenticate-oauth
  (package
    (name "haskell-9.4-authenticate-oauth")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate-oauth/authenticate-oauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y4v46rn0cvm0sr1v8qq1zgzllrlrr3ji5gij1xprgf1zsazcvvl"))))
    (properties `((upstream-name . "authenticate-oauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "198xm2qdaqwg2m9kgrkw5gdk2bh19mmj6c4d5fsbpcjnhxlh6axg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-RSA)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-SHA)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-9.4-authenticate-oauth

(define-public haskell-9.4-autodocodec-schema
  (package
    (name "haskell-9.4-autodocodec-schema")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autodocodec-schema/autodocodec-schema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vvwjz8abn6qmk2801p7vyrbjkqcxdqjlc82ha8l9xvb6mmvqy3i"))))
    (properties `((upstream-name . "autodocodec-schema") (hidden? . #f)))
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
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-validity-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Autodocodec interpreters for JSON Schema")
    (description "")
    (license license:expat)))

haskell-9.4-autodocodec-schema

(define-public haskell-9.4-bech32-th
  (package
    (name "haskell-9.4-bech32-th")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bech32-th/bech32-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0548an9v6y14qalb1agl5bskcmpb9865lxyap162xzgskd9s4iik"))))
    (properties `((upstream-name . "bech32-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-bech32)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/input-output-hk/bech32")
    (synopsis "Template Haskell extensions to the Bech32 library.")
    (description "Template Haskell extensions to the Bech32 library, including
quasi-quoters for compile-time checking of Bech32 string
literals.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-bech32-th

(define-public haskell-9.4-binary-tagged
  (package
    (name "haskell-9.4-binary-tagged")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0w0n299j37w4xyf69wlfs1s06m01y6yyh9r5clacrr5m893rxy9a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-binary-instances)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-singleton-bool)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-structured)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-binary-tagged

(define-public haskell-9.4-bitvec
  (package
    (name "haskell-9.4-bitvec")
    (version "1.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bitvec/bitvec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0l85lshzh5c0s59pbbh76vg65bzz7x4y1a9gdvj4dkqz1bsklk0w"))))
    (properties `((upstream-name . "bitvec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libgmp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/bitvec")
    (synopsis "Space-efficient bit vectors")
    (description
     "A newtype over 'Bool' with a better 'Vector' instance: 8x less memory, up to 1000x faster.

The <https://hackage.haskell.org/package/vector vector>
package represents unboxed arrays of 'Bool's
spending 1 byte (8 bits) per boolean.
This library provides a newtype wrapper 'Bit' and a custom instance
of an unboxed 'Vector', which packs bits densely,
achieving an __8x smaller memory footprint.__
The performance stays mostly the same;
the most significant degradation happens for random writes
(up to 10% slower).
On the other hand, for certain bulk bit operations
'Vector' 'Bit' is up to 1000x faster than 'Vector' 'Bool'.

=== Thread safety

* \"Data.Bit\" is faster, but writes and flips are thread-unsafe.
This is because naive updates are not atomic:
they read the whole word from memory,
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

haskell-9.4-bitvec

(define-public haskell-9.4-bloodhound
  (package
    (name "haskell-9.4-bloodhound")
    (version "0.21.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bloodhound/bloodhound-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01znn7g5vnhdharl8cl2symffqinbz9syanpnim3ijx7015nasf1"))))
    (properties `((upstream-name . "bloodhound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semver)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bitemyapp/bloodhound.git#readme")
    (synopsis "Elasticsearch client library for Haskell")
    (description "Elasticsearch made awesome for Haskell hackers")
    (license license:bsd-3)))

haskell-9.4-bloodhound

(define-public haskell-9.4-boltzmann-samplers
  (package
    (name "haskell-9.4-boltzmann-samplers")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boltzmann-samplers/boltzmann-samplers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13l7ml35hm0i2rgw419n7xp2zp58pafm6gmmik3jgbmhfwgkwz6y"))))
    (properties `((upstream-name . "boltzmann-samplers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-ad)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/Lysxia/boltzmann-samplers#readme")
    (synopsis "Uniform random generators")
    (description
     "Random generators with a uniform distribution conditioned
to a given size.
See also @@<http://hackage.haskell.org/package/testing-feat testing-feat>@@,
which is currently a faster method with similar results.")
    (license license:expat)))

haskell-9.4-boltzmann-samplers

(define-public haskell-9.4-breakpoint
  (package
    (name "haskell-9.4-breakpoint")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/breakpoint/breakpoint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hk9mjijxvqjzcfqllzi53rmxiyggbxash05jbb742wrq832h2xw"))))
    (properties `((upstream-name . "breakpoint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pretty-simple)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/breakpoint")
    (synopsis "Set breakpoints using a GHC plugin")
    (description
     "A plugin that allows you to set breakpoints for debugging purposes.

See the [README](https://github.com/aaronallen8455/breakpoint#breakpoint) for details.")
    (license license:expat)))

haskell-9.4-breakpoint

(define-public haskell-9.4-cabal-file
  (package
    (name "haskell-9.4-cabal-file")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-file/cabal-file-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05sah1w0nbvirnvj520ijyz2jrdbp5cciryhziyrgaimfvi9kbnb"))))
    (properties `((upstream-name . "cabal-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hackage-security)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-cabal)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/cabal-file")
    (synopsis "Cabal file access")
    (description
     "cabal-file is a small library on top of the 'hackage-security' library
for accessing the local Hackage repo index cache, and a command-line tool
'cblfile' which can diff .cabal versions, list package versions,
save a cabal file, and show metadata from the index. It uses
simple-cabal to display package dependency lists.")
    (license license:bsd-3)))

haskell-9.4-cabal-file

(define-public haskell-9.4-cabal-install
  (package
    (name "haskell-9.4-cabal-install")
    (version "3.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-install/cabal-install-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rk7xb86c1vgarv1m16d2i82fiig6q119j51gvq2pq8l5rpl7kk1"))))
    (properties `((upstream-name . "cabal-install") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-native-dns" "-flukko")
       #:cabal-revision
       ("3" "14l2jvyrzhgkmgkrkhmb6cb1vy4pgcg3q8dgyg8vszpm0mb1ws77")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cabal-install-solver)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-echo)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-edit-distance)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hackage-security)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lukko)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "The command-line interface for Cabal and Hackage.")
    (description
     "The \\'cabal\\' command-line program simplifies the process of managing
Haskell software by automating the fetching, configuration, compilation
and installation of Haskell libraries and programs.")
    (license license:bsd-3)))

haskell-9.4-cabal-install

(define-public haskell-9.4-cborg-json
  (package
    (name "haskell-9.4-cborg-json")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cborg-json/cborg-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3w0yyp6xb07fx04g5c52pb0b46vpkgpi32w1c8bz867x2p7hsq"))))
    (properties `((upstream-name . "cborg-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zzn2p6yl9mqw7agm5w7iiz105078gv66vxr8bqazilgssqk5wyg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cborg)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A library for encoding JSON as CBOR")
    (description "This package implements the bijection between JSON and
CBOR defined in the CBOR specification, RFC 7049.")
    (license license:bsd-3)))

haskell-9.4-cborg-json

(define-public haskell-9.4-commonmark-extensions
  (package
    (name "haskell-9.4-commonmark-extensions")
    (version "0.2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark-extensions/commonmark-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "009yrsb2xxna73q6nnijfx5ngffaz369mildvqvn91qbrkrzq7pl"))))
    (properties `((upstream-name . "commonmark-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-commonmark)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-emojis)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides some useful extensions to core commonmark
syntax: smart quotes, definition lists, tables, footnotes, math,
and more.")
    (license license:bsd-3)))

haskell-9.4-commonmark-extensions

(define-public haskell-9.4-connection
  (package
    (name "haskell-9.4-connection")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection/connection-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nbmafhlg0wy4aa3p7amjddbamdz6avzrxn4py3lvhrjqn4raxax"))))
    (properties `((upstream-name . "connection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08f1n38zryd0jklyv3yillilp040zxfxha6jphrmf28haq2irnk5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-socks)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-system)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-connection")
    (synopsis "Simple and easy network connections API")
    (description "Simple network library for all your connection need.

Features: Really simple to use, SSL/TLS, SOCKS.

This library provides a very simple api to create sockets
to a destination with the choice of SSL/TLS, and SOCKS.")
    (license license:bsd-3)))

haskell-9.4-connection

(define-public haskell-9.4-contiguous
  (package
    (name "haskell-9.4-contiguous")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contiguous/contiguous-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vqzv5xr6dkvw0789rz3z39b7ldm9xrk2sv8c9k2fk14yxl7qibx"))))
    (properties `((upstream-name . "contiguous") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1q1yihx7caa639mfmk0a2n881qrj3g3gm9mb6m23bv5xkkbklrmp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-run-st)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/contiguous")
    (synopsis "Unified interface for primitive arrays")
    (description "This package provides a typeclass `Contiguous` that offers a
unified interface to working with `Array`, `SmallArray`,
`PrimArray`, and `UnliftedArray`.")
    (license license:bsd-3)))

haskell-9.4-contiguous

(define-public haskell-9.4-core-program
  (package
    (name "haskell-9.4-core-program")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-program/core-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qc9acs4jcrs80677fkd42h7nzwx8n7falrnxjsqpslh6i900hzc"))))
    (properties `((upstream-name . "core-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-core-data)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-core-text)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-fsnotify)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-terminal-size)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "Opinionated Haskell Interoperability")
    (description
     "A library to help build command-line programs, both tools and
longer-running daemons.

A description of this package, a list of features, and some background
to its design is contained in the
<https://github.com/aesiniath/unbeliever/blob/master/README.md README>
on GitHub.

See \"Core.Program.Execute\" to get started.")
    (license license:expat)))

haskell-9.4-core-program

(define-public haskell-9.4-cubicbezier
  (package
    (name "haskell-9.4-cubicbezier")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-fast-math)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-integration)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-matrices)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-space)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cubicbezier")
    (synopsis "Efficient manipulating of 2D cubic bezier curves.")
    (description
     "This library supports efficient manipulating of 2D cubic bezier curves, for use in graphics or typography.  Supported features are:

Evaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.

It also supports polynomial root finding with Bernstein polynomials.

The module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"
contains general 2D geometry functions and transformations.")
    (license license:bsd-3)))

haskell-9.4-cubicbezier

(define-public haskell-9.4-cursor-fuzzy-time
  (package
    (name "haskell-9.4-cursor-fuzzy-time")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cursor)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-fuzzy-time)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-time)))
    (home-page "https://github.com/NorfairKing/fuzzy-time")
    (synopsis "")
    (description "Cursors for the fuzzy-time parser and resolver")
    (license license:expat)))

haskell-9.4-cursor-fuzzy-time

(define-public haskell-9.4-dataurl
  (package
    (name "haskell-9.4-dataurl")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dataurl/dataurl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1chgcq2vc5kya8zmi0ir4589fph2rdssw1ivnkq209g7vd42prxi"))))
    (properties `((upstream-name . "dataurl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTF)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/dataurl#readme")
    (synopsis "Handle data-urls")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-dataurl

(define-public haskell-9.4-dbcleaner
  (package
    (name "haskell-9.4-dbcleaner")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/dbcleaner")
    (synopsis "Clean database tables automatically around hspec tests")
    (description "A simple database cleaner library for testing that provides
different cleanup strategies.")
    (license license:expat)))

haskell-9.4-dbcleaner

(define-public haskell-9.4-di-df1
  (package
    (name "haskell-9.4-di-df1")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-df1/di-df1-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mlx74605k33ibkqdbr7iyb32alansb41g9w0wjagyw45fvczda2"))))
    (properties `((upstream-name . "di-df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-df1)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-di-core)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-di-handle)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-di-monad)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Write logs in the df1 format using the di logging framework")
    (description
     "Write logs in the df1 format using the di logging framework.")
    (license license:bsd-3)))

haskell-9.4-di-df1

(define-public haskell-9.4-doctemplates
  (package
    (name "haskell-9.4-doctemplates")
    (version "0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctemplates/doctemplates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ssld40km4nf0r8fxgj9w0z8yfy8yiyyfcgxarhwx60f0dzhq270"))))
    (properties `((upstream-name . "doctemplates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doclayout)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/doctemplates#readme")
    (synopsis "Pandoc-style document templates")
    (description "This is the text templating system used by pandoc.
It supports variable interpolation, iteration,
tests for non-blank values, pipes, and partials.
Templates are rendered to doclayout Docs,
and variable values may come from a variety of
different sources, including aeson Values.")
    (license license:bsd-3)))

haskell-9.4-doctemplates

(define-public haskell-9.4-drifter-postgresql
  (package
    (name "haskell-9.4-drifter-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-drifter)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/michaelxavier/drifter-postgresql")
    (synopsis "PostgreSQL support for the drifter schema migration tool")
    (description "Support for postgresql-simple Query migrations as well as
arbitrary Haskell IO functions. Be sure to check the
examples dir for a usage example.")
    (license license:expat)))

haskell-9.4-drifter-postgresql

(define-public haskell-9.4-ecstasy
  (package
    (name "haskell-9.4-ecstasy")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ecstasy/ecstasy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hyb1xnc45mmghvjvnxc2wnkrks8glw2bs5jwnc1pmn3p39l4nci"))))
    (properties `((upstream-name . "ecstasy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)))
    (home-page "http://github.com/isovector/ecstasy/")
    (synopsis "A GHC.Generics based entity component system.")
    (description
     "Ecstasy is an entity-component system for Haskell. It's inspired by
<https://hackage.haskell.org/package/apecs apecs>, but makes the design
decision to focus on being idiomatic rather than being fast. Maybe. I haven't
actually benchmarked it.

We achieve being idiomatic by using 'GHC.Generics' and tricky type families
to derive performant data stores given only a record of the desired
components.")
    (license license:bsd-3)))

haskell-9.4-ecstasy

(define-public haskell-9.4-elynx-seq
  (package
    (name "haskell-9.4-elynx-seq")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-seq/elynx-seq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08wcikxgzl0j60xzffih5fd3mjbjisf17gr5aa1njjhs0vh6y8mg"))))
    (properties `((upstream-name . "elynx-seq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-elynx-tools)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-matrices)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vector-th-unbox)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-elynx-seq

(define-public haskell-9.4-envelope
  (package
    (name "haskell-9.4-envelope")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-envelope

(define-public haskell-9.4-equational-reasoning
  (package
    (name "haskell-9.4-equational-reasoning")
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
       ("2" "0gi4whsdzlkpmqjpvlzv29jhxmia8xx1ni17ay9nw41lw4q5zg8v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-desugar)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://hackage.haskell.org/package/equational-reasoning")
    (synopsis "Proof assistant for Haskell using DataKinds & PolyKinds")
    (description
     "A simple convenient library to write equational / preorder proof as in Agda.
Since 0.6.0.0, this no longer depends on @@singletons@@ package, and the @@Proof.Induction@@ module goes to @@equational-reasoning-induction@@ package.")
    (license license:bsd-3)))

haskell-9.4-equational-reasoning

(define-public haskell-9.4-file-modules
  (package
    (name "haskell-9.4-file-modules")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-modules/file-modules-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjy3axfhgv5nkvwbaylc8hc8d1fjb53n2rhmpxfzppa6yjvspz"))))
    (properties `((upstream-name . "file-modules") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-MissingH)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre)))
    (home-page "https://github.com/yamadapc/stack-run-auto")
    (synopsis "Takes a Haskell source-code file and outputs its modules.")
    (description
     "Uses @@haskell-src-exts@@ to parse module imports and follows links
. to local modules in order to build a list of module dependencies.")
    (license license:expat)))

haskell-9.4-file-modules

(define-public haskell-9.4-fixed-vector-hetero
  (package
    (name "haskell-9.4-fixed-vector-hetero")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector-hetero/fixed-vector-hetero-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1amqpbvzyqfg5rsl4zm99qmiffbh0a5bf9jbwlm6snwm9024qsj3"))))
    (properties `((upstream-name . "fixed-vector-hetero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-fixed-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Library for working with product types generically")
    (description
     "Library allow to work with arbitrary product types in generic
manner. They could be constructed, destucted, converted provided
they are product of identical types.")
    (license license:bsd-3)))

haskell-9.4-fixed-vector-hetero

(define-public haskell-9.4-genvalidity-hspec
  (package
    (name "haskell-9.4-genvalidity-hspec")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec/genvalidity-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00sv0mzlvny5ch7c9fnd19szqd0pjrkvi080x1i62qa5fdzs5yc4"))))
    (properties `((upstream-name . "genvalidity-hspec") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-9.4-genvalidity-hspec

(define-public haskell-9.4-goldplate
  (package
    (name "haskell-9.4-goldplate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fugue/goldplate")
    (synopsis "A lightweight golden test runner")
    (description
     "Language-agnostic golden test runner for command-line applications.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-goldplate

(define-public haskell-9.4-graph-core
  (package
    (name "haskell-9.4-graph-core")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTF)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/factisresearch/graph-core")
    (synopsis "Fast, memory efficient and persistent graph implementation")
    (description
     "A small package providing a powerful and easy to use Haskell graph implementation.")
    (license license:expat)))

haskell-9.4-graph-core

(define-public haskell-9.4-gravatar
  (package
    (name "haskell-9.4-gravatar")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gravatar/gravatar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ijcv15kihy6125fm2kyxi997fxii3hvr62lx25nri5aa0qy6vkw"))))
    (properties `((upstream-name . "gravatar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-pureMD5)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pbrisbin/gravatar#readme")
    (synopsis "Generate Gravatar image URLs")
    (description "Generate Gravatar image URLs")
    (license license:expat)))

haskell-9.4-gravatar

(define-public haskell-9.4-gridtables
  (package
    (name "haskell-9.4-gridtables")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gridtables/gridtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1smhbb2jxysbqhxww5rikjfnhsdbf0gq3kgnn6ikjzcrqwdk9b6n"))))
    (properties `((upstream-name . "gridtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doclayout)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tarleb/gridtables")
    (synopsis "Parser for reStructuredText-style grid tables.")
    (description "Provides a parser for plain-text representations of
tables. This package supports table headers, cells
spanning multiple columns or rows, as well as a way
to specfiy column alignments.")
    (license license:expat)))

haskell-9.4-gridtables

(define-public haskell-9.4-groom
  (package
    (name "haskell-9.4-groom")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groom/groom-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17g51p15209wwgq83clsd97xvy4kchbx8jzh74qgc9hvmz9s9d56"))))
    (properties `((upstream-name . "groom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)))
    (home-page "https://hackage.haskell.org/package/groom")
    (synopsis "Pretty printing for well-behaved Show
instances.")
    (description
     "Automatically derived Show instances are an easy way
to inspect data in your program.  However, for large
data-structures, the resulting output lacks
whitespace, making it unreadable.  Groom offers an
replacement to `show' called `groom' which attempts
to pretty-print the output of `show'.  For example:

> let x = parseExp \"foobar 1 [1,2]\"
> in do
>   putStrLn (show x)
>   putStrLn (groom x)

results in:

> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))
> ParseOk
>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))
>      (List [Lit (Int 1), Lit (Int 2)]))

Groom works only on Show instances that output valid
Haskell code; if Groom can't understand its input,
it will not make any changes.")
    (license license:bsd-3)))

haskell-9.4-groom

(define-public haskell-9.4-hall-symbols
  (package
    (name "haskell-9.4-hall-symbols")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/hall-symbols#readme")
    (synopsis "Symmetry operations generater of Hall Symbols")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>")
    (license license:bsd-3)))

haskell-9.4-hall-symbols

(define-public haskell-9.4-hamlet
  (package
    (name "haskell-9.4-hamlet")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hamlet/hamlet-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rla3ap3malk8j6mh07fr2aqvbscpy743wrfq3skgjv3j4jlpjfi"))))
    (properties `((upstream-name . "hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis
     "Haml-like template files that are compile-time checked (deprecated)")
    (description
     "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.

Here is a quick overview of hamlet html. Due to haddock escaping issues, we can't properly show variable insertion, but we are still going to show some conditionals. Please see <http://www.yesodweb.com/book/shakespearean-templates> for a thorough description

> !!!
> <html>
>     <head>
>         <title>Hamlet Demo
>     <body>
>         <h1>Information on John Doe
>         <h2>
>             $if isMarried person
>                 Married
>             $else
>                 Not married")
    (license license:expat)))

haskell-9.4-hamlet

(define-public haskell-9.4-happstack-server-tls
  (package
    (name "haskell-9.4-happstack-server-tls")
    (version "7.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-server-tls/happstack-server-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11prqx74dkv38dyg1yh419ckbi5hbyv6ncm9y9inqnabl84qyam1"))))
    (properties `((upstream-name . "happstack-server-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-happstack-server)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-sendfile)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "extend happstack-server with https:// support (TLS/SSL)")
    (description
     "Allows you to use https:// without relying on apache, nginx, etc")
    (license license:bsd-3)))

haskell-9.4-happstack-server-tls

(define-public haskell-9.4-haskell-src-exts-simple
  (package
    (name "haskell-9.4-haskell-src-exts-simple")
    (version "1.23.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-simple/haskell-src-exts-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfdjaikmjx9sfairp4jjn0vzhw5vhwrg43y082ddpc1bgx2jw7m"))))
    (properties `((upstream-name . "haskell-src-exts-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)))
    (home-page "https://github.com/int-e/haskell-src-exts-simple")
    (synopsis "A simplified view on the haskell-src-exts AST")
    (description
     "This package provides a shim for haskell-src-exts (HSE), exposing the
same AST but without annotations, using ghc's pattern synonyms.

See README.md for further information and compatibility considerations.")
    (license license:expat)))

haskell-9.4-haskell-src-exts-simple

(define-public haskell-9.4-haskell-src-exts-util
  (package
    (name "haskell-9.4-haskell-src-exts-util")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-util/haskell-src-exts-util-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fvqi72m74p7q5sbpy8m2chm8a1lgy10mfrcxcz8wrh59vngj0n8"))))
    (properties `((upstream-name . "haskell-src-exts-util") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-9.4-haskell-src-exts-util

(define-public haskell-9.4-haskell-src-meta
  (package
    (name "haskell-9.4-haskell-src-meta")
    (version "0.8.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-meta/haskell-src-meta-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wks0xb7ah2gj9n0ffbcaskjihy45l99qkf2h9k13cyfvqkzp9rw"))))
    (properties `((upstream-name . "haskell-src-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)))
    (home-page "https://hackage.haskell.org/package/haskell-src-meta")
    (synopsis "Parse source to template-haskell abstract syntax.")
    (description "The translation from haskell-src-exts abstract syntax
to template-haskell abstract syntax isn't 100% complete yet.")
    (license license:bsd-3)))

haskell-9.4-haskell-src-meta

(define-public haskell-9.4-hedis
  (package
    (name "haskell-9.4-hedis")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedis/hedis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a09i21qmzjcx171452bm69cj188f1jha2gwj0yi7shimcqz3l8m"))))
    (properties `((upstream-name . "hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ppc8xygcqv9s9jf44s1hh7ndm9mrvjxjwhv5g2rfdkkbsfyr7r5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-bytestring-lexing)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-scanner)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/informatikr/hedis")
    (synopsis
     "Client library for the Redis datastore: supports full command set,
pipelining.")
    (description
     "Redis is an open source, advanced key-value store. It is often referred to
as a data structure server since keys can contain strings, hashes, lists,
sets and sorted sets. This library is a Haskell client for the Redis
datastore. Compared to other Haskell client libraries it has some
advantages:

[Compatibility with Latest Stable Redis:] Hedis is intended
to be used with the latest stable version of Redis (currently 5.0).
Most redis commands (<http://redis.io/commands>) are available as
haskell functions, although MONITOR and SYNC are intentionally
omitted. Additionally, a low-level API is
exposed that  makes it easy for the library user to implement further
commands, such as new commands from an experimental Redis version.

[Automatic Optimal Pipelining:] Commands are pipelined
(<http://redis.io/topics/pipelining>) as much as possible without any
work by the user. See
<http://informatikr.com/2012/redis-pipelining.html> for a
technical explanation of automatic optimal pipelining.

[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server
(<http://redis.io/topics/pubsub>), clients are not allowed to issue
commands other than subscribing to or unsubscribing from channels. This
library uses the type system to enforce the correct behavior.

[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to
connect to a Redis server. For connections to a server on the same
machine, Unix domain sockets offer higher performance than the standard
TCP connection.

For detailed documentation, see the \"Database.Redis\" module.
")
    (license license:bsd-3)))

haskell-9.4-hedis

(define-public haskell-9.4-heterocephalus
  (package
    (name "haskell-9.4-heterocephalus")
    (version "1.0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heterocephalus/heterocephalus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dxvmkrkhqfapbywr202s4182r3nqlciqvbixd5g7c851qwfvpj2"))))
    (properties `((upstream-name . "heterocephalus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)))
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

haskell-9.4-heterocephalus

(define-public haskell-9.4-hi-file-parser
  (package
    (name "haskell-9.4-hi-file-parser")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hi-file-parser/hi-file-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04rrdyga6abml3d3bn1amd955g9k0jj4pczh659bimw8hwccp2pw"))))
    (properties `((upstream-name . "hi-file-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/commercialhaskell/hi-file-parser#readme")
    (synopsis "Parser for GHC's hi files")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/hi-file-parser/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.4-hi-file-parser

(define-public haskell-9.4-hledger-lib
  (package
    (name "haskell-9.4-hledger-lib")
    (version "1.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-lib/hledger-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "098c36vx16xnjs27sn9h2794hyf7py5bhn1kaw8ira6akljgzh4k"))))
    (properties `((upstream-name . "hledger-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-Decimal)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-cassava-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doclayout)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hashtables)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pretty-simple)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-tabular)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-timeit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-uglymemo)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis "A reusable library providing the core functionality of hledger")
    (description
     "A reusable library containing hledger's core functionality.
This is used by most hledger* packages so that they support the same
common file formats, command line options, reports etc.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-hledger-lib

(define-public haskell-9.4-hse-cpp
  (package
    (name "haskell-9.4-hse-cpp")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hse-cpp/hse-cpp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k2bmsk6d3ym7z71bwxicc0b8wsw0camjgxgbybx4pdz0261dc7f"))))
    (properties `((upstream-name . "hse-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-cpphs)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)))
    (home-page "https://hackage.haskell.org/package/hse-cpp")
    (synopsis "Preprocess+parse haskell code")
    (description "")
    (license license:expat)))

haskell-9.4-hse-cpp

(define-public haskell-9.4-hslua-packaging
  (package
    (name "haskell-9.4-hslua-packaging")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-packaging/hslua-packaging-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yxfrsxmmsb96lyfihlk9ks53l2z2aln3whfqaha7grs3gx1yaib"))))
    (properties `((upstream-name . "hslua-packaging") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hslua-objectorientation)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Utilities to build Lua modules.")
    (description "Utilities to package up Haskell functions and
values into a Lua module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.4-hslua-packaging

(define-public haskell-9.4-http-api-data-qq
  (package
    (name "haskell-9.4-http-api-data-qq")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-api-data-qq/http-api-data-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lvfdbprdwq09k1wkjfvvkpi79053dc4kzkv4g1cx94qb1flbd7a"))))
    (properties `((upstream-name . "http-api-data-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "03gwjxnd0kcnh18bzlwkb8yivmcjrl8wb0v82y4jqvjy19d61d0n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/http-api-data-qq#readme")
    (synopsis "Quasiquoter for building URLs with ToHttpApiData types")
    (description "Quasiquoter for building URLs with strings interpolated
using ToHttpApiData instances")
    (license license:bsd-3)))

haskell-9.4-http-api-data-qq

(define-public haskell-9.4-http-client-openssl
  (package
    (name "haskell-9.4-http-client-openssl")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-openssl/http-client-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03rr1wz1907v3gx5qsqdkd850hy47glb574s69265pv6yspaivdx"))))
    (properties `((upstream-name . "http-client-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-proxy")
       #:cabal-revision
       ("1" "0f2x40wdd09svjylg1zwapnnqgvxid1fcakvwgxlz61a16w8sfb6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-HsOpenSSL-x509-system)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis "http-client backend using the OpenSSL library.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.")
    (license license:expat)))

haskell-9.4-http-client-openssl

(define-public haskell-9.4-http-io-streams
  (package
    (name "haskell-9.4-http-io-streams")
    (version "0.1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-io-streams/http-io-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09ggsf9g8gf28d3d5z0rcdnl63d34al35z5d6v68k0n7r229ffb1"))))
    (properties `((upstream-name . "http-io-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbrotli" "-ffast-xor")
       #:cabal-revision
       ("1" "0v2xp9fhrw77vh4vz5qk9lip5mhbf9lz5nkdrfcvrilfjgg4s17b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-brotli-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-openssl-streams)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-xor)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/http-io-streams")
    (synopsis "HTTP and WebSocket client based on io-streams")
    (description
     "An HTTP client with WebSocket (RFC 6455) support, using the Snap Framework's [io-streams](https://hackage.haskell.org/package/io-streams) library to
handle the streaming IO. The @@http-io-streams@@ API designed for ease of use when querying web services and dealing with the result as streaming I/O.

The main HTTP/1.1 part of the library is exported in a single module \"Network.Http.Client\"; the WebSocket specific functionality is available from the \"Network.Http.Client.WebSocket\" module.

__NOTE__: This package originally started as a fork of [http-streams](http://hackage.haskell.org/package/http-streams) with a lighter dependency footprint focusing on core HTTP functionality.")
    (license license:bsd-3)))

haskell-9.4-http-io-streams

(define-public haskell-9.4-http-link-header
  (package
    (name "haskell-9.4-http-link-header")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-link-header/http-link-header-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15pcav5k7j4pvqwkyyrqgcm7yxqippx4yiprsg9fpml4kywcr2ca"))))
    (properties `((upstream-name . "http-link-header") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "16xbv4cz8b9gh42za6bhz73qcqrd5ix330cs4prj2jn124hb9xwx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-errors)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/valpackett/http-link-header")
    (synopsis "HTTP Link header parser/writer")
    (description
     "A parser and writer for the HTTP Link header per RFC 5988 (see README.md for more info)")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-http-link-header

(define-public haskell-9.4-http-streams
  (package
    (name "haskell-9.4-http-streams")
    (version "0.8.9.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-streams/http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8nnp1y4ngv6mwr3fxv428kcvrd3ming179sza8fkn49pcwdlxs"))))
    (properties `((upstream-name . "http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-common)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-openssl-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aesiniath/http-streams/")
    (synopsis "An HTTP client using io-streams")
    (description
     "An HTTP client, using the Snap Framework's 'io-streams' library to
handle the streaming IO. The API is optimized for ease of use for the
rather common case of code needing to query web services and deal with
the result.

The library is exported in a single module; see \"Network.Http.Client\"
for full documentation.")
    (license license:bsd-3)))

haskell-9.4-http-streams

(define-public haskell-9.4-hvega
  (package
    (name "haskell-9.4-hvega")
    (version "0.12.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvega/hvega-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dmc8va82qzr9c7kn8w3nm70f3nb59gz3f6178j6iaph0acplyfh"))))
    (properties `((upstream-name . "hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "Create Vega-Lite visualizations (version 4) in Haskell.")
    (description
     "This is based on the elm-vegalite package
(<http://package.elm-lang.org/packages/gicentre/elm-vegalite/latest>)
by Jo Wood of the giCentre at the City University of London.")
    (license license:bsd-3)))

haskell-9.4-hvega

(define-public haskell-9.4-hw-diagnostics
  (package
    (name "haskell-9.4-hw-diagnostics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-diagnostics#readme")
    (synopsis "Diagnostics library")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-diagnostics

(define-public haskell-9.4-hw-string-parse
  (package
    (name "haskell-9.4-hw-string-parse")
    (version "0.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-string-parse/hw-string-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sg5s84pqyl93wm052ifrqv90cyc28awh4i6vcd8zbq746wdqz4k"))))
    (properties `((upstream-name . "hw-string-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0afarlf42yfsgbv4lwhl7hnrsxv6b5dilja1660fnxvw350ldiik")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-string-parse#readme")
    (synopsis "String parser")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-string-parse

(define-public haskell-9.4-hxt-css
  (package
    (name "haskell-9.4-hxt-css")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-hxt)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/redneb/hxt-css")
    (synopsis "CSS selectors for HXT")
    (description
     "This package makes it possible to easily traverse (X)HTML/XML documents
using CSS selectors. It supports all CSS level 3 selectors except the
ones that do not make sense outside a web browser (e.g. such as @@:hover@@
or @@::first-letter@@). Also, there is no support for namespaced selectors.")
    (license license:bsd-3)))

haskell-9.4-hxt-css

(define-public haskell-9.4-hxt-curl
  (package
    (name "haskell-9.4-hxt-curl")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-curl)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-hxt)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "LibCurl interface for HXT")
    (description "LibCurl interface for HXT")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-hxt-curl

(define-public haskell-9.4-hxt-http
  (package
    (name "haskell-9.4-hxt-http")
    (version "9.1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-http/hxt-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02yxvzczv89j518b94wh8m4dsmnymzxgv9158m7w6lqxk41rv8bg"))))
    (properties `((upstream-name . "hxt-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-hxt)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Interface to native Haskell HTTP package HTTP")
    (description
     "Interface to native Haskell HTTP package HTTP.
This package can be used as alternative for the hxt-curl package
for accessing documents via HTTP.

Changes from 9.1.3: Works with ghc-7.10

Changes to 9.1.3: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-9.4-hxt-http

(define-public haskell-9.4-hxt-tagsoup
  (package
    (name "haskell-9.4-hxt-tagsoup")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-hxt)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hxt-charproperties)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-hxt-unicode)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "TagSoup parser for HXT")
    (description "The Tagsoup interface for the HXT lazy HTML parser.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-hxt-tagsoup

(define-public haskell-9.4-ip6addr
  (package
    (name "haskell-9.4-ip6addr")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-IPv6Addr)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis
     "Commandline tool to deal with IPv6 address text representations")
    (description
     "Commandline tool to validate, canonize and generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-9.4-ip6addr

(define-public haskell-9.4-ipynb
  (package
    (name "haskell-9.4-ipynb")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ipynb/ipynb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1iwia4sxg40m4d290gys72wabqmkqx24ywsaranwzk2wx5s3sx4s"))))
    (properties `((upstream-name . "ipynb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fl9x5amq0g5dg57dcgc0g4ir0r1fdbx06aldsqdwzdc9zs97v6k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-microlens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ipynb")
    (synopsis "Data structure for working with Jupyter notebooks (ipynb).")
    (description "ipynb defines a data structure for representing Jupyter
notebooks, along with ToJSON and FromJSON instances
for conversion to and from JSON .ipynb files.")
    (license license:bsd-3)))

haskell-9.4-ipynb

(define-public haskell-9.4-jwt
  (package
    (name "haskell-9.4-jwt")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jwt/jwt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1l9qblq11kbrrmcfnh0hcjqnhmi3qm6va3z4pmi4i32wqh3bwjnx"))))
    (properties `((upstream-name . "jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0afy7kpsw9x2nx7d7fk3jc4rjm6mpiaihihqr5dnqg09wig760h6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cryptostore)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/puffnfresh/haskell-jwt")
    (synopsis "JSON Web Token (JWT) decoding and encoding")
    (description
     "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.

To get started, see the documentation for the \"Web.JWT\" module.")
    (license license:expat)))

haskell-9.4-jwt

(define-public haskell-9.4-lens
  (package
    (name "haskell-9.4-lens")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lens/lens-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "126ivkkcacd15899phrwq6zc6zwllnshplkrrf59x3a6vsz2wgmk"))))
    (properties `((upstream-name . "lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-uniplate" "-finlining" "-f-dump-splices" "-ftest-hunit" "-ftest-properties" "-ftest-templates" "-ftrustworthy" "-f-j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-assoc)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-reflect)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

<images/Hierarchy.png (Local Copy)>

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

haskell-9.4-lens

(define-public haskell-9.4-mergeful
  (package
    (name "haskell-9.4-mergeful")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeful/mergeful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w7ccngqcgvwysw1zbdm0qr6hscqc3dnza9n1cp6xfdb80qjqynn"))))
    (properties `((upstream-name . "mergeful") (hidden? . #f)))
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
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-9.4-mergeful

(define-public haskell-9.4-mergeless
  (package
    (name "haskell-9.4-mergeless")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeless/mergeless-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iy4l51kqldgm9wv60g524q67rag9rswapxrymrfy89cshyc5hib"))))
    (properties `((upstream-name . "mergeless") (hidden? . #f)))
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
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-9.4-mergeless

(define-public haskell-9.4-mighty-metropolis
  (package
    (name "haskell-9.4-mighty-metropolis")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mighty-metropolis/mighty-metropolis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1viswlggm6y7k3x5cvfmbly8jmk1ivhfp8vpgvkamxagzhkrk4"))))
    (properties `((upstream-name . "mighty-metropolis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-mcmc-types)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-mwc-probability)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
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

haskell-9.4-mighty-metropolis

(define-public haskell-9.4-mod
  (package
    (name "haskell-9.4-mod")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-semirings)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/mod")
    (synopsis "Fast type-safe modular arithmetic")
    (description
     "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,
promoting moduli to the type level, with an emphasis on performance.
Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-9.4-mod

(define-public haskell-9.4-oauthenticated
  (package
    (name "haskell-9.4-oauthenticated")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oauthenticated/oauthenticated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ca3wkhnk0wakzirh0486g5wkd1wq0381bjgj3ljs22hf4j5i41s"))))
    (properties `((upstream-name . "oauthenticated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tel/oauthenticated.git#readme")
    (synopsis "Simple OAuth for http-client")
    (description
     "/Warning/: This software is pre 1.0 and thus its API may change very
dynamically while updating only minor versions. This package will follow the
PVP once it reaches version 1.0.

OAuth is a popular protocol allowing servers to offer resources owned by some
user to a series of authorized clients securely. For instance, OAuth lets
Twitter provide access to a user's private tweets to the Twitter client
registered on their phone.

@@oauthenticated@@ is a Haskell library implementing OAuth protocols atop the
minimalistic @@http-client@@ HTTP client library extracted from @@http-conduit@@.
\"Network.OAuth\" offers simple functions for signing
'Network.HTTP.Client.Request's along with tools for 'Network.OAuth.Cred'ential
management and 'Network.OAuth.Server' configuration. \"Network.OAuth.Simple\"
provides a slightly more heavy-weight interface which manages the necessary state
and configuration using a monad transformer stack.

There's also an implementation of OAuth's three-legged credential acquisition
protocol built atop the \"Network.OAuth\" API. This can be handled in both
conformant and old-style modes: conformant will reject server responses which
are not conformant with RFC 5849 (which builds atop community version OAuth
1.0a) while old-style better allows for less-than-compliant servers. See
'Network.OAuth.Types.Params.Version' for more details.

Currently @@oauthenticated@@ only supports OAuth 1.0 and is in alpha. OAuth 2.0
support is a potential goal, but it's unclear if it can be transparently
supported at a similar level of abstraction.")
    (license license:expat)))

haskell-9.4-oauthenticated

(define-public haskell-9.4-opaleye
  (package
    (name "haskell-9.4-opaleye")
    (version "0.9.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/opaleye/opaleye-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xk2ibdakzayqc8h72iq3gav9ism5sww4wiz0wxypm6landzikfr"))))
    (properties `((upstream-name . "opaleye") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-product-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/tomjaguarpaw/haskell-opaleye")
    (synopsis "An SQL-generating DSL targeting PostgreSQL")
    (description "An SQL-generating DSL targeting PostgreSQL.  Allows
Postgres queries to be written within Haskell in a
typesafe and composable fashion.")
    (license license:bsd-3)))

haskell-9.4-opaleye

(define-public haskell-9.4-optparse-enum
  (package
    (name "haskell-9.4-optparse-enum")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-enum/optparse-enum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d3wpfss1nm42hjn8l7x34ksa7yx5ccc4iglbfvln0rkbqdsjh13"))))
    (properties `((upstream-name . "optparse-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-enum-text)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-fmt)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "https://github.com/cdornan/optparse-enum#readme")
    (synopsis "An enum-text based toolkit for optparse-applicative")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/optparse-enum#readme>")
    (license license:bsd-3)))

haskell-9.4-optparse-enum

(define-public haskell-9.4-pdf-toolbox-content
  (package
    (name "haskell-9.4-pdf-toolbox-content")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-content/pdf-toolbox-content-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bdcakhmazxim5npqkb13lh0b65p1xqv2a05c61zv0g64n1d6k5f"))))
    (properties `((upstream-name . "pdf-toolbox-content") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pdf-toolbox-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files")
    (description "Tools for processing PDF content streams")
    (license license:bsd-3)))

haskell-9.4-pdf-toolbox-content

(define-public haskell-9.4-pg-harness-client
  (package
    (name "haskell-9.4-pg-harness-client")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-harness-client/pg-harness-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06gqra5q20sc13slh5vz95bi1vq0ai43qfh7npcyv258zwv40qnh"))))
    (properties `((upstream-name . "pg-harness-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/BardurArantsson/pg-harness")
    (synopsis "Client library for pg-harness-server")
    (description
     "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>
for conveniently creating temporary PostgreSQL databases for use in tests.")
    (license license:bsd-2)))

haskell-9.4-pg-harness-client

(define-public haskell-9.4-pg-transact
  (package
    (name "haskell-9.4-pg-transact")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "A postgresql-simple transaction monad")
    (description "A postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-9.4-pg-transact

(define-public haskell-9.4-pointed
  (package
    (name "haskell-9.4-pointed")
    (version "5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pointed/pointed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mv06x2hscs220w4acm5jwg96vi4faky6ir9hnljfry3n2r2xix3"))))
    (properties `((upstream-name . "pointed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcomonad" "-fcontainers" "-fkan-extensions" "-fsemigroupoids" "-fsemigroups" "-fstm" "-ftagged" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("1" "14w5w6z2zk494mz5h1bm21a5rj8wlkyy37vi944ix4r7nrylv8bl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/pointed/")
    (synopsis "Pointed and copointed data")
    (description "Pointed and copointed data.")
    (license license:bsd-3)))

haskell-9.4-pointed

(define-public haskell-9.4-postgresql-migration
  (package
    (name "haskell-9.4-postgresql-migration")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-migration/postgresql-migration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zx6pa9s8k3gq1sgn8pj9xwdlj0wlx49d1mxgmd9s2zk9flfzybf"))))
    (properties `((upstream-name . "postgresql-migration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/andrevdm/postgresql-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-9.4-postgresql-migration

(define-public haskell-9.4-postgresql-simple-url
  (package
    (name "haskell-9.4-postgresql-simple-url")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-url/postgresql-simple-url-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jg9gvpidrfy2hqixwqsym1l1mnkafmxwq58jpbzdmrbvryga1qk"))))
    (properties `((upstream-name . "postgresql-simple-url") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1pvfb61ys58s66dass8qfaxrd4pbkbk8hsbrijds6gybcx3a7nhy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/futurice/postgresql-simple-url")
    (synopsis "Parse postgres:// url into ConnectInfo")
    (description
     "The 'Database.PostgreSQL.Simple.URL' module in this package exports
two helper functions 'parseDatabaseUrl' and 'urlToConnectInfo' to
construct 'ConnectInfo' from URI (or string).

@@
>>> parseDatabaseUrl \"postgres://foo:bar@@example.com:2345/database\"
Just (ConnectInfo \"example.com\" 2345 \"foo\" \"bar\" \"database\")
@@")
    (license license:expat)))

haskell-9.4-postgresql-simple-url

(define-public haskell-9.4-prospect
  (package
    (name "haskell-9.4-prospect")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prospect/prospect-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rvdhk3vnkmblg0zg9vw9akvlsqsc125av3889ipi0axzdcygykg"))))
    (properties `((upstream-name . "prospect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-inspection-testing)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)))
    (home-page "https://github.com/isovector/prospect#readme")
    (synopsis "Explore continuations with trepidation")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/prospect#readme>")
    (license license:bsd-3)))

haskell-9.4-prospect

(define-public haskell-9.4-psql-helpers
  (package
    (name "haskell-9.4-psql-helpers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/agrafix/psql-helpers#readme")
    (synopsis
     "A small collection of helper functions to generate postgresql queries")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-psql-helpers

(define-public haskell-9.4-quickcheck-monoid-subclasses
  (package
    (name "haskell-9.4-quickcheck-monoid-subclasses")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-monoid-subclasses/quickcheck-monoid-subclasses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x1jza5s1v89ik0h5m3kla5qwgh05j5dbd7f2m2miwyy1b75bqly"))))
    (properties `((upstream-name . "quickcheck-monoid-subclasses")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-commutative-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/quickcheck-monoid-subclasses")
    (synopsis "Testing monoid subclass instances with QuickCheck")
    (description
     "QuickCheck support for testing instances of type classes defined in the
monoid-subclasses library.")
    (license license:asl2.0)))

haskell-9.4-quickcheck-monoid-subclasses

(define-public haskell-9.4-reroute
  (package
    (name "haskell-9.4-reroute")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/reroute/reroute-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "046pszxz2mp0glss03ifk1617i1w15cm5x0jy2iwg5a905vdis3s"))))
    (properties `((upstream-name . "reroute") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hvect)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/Spock")
    (synopsis "abstract implementation of typed and untyped web routing")
    (description
     "abstraction over how urls with/without parameters are mapped to their corresponding handlers")
    (license license:expat)))

haskell-9.4-reroute

(define-public haskell-9.4-roc-id
  (package
    (name "haskell-9.4-roc-id")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roc-id/roc-id-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gng9rw9z9zmrkk68q8zf95w3d05yaglk2hp17jvnaw8qxfs3mvp"))))
    (properties `((upstream-name . "roc-id") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-Only)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-sized)))
    (home-page "https://github.com/jonathanknowles/roc-id#readme")
    (synopsis "Implementation of the ROC (Taiwan) National ID standard.")
    (description
     "This package provides an implementation of the ROC (Taiwan) National
Identification Number (中華民國身分證號碼) standard.

In particular, it provides functions for parsing and validating
identification numbers from textual input.

See the \"ROC.ID\" module to get started.

For more details of the standard on which this package is based, see:

* https://zh.wikipedia.org/wiki/中華民國國民身分證
* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)")
    (license license:bsd-3)))

haskell-9.4-roc-id

(define-public haskell-9.4-safe-coloured-text-layout
  (package
    (name "haskell-9.4-safe-coloured-text-layout")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-layout/safe-coloured-text-layout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11fbfqs96dlhyywkmy97b2fsws0fdsv3illdd61w3fckbxbdw6bw"))))
    (properties `((upstream-name . "safe-coloured-text-layout")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely layout output coloured text")
    (description "")
    (license license:expat)))

haskell-9.4-safe-coloured-text-layout

(define-public haskell-9.4-safe-coloured-text-terminfo
  (package
    (name "haskell-9.4-safe-coloured-text-terminfo")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-terminfo/safe-coloured-text-terminfo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfs1y35sxabnlihfzbs5nhmhz5xb7fwiib4j2nhwwq70glyldcn"))))
    (properties `((upstream-name . "safe-coloured-text-terminfo")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-safe-coloured-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "Safely output coloured text")
    (description "")
    (license license:expat)))

haskell-9.4-safe-coloured-text-terminfo

(define-public haskell-9.4-safe-money
  (package
    (name "haskell-9.4-safe-money")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-money/safe-money-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03fizw68y87lyk6r1r2dmjpakgm1whi54avsb5k2krvmgwhy6fs5"))))
    (properties `((upstream-name . "safe-money") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-space)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-safe-money

(define-public haskell-9.4-serialise
  (package
    (name "haskell-9.4-serialise")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serialise/serialise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05m5h5vfjp4wvh6y7j2f3d4c3l6gxww2n1v38vqrjacpw641izwk"))))
    (properties `((upstream-name . "serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime15")
       #:cabal-revision
       ("2" "0ng4gjxwv2arm1ybqkfl66p1lmcwacym8ygi6nnkygysgchwqa3b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-cborg)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-half)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-serialise

(define-public haskell-9.4-servant
  (package
    (name "haskell-9.4-servant")
    (version "0.19.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servant/servant-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gk6j39rcjpjacs351lknhrwj86yr4ifyp3qwlmiig27dxqlig3q"))))
    (properties `((upstream-name . "servant") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-singleton-bool)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sop-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "A family of combinators for defining webservices APIs")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.4-servant

(define-public haskell-9.4-set-cover
  (package
    (name "haskell-9.4-set-cover")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/set-cover/set-cover-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04jjcmjll0azz24rx91p0dp5b8ya5jc0qacr21764ri1dbkfflgw"))))
    (properties `((upstream-name . "set-cover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-llvm")
       #:cabal-revision
       ("2" "05kisz47xka696fwszlxkvna2zv5qczaww8mpmn1g66sdppa5kzg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-enummapset)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prelude-compat)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/set-cover/")
    (synopsis
     "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube")
    (description
     "Solver for exact set cover problems.
Included examples:
Sudoku, Nonogram, 8 Queens, Domino tiling, Mastermind, Alphametics,
Soma Cube, Tetris Cube, Cube of L's,
Logika's Baumeister puzzle, Lonpos pyramid, Conway's puzzle.
The generic algorithm allows to choose between
slow but flexible @@Set@@ from @@containers@@ package
and fast but cumbersome bitvectors.

For getting familiar with the package
I propose to study the Queen8 example along with \"Math.SetCover.Exact\".

The Sudoku and Nonogram examples also demonstrate
how to interpret the set-cover solution in a human-friendly way.

Build examples with @@cabal install -fbuildExamples@@.

The package needs only Haskell 98.
There is also an experimental implementation using LLVM and @@knead@@.
Do not rely on that interface in released packages.")
    (license license:bsd-3)))

haskell-9.4-set-cover

(define-public haskell-9.4-shakespeare-text
  (package
    (name "haskell-9.4-shakespeare-text")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shakespeare-text/shakespeare-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ixixb9aqn630s9wblxcki1gggm4i0fj9752c55p3b42q8h86rc"))))
    (properties `((upstream-name . "shakespeare-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis
     "Interpolation with quasi-quotation: put variables strings (deprecated)")
    (description
     "interpolation with quasi-quotation: stick haskell variables into haskell strings

Note there is no dependency on haskell-src-extras. If you don't mind that dependency, you may want to look at using these packages: Interpolation, interpolatedstring-perl6, interpolatedstring-qq.

This package has 1 other general feature that those others may not (but would be easy to duplicate): instead of using quasi-quoting you can also use an external file. It also has url/embeding interpolation, with \\@@ and \\^, which are used in Yesod.

This package also uses blaze-builder for efficiently constructing strings (I am not sure what the other packages use). This might be of interest to you for large templates or performance sensitive code, or otherwise having a nice interface to blaze-builder

Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation. Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.
In this case, the variable type needs a ToText instance.

Please see http://www.yesodweb.com/book/shakespearean-templates for a more thorough description and examples of the shakespeare family of template languages.")
    (license license:expat)))

haskell-9.4-shakespeare-text

(define-public haskell-9.4-singletons-th
  (package
    (name "haskell-9.4-singletons-th")
    (version "3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-th/singletons-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bp9abhbk6ad27p0ksqx2nhrkp6r9dgx20dzyl3bq1zf6nz92ss6"))))
    (properties `((upstream-name . "singletons-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-singletons)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-desugar)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A framework for generating singleton types")
    (description
     "@@singletons-th@@ defines Template Haskell functionality that allows
/promotion/ of term-level functions to type-level equivalents and
/singling/ functions to dependently typed equivalents. This library was
originally presented in /Dependently Typed Programming with Singletons/,
published at the Haskell Symposium, 2012.
(<https://richarde.dev/papers/2012/singletons/paper.pdf>)
See also the paper published at Haskell Symposium, 2014, which describes
how promotion works in greater detail:
<https://richarde.dev/papers/2014/promotion/promotion.pdf>.

@@singletons-th@@ generates code that relies on bleeding-edge GHC language
extensions. As such, @@singletons-th@@ only supports the latest major version
of GHC (currently GHC 9.4). For more information,
consult the @@singletons@@
@@<https://github.com/goldfirere/singletons/blob/master/README.md README>@@.

You may also be interested in the following related libraries:

* The @@singletons@@ library is a small, foundational library that defines
basic singleton-related types and definitions.

* The @@singletons-base@@ library uses @@singletons-th@@ to define promoted and
singled functions from the @@base@@ library, including the \"Prelude\".")
    (license license:bsd-3)))

haskell-9.4-singletons-th

(define-public haskell-9.4-snap-blaze
  (package
    (name "haskell-9.4-snap-blaze")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-snap-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jaspervdj/snap-blaze")
    (synopsis "blaze-html integration for Snap")
    (description "blaze-html integration for Snap")
    (license license:bsd-3)))

haskell-9.4-snap-blaze

(define-public haskell-9.4-state-codes
  (package
    (name "haskell-9.4-state-codes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acamino/state-codes#README")
    (synopsis "ISO 3166-2:US state codes and i18n names")
    (description
     "This package provides the ISO 3166-2:US state codes and i18n names")
    (license license:expat)))

haskell-9.4-state-codes

(define-public haskell-9.4-strongweak
  (package
    (name "haskell-9.4-strongweak")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strongweak/strongweak-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xmqacfv4xqx1v7xdiflmc4am9366jhpdv1r7hldmh1ihw7jkfc3"))))
    (properties `((upstream-name . "strongweak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-refined)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/raehik/strongweak#readme")
    (synopsis "Convert between strong and weak representations of types")
    (description "Please see README.md.")
    (license license:expat)))

haskell-9.4-strongweak

(define-public haskell-9.4-superbuffer
  (package
    (name "haskell-9.4-superbuffer")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/superbuffer/superbuffer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "024mcjmayirwxqqyr9w1zfsxihi680clzngkpmgccv10phb8qpsp"))))
    (properties `((upstream-name . "superbuffer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTF)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/superbuffer#readme")
    (synopsis "Efficiently build a bytestring from smaller chunks")
    (description
     "Efficiently (both fast and memory efficient) build a bytestring from smaller chunks")
    (license license:bsd-3)))

haskell-9.4-superbuffer

(define-public haskell-9.4-symmetry-operations-symbols
  (package
    (name "haskell-9.4-symmetry-operations-symbols")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/symmetry-operations-symbols#readme")
    (synopsis "Derivation of symbols and coordinate triplets Library")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/symmetry-operations-symbols#readme>")
    (license license:bsd-3)))

haskell-9.4-symmetry-operations-symbols

(define-public haskell-9.4-tasty-th
  (package
    (name "haskell-9.4-tasty-th")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-th/tasty-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b2ivrw2257m4cy4rjnkwqlarh83j1y3zywnmaqqqbvy667sqnj3"))))
    (properties `((upstream-name . "tasty-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "http://github.com/bennofs/tasty-th")
    (synopsis "Automatic tasty test case discovery using TH")
    (description
     "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.")
    (license license:bsd-3)))

haskell-9.4-tasty-th

(define-public haskell-9.4-tcp-streams
  (package
    (name "haskell-9.4-tcp-streams")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tcp-streams/tcp-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dz21ycm06d9mwc6dbjr8ansl212ril3i5jl73yzkdi9ngj16qqa"))))
    (properties `((upstream-name . "tcp-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-system)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/didi-FP/tcp-streams")
    (synopsis "One stop solution for tcp client and server with tls support.")
    (description
     "One stop solution for tcp client and server with tls support.")
    (license license:bsd-3)))

haskell-9.4-tcp-streams

(define-public haskell-9.4-teardown
  (package
    (name "haskell-9.4-teardown")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/teardown/teardown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ian64cbmw18n75p2jx8d856d3gz5lahvfxy1xbsh1isz56jzh2d"))))
    (properties `((upstream-name . "teardown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (home-page "https://github.com/roman/Haskell-teardown#readme")
    (synopsis "Build safe and composable teardown sub-routines for resources")
    (description
     "The teardown library allows you to reliably execute cleanup sub-routines for
allocated resources. When a program is initialized, it:

* Ensures that teardown sub-routines are executed /exactly/ once

* Ensures that if errors occur on the execution of a Teardown sub-routine, the
error does not propagate to others; bulkheading failure on cleanup.

* Requires every sub-routine to be documented at creation time; thus helping
tracing your application structure.

* Allows tracing the teardown of your application, how is structured, how much
time it takes to execute, and what component (if any) failed to finalize.")
    (license license:expat)))

haskell-9.4-teardown

(define-public haskell-9.4-texmath
  (package
    (name "haskell-9.4-texmath")
    (version "0.12.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dn88s352y641c1vlj5j5mqwhnz6r1algkd7mx83y3fr0wp3nhlq"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-server")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pandoc-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/texmath")
    (synopsis "Conversion between math formats.")
    (description
     "The texmath library provides functions to read
and write TeX math, presentation MathML, and OMML (Office
Math Markup Language, used in Microsoft Office).  Support is also
included for converting math formats to Gnu eqn and to pandoc's
native format (allowing conversion, via pandoc, to a variety of
different markup formats).  The TeX reader supports basic LaTeX
and AMS extensions, and it can parse and apply LaTeX macros.
(See <https://johnmacfarlane.net/texmath here> for a live demo of
bidirectional conversion between LaTeX and MathML.)

The package also includes several utility modules which may be
useful for anyone looking to manipulate either TeX math or
MathML.  For example, a copy of the MathML operator dictionary is
included.

Use the @@executable@@ flag to install a standalone
executable, @@texmath@@, that converts formulas from one
format to another. (Use the @@--help@@ flag for a description of all
functionality).

Use the @@server@@ flag to install a web server, @@texmath-server@@,
that exposes a JSON API allowing conversion of individual
formulas and batches of formulas.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-texmath

(define-public haskell-9.4-toml-reader-parse
  (package
    (name "haskell-9.4-toml-reader-parse")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/toml-reader-parse/toml-reader-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ah47icy8lnpnmhpsmyp9pvp8f134pzzi6cvv5vpnw2r5szr9vly"))))
    (properties `((upstream-name . "toml-reader-parse") (hidden? . #f)))
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
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-prettyprinter-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-toml-reader)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sergv/toml-reader-parse")
    (synopsis
     "Alternative parser for TOML values produced by the toml-reader package.")
    (description
     "Package defines a set of parser combinators that allows analyzing arbitrary TOML structures.
Includes formatted errors that keep track of where in the original TOML file a value
came from.")
    (license license:asl2.0)))

haskell-9.4-toml-reader-parse

(define-public haskell-9.4-tracing
  (package
    (name "haskell-9.4-tracing")
    (version "0.0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tracing/tracing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v178byysbl6cpx8dqs4a1failfzpr80fqv7icddq28rh95b2aj2"))))
    (properties `((upstream-name . "tracing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtth/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.")
    (license license:bsd-3)))

haskell-9.4-tracing

(define-public haskell-9.4-tracing-control
  (package
    (name "haskell-9.4-tracing-control")
    (version "0.0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tracing-control/tracing-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cxn64v6qa3n7d3d7nq4r9xrq42fl7z3xkqa9k8alaqfzkpx7v17"))))
    (properties `((upstream-name . "tracing-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-lifted)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/serras/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.
This is a fork of <http://hackage.haskell.org/package/tracing tracing> which
switches from <http://hackage.haskell.org/package/unliftio unliftio> to
<http://hackage.haskell.org/package/monad-control monad-control>.")
    (license license:bsd-3)))

haskell-9.4-tracing-control

(define-public haskell-9.4-tuples
  (package
    (name "haskell-9.4-tuples")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tuples/tuples-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kq12l0q7d9mdkmcp2sm7pjgfh00vqkhi0id32sny1lqcnavp415"))))
    (properties `((upstream-name . "tuples") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06ns2npjh487pbzq6f5iwqvl0n9a6d5fywlm032nj3mxdmaynj2j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/tuples")
    (synopsis "Small monomorphic tuples")
    (description "This library provides small tuples where all the elements
are the same type. The elements always unpack into the
data constructor. This can be helpful when the tuple type
is itself nested inside of another data constructor.")
    (license license:bsd-3)))

haskell-9.4-tuples

(define-public haskell-9.4-typed-uuid
  (package
    (name "haskell-9.4-typed-uuid")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typed-uuid/typed-uuid-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f97q4vxr30sinbcilhyizhri4gkq68yzw6pnv2dh2bdy1nd2yqk"))))
    (properties `((upstream-name . "typed-uuid") (hidden? . #f)))
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
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-9.4-typed-uuid

(define-public haskell-9.4-universe
  (package
    (name "haskell-9.4-universe")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe/universe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06rxcbqdcf6fd0za3nvdhsqmki6ihxs6j66jqky3wqkis7bmy3ia"))))
    (properties `((upstream-name . "universe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-universe-base)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-universe-instances-extended)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-universe-some)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "A class for finite and recursively enumerable types.")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This also provides instances from @@universe-instances-*\" packages.")
    (license license:bsd-3)))

haskell-9.4-universe

(define-public haskell-9.4-users-postgresql-simple
  (package
    (name "haskell-9.4-users-postgresql-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-users)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
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

haskell-9.4-users-postgresql-simple

(define-public haskell-9.4-users-test
  (package
    (name "haskell-9.4-users-test")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-users)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "Library to test backends for the users library")
    (description
     "Provides HSpec helpers for backends of <http://hackage.haskell.org/package/users users package>.

All backend packages should conform to this specification.")
    (license license:expat)))

haskell-9.4-users-test

(define-public haskell-9.4-wai-middleware-caching-lru
  (package
    (name "haskell-9.4-wai-middleware-caching-lru")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching-lru/wai-middleware-caching-lru-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lr8vaail00g72dgdfcgjzdd1kqwi4n0jzl1ia7bjxxdym1chz9p"))))
    (properties `((upstream-name . "wai-middleware-caching-lru")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-lrucache)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-middleware-caching)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-lru#readme")
    (synopsis "Initial project template from stack")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-wai-middleware-caching-lru

(define-public haskell-9.4-wai-session-postgresql
  (package
    (name "haskell-9.4-wai-session-postgresql")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session-postgresql/wai-session-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l3ws8bkflrk5gnvw0dd98fw83kfhf78mn9z6l2v6yv3gvdfzj6l"))))
    (properties `((upstream-name . "wai-session-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-cookie)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-session)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/hce/postgresql-session#readme")
    (synopsis "PostgreSQL backed Wai session store")
    (description
     "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.")
    (license license:bsd-3)))

haskell-9.4-wai-session-postgresql

(define-public haskell-9.4-wai-slack-middleware
  (package
    (name "haskell-9.4-wai-slack-middleware")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-slack-middleware/wai-slack-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pd61vxnfjdjzkvmwqfgf07a3nir3mnbr8qw2nzqa767s84i6i"))))
    (properties `((upstream-name . "wai-slack-middleware") (hidden? . #f)))
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
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-9.4-wai-slack-middleware

(define-public haskell-9.4-webdriver
  (package
    (name "haskell-9.4-webdriver")
    (version "0.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webdriver/webdriver-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02vm6wncjzcxmakabnjklkybcyylksfkpj1za541rrjv448zi7qj"))))
    (properties `((upstream-name . "webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-directory-tree)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-zip-archive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/codedownio/hs-webdriver#readme")
    (synopsis "a Haskell client for the Selenium WebDriver protocol")
    (description
     "A Selenium WebDriver client for Haskell.
You can use it to automate browser sessions
for testing, system administration, etc.

For more information about Selenium itself, see
<http://seleniumhq.org/>

To find out what's been changed in this version and others,
see the change log at
<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>")
    (license license:bsd-3)))

haskell-9.4-webdriver

(define-public haskell-9.4-witness
  (package
    (name "haskell-9.4-witness")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/witness/witness-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02ky1qc4ar8iy3rzjp2j89mp3k7skz5jp65vn7lilmwrvm1b2vcx"))))
    (properties `((upstream-name . "witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-countable)))
    (home-page "https://github.com/AshleyYakeley/witness")
    (synopsis "values that witness types")
    (description
     "A /witness/ is a value that witnesses some sort of constraint on some list of type variables. This library provides support for a wide variety of witness types. It also provides classes for /representatives/, which are values that represent types.")
    (license license:bsd-2)))

haskell-9.4-witness

(define-public haskell-9.4-xmonad
  (package
    (name "haskell-9.4-xmonad")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmonad/xmonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1apqwyqmc51gamfgsvlanzqqig9qvjss89ibcamhnha1gs1k4jl8"))))
    (properties `((upstream-name . "xmonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fquickcheck-classes")
       #:cabal-revision
       ("2" "1rgwrnyb7kijzl2mqm8ks2nydh37q5vkbg4400rg9n6x13w2r9b3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001) haskell-9.4-X11)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-setlocale)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://xmonad.org")
    (synopsis "A tiling window manager")
    (description
     "xmonad is a tiling window manager for X. Windows are arranged
automatically to tile the screen without gaps or overlap, maximising
screen use. All features of the window manager are accessible from the
keyboard: a mouse is strictly optional. xmonad is written and
extensible in Haskell. Custom layout algorithms, and other extensions,
may be written by the user in config files. Layouts are applied
dynamically, and different layouts may be used on each workspace.
Xinerama is fully supported, allowing windows to be tiled on several
screens.")
    (license license:bsd-3)))

haskell-9.4-xmonad

